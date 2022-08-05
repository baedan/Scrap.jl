@testset "AllOfEffect" begin
    @test AllOfEffect(Vector{AllOfEffect}()) isa AllOfEffect
end