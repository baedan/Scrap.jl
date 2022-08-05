export StartOfTurnTrigger
struct StartOfTurnTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
