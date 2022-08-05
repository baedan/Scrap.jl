export BeforeAttackTrigger
struct BeforeAttackTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
