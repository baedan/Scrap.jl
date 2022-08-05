export BuyAfterLossTrigger
struct BuyAfterLossTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
