function get_prime_factors(channel::Channel, i::Integer)
    max_f = i÷2
    for f = 2:max_f
        n = 0
        while i % f == 0
            n += 1
            i ÷= f
        end
        if n > 0
            put!(channel,(f,n))
        end
    end
    if i > 1
        put!(channel, (i,1))
    end
end

function get_up_to_nth_prime(channel::Channel, n::Integer)
    max_n::Int = n <= 6 ? 13 : Int(floor(n*(log(n)+log(log(n)))))
    sieve_prime::Array{Bool} = trues(max_n)
    have_primes = 0
    for i = 2:max_n
        if sieve_prime[i-1]
            put!(channel,i)
            have_primes += 1
            if have_primes == n
                break
            end
            for j = i ^ 2:i:max_n
                sieve_prime[j-1] = false
            end
        end
    end
end

function get_nth_prime(n::Integer)
    res = 0
    for x in Channel(c -> get_up_to_nth_prime(c,n))
        res = x
    end
    return res
end