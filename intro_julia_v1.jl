#!/usr/bin/env julia

function sum_(a)
    s = 0.0
    for x in a
        s += x
    end
    return s
end

a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
s = sum_(a)

s

