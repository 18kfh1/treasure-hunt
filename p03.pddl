(define (problem p3-dungeon)
  (:domain Dungeon)

  ; Naming convention:
  ; - loc{i}{j} refers to the location at the i'th column and j'th row (starting in top left corner)
  ; - c{i}{j}{h}{k} refers to the corridor connecting loc{i}{j} and loc{h}{k}
  (:objects
    loc34 loc45 loc12 loc22 loc32 loc33 loc25 loc13 loc21 loc14 loc35 loc24 loc44 loc23 loc43 - location
    c2122 c1222 c2232 c1213 c1223 c2223 c3223 c3233 c1323 c2333 c1314 c2314 c2324 c2334 c3334 c1424 c2434 c2425 c2535 c3545 c4544 c4443 - corridor
    key1 key2 key3 key4 key5 key6 - key
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
