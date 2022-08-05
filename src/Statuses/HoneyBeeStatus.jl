export HoneyBeeStatus

struct HoneyBeeStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
