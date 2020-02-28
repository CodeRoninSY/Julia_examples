# filename: test_script.jl
using Printf
using DelimitedFiles

# readlines
x = Float32[]
y = Float32[]


open("decibel.dat", "r") do f
  for (i,line) in enumerate(eachline(f))
    #println(line)
    a , b = split(line, ",")
    #println(a, "\t", b)
    push!(x, parse(Float64,a))
    push!(y, parse(Float64,b))
  end
end

for i in (1:length(x))
  @printf("i= %d, X= %f, Y= %f \n", i, x[i], y[i])
end

## some functional stuff here
reduce(+, x)
reduce(+, y)
map((x,y) -> (x/y), x, y)

## read all data from formatted F50.dat file
xarray = readdlm("f50.dat", AbstractString, header=false,
        skipstart=0, skipblanks=true, comment_char=' ')

println(xarray)
