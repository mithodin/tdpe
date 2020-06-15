using Test
using tdpe

@testset "Project Euler" begin
    #include individual tests
    include("001.jl")
    include("002.jl")
    include("003.jl")
    include("004.jl")
    include("005.jl")
    include("006.jl")
    include("007.jl")
    include("008.jl")
    #end includes
end

@testset "Prime Factors" begin
   @test begin
        channel = Channel(c -> tdpe.get_prime_factors(c,6))
        f0,n0 = take!(channel)
        f1,n1 = take!(channel)
        f0,n0,f1,n1
   end == (2,1,3,1)
   
   @test begin
        channel = Channel(c -> tdpe.get_prime_factors(c,13))
        f0,n0 = take!(channel)
        f0,n0
   end == (13,1)
end
