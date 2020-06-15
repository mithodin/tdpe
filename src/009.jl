function e009(N)
    return product_of_triple(N)
end

function solution009()
    N = 1000
    answer = e009(N)
    println("The answer to problem 009 is $answer")
end

function product_of_triple(sum_of_values::Integer)
    for a = 1:sum_of_values
        for b = a+1:Int(floor((sum_of_values-a-1)/2))
            c = sum_of_values - a - b
            if a^2 + b^2 == c^2
                return a*b*c
            end
        end
    end
    return -1
end

