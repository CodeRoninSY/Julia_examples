# Julia language educational resources & manuals
## <2020-01-18> CodeRoninSY


# How to start Julia notebook via Jupyter from command line:
<p><code>$> jupyter notebook --no-browser</code><br></p>

# How to ...
<p>
<code>$> julia</code><br>
<code>julia> ]</code><br>
<code>pkg> add Plots</code><br>
</p>
-- or --
<p>
<code>] develop "https://github.com/dmlc/XGBoost.jl.git"</code><br>
<code>] build XGBoost</code><br>
</p>

# How to add package via github url:<br>
You can either: <br>
<p>
 <code>] add https://github.com/TuringLang/Libtask.jl</code><br>
</p>
or equivalently:<br>
<p>
 <code>using Pkg</code><br>
 <code>Pkg.add(PackageSpec(url="https://github.com/TuringLang/Libtask.jl")</code><br>
</p>
![Libtask.jl](./libtask.png)

----------------------------------------------------------------------
* Julia language github page:<br>
https://github.com/JuliaLang/julia<br>

* Julia language learning:<br>
https://julialang.org/learning/<br>

* Julia version management: <br>
https://github.com/HiroakiMikami/jlenv#installation<br>

* Julia Observer:<br>
https://juliaobserver.com/<br>

* Julia Bloggers:<br>
https://www.juliabloggers.com/<br>

* The Fast Track to Julia 1.0:<br>
https://juliadocs.github.io/Julia-Cheat-Sheet/<br>

* Curated list of Julia:<br>
https://github.com/svaksha/Julia.jl#index<br>

* Introduction to Applied Linear Algebra:<br>
https://web.stanford.edu/~boyd/vmls/<br>
https://github.com/vbartle/VMLS-Companions<br>

* Statistics with Julia:<br>
https://people.smp.uq.edu.au/YoniNazarathy/julia-stats/StatisticsWithJulia.pdf<br>
https://github.com/h-Klok/StatsWithJuliaBook<br>
R Datasets:<br> 
https://vincentarelbundock.github.io/Rdatasets/datasets.html<br>

* hydro: simple, relatively small & mildly interesting hydrodynamic code:<br>
https://github.com/natj/hydro<br>

* MLJ.jl : Alan Turing Institute Machine Learning Framework:<br>
https://github.com/alan-turing-institute/MLJ.jl<br>
https://alan-turing-institute.github.io/MLJTutorials/<br>

* MLJ Cheat sheet: <br>
https://github.com/alan-turing-institute/MLJ.jl/blob/master/docs/src/mlj_cheatsheet.md<br>

* ScikitLearn.jl:<br> 
https://github.com/cstjean/ScikitLearn.jl<br>
https://github.com/cstjean/ScikitLearn.jl/blob/master/docs/examples.md<br>
https://scikitlearnjl.readthedocs.io/en/latest/<br>

* XGBoost.jl:<br> 
https://github.com/dmlc/XGBoost.jl<br>

* Juliabox tutorials:<br>
https://github.com/JuliaComputing/JuliaBoxTutorials<br>

* Julia Quantitative Economics:<br>
https://julia.quantecon.org/<br>

* A Deep Introduction to Julia for Data Science and Scientific Computing:<br>
https://ucidatascienceinitiative.github.io/IntroToJulia/<br>

* Differential Equations methods documentation:<br>
https://github.com/JuliaDiffEq/DiffEqDocs.jl/blob/master/docs/src/solvers/ode_solve.md<br>

* Sundials:<br>
https://github.com/JuliaDiffEq/Sundials.jl<br>

* JuliaDiffEq main github repo:<br>
https://github.com/JuliaDiffEq<br>

* DiffEqTutorials.jl:<br>
https://github.com/JuliaDiffEq/DiffEqTutorials.jl<br>
https://docs.juliadiffeq.org/dev/types/ode_types/<br>
https://archimede.dm.uniba.it/~testset/report/pollu.pdf<br>
Benchmarks for identification of ODE from time series data:<br>
http://www.cse.chalmers.se/~dag/identification/Benchmarks/index.html<br>
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC403766/<br>
COPASI : http://copasi.org/<br>
ODE Lecture notes: https://www.mat.univie.ac.at/~gerald/ftp/book-ode/<br>
A Comparison of ODE Solvers for Dynamical Systems with Impacts: https://nereus.mech.ntua.gr/Documents/pdf_ps/CND17.pdf<br>
Benchmarks for identification of ordinary differential equations from time series data: https://academic.oup.com/bioinformatics/article/25/6/780/251452<br>
Comprehensive benchmarking of Markov chain Monte Carlo methods for dynamical systems: https://bmcsystbiol.biomedcentral.com/articles/10.1186/s12918-017-0433-1<br>

* FEM Finite Element Methods:<br>
DUNE project: https://www.dune-project.org/<br>
Matlab implementation of the Finite element method in elasticity: https://www2.mathematik.hu-berlin.de/~cc/cc_homepage/download/2002-AJ_CC_FS_KR-Matlab_Implementation_FEM_Elasticity.pdf<br>
Benchmarking the immersed finite element method for fluid–structure interaction problems: https://www.sciencedirect.com/science/article/pii/S0898122115001078<br>
Netgen: https://ngsolve.org/<br>
Mmg Platform: https://www.mmgtools.org/<br>
FLTK Fast Light Toolkit ("fulltick" UI builder): https://www.fltk.org/<br>
OpenGL: https://www.opengl.org/<br>
ONELAB: http://onelab.info/<br>
GetDP: http://getdp.info/<br>
GMSH: http://gmsh.info/<br>
ALBERTA: http://www.alberta-fem.de/<br>
FEniCS: <br>
https://fenicsproject.org/<br>
https://fenicsproject.org/download/<br>
https://fenics.readthedocs.io/en/latest/installation.html#debian-ubuntu-packages<br>
Docker Engine: https://docs.docker.com/install/linux/docker-ce/ubuntu/#prerequisites<br>


* DifferentialEquations.jl documentation:<br>
https://docs.juliadiffeq.org/stable/<br>

* DifferentialEquations.jl Documentation:<br>
https://docs.juliadiffeq.org/v5.3/index.html<br>
https://docs.juliadiffeq.org/stable/#DifferentialEquations.jl-Documentation-1<br>

* DiffEqDevTools Developer documentation:<br>
https://devdocs.juliadiffeq.org/dev/<br>

* Stochastic Differential Equations:<br>
https://docs.juliadiffeq.org/v5.3/tutorials/sde_example.html#Example-1:-Scalar-SDEs-1<br>
https://docs.juliadiffeq.org/stable/tutorials/sde_example/#Stochastic-Differential-Equations-1<br>
https://www.stochasticlifestyle.com/category/math/differential-equations/<br>

* Intro to Julia for data science:<br>
https://www.youtube.com/watch?v=SLE0vz85Rqo&t=1167s<br>

* Parameter estimation and Bayesian analysis:<br> 
https://docs.juliadiffeq.org/dev/analysis/parameter_estimation/#parameter_estimation-1<br>
LowLevelParticleFilters: https://github.com/baggepinnen/LowLevelParticleFilters.jl<br>

* Przemyslaw Szufel (Econometrics, Optimization) github:<br>
https://github.com/pszufe<br>

* Bogumil Kaminski (Econometrics, Distributed computing) github:<br>
https://github.com/bkamins?tab=repositories<br>

* Jalem Raj Rhit (Econometrics, Machine learning) github: <br>
https://github.com/Dawny33<br>

* Julia 1.0 Programming Cookbook: <br>
https://github.com/PacktPublishing/Julia-1.0-Programming-Cookbook<br>

* Packtpub github repo for selected books:<br>
https://github.com/PacktPublishing/<br>

* Plot backends: <br>
https://ucidatascienceinitiative.github.io/IntroToJulia/Html/PlotsJL#Using-Backends<br>

* Tom Breloff's ML notes: <br>
http://www.breloff.com/JuliaML-and-Plots/<br>
https://www.youtube.com/watch?v=LGB8GvAL4HA<br>

* GrapRecipes.jl : updated version of PlotRecipes.jl:<br>
https://github.com/JuliaPlots/GraphRecipes.jl<br>

* Tom Breloff's github repo: <br>
https://github.com/tbreloff<br>

* Global Sensitivity Analysis: <br>
https://docs.juliadiffeq.org/latest/analysis/global_sensitivity/<br>

* Finding maxima and minima of DiffEq Solutions:<br>
https://tutorials.juliadiffeq.org/html/ode_extras/03-ode_minmax.html<br>

* Basic parameter estimation, reverse-mode automatic differentiation and inverse problems: <br>
https://mitmath.github.io/18337/lecture10/estimation_identification<br>

* JumMP.jl:<br>
https://github.com/JuliaOpt/JuMP.jl<br>
http://www.juliaopt.org/JuMP.jl/v0.20.0/<br>
https://arxiv.org/abs/1312.1431<br>

* Double Pendulum; mathematical equations:<br>
https://www.math24.net/double-pendulum/<br>

* An Implicit/Explicit CUDA-Accelerated Solver for the 2D Beeler-Reuter Model:<br>
https://tutorials.juliadiffeq.org/html/advanced/01-beeler_reuter.html<br>
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1283659/?page=14<br>

* AlgebraicMultigrid:<br>
https://github.com/JuliaLinearAlgebra/AlgebraicMultigrid.jl<br>

* diffeqpy : Define and use python for DifferentialEquations.jl solution:<br>
https://pypi.org/project/diffeqpy/<br>

* BLAS functions: <br>
https://github.com/lopezm94/SugarBLAS.jl<br>

* A library of premade problems for examples and testing:<br>
https://github.com/JuliaDiffEq/DiffEqProblemLibrary.jl<br>
Chris Rackauckas youtube video:<br> 
https://www.youtube.com/watch?v=75SCMIRlNXM<br>

* Workshop: Solving optimization problems with JuliaOpt:<br>
https://www.youtube.com/watch?v=nnL7yLMVu6c<br>
https://github.com/mlubin<br>
https://github.com/madeleineudell<br>
https://github.com/madeleineudell/Convex.jl<br>

* JuliaOpt Optimization related projects in Julia:<br>
https://www.youtube.com/watch?v=7LNeR299q88<br>
https://github.com/IainNZ<br>
https://github.com/JuliaOpt/juliaopt-notebooks/tree/master/notebooks<br>
https://github.com/JuliaOpt/juliaopt-notebooks<br>
https://github.com/JuliaNLSolvers<br>
https://github.com/JuliaNLSolvers/Notebooks<br>
https://julianlsolvers.github.io/Optim.jl/stable/<br>
Constraint Solver: https://opensourc.es/blog/constraint-solver-1<br>

* DiffEqBenchmarks.jl: benchmarks for the DiffEq solvers:<br>
https://github.com/JuliaDiffEq/DiffEqBenchmarks.jl<br>

* QuantECON<br>
https://quantecon.org/<br>

* Modeling Disease Outbreak:<br>
COVID-19 interactive dashboard: https://www.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6<br>
Modeling 2019-nCoV: https://systems.jhu.edu/research/public-health/ncov-model-2/<br>
A decision-support framework to optimize border control for global outbreak mitigation: https://www.nature.com/articles/s41598-019-38665-w<br>
https://www.nature.com/articles/s41598-019-38665-w.pdf<br>
QGIS: https://qgis.org/en/site/<br>



----------------------------------------------------------------------------
* DifferentialEquations_jl_documentation_ChrisR.pdf
Notes:
 1. https://docs.juliadiffeq.org/latest/
 2. https://github.com/JuliaDiffEq/DiffEqTutorials.jl
 3. https://github.com/JuliaLang/IJulia.jl
 4. https://github.com/JuliaPlots/Plots.jl
 5. https://github.com/JuliaPy/PyPlot.jl
 6. http://matplotlib.org/
 7. https://github.com/symengine/SymEngine.jl
 8. https://github.com/JuliaDiffEq
 9. https://github.com/JuliaDiffEq/DiffEqBase.jl
 10. https://github.com/JuliaDiffEq/OrdinaryDiffEq.jl
 11. https://github.com/JuliaDiffEq/Sundials.jl
 12. https://github.com/JuliaDiffEq/ODE.jl
 13. https://github.com/luchr/ODEInterface.jl
 14. https://github.com/rveltz/LSODA.jl
 15. https://github.com/JuliaArbTypes/ArbFloats.jl
 16. https://github.com/stevengj/DecFP.jl
 17. https://github.com/JuliaDiffEq/DiffEqTutorials.jl/blob/master/ExtraODEFeatures/Feagin’s%20Order%2010%2C%2012%2C%20and%2014%20methods.ipynb
 18. https://github.com/Keno/SIUnits.jl
 19. https://github.com/ajkeller34/Unitful.jl
 20. https://github.com/JuliaDiffEq/DiffEqTutorials.jl/blob/master/ExtraODEFeatures/Unit%20Checked%20Arithmetic%20via%20Unitful.ipynb
 21. https://github.com/JuliaDiffEq/DiffEqBenchmarks.jl/blob/master/Parallelism/Multithreaded%20Runge-Kutta%20Methods.ipynb
 22. https://github.com/JuliaDiffEq/OrdinaryDiffEq.jl
 23. http://devdocs.juliadiffeq.org/latest
 24. https://github.com/JuliaDiffEq/DifferentialEquations.jl/tree/master/benchmarks
 25. https://github.com/JuliaDiffEq/Sundials.jl
 26. https://github.com/luchr/ODEInterface.jl
 27. https://github.com/JuliaParallel/DistributedArrays.jl
 28. https://github.com/JuliaParallel/PETSc.jl
 29. https://github.com/kshyatt/CUSOLVER.jl
 30. https://github.com/JuliaDiff/ForwardDiff.jl
 31. https://discourse.julialang.org/
 32. https://github.com/JuliaDiffEq/DifferentialEquations.jl/issues
 33. https://gitter.im/JuliaDiffEq/Lobby
 34. http://juliadiffeq.org/news
 35. https://github.com/JuliaDiffEq/DiffEqBase.jl
 36. https://github.com/JuliaDiffEq/StochasticDiffEq.jl
 37. https://github.com/JuliaDiffEq/FiniteElementDiffEq.jl
 38. https://github.com/JuliaDiffEq/DiffEqDevTools.jl
 39. https://github.com/JuliaDiffEq/OrdinaryDiffEq.jl
 40. https://github.com/JuliaDiffEq/AlgebraicDiffEq.jl
 41. https://github.com/JuliaDiffEq/StokesDiffEq.jl
 42. https://github.com/JuliaDiffEq/DiffEqParamEstim.jl
 43. https://github.com/JuliaDiffEq/DiffEqSensitivity.jl
 44. https://github.com/JuliaDiffEq/Sundials.jl
 45. https://github.com/JuliaDiffEq/ODEInterfaceDiffEq.jl
 46. https://github.com/JuliaDiffEq/ParameterizedFunctions.jl
 47. https://github.com/JuliaDiffEq/DiffEqPDEBase.jl
 48. https://github.com/JuliaDiffEq/DelayDiffEq.jl
 49. https://github.com/JuliaDiffEq/DiffEqCallbacks.jl
 50. https://github.com/JuliaDiffEq/DiffEqMonteCarlo.jl
 51. https://github.com/JuliaDiffEq/DiffEqJump.jl
 52. https://github.com/JuliaDiffEq/DiffEqFinancial.jl
 53. https://github.com/JuliaDiffEq/DiffEqBiological.jl
 54. https://github.com/JuliaDiffEq/MultiScaleArrays.jl
 55. https://github.com/JuliaPlots/RecipesBase.jl
 56. https://github.com/JuliaNLSolvers/Optim.jl
 57. https://github.com/mauro3/Parameters.jl
 58. https://github.com/JuliaDiff/ForwardDiff.jl
 59. https://github.com/JuliaMath/IterativeSolvers.jl
 60. https://github.com/simonbyrne/GenericSVD.jl
 61. https://github.com/JuliaLang/Compat.jl
 62. https://github.com/simonbyrne/InplaceOps.jl
 63. https://github.com/symengine/SymEngine.jl
 64. https://github.com/luchr/ODEInterface.jl
 65. https://github.com/JuliaDiffEq/ODE.jl
 66. https://github.com/rveltz/LSODA.jl
