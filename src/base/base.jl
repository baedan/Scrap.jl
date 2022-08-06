abstract type AbstractTriggeredBy end
abstract type AbstractTrigger{TB<:AbstractTriggeredBy} end
abstract type AbstractEffect end
abstract type AbstractStatus end
export AbstractTriggeredBy, AbstractTrigger, AbstractEffect, AbstractStatus
include("Ability/Ability.jl")
