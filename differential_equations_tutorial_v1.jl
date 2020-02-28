#!/usr/bin/env julia
# differential_equations_tutorial_v1.jl
# <2020-01-19> CodeRoninSY
# Solving scalar equations using OrdinaryDiffEq
# Example 1: solving 1D nonlinear ODE
using DifferentialEquations, OrdinaryDiffEq, Sundials
using Plots
# gr()
pyplot(alpha=1.0, size=(800,600))

# ODE function
f(u,p,t) = u * sin(t)

# Analytic solution
fx = Float64[]
t = 0.0:0.2:10.0
fex(t) = -exp(1.0 - cos.(t))
for t_ in t
    push!(fx,fex(t_))
end

# initial value
u0 = -1.0

# span of solution time
tspan = (0.0,10.0)

prob = ODEProblem(f,u0,tspan)

alg1 = Euler()
alg2 = Midpoint()
alg3 = Heun()
alg4 = Ralston()
alg5 = RK4()
alg6 = BS3()
alg7 = OwrenZen3()
alg8 = OwrenZen4()
alg9 = OwrenZen5()
alg10 = DP5()
alg11 = Tsit5()
alg12 = TanYam7()
alg13 = DP8()
alg14 = TsitPap8()
alg15 = Feagin10()

# fixed time step
dt = 0.2

sol1 = solve(prob,alg1,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol2 = solve(prob,alg2,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol3 = solve(prob,alg3,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol4 = solve(prob,alg4,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol5 = solve(prob,alg5,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol6 = solve(prob,alg6,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol7 = solve(prob,alg7,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol8 = solve(prob,alg8,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol9 = solve(prob,alg9,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol10 = solve(prob,alg10,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol11 = solve(prob,alg11,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol12 = solve(prob,alg12,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol13 = solve(prob,alg13,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol14 = solve(prob,alg14,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)
sol15 = solve(prob,alg15,dt=dt,reltol=1e-8,abstol=1e-8,saveat=dt)

# plots for each algorithms
p1 = plot(sol11, linewidth=2,
    title="Solution to the linear ODE \\f(u,t,p)=u*sin(t)",
     xaxis="Time (t)", yaxis="u(t)", label="Tsit5", legend=:topright)
plot!(sol2, lw=2, label="Midpoint")
# plot!(sol3, lw=2, label="Heun")
# plot!(sol4, lw=2, label="Ralston")
plot!(sol5, lw=2, label="RK4")
# plot!(sol6, lw=2, label="BS3")
# plot!(sol7, lw=2, label="OwrenZen3")
# plot!(sol8, lw=2, label="OwrenZen4")
# plot!(sol9, lw=2, label="OwrenZen5")
plot!(sol10, lw=2, label="DP5")
# plot!(sol11, lw=2, label="Tsit5")
# plot!(sol12, lw=2, label="TanYam7")
# plot!(sol13, lw=2, label="DP8")
# plot!(sol14, lw=2, label="TsitPap8")
# plot!(sol15, lw=2, label="Feagin10")
plot!(sol11.t, t->-exp(1 - cos(t)),
    lw=2, ls=:dashdot, label="Analytic Solution!")

# difference subplot
p2 = plot(sol11-fx, lw=1, ls=:dash, label="Tsit5",
    legend=:topright)
xaxis!("Time(t)")
yaxis!("Error")
plot!(sol2-fx, lw=1, ls=:dash, label="Midpoint")
# plot!(sol3-fx, lw=1, ls=:dash, label="Heun")
# plot!(sol4-fx, lw=1, ls=:dash, label="Ralston")
plot!(sol5-fx, lw=1, ls=:dash, label="RK4")
# plot!(sol6-fx, lw=1, ls=:dash, label="BS3")
# plot!(sol7-fx, lw=1, ls=:dash, label="OwrenZen3")
# plot!(sol8-fx, lw=1, ls=:dash, label="OwrenZen4")
# plot!(sol9-fx, lw=1, ls=:dash, label="OwrenZen5")
plot!(sol10-fx, lw=1, ls=:dash, label="DP5")
# plot!(sol11-fx, lw=1, ls=:dash, label="Tsit5")
# plot!(sol12-fx, lw=1, ls=:dash, label="TanYam7")
# plot!(sol13-fx, lw=1, ls=:dash, label="DP8")
# plot!(sol14-fx, lw=1, ls=:dash, label="TsitPap8")
# plot!(sol15-fx, lw=1, ls=:dash, label="Feagin10")

plot(p1, p2, layout=(2,1), legend=true)

savefig("differential_equations_tutorial_v1.png")