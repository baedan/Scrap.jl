export AfterAttackTrigger
struct AfterAttackTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
