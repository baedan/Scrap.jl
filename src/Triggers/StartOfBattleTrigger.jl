export StartOfBattleTrigger
struct StartOfBattleTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
