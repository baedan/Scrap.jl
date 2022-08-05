export Ability

struct Ability{T<:AbstractTrigger, E<:AbstractEffect}
    description::String
    trigger::T
    effect::E
end