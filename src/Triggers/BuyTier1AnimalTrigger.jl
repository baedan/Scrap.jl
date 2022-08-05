export BuyTier1AnimalTrigger
struct BuyTier1AnimalTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
