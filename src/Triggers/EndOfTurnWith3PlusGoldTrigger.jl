export EndOfTurnWith3PlusGoldTrigger
struct EndOfTurnWith3PlusGoldTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
