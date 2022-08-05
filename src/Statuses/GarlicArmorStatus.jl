export GarlicArmorStatus

struct GarlicArmorStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
