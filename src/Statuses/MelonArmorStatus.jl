export MelonArmorStatus

struct MelonArmorStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
