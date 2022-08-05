abstract type AbstractTriggeredBy end
struct SelfTriggeredBy <: AbstractTriggeredBy end
struct EachFriendTriggeredBy <: AbstractTriggeredBy end
struct PlayerTriggeredBy <: AbstractTriggeredBy end
struct FriendAheadTriggeredBy <: AbstractTriggeredBy end
