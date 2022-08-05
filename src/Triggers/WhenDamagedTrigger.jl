export WhenDamagedTrigger
struct WhenDamagedTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
