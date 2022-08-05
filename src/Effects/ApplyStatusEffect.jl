export ApplyStatusEffect

struct ApplyStatusEffect{S<:AbstractStatus} <: AbstractEffect
    status::S
    to::String
end
