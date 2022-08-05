export AllOfEffect

struct AllOfEffect{Es<:AbstractVector{<:AbstractEffect}} <: AbstractEffect
    effects::Es
end
