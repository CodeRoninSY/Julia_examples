#!/usr/bin/env julia
# differential_equations_tutorial_v3.jl
# <2020-01-25> CodeRoninSY
# Solving systems of equations using DifferentialEquations
# Example 3: solving systems of equations with error estimations
using DifferentialEquations, DiffEqDevTools
using Plots
# gr()
pyplot(alpha=1.0, size=(800,600))

# function f
function f(u,p,t)
    f = u * sin(t)
end

# add analytic solution so that errors are checked
f_analytic(u0, p, t) = -exp(1.0 - cos(t))

# initial conditions
u0 = -1.0
tspan = (0.0,10.0)

# ODE
ff = ODEFunction(f, analytic=f_analytic)
prob = ODEProblem(ff,u0,tspan)
sol = solve(prob, Feagin14(), dt=1//16, adaptive=false)

println("Solution: \n", sol)
println("sol.errors: \n", sol.errors)

# plot solution
plot(sol, lw=3, title="Solution of f=u*sin(t)")
plot!(sol.t, t->f_analytic(u0, 1.0, t), lw=2, ls=:dash)
savefig("differential_equations_tutorial_v3_01.png")

# Convergence test
dts = 1.0 ./ 2.0 .^(10:-1:4)
sim = test_convergence(dts, prob, Feagin14())
plot(sim, title="Convergence test")
savefig("differential_equations_tutorial_v3_02.png")
