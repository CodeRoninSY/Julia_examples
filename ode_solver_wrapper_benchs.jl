
#!/usr/bin/env julia
# ode_solver_wrapper_benchs.jl
# <2020-01-21> CodeRoninSY

using ParameterizedFunctions, OrdinaryDiffEq, ODEInterface,
      ODEInterfaceDiffEq, Sundials, SciPyDiffEq, LSODA, ODE

using DiffEqDevTools
using LinearAlgebra
using DifferentialEquations

using IterableTables, DataFrames

# Use plotly backend / or gr()
using Plots
# using PyPlot
# gr()
pyplot()
# PyPlot.svg(true)

f = @ode_def_bare LotkaVolterra begin
  dx = a*x - b*x*y
  dy = -c*y + d*x*y
end a b c d
p = [1.5,1,3,1]
tspan = (0.0,10.0)
u0 = [1.0,1.0]
prob = ODEProblem(f,u0,tspan,p)
sol = solve(prob,Vern7(),abstol=1/10^14,reltol=1/10^14)

df = DataFrame(sol)

test_sol = TestSolution(sol)

setups = [
    Dict(:alg=>DP5())
    Dict(:alg=>dopri5())
    Dict(:alg=>dop853())
    Dict(:alg=>seulex())
    Dict(:alg=>rodas())
    Dict(:alg=>Tsit5())
    Dict(:alg=>Vern7())
    Dict(:alg=>BS5())
    Dict(:alg=>radau())
    Dict(:alg=>Feagin10())
    Dict(:alg=>OwrenZen5())
    Dict(:alg=>VCAB3())
    Dict(:alg=>AN5())
    Dict(:alg=>SDIRK2())
    Dict(:alg=>RadauIIA5())
    Dict(:alg=>SciPyDiffEq.RK45())
    Dict(:alg=>SciPyDiffEq.Radau())
    Dict(:alg=>SciPyDiffEq.BDF())
    Dict(:alg=>SciPyDiffEq.LSODA())
    Dict(:alg=>CVODE_Adams())
  ]

names = [
    "Julia: DP5"
    "Hairer: dopri5"
    "Hairer: dop853"
    "Hairer: seulex"
    "Hairer: rodas"
    "Julia: Tsit5"
    "Julia: Vern7"
    "Julia: BS5"
    "Julia: Radau"
    "Julia: Feagin10"
    "Julia: OwrenZen5"
    "Julia: VCAB3"
    "Julia: AN5"
    "Julia: SDIRK2"
    "Julia: RadauIIA5"
    "SciPy: RK45"
    "SciPy: Radau"
    "SciPy: BDF"
    "SciPy: LSODA"
    "Sundials: Adams"
  ]

abstols = 1.0 ./ 10.0 .^ (6:13)
reltols = 1.0 ./ 10.0 .^ (3:10)
wp = WorkPrecisionSet(prob,abstols,reltols,setups;
                      names = names,
                      appxsol=test_sol,dense=false,
                      save_everystep=false,numruns=1,maxiters=100000,
                      timeseries_errors=false,verbose=false)
plot(wp,title="Non-stiff 1: Lotka-Volterra")
plot!(size=(1000,800))
savefig("ode_solver_wrapper_Problem1.png")

f = @ode_def_bare RigidBodyBench begin
  dy1  = -2*y2*y3
  dy2  = 1.25*y1*y3
  dy3  = -0.5*y1*y2 + 0.25*sin(t)^2
end
prob = ODEProblem(f,[1.0;0.0;0.9],(0.0,100.0))
sol = solve(prob,Vern7(),abstol=1/10^14,reltol=1/10^14)
test_sol = TestSolution(sol)

setups = [Dict(:alg=>DP5())
          Dict(:alg=>dopri5())
          Dict(:alg=>Tsit5())
          Dict(:alg=>Vern7())
          Dict(:alg=>SciPyDiffEq.RK45())
          Dict(:alg=>SciPyDiffEq.LSODA())
          Dict(:alg=>CVODE_Adams())
  ]

names = [
  "Julia: DP5"
  "Hairer: dopri5"
  "Julia: Tsit5"
  "Julia: Vern7"
  "SciPy: RK45"
  "SciPy: LSODA"
  "Sundials: Adams"
  ]

abstols = 1.0 ./ 10.0 .^ (6:13)
reltols = 1.0 ./ 10.0 .^ (3:10)
wp = WorkPrecisionSet(prob,abstols,reltols,setups;
                      names = names,
                      appxsol=test_sol,dense=false,
                      save_everystep=false,numruns=1,maxiters=100000,
                      timeseries_errors=false,verbose=false)
plot(wp,title="Non-stiff 2: Rigid-Body")
plot!(size=(1000,800))
savefig("ode_solver_wrapper_Problem2.png")

# https://www.radford.edu/~thompson/vodef90web/problems/demosnodislin/Demos_Pitagora/DemoOrego/demoorego.pdf

# gr(size=(600,400))
function orego(du,u,p,t)
  s,q,w = p
  y1,y2,y3 = u
  du[1] = s*(y2+y1*(1-q*y1-y2))
  du[2] = (y3-(1+y1)*y2)/s
  du[3] = w*(y1-y3)
end
p = [77.27,8.375e-6,0.161]
y0 = [1.0,2.0,3.0]
tspan = (0.0,360.0)
prob = ODEProblem(orego,y0,tspan,p)
sol =  solve(prob,rodas(), alg_hints=[:stiff])

# DataFrames
df = DataFrame(sol)

plot(sol, vars=[1], yaxis=:log)
plot!(size=(1000,800))
savefig("ode_solver_wrapper_Problem3.png")

plot(sol, vars=[2], yaxis=:log)
plot!(size=(1000,800))
savefig("ode_solver_wrapper_Problem4.png")

plot(sol, vars=[3], yaxis=:log)
plot!(size=(1000,800))
savefig("ode_solver_wrapper_Problem5.png")


test_sol = TestSolution(sol)

setups = [Dict(:alg=>TRBDF2())
          Dict(:alg=>Kvaerno3())
          Dict(:alg=>KenCarp3())
          Dict(:alg=>RadauIIA5())
  ]

names = [
  "Julia: TRBDF2"
  "Julia: Kvaerno3"
  "Julia: KenCarp3"
  "Julia: RadauIIA5"
  ]

abstols = 1.0 ./ 10.0 .^ (6:13)
reltols = 1.0 ./ 10.0 .^ (3:10)
wp = WorkPrecisionSet(prob,abstols,reltols,setups;
                      names = names,
                      appxsol=test_sol,dense=false,
                      save_everystep=false,numruns=1,maxiters=100000,
                      timeseries_errors=false,verbose=false)
plot(wp,title="Stiff 1: Oregonator")
plot!(size=(1000,800))
savefig("ode_solver_wrapper_Problem6.png")
