export SteakAttackStatus

struct SteakAttackStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
