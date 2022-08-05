import JSON3, StructTypes

url, path = "https://superauto.pet/api.json", "assets/sapdb.json"
download(url, path)

sapdb = JSON3.read(read(path, String))

pets, foods, statuses, turns = values(sapdb)
triggers, triggeredbys, effects = Set{String}(), Set{String}(), Set{String}()

begin
    for pet in values(pets)
		for ability in [:level1Ability, :level2Ability, :level3Ability]
			if haskey(pet, ability)
                push!(triggers, String(pet[ability][:trigger]))
                push!(triggeredbys, String(pet[ability][:triggeredBy][:kind]))
                push!(effects, String(pet[ability][:effect][:kind]))
            end
		end
	end
	for food in values(foods)
		if haskey(food, :ability)
            push!(triggers, String(food[:ability][:trigger]))
            push!(triggeredbys, String(food[:ability][:triggeredBy][:kind]))
            push!(effects, String(food[:ability][:effect][:kind]))
        end
	end
    for status in values(statuses)
        if haskey(status, :ability)
            push!(triggers, String(status[:ability][:trigger]))
            push!(triggeredbys, String(status[:ability][:triggeredBy][:kind]))
            push!(effects, String(status[:ability][:effect][:kind]))
        end
    end
end

mkpath("src/generate/generated/Triggers")
open("src/generate/generated/Triggers/TriggeredBys.jl", "w") do f
    println(f, "abstract type AbstractTriggeredBy end")
    for i in triggeredbys
        println(f, "struct $(i)TriggeredBy <: AbstractTriggeredBy end")
    end
end

open("src/generate/generated/Triggers/Triggers.jl", "w") do f
    println(f, """include("TriggeredBys.jl")\n""")
    println(f, "abstract type AbstractTrigger{TB<:AbstractTriggeredBy} end")
    for i in triggers
        open("src/generate/generated/Triggers/$(i)Trigger.jl", "w") do g
            println(g, """
            export $(i)Trigger
            struct $(i)Trigger{TB<:AbstractTriggeredBy} <: AbstractTrigger{TB}
                triggeredby::TB
            end""")
        end
        println(f, """include("$(i)Trigger.jl")""")
    end
end

include("generated/Triggers/Triggers.jl")

mkpath("src/generate/generated/Effects")
open("src/generate/generated/Effects/Effects.jl", "w") do f
    println(f, """abstract type AbstractEffect end""")
    for i in effects
        println(f, """include("$(i)Effect.jl")""")
    end
end

for i in effects
    open("src/generate/generated/Effects/$(i)Effect.jl", "w") do f
        println(f, "struct $(i)Effect <: AbstractEffect end")
    end
end
include("generated/Effects/Effects.jl")