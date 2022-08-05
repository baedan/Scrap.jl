export WeakStatus

struct WeakStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
