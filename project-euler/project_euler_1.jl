using Test

function solve(n)
    sum(i for i in 1:n-1 if i % 3 == 0 || i % 5 == 0)
end

println(solve(1000))

@testset "Test" begin
    @test solve(10) == 23
    @test solve(1000) == 233168
end

