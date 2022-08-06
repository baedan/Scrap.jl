module Scrap

module Data
include("base/base.jl")
include("Triggers/Triggers.jl")
include("Statuses/Statuses.jl")
include("Effects/Effects.jl")
# Write your package code here.
end

module Logic
include("logic/game.jl")
end

end
