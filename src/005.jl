function e005(N)
    return prod_of_factors(N)
end

function prod_of_factors(n)
    factors = zeros(Int8, n+1)
    for i = 2:n
        for (f, mul) in Channel(c -> get_prime_factors(c, i))
            if factors[f] < mul
                factors[f] = mul
            end
        end
    end
    prod = 1
    for i = 2:n
        prod *= i^factors[i]
    end
    return prod
end

 
function solution005()
    N = 20
    answer = e005(N)
    println("The answer to problem 005 is $answer")
end

