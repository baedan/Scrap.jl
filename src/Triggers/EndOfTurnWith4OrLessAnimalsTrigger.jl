export EndOfTurnWith4OrLessAnimalsTrigger
struct EndOfTurnWith4OrLessAnimalsTrigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
    triggeredby::TB
end
