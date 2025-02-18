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
    (hero-at loc21)
    (arm-free)
    
    ; Locationg <> Corridor Connections
    (corr-exist c2122 loc21)
    (corr-exist c1222 loc12)
    (corr-exist c2232 loc22)
    (corr-exist c1213 loc12)
    (corr-exist c1223 loc12)
    (corr-exist c2223 loc22)
    (corr-exist c3223 loc32)
    (corr-exist c3233 loc32)
    (corr-exist c2333 loc23)
    (corr-exist c1314 loc13)
    (corr-exist c1323 loc13)
    (corr-exist c2314 loc23)
    (corr-exist c2324 loc23)
    (corr-exist c2334 loc23)
    (corr-exist c3334 loc33)
    (corr-exist c1424 loc14)
    (corr-exist c2434 loc24)
    (corr-exist c2425 loc24)
    (corr-exist c2535 loc25)
    (corr-exist c3545 loc35)
    (corr-exist c4544 loc45)
    (corr-exist c4443 loc44)

    (corr-exist c2122 loc22)
    (corr-exist c1222 loc22)
    (corr-exist c2232 loc32)
    (corr-exist c1213 loc13)
    (corr-exist c1223 loc23)
    (corr-exist c2223 loc23)
    (corr-exist c3223 loc23)
    (corr-exist c3233 loc33)
    (corr-exist c2333 loc33)
    (corr-exist c1314 loc14)
    (corr-exist c1323 loc23)
    (corr-exist c2314 loc14)
    (corr-exist c2324 loc24)
    (corr-exist c2334 loc34)
    (corr-exist c3334 loc34)
    (corr-exist c1424 loc24)
    (corr-exist c2434 loc34)
    (corr-exist c2425 loc25)
    (corr-exist c2535 loc35)
    (corr-exist c3545 loc45)
    (corr-exist c4544 loc44)
    (corr-exist c4443 loc43)

    ; Key locations
    (key-at loc21 key1)
    (key-at loc23 key2)
    (key-at loc23 key3)
    (key-at loc23 key4)
    (key-at loc23 key5)
    (key-at loc44 key6)

    ; Locked corridors
    (locked c1223 red)
    (locked c2223 red)
    (locked c3223 red)
    (locked c1323 red)
    (locked c2333 red)
    (locked c2314 red)
    (locked c2324 red)
    (locked c2334 red)
    (locked c2425 purple)
    (locked c2535 green)
    (locked c3545 purple)
    (locked c4544 green)
    (locked c4443 rainbow)
      
    (unlocked c2122)
    (unlocked c1222)
    (unlocked c2232)
    (unlocked c1213)
    (unlocked c3233)
    (unlocked c1314)
    (unlocked c3334)
    (unlocked c1424)
    (unlocked c2434)

    ; Risky corridors
    (is-risky c1223)
    (is-risky c2223)
    (is-risky c3223)
    (is-risky c1323)
    (is-risky c2333)
    (is-risky c2314)
    (is-risky c2324)
    (is-risky c2334)

    ; Key colours
    (key-colour key1 red)
    (key-colour key2 green)
    (key-colour key3 purple)
    (key-colour key4 green)
    (key-colour key5 purple)
    (key-colour key6 rainbow)

    ; Key usage properties (one use, two use, etc)
    (one-use key2)
    (one-use key3)
    (one-use key4)
    (one-use key5)
    (one-use key6)

  )
  (:goal
    (and
      ; Hero's final location goes here
      (hero-at loc43)
    )
  )

)
