# import Pkg;
# Pkg.add("DifferentialEquations");
# Pkg.add("Plots")
using DifferentialEquations
using Plots
pyplot()
# gr()


f(u,p,t) = 1.01*u
u0=1/2
tspan = (0.0,1.0)
prob = ODEProblem(f,u0,tspan)
sol = solve(prob,Tsit5(),reltol=1e-8,abstol=1e-8)

plot(sol,linewidth=3,title="Solution to the linear ODE with a thick line",
     xaxis="Time (t)",yaxis="u(t) (in μm)",label="ODE!") # legend=false
plot!(sol.t, t->0.5*exp(1.01t),lw=3,ls=:dash,label="True Solution!")

png("j_ScalarEq_pyplot.png")