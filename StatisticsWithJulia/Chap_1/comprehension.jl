array1 = [(2n+1)^2 for n in 1:5]
array2 = [sqrt(i) for i in array1]
println(typeof(1:5), "  ", typeof(array1), "  ", typeof(array2))
println(1:5)
println(array1)
println(array2)