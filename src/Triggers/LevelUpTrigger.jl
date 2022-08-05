export LevelUpTrigger
struct LevelUpTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
