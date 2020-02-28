#!/usr/bin/env julia
# classical_physics_problems.jl
# <2020-01-19> CodeRoninSY
# Classical physical problems using OrdinaryDiffEq
# Example 1: solving half life of carbon-14
using OrdinaryDiffEq, Plots
# gr()
pyplot()

#Half-life of Carbon-14 is 5,730 years.
C₁ = 5.730

#Setup
u₀ = 1.0
tspan = (0.0, 1.0)

#Define the problem
radioactivedecay(u,p,t) = -C₁*u

#Pass to solver
prob = ODEProblem(radioactivedecay,u₀,tspan)
sol = solve(prob,Tsit5())

#Plot
plot(size=(1000,800),dpi=100)
plot!(sol,linewidth=2,
    title ="Carbon-14 half-life",
    xaxis = "Time [thousands of years]",
    yaxis = "Percentage left",
    label = "Numerical Solution")
plot!(sol.t, t->exp(-C₁*t),lw=3,ls=:dash,
    label="Analytical Solution")
savefig("classical_physics_problems.png")