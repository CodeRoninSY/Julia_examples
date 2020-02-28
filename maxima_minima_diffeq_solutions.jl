#!/usr/bin/env julia
# maxima_minima_diffeq_solutions.jl
# <2020-01-22> CodeRoninSY
# Finding maxima and minima of DiffEq solutions

#Constants and setup
using OrdinaryDiffEq
using Optim, NLopt, ForwardDiff
using Plots
gr()

initial = [0.01, 0.01, 0.01, 0.01]
tspan = (0.,100.)

#Define the problem
function double_pendulum_hamiltonian(udot,u,p,t)
    α  = u[1]
    lα = u[2]
    β  = u[3]
    lβ = u[4]
    udot .=
    [2(lα-(1+cos(β))lβ)/(3-cos(2β)),
    -2sin(α) - sin(α+β),
    2(-(1+cos(β))lα + (3+2cos(β))lβ)/(3-cos(2β)),
    -sin(α+β) - 2sin(β)*(((lα-lβ)lβ)/(3-cos(2β))) + 2sin(2β)*((lα^2 - 2(1+cos(β))lα*lβ + (3+2cos(β))lβ^2)/(3-cos(2β))^2)]
end

#Pass to solvers
poincare = ODEProblem(double_pendulum_hamiltonian, initial, tspan)

sol = solve(poincare, Tsit5())

plot(sol, vars=[(0,3),(0,4)], leg=false, plotdensity=10000)
plot!(size=(800,600))
savefig("maxima_minima_diffeq_solutions_01.png")

plot(sol, vars=(3,4), leg=false)
plot!(size=(800,600))
savefig("maxima_minima_diffeq_solutions_02.png")

# Local Optimization

f = (t) -> sol(t,idxs=4)

opt = optimize(f,18.0,22.0)

println(opt.minimizer)

println(opt.minimum)

f = (t) -> -sol(first(t),idxs=4)
opt2 = optimize(f,0.0,22.0)

plot(sol, vars=(0,4), plotdensity=10000)
scatter!([opt.minimizer],[opt.minimum],label="Local Min")
scatter!([opt2.minimizer],[-opt2.minimum],label="Local Max")
plot!(size=(800,600))
savefig("maxima_minima_diffeq_solutions_03.png")

f = (t) -> -sol(first(t),idxs=4)
opt = optimize(f,[20.0],BFGS())

# Global Optimization

count = 0 # keep track of # function evaluations

function g(t::Vector, grad::Vector)
  if length(grad) > 0
    #use ForwardDiff for the gradients
    grad[1] = ForwardDiff.derivative((t)->sol(first(t),idxs=4),t)
  end
  sol(first(t),idxs=4)
end
opt = NLopt.Opt(:GN_ORIG_DIRECT_L, 1)
NLopt.lower_bounds!(opt, [0.0])
NLopt.upper_bounds!(opt, [40.0])
NLopt.xtol_rel!(opt,1e-8)
NLopt.min_objective!(opt, g)
(minf,minx,ret) = NLopt.optimize(opt,[20.0])
println(minf," ",minx," ",ret)

NLopt.max_objective!(opt, g)
(maxf,maxx,ret) = NLopt.optimize(opt,[20.0])
println(maxf," ",maxx," ",ret)

plot(sol, vars=(0,4), plotdensity=10000)
scatter!([minx],[minf],label="Global Min")
scatter!([maxx],[maxf],label="Global Max")
plot!(size=(800,600))
savefig("maxima_minima_diffeq_solutions_04.png")
