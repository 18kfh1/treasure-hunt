(define (problem p2-dungeon)
  (:domain Dungeon)

  ; Naming convention:
  ; - loc{i}{j} refers to the location at the i'th column and j'th row (starting in top left corner)
  ; - c{i}{j}{h}{k} refers to the corridor connecting loc{i}{j} and loc{h}{k}
  (:objects
    loc21 loc12 loc22 loc32 loc42 loc23 - location
    key1 key2 key3 key4 - key
    c2122 c1222 c2232 c3242 c2223 - corridor
  )

  (:init

    ; Hero location and carrying status
    (hero-at loc22)

    ; Locationg <> Corridor Connections
    (corr-exist c2122 loc21 loc22)
    (corr-exist c1222 loc12 loc22)
    (corr-exist c2232 loc22 loc32)
    (corr-exist c3242 loc32 loc42)
    (corr-exist c2223 loc22 loc23)

    ; Key locations
    (key-at loc22 key1)
    (key-at loc21 key2)
    (key-at loc12 key3)
    (key-at loc23 key4)

    ; Locked corridors
    (locked c2122 purple)
    (locked c1222 yellow)
    (locked c2223 green)
    (locked c2232 yellow)
    (locked c3242 rainbow)

    ; Risky corridors
        ;none

    ; Key colours
    (key-colour key1 purple)
    (key-colour key2 green)
    (key-colour key3 rainbow)
    (key-colour key4 yellow)

    ; Key usage properties (one use, two use, etc)
    (one-use key1)
    (one-use key2)
    (one-use key3)
    (two-use key4)
  )
  (:goal
    (and
      ; Hero's final location goes here
    )
  )

)
