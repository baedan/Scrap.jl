using Scrap
using Test

@testset "Scrap.jl" begin
    using Scrap.Data
    @testset "Effects" begin
        include("Effects/Effects.jl")
    end
end
