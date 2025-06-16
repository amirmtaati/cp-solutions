using Test

function fib(n::Integer)
    n <= 1 && return BigInt(n)

    A = [BigInt(1) BigInt(1); BigInt(1) BigInt(0)]
    result = A^n

    return result[2]
end

function solve()
    # We need this series: 1, 2, 3, 5, 8, ...
    # Whereas fib(n) function will produce 1, 1, 2, 3, ... therefore we need to add 1 to the index
    return sum(f for f in (fib(n+1) for n in 2:3:100) if f <= 4_000_000)
end

println(solve())

@testset "Test" begin
    @test solve() == 4613732
end

