export BoneAttackStatus

struct BoneAttackStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
