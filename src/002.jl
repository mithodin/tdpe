function e002(N)
    return sum_evens(N)
end

function fib(channel::Channel, num0::Integer, num1::Integer)
    put!(channel, num0)
    put!(channel, num1)
    while true
        sum = num0 + num1
        num0 = num1
        num1 = sum
        put!(channel, sum)
    end
end

function sum_evens(N)
    channel = Channel(c -> fib(c,1,2)) 
    i = take!(channel)
    sum = 0
    while i < N
        if i % 2 == 0
            sum += i
        end
        i = take!(channel)
    end
    close(channel)
    return sum
end

function solution002()
    N = 4000000
    answer = sum_evens(N)
    println("The answer to problem 002 is $answer")
end
    