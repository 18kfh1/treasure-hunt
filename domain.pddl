(define (domain Dungeon)

    (:requirements
        :typing
        :negative-preconditions
        :conditional-effects
    )

    ; Do not modify the types
    (:types
        location colour key corridor
    )

    ; Do not modify the constants
    (:constants
        red yellow green purple rainbow - colour
    )

    ; You may introduce whatever predicates you would like to use
    (:predicates

        ; One predicate given for free!
        (hero-at ?loc - location)
        (arm-free)
        (has-key ?k - key)

        ;(corr-from ?cor - corridor ?from - location)
        ;(corr-to ?cor - corridor ?to - location)
        (corr-exist ?cor - corridor ?from ?to -location)
        (locked ?cor - corridor ?col - colour)
        (is-collapse ?cor - corridor)
        (is-risky ?cor - corridor)

        (key-at ?loc - location ?key - key)
        (one-use ?k - key)
        (two-use ?k - key)
        (multi-use ?k - key)
        (no-use ?k - key)
        (key-has-uses)
        (key-colour ?k - key ?col - colour)

        
    )

    ; IMPORTANT: You should not change/add/remove the action names or parameters

    ;Hero can move if the
    ;    - hero is at current location ?from,
    ;    - wants to move to location ?to,
    ;    - corridor ?cor exists between the ?from and ?to locations
    ;    - there isn't a locked door in corridor ?cor
    ;Effects move the hero, and collapse the corridor if it's "risky"
    (:action move

        :parameters (?from ?to - location ?cor - corridor)

        :precondition (and
            (hero-at ?from)
            (corr-exist ?cor ?from ?to)
            (not (locked ?cor))
        )

        :effect (and
            (when (is-risky ?cor) (is-collapse ?cor))
            (hero-at ?to)
        )
    )

    ;Hero can pick up a key if the
    ;    - hero is at current location ?loc,
    ;    - there is a key ?k at location ?loc,
    ;    - the hero's arm is free,
    ;Effect will have the hero holding the key and their arm no longer being free
    (:action pick-up

        :parameters (?loc - location ?k - key)

        :precondition (and
            (hero-at ?loc)
            (key-at ?loc ?k)
            (arm-free)
        )

        :effect (and
            (not (key-at ?loc ?k)) 
            (has-key ?k)
            (not(arm-free))
        )
    )

    ;Hero can drop a key if the
    ;    - hero is holding a key ?k,
    ;    - the hero is at location ?loc
    ;Effect will be that the hero is no longer holding the key
    (:action drop

        :parameters (?loc - location ?k - key)

        :precondition (and
            (has-key ?k)
            (hero-at ?loc)
            (not(arm-free))
        )

        :effect (and
            (not(has-key ?k))
            (key-at ?loc ?k)
            (arm-free) ;OR IS THIS (NOT(ARM-FREE))
        )
    )


    ;Hero can use a key for a corridor if
    ;    - the hero is holding a key ?k,
    ;    - the key still has some uses left,
    ;    - the corridor ?cor is locked with colour ?col,
    ;    - the key ?k is if the right colour ?col,
    ;    - the hero is at location ?loc
    ;    - the corridor is connected to the location ?loc
    ;Effect will be that the corridor is unlocked and the key usage will be updated if necessary
    (:action unlock

        :parameters (?loc - location ?cor - corridor ?col - colour ?k - key)

        :precondition (and
            (has-key ?k)
            (key-has-uses ?k)
            (locked ?cor ?col)
            (key-colour ?k ?col)
            (hero-at ?loc)
            (corr-exist ?cor ?loc)
        )  

        :effect (and
            (not(locked ?cor ?col))
            (when (one-use ?k) (no-use ?k))
            (when (two-use ?k) (one-use ?k))
            ;(when (multi-use ?k) (multi-use ?k))
        )
    )

)
