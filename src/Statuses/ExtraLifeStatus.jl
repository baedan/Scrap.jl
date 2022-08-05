export ExtraLifeStatus

struct ExtraLifeStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
