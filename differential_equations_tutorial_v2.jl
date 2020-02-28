#!/usr/bin/env julia
# differential_equations_tutorial_v2.jl
# <2020-01-19> CodeRoninSY
# Solving systems of equations using OrdinaryDiffEq
# Example 2: solving systems of equations
using DifferentialEquations, OrdinaryDiffEq, Sundials
using Plots
# gr()
pyplot(alpha=1.0, size=(800,600))

# lorenz attractor
function lorenz!(du,u,p,t)
    σ,ρ,β = p
 du[1] = σ*(u[2]-u[1])
 du[2] = u[1]*(ρ-u[3]) - u[2]
 du[3] = u[1]*u[2] - β*u[3]
end
# parameters
p = (10.0, 28.0, 8/3)
u0 = [1.0;0.0;0.0]
tspan = (0.0,100.0)
prob = ODEProblem(lorenz!,u0,tspan,p)
sol = solve(prob, Vern7(), reltol=1e-8, abstol=1e-8)
# plot solution
plot(sol,vars=(1,2,3))
savefig("differential_equations_tutorial_v2_01.png")

plot(sol)
savefig("differential_equations_tutorial_v2_02.png")

plot(sol,vars=(0,2))
savefig("differential_equations_tutorial_v2_03.png")
