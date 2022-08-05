export HurtTrigger
struct HurtTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
