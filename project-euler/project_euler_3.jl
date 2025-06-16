using Primes
using Test

#=
function solve(n)
    return maximum(i[1] for i in collect(Primes.factor(600851475143)))
end
=#

function largest_prime_factor(n::Integer)
    # check for 2
    lastFactor = -1
    if n%2 == 0
        lastFactor = 2
        n = div(n, 2)
        while n%2 == 0
            n = div(n, 2)
        end
    else
        lastFactor = 1
    end

    maxFactor = sqrt(n)
    factor = 3 
    while n > 1 && factor <= maxFactor 
        if n % factor == 0
            lastFactor = factor
            n = div(n, factor)
            while n % factor == 0
                n = div(n, factor)
            end
        end
        factor = factor + 2
    end
    if n == 1
        return lastFactor
     end
     return n
end

function solve(n::Integer)
    return largest_prime_factor(n)
end

println(solve(600851475143))

@testset "Test" begin
    @test solve(600851475143) == 6857
end

