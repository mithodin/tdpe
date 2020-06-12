function e006(N)
    return difference(N)
end

function difference(N)
    sum_squares = begin
        s = 0
        for i = 1:N
            s += i ^ 2
        end
        s
    end
    
    square_sum = begin
        s = 0
        for i = 1:N
            s += i
        end
        s ^ 2
    end

    return square_sum - sum_squares
end

function solution006()
    N = 100
    answer = e006(N)
    println("The answer to problem 006 is $answer")
end

