using Scrap
using Test

@testset "Scrap.jl" begin
    @testset "Effects" begin
        include("Effects/Effects.jl")
    end
end
