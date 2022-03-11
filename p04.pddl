(define (problem p4-dungeon)
  (:domain Dungeon)

  ; Come up with your own problem instance (see assignment for details)
  ; NOTE: You _may_ use new objects for this problem only.

  ; Naming convention:
  ; - loc{i}{j} refers to the location at the i'th column and j'th row (starting in top left corner)
  ; - c{i}{j}{h}{k} refers to the corridor connecting loc{i}{j} and loc{h}{k}
  (:objects
    loc11 loc21 loc31 loc41 loc51 loc61 loc22 loc32 loc42 - location
    c1121 c2131 c3141 c4151 c5161 c1122 c2232 c3242 - corridor
    key1 key2 key3 key4 key5 - key
  )

  (:init

    ; Hero location and carrying status
    (hero-at loc11)
    (arm-free)

    ; Locationg <> Corridor Connections
    (corr-exist c1121 loc11)
    (corr-exist c2131 loc21)
    (corr-exist c3141 loc31)
    (corr-exist c4151 loc41)
    (corr-exist c5161 loc51)
    (corr-exist c1122 loc11)
    (corr-exist c2232 loc22)
    (corr-exist c3242 loc32)

    (corr-exist c1121 loc21)
    (corr-exist c2131 loc31)
    (corr-exist c3141 loc41)
    (corr-exist c4151 loc51)
    (corr-exist c5161 loc61)
    (corr-exist c1122 loc22)
    (corr-exist c2232 loc32)
    (corr-exist c3242 loc42)

    ; Key locations
    (key-at loc11 key1)
    (key-at loc11 key2)
    (key-at loc11 key3)
    (key-at loc61 key4)
    (key-at loc22 key5)

    ; Locked corridors
    (locked c1121 yellow)
    (locked c2131 yellow)
    (locked c3141 green)
    (locked c4151 purple)
    (locked c1122 red)
    (locked c2232 rainbow)

    (unlocked c5161)
    (unlocked c3242)

    ; Risky corridors
    (is-risky c1122)

    ; Key colours
    (key-colour key1 yellow)
    (key-colour key2 green)
    (key-colour key3 purple)
    (key-colour key4 red)
    (key-colour key5 rainbow)

    ; Key usage properties (one use, two use, etc)
    (two-use key1)
    (one-use key2)
    (one-use key3)
    (one-use key5)

  )
  (:goal
    (and
      ; Hero's final location goes here
      (hero-at loc42)
    )
  )

)
