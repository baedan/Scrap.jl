export BuyTrigger
struct BuyTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
