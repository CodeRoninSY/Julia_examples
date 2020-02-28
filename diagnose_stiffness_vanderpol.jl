#!/usr/bin/env julia
# diagnose_stiffness_vanderpol.jl
# <2020-01-19> CodeRoninSY
# Diagnosing stiffness - Van der Pol
using DifferentialEquations, OrdinaryDiffEq
using ParameterizedFunctions
using Plots
# gr()
pyplot(alpha=1.0, size=(800,600))

van! = @ode_def VanDerPol begin
  dy = μ*((1-x^2)*y - x)
  dx = 1*y
end μ

u0 = [0.0, 2.0]
tspan = (0.0, 6.3)
p = 1e6

prob = ODEProblem(van!,u0,tspan,p)
sol = solve(prob,alg_hints = [:stiff],reltol=1e-6)

plot(sol,denseplot=false)
savefig("diagnose_stiffness_vanderpol_01.png")

# Let's zoom in on the y-axis to see what's going on
plot(sol,ylims = (-10.0,10.0))
savefig("diagnose_stiffness_vanderpol_02.png")
