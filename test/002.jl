@testset "002" begin
    @test tdpe.e002(0) == 0
    @test tdpe.e002(1) == 0
    @test tdpe.e002(2) == 0
    @test tdpe.e002(3) == 2
    @test tdpe.e002(35) == 44
end