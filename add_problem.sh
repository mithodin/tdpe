#!/bin/bash
number=$1

srcfile="function e$number(N)\n
    return 0\n
end\n
\n
function solution$number()\n
    N = 0\n
    answer = e$number(N)\n
    println(\"The answer to problem $number is \$answer\")\n
end\n"

testfile="@testset \"$number\" begin\n
    @test tdpe.e$number(0) == 1\n
end\n"

echo -e $srcfile > src/$number.jl
echo -e $testfile > test/$number.jl

sed -i 's/#end prints/solution'$number'()\n    #end prints/g' src/tdpe.jl
sed -i 's/#end includes/include("'$number'.jl")\n#end includes/g' src/tdpe.jl
sed -i 's/#end includes/include("'$number'.jl")\n    #end includes/g' test/runtests.jl