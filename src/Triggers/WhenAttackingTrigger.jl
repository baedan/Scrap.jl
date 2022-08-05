export WhenAttackingTrigger
struct WhenAttackingTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
