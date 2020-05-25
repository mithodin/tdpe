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