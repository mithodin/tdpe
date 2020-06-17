function e010(N)
    return sum_of_primes_below(N)
end

function solution010()
    N = 2000000
    answer = e010(N)
    println("The answer to problem 010 is $answer")
end

function sum_of_primes_below(n::Integer)
    s = 0
    for x in Channel(c -> get_primes_below(c,n))
        s += x
    end
    return s
end