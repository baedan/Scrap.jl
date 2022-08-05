export CastsAbilityTrigger
struct CastsAbilityTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
