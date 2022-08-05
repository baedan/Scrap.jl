export CoconutShieldStatus

struct CoconutShieldStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
