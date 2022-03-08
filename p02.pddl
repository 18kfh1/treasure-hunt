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

    ; Locationg <> Corridor Connections

    ; Key locations

    ; Locked corridors

    ; Risky corridors

    ; Key colours

    ; Key usage properties (one use, two use, etc)

  )
  (:goal
    (and
      ; Hero's final location goes here
    )
  )

)
