function e001(N)
    return sum_threes_and_fives(N)
end

function sum_threes_and_fives(N)
    s = 0
    for i = 3:3:N-1
        s += i
    end
    for i = 5:5:N-1
        if i % 3 != 0
            s += i
        end
    end
    return s
end

function solution001()
    N = 1000
    answer001 = e001(N)
    println("The answer to problem 001 is $answer001")
end