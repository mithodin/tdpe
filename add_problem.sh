#!/bin/bash
number=$1

srcfile="function e$number(N)
    return 0
end

function solution$number()
    N = 0
    answer = e$number(N)
    println(\"The answer to problem $number is \$answer\")
end\n"

testfile="@testset \"$number\" begin
    @test tdpe.e$number(0) == 1
end\n"

echo -e "$srcfile" > src/$number.jl
echo -e "$testfile" > test/$number.jl

sed -i 's/#end prints/solution'$number'()\n    #end prints/g' src/tdpe.jl
sed -i 's/#end includes/include("'$number'.jl")\n#end includes/g' src/tdpe.jl
sed -i 's/#end includes/include("'$number'.jl")\n    #end includes/g' test/runtests.jl

git add src/$number.jl
git add test/$number.jl
git commit -m "Add problem $number stub" src/tdpe.jl src/$number.jl test/$number.jl test/runtests.jl
