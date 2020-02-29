#!/usr/bin/env julia
# scikitLearn_example.jl
#
# <2020-02-28> CodeRoninSY
# https://scikitlearnjl.readthedocs.io/en/latest/quickstart/
using RDatasets: dataset
using ScikitLearn

iris = dataset("datasets", "iris")

# ScikitLearn.jl expects arrays, but DataFrames can also be used
X = convert(Array, iris[[:SepalLength, :SepalWidth, :PetalLength, :PetalWidth]])
y = convert(Array, iris[:Species])

@sk_import linear_model: LogisticRegression

model = LogisticRegression(fit_intercept=true)

fit!(model, X, y)
accuracy = sum(predict(model, X) .== y) / length(y)
println("accuracy: $accuracy")
