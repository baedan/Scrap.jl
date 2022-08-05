export EndOfTurnTrigger
struct EndOfTurnTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
