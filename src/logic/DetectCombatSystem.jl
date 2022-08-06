using Overseer
struct DetectCombatSystem <: System end

Overseer.requested_components(::DetectCombatSystem) = (FrontOfLineComponent,)

function Overseer.update(::DetectCombatSystem, m::AbstractLedger)
    combatants = Entity[]
    fol = m[FrontOfLineComponent]
    for e in @entities_in(fol)
        push!(combatants, e)
    end
    length(combatants) == 2 && Entity(m, CombatantComponent(Pair(combatants...)))
end
