function e003(N)
    return largest_factor(N)
end

function largest_factor(N::Integer)
    if N < 2
        return 1
    else
        f::Integer = 2
        while f <= sqrt(N)
            while N % f == 0
                N ÷= f
                if N == 1
                    return f
                end
            end
            f += 1
        end
        return N
    end
end
 
function solution003()
    N = 600851475143
    answer = e003(N)
    println("The answer to problem 003 is $answer")
end

