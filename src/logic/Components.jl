@component struct SingletonHeartComponent
    heart::Int8
end

@component struct SingletonTrophyComponent
    trophy::Int8
end

@component struct SingletonTurnComponent
    turn::Int8
end

@component struct SingletonCoinComponent
    coin::Int8
end

@component struct HealthComponent
    health::Int8
end

@component struct AttackComponent
    attack::Int8
end

@component struct NameComponent
    name::String
end

@component struct AbilityOffspringComponent
    ability::Entity
end

@component struct StatusComponent{S<:Scrap.Data.AbstractStatus}
    status::S
end

@component struct PositionComponent
    position::Int8
end

@component struct TeamComponent
    is_player_team::Bool
end

@component struct PriceComponent
    price::Int8
end

@component struct SellableComponent end

@component struct MoveableComponent end

@component struct TriggerComponent{T<:Scrap.Data.AbstractTrigger}
    trigger::T
end

@component struct FaintableComponent end

@component struct EatableComponent end

@component struct FoodInStomachComponent end

@component struct CombatantComponent
    entities::Pair{Entity, Entity}
end

@component struct AbilityParentComponent
    entity::Entity
end

@component struct FrontOfLineComponent end