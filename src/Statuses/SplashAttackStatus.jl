export SplashAttackStatus

struct SplashAttackStatus{A<:Ability} <: AbstractStatus
    emoji::Char
    ability::A
end
