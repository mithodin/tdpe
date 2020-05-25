function e004(N)
    return largest_palindrome(N)
end

function is_palindrome(i::Integer) :: Bool
    return parse(Int, reverse(repr(i))) == i
end

function largest_palindrome(factor_length::Integer)
    largest::Integer = 0
    for i::Integer = 10^(factor_length-1):10^(factor_length)-1
        for j::Integer = 10^(factor_length-1):i
            product = i*j
            if is_palindrome(product) && product > largest
                largest = product
            end
        end
    end
    return largest
end
 
function solution004()
    N = 3
    answer = e004(N)
    println("The answer to problem 004 is $answer")
end

