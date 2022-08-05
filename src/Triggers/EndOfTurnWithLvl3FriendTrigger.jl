export EndOfTurnWithLvl3FriendTrigger
struct EndOfTurnWithLvl3FriendTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
