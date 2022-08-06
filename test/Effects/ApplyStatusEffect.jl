@testset "ApplyStatusEffect" begin
    @test ApplyStatusEffect(WeakStatus('h', Ability("thing", AfterAttackTrigger(PlayerTriggeredBy()), AllOfEffect(Vector{AllOfEffect}()))), "h") isa ApplyStatusEffect
end