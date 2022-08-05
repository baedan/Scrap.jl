export PoisonAttackStatus

struct PoisonAttackStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
