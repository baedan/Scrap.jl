export BuyFoodTrigger
struct BuyFoodTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
