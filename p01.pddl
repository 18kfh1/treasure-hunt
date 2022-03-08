(define (problem p1-dungeon)
  (:domain Dungeon)

  ; Naming convention:
  ; - loc{i}{j} refers to the location at the i'th column and j'th row (starting in top left corner)
  ; - c{i}{j}{h}{k} refers to the corridor connecting loc{i}{j} and loc{h}{k}
  (:objects
    loc31 loc12 loc22 loc32 loc42 loc23 loc33 loc24 loc34 loc44 - location
    key1 key2 key3 key4 - key
    c3132 c1222 c2232 c3242 c2223 c3233 c2333 c2324 c3334 c2434 c3444 - corridor
  )

  (:init

    ; Hero location and carrying status
    (hero-at loc12)
    ; Locationg <> Corridor Connections
    (corr-exist c3132 loc31 loc32)
    (corr-exist c1222 loc12 loc22)
    (corr-exist c2232 loc22 loc32)
    (corr-exist c3242 loc32 loc42)
    (corr-exist c2223 loc22 loc23)
    (corr-exist c3233 loc32 loc33)
    (corr-exist c2333 loc23 loc33)
    (corr-exist c2324 loc23 loc24)
    (corr-exist c3334 loc33 loc34)
    (corr-exist c2434 loc24 loc34)
    (corr-exist c3444 loc34 loc44)

    ; Key locations
    (key-at loc22 key1)
    (key-at loc42 key2)
    (key-at loc24 key3)
    (key-at loc44 key4)

    ; Locked corridors
    (locked c2324)
    (locked c3132)
    (locked c2434)
    (locked c3242)
    (locked c3444)

    ; Risky corridors
    (is-risky c2324)
    (is-risky c2434)

    ; Key colours
    

    ; Key usage properties (one use, two use, etc)

  )
  (:goal
    (and
      ; Hero's final location goes here
    )
  )

)
