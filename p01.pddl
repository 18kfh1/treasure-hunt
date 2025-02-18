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
    (arm-free)
    
    ; Locationg <> Corridor Connections
    (corr-exist c3132 loc31)
    (corr-exist c1222 loc12)
    (corr-exist c2232 loc22)
    (corr-exist c3242 loc32)
    (corr-exist c2223 loc22)
    (corr-exist c3233 loc32)
    (corr-exist c2333 loc23)
    (corr-exist c2324 loc23)
    (corr-exist c3334 loc33)
    (corr-exist c2434 loc24)
    (corr-exist c3444 loc34)

    (corr-exist c3132 loc32)
    (corr-exist c1222 loc22)
    (corr-exist c2232 loc32)
    (corr-exist c3242 loc42)
    (corr-exist c2223 loc23)
    (corr-exist c3233 loc33)
    (corr-exist c2333 loc33)
    (corr-exist c2324 loc24)
    (corr-exist c3334 loc34)
    (corr-exist c2434 loc34)
    (corr-exist c3444 loc44)

    ; Key locations
    (key-at loc22 key1)
    (key-at loc42 key2)
    (key-at loc24 key3)
    (key-at loc44 key4)

    ; Locked corridors
    (locked c2324 red)
    (locked c3132 rainbow)
    (locked c2434 red)
    (locked c3242 purple)
    (locked c3444 yellow)
    
    (unlocked c1222)
    (unlocked c2232)
    (unlocked c2223)
    (unlocked c3233)
    (unlocked c2333)
    (unlocked c3334)
    
    ; Risky corridors
    (is-risky c2324)
    (is-risky c2434)

    ; Key colours
    (key-colour key1 red)
    (key-colour key2 rainbow)
    (key-colour key3 yellow)
    (key-colour key4 purple)

    ; Key usage properties (one use, two use, etc)
    (one-use key2)
    (two-use key3)
    (one-use key4)
  )
  (:goal
    (and
      ; Hero's final location goes here
      (hero-at loc31)
    )
  )

)
