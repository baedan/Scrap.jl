export SellTrigger
struct SellTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
