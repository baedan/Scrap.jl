export EatsShopFoodTrigger
struct EatsShopFoodTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
