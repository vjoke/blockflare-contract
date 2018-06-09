(module
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "printi" (func $printi (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "prints_l" (func $prints_l (param i32 i32)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (import "env" "sha256" (func $sha256 (param i32 i32 i32)))
 (table 5 5 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN10blockflare9relayjoinEy $_ZN10blockflare7requestENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_ $_ZN10blockflare11relayassignEy $_ZN10blockflare10relayleaveEy)
 (memory $0 1)
 (data (i32.const 4) " c\00\00")
 (data (i32.const 16) "onerror\00")
 (data (i32.const 32) "eosio\00")
 (data (i32.const 48) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 112) "Relayer is not registered in the system.\00")
 (data (i32.const 160) "Assigned to request \00")
 (data (i32.const 192) "read\00")
 (data (i32.const 208) "get\00")
 (data (i32.const 224) "Checksum of message is not equivalent to proof of work.\00")
 (data (i32.const 288) "0\00")
 (data (i32.const 304) "Difficulty: % - Message: % - Proof: % - Proof prefix: % - Generated prefix: % - \00")
 (data (i32.const 400) "Proof of work does not match up to current contract\'s difficulty.\00")
 (data (i32.const 480) "Success.\00")
 (data (i32.const 8896) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "apply" (func $apply))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "memcmp" (func $memcmp))
 (export "strlen" (func $strlen))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (set_local $9
   (i64.const 0)
  )
  (set_local $8
   (i64.const 59)
  )
  (set_local $7
   (i32.const 16)
  )
  (set_local $10
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $9)
          (i64.const 6)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $7)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $11
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $9)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $11
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $11
     (i64.shl
      (i64.and
       (get_local $11)
       (i64.const 31)
      )
      (i64.and
       (get_local $8)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (set_local $9
    (i64.add
     (get_local $9)
     (i64.const 1)
    )
   )
   (set_local $10
    (i64.or
     (get_local $11)
     (get_local $10)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $8
      (i64.add
       (get_local $8)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $10)
     (get_local $2)
    )
   )
   (set_local $9
    (i64.const 0)
   )
   (set_local $8
    (i64.const 59)
   )
   (set_local $7
    (i32.const 32)
   )
   (set_local $10
    (i64.const 0)
   )
   (loop $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (br_if $label$12
          (i64.gt_u
           (get_local $9)
           (i64.const 4)
          )
         )
         (br_if $label$11
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $3
              (i32.load8_s
               (get_local $7)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 165)
          )
         )
         (br $label$10)
        )
        (set_local $11
         (i64.const 0)
        )
        (br_if $label$9
         (i64.le_u
          (get_local $9)
          (i64.const 11)
         )
        )
        (br $label$8)
       )
       (set_local $3
        (select
         (i32.add
          (get_local $3)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $3)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $11
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $3)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $11
      (i64.shl
       (i64.and
        (get_local $11)
        (i64.const 31)
       )
       (i64.and
        (get_local $8)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $7
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
    (set_local $9
     (i64.add
      (get_local $9)
      (i64.const 1)
     )
    )
    (set_local $10
     (i64.or
      (get_local $11)
      (get_local $10)
     )
    )
    (br_if $label$7
     (i64.ne
      (tee_local $8
       (i64.add
        (get_local $8)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (call $eosio_assert
    (i64.eq
     (get_local $10)
     (get_local $1)
    )
    (i32.const 48)
   )
  )
  (block $label$13
   (block $label$14
    (br_if $label$14
     (i64.eq
      (get_local $1)
      (get_local $0)
     )
    )
    (set_local $9
     (i64.const 0)
    )
    (set_local $8
     (i64.const 59)
    )
    (set_local $7
     (i32.const 16)
    )
    (set_local $10
     (i64.const 0)
    )
    (loop $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (block $label$19
         (block $label$20
          (br_if $label$20
           (i64.gt_u
            (get_local $9)
            (i64.const 6)
           )
          )
          (br_if $label$19
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $3
               (i32.load8_s
                (get_local $7)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 165)
           )
          )
          (br $label$18)
         )
         (set_local $11
          (i64.const 0)
         )
         (br_if $label$17
          (i64.le_u
           (get_local $9)
           (i64.const 11)
          )
         )
         (br $label$16)
        )
        (set_local $3
         (select
          (i32.add
           (get_local $3)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $3)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $11
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $11
       (i64.shl
        (i64.and
         (get_local $11)
         (i64.const 31)
        )
        (i64.and
         (get_local $8)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $7
      (i32.add
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (i64.add
       (get_local $9)
       (i64.const 1)
      )
     )
     (set_local $10
      (i64.or
       (get_local $11)
       (get_local $10)
      )
     )
     (br_if $label$15
      (i64.ne
       (tee_local $8
        (i64.add
         (get_local $8)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
    (br_if $label$13
     (i64.ne
      (get_local $10)
      (get_local $2)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $12)
     (i32.const 88)
    )
    (i32.const 0)
   )
   (i32.store
    (tee_local $7
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $12)
     (i32.const 100)
    )
    (i32.const 0)
   )
   (i64.store offset=72
    (get_local $12)
    (get_local $0)
   )
   (i64.store offset=80
    (get_local $12)
    (i64.const 0)
   )
   (i32.store offset=92
    (get_local $12)
    (get_local $7)
   )
   (i32.store offset=104
    (get_local $12)
    (i32.const 3)
   )
   (block $label$21
    (block $label$22
     (block $label$23
      (block $label$24
       (br_if $label$24
        (i64.gt_s
         (get_local $2)
         (i64.const -4998310293095677953)
        )
       )
       (br_if $label$23
        (i64.eq
         (get_local $2)
         (i64.const -4998310474262829568)
        )
       )
       (br_if $label$21
        (i64.ne
         (get_local $2)
         (i64.const -4998310321956847616)
        )
       )
       (i32.store offset=60
        (get_local $12)
        (i32.const 0)
       )
       (i32.store offset=56
        (get_local $12)
        (i32.const 1)
       )
       (i64.store offset=16 align=4
        (get_local $12)
        (i64.load offset=56
         (get_local $12)
        )
       )
       (drop
        (call $_ZN5eosio14execute_actionI10blockflareS1_JyEEEbPT_MT0_FvDpT1_E
         (i32.add
          (get_local $12)
          (i32.const 72)
         )
         (i32.add
          (get_local $12)
          (i32.const 16)
         )
        )
       )
       (br $label$21)
      )
      (br_if $label$22
       (i64.eq
        (get_local $2)
        (i64.const -4998310293095677952)
       )
      )
      (br_if $label$21
       (i64.ne
        (get_local $2)
        (i64.const -4995154566526795776)
       )
      )
      (i32.store offset=68
       (get_local $12)
       (i32.const 0)
      )
      (i32.store offset=64
       (get_local $12)
       (i32.const 2)
      )
      (i64.store offset=8 align=4
       (get_local $12)
       (i64.load offset=64
        (get_local $12)
       )
      )
      (drop
       (call $_ZN5eosio14execute_actionI10blockflareS1_JNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_EEEbPT_MT0_FvDpT1_E
        (i32.add
         (get_local $12)
         (i32.const 72)
        )
        (i32.add
         (get_local $12)
         (i32.const 8)
        )
       )
      )
      (br $label$21)
     )
     (i32.store offset=44
      (get_local $12)
      (i32.const 0)
     )
     (i32.store offset=40
      (get_local $12)
      (i32.const 3)
     )
     (i64.store offset=32 align=4
      (get_local $12)
      (i64.load offset=40
       (get_local $12)
      )
     )
     (drop
      (call $_ZN5eosio14execute_actionI10blockflareS1_JyEEEbPT_MT0_FvDpT1_E
       (i32.add
        (get_local $12)
        (i32.const 72)
       )
       (i32.add
        (get_local $12)
        (i32.const 32)
       )
      )
     )
     (br $label$21)
    )
    (i32.store offset=52
     (get_local $12)
     (i32.const 0)
    )
    (i32.store offset=48
     (get_local $12)
     (i32.const 4)
    )
    (i64.store offset=24 align=4
     (get_local $12)
     (i64.load offset=48
      (get_local $12)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI10blockflareS1_JyEEEbPT_MT0_FvDpT1_E
      (i32.add
       (get_local $12)
       (i32.const 72)
      )
      (i32.add
       (get_local $12)
       (i32.const 24)
      )
     )
    )
   )
   (call $_ZNSt3__16__treeINS_12__value_typeIyN10blockflare7relayerEEENS_19__map_value_compareIyS4_NS_4lessIyEELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE
    (i32.add
     (get_local $12)
     (i32.const 92)
    )
    (i32.load
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
    )
   )
   (br_if $label$13
    (i32.eqz
     (tee_local $4
      (i32.load offset=80
       (get_local $12)
      )
     )
    )
   )
   (block $label$25
    (block $label$26
     (br_if $label$26
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $12)
           (i32.const 84)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (set_local $5
      (i32.sub
       (i32.const 0)
       (get_local $4)
      )
     )
     (set_local $7
      (i32.add
       (get_local $7)
       (i32.const -16)
      )
     )
     (loop $label$27
      (block $label$28
       (br_if $label$28
        (i32.eqz
         (tee_local $3
          (i32.load
           (i32.add
            (get_local $7)
            (i32.const 4)
           )
          )
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $7)
         (i32.const 8)
        )
        (get_local $3)
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (block $label$29
       (br_if $label$29
        (i32.eqz
         (i32.and
          (i32.load8_u
           (i32.add
            (get_local $7)
            (i32.const -8)
           )
          )
          (i32.const 1)
         )
        )
       )
       (call $_ZdlPv
        (i32.load
         (get_local $7)
        )
       )
      )
      (block $label$30
       (br_if $label$30
        (i32.eqz
         (i32.and
          (i32.load8_u
           (i32.add
            (get_local $7)
            (i32.const -20)
           )
          )
          (i32.const 1)
         )
        )
       )
       (call $_ZdlPv
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -12)
         )
        )
       )
      )
      (br_if $label$27
       (i32.ne
        (i32.add
         (tee_local $7
          (i32.add
           (get_local $7)
           (i32.const -36)
          )
         )
         (get_local $5)
        )
        (i32.const -16)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $12)
        (i32.const 80)
       )
      )
     )
     (br $label$25)
    )
    (set_local $7
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 112)
   )
  )
 )
 (func $_ZN10blockflare7requestENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6_S6_ (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 240)
    )
   )
  )
  (call $_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_SB_
   (i32.add
    (get_local $8)
    (i32.const 224)
   )
   (get_local $1)
   (get_local $2)
  )
  (call $sha256
   (select
    (i32.load offset=232
     (get_local $8)
    )
    (i32.or
     (i32.add
      (get_local $8)
      (i32.const 224)
     )
     (i32.const 1)
    )
    (tee_local $7
     (i32.and
      (tee_local $2
       (i32.load8_u offset=224
        (get_local $8)
       )
      )
      (i32.const 1)
     )
    )
   )
   (select
    (i32.load offset=228
     (get_local $8)
    )
    (i32.shr_u
     (get_local $2)
     (i32.const 1)
    )
    (get_local $7)
   )
   (i32.add
    (get_local $8)
    (i32.const 192)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 144)
    )
    (get_local $3)
   )
  )
  (call $_ZN10blockflare15decode_checksumENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $8)
    (i32.const 160)
   )
   (get_local $0)
   (i32.add
    (get_local $8)
    (i32.const 144)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u offset=144
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=152
     (get_local $8)
    )
   )
  )
  (call $eosio_assert
   (i32.eqz
    (call $memcmp
     (i32.add
      (get_local $8)
      (i32.const 192)
     )
     (i32.add
      (get_local $8)
      (i32.const 160)
     )
     (i32.const 32)
    )
   )
   (i32.const 224)
  )
  (i32.store offset=136
   (get_local $8)
   (i32.const 0)
  )
  (i64.store offset=128
   (get_local $8)
   (i64.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $7
      (i32.load offset=32
       (get_local $0)
      )
     )
     (i32.const 1)
    )
   )
   (set_local $6
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
   (set_local $2
    (i32.const 0)
   )
   (loop $label$2
    (drop
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
      (i32.add
       (get_local $8)
       (i32.const 128)
      )
      (i32.const 288)
     )
    )
    (br_if $label$2
     (i32.lt_s
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (tee_local $7
       (i32.load
        (get_local $6)
       )
      )
     )
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
    (i32.add
     (get_local $8)
     (i32.const 112)
    )
    (get_local $3)
    (i32.const 0)
    (get_local $7)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.load
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 96)
    )
    (i32.add
     (get_local $8)
     (i32.const 224)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 80)
    )
    (get_local $3)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 64)
    )
    (i32.add
     (get_local $8)
     (i32.const 112)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 48)
    )
    (i32.add
     (get_local $8)
     (i32.const 128)
    )
   )
  )
  (call $_ZN5eosio7print_fIiJNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_S7_EEEvPKcT_DpT0_
   (i32.const 304)
   (get_local $2)
   (i32.add
    (get_local $8)
    (i32.const 96)
   )
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (i32.and
      (i32.load8_u offset=48
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=56
     (get_local $8)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=64
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=72
     (get_local $8)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (i32.load8_u offset=80
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=88
     (get_local $8)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (i32.and
      (i32.load8_u offset=96
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=104
     (get_local $8)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.ne
     (tee_local $5
      (select
       (i32.load offset=116
        (get_local $8)
       )
       (tee_local $4
        (i32.shr_u
         (tee_local $2
          (i32.load8_u offset=112
           (get_local $8)
          )
         )
         (i32.const 1)
        )
       )
       (tee_local $6
        (i32.and
         (get_local $2)
         (i32.const 1)
        )
       )
      )
     )
     (select
      (i32.load offset=132
       (get_local $8)
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=128
         (get_local $8)
        )
       )
       (i32.const 1)
      )
      (tee_local $7
       (i32.and
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
   (set_local $2
    (i32.or
     (i32.add
      (get_local $8)
      (i32.const 112)
     )
     (i32.const 1)
    )
   )
   (set_local $7
    (select
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 136)
      )
     )
     (i32.or
      (i32.add
       (get_local $8)
       (i32.const 128)
      )
      (i32.const 1)
     )
     (get_local $7)
    )
   )
   (block $label$8
    (block $label$9
     (block $label$10
      (br_if $label$10
       (get_local $6)
      )
      (br_if $label$9
       (i32.eqz
        (get_local $5)
       )
      )
      (set_local $6
       (i32.sub
        (i32.const 0)
        (get_local $4)
       )
      )
      (loop $label$11
       (br_if $label$8
        (i32.ne
         (i32.load8_u
          (get_local $2)
         )
         (i32.load8_u
          (get_local $7)
         )
        )
       )
       (set_local $3
        (i32.const 1)
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (br_if $label$11
        (tee_local $6
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
       )
       (br $label$7)
      )
     )
     (br_if $label$9
      (i32.eqz
       (get_local $5)
      )
     )
     (set_local $3
      (i32.eqz
       (call $memcmp
        (select
         (i32.load offset=120
          (get_local $8)
         )
         (get_local $2)
         (get_local $6)
        )
        (get_local $7)
        (get_local $5)
       )
      )
     )
     (br $label$7)
    )
    (set_local $3
     (i32.const 1)
    )
    (br $label$7)
   )
   (set_local $3
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $3)
   (i32.const 400)
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (get_local $1)
   )
  )
  (i64.store align=4
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.const 20)
    )
   )
   (i64.const 0)
  )
  (i64.store align=4
   (tee_local $7
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.const 28)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=20 align=4
   (get_local $8)
   (i64.const 0)
  )
  (block $label$12
   (block $label$13
    (br_if $label$13
     (i32.ge_u
      (tee_local $2
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $0)
          (i32.const 12)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 16)
       )
      )
     )
    )
    (i64.store align=4
     (get_local $2)
     (i64.load offset=8
      (get_local $8)
     )
    )
    (i32.store
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
     (i32.load
      (tee_local $0
       (i32.add
        (i32.add
         (get_local $8)
         (i32.const 8)
        )
        (i32.const 8)
       )
      )
     )
    )
    (i32.store
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=8
     (get_local $8)
     (i32.const 0)
    )
    (i32.store offset=12
     (get_local $8)
     (i32.const 0)
    )
    (i32.store
     (i32.add
      (get_local $2)
      (i32.const 20)
     )
     (i32.load
      (i32.add
       (tee_local $0
        (i32.add
         (i32.add
          (get_local $8)
          (i32.const 8)
         )
         (i32.const 12)
        )
       )
       (i32.const 8)
      )
     )
    )
    (i64.store offset=12 align=4
     (get_local $2)
     (i64.load align=4
      (get_local $0)
     )
    )
    (i32.store
     (i32.add
      (i32.add
       (get_local $8)
       (i32.const 8)
      )
      (i32.const 16)
     )
     (i32.const 0)
    )
    (i32.store
     (get_local $0)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (i32.const 0)
    )
    (i32.store offset=24
     (get_local $2)
     (i32.const 0)
    )
    (i32.store
     (tee_local $0
      (i32.add
       (get_local $2)
       (i32.const 28)
      )
     )
     (i32.const 0)
    )
    (i32.store
     (tee_local $3
      (i32.add
       (get_local $2)
       (i32.const 32)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=24
     (get_local $2)
     (i32.load
      (tee_local $1
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
    )
    (i32.store
     (get_local $0)
     (i32.load
      (get_local $7)
     )
    )
    (i32.store
     (get_local $3)
     (i32.load
      (tee_local $2
       (i32.add
        (i32.add
         (get_local $8)
         (i32.const 8)
        )
        (i32.const 32)
       )
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.const 0)
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $2)
     (i32.const 0)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (i32.load
       (get_local $6)
      )
      (i32.const 36)
     )
    )
    (br $label$12)
   )
   (call $_ZNSt3__16vectorIN10blockflare14queued_requestENS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
   (br_if $label$12
    (i32.eqz
     (tee_local $2
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $8)
     (i32.const 36)
    )
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (block $label$14
   (br_if $label$14
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (get_local $8)
        (i32.const 20)
       )
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $8)
      (i32.const 28)
     )
    )
   )
  )
  (block $label$15
   (br_if $label$15
    (i32.eqz
     (i32.and
      (i32.load8_u offset=8
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=16
     (get_local $8)
    )
   )
  )
  (call $prints
   (i32.const 480)
  )
  (block $label$16
   (br_if $label$16
    (i32.eqz
     (i32.and
      (i32.load8_u offset=112
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=120
     (get_local $8)
    )
   )
  )
  (block $label$17
   (br_if $label$17
    (i32.eqz
     (i32.and
      (i32.load8_u offset=128
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $8)
      (i32.const 136)
     )
    )
   )
  )
  (block $label$18
   (br_if $label$18
    (i32.eqz
     (i32.and
      (i32.load8_u offset=224
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $8)
      (i32.const 232)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 240)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI10blockflareS1_JNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_EEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=60
   (tee_local $2
    (get_local $3)
   )
   (get_local $0)
  )
  (i32.store offset=48
   (get_local $2)
   (i32.load
    (get_local $1)
   )
  )
  (i32.store offset=52
   (get_local $2)
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $0
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $0)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $0)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $3)
       (i32.and
        (i32.add
         (get_local $0)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $2)
    (i32.const 24)
   )
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $2)
   (i64.const 0)
  )
  (i32.store offset=68
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=64
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=72
   (get_local $2)
   (i32.add
    (get_local $1)
    (get_local $0)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (i32.add
     (get_local $2)
     (i32.const 20)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (i32.add
     (get_local $2)
     (i32.const 32)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $0)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (i32.store offset=68
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 48)
   )
  )
  (i32.store offset=64
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 60)
   )
  )
  (call $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI10blockflareS5_JNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJSC_SC_SC_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE
   (i32.add
    (get_local $2)
    (i32.const 64)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 40)
     )
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (i32.load8_u offset=20
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 28)
     )
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (i32.and
      (i32.load8_u offset=8
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 16)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
  (i32.const 1)
 )
 (func $_ZN10blockflare9relayjoinEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (tee_local $2
          (i32.load
           (tee_local $7
            (i32.add
             (get_local $0)
             (i32.const 24)
            )
           )
          )
         )
        )
       )
       (set_local $7
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
       )
       (loop $label$5
        (block $label$6
         (block $label$7
          (br_if $label$7
           (i64.le_u
            (tee_local $3
             (i64.load offset=16
              (get_local $2)
             )
            )
            (get_local $1)
           )
          )
          (br_if $label$6
           (tee_local $6
            (i32.load
             (get_local $2)
            )
           )
          )
          (br $label$3)
         )
         (br_if $label$2
          (i64.ge_u
           (get_local $3)
           (get_local $1)
          )
         )
         (set_local $7
          (i32.add
           (get_local $2)
           (i32.const 4)
          )
         )
         (br_if $label$2
          (i32.eqz
           (tee_local $6
            (i32.load offset=4
             (get_local $2)
            )
           )
          )
         )
         (set_local $2
          (get_local $7)
         )
        )
        (set_local $7
         (get_local $2)
        )
        (set_local $2
         (get_local $6)
        )
        (br $label$5)
       )
      )
      (set_local $2
       (get_local $7)
      )
      (br_if $label$0
       (tee_local $6
        (i32.load
         (get_local $7)
        )
       )
      )
      (br $label$1)
     )
     (set_local $7
      (get_local $2)
     )
    )
    (br_if $label$0
     (tee_local $6
      (i32.load
       (get_local $7)
      )
     )
    )
   )
   (i64.store align=4
    (tee_local $6
     (call $_Znwj
      (i32.const 32)
     )
    )
    (i64.const 0)
   )
   (i32.store offset=8
    (get_local $6)
    (get_local $2)
   )
   (i32.store
    (get_local $7)
    (get_local $6)
   )
   (i64.store offset=24
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=16
    (get_local $6)
    (get_local $1)
   )
   (set_local $2
    (get_local $6)
   )
   (block $label$8
    (br_if $label$8
     (i32.eqz
      (tee_local $4
       (i32.load
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $0)
           (i32.const 20)
          )
         )
        )
       )
      )
     )
    )
    (i32.store
     (get_local $5)
     (get_local $4)
    )
    (set_local $2
     (i32.load
      (get_local $7)
     )
    )
   )
   (call $_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
    )
    (get_local $2)
   )
   (i32.store
    (tee_local $2
     (i32.add
      (get_local $0)
      (i32.const 28)
     )
    )
    (i32.add
     (i32.load
      (get_local $2)
     )
     (i32.const 1)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $6)
    (i32.const 24)
   )
   (i64.const 0)
  )
 )
 (func $_ZN5eosio14execute_actionI10blockflareS1_JyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $4
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $4
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $4)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $4)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $6)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 192)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (set_local $3
   (i64.load offset=8
    (get_local $6)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $4)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $5)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vij)
   (get_local $1)
   (get_local $3)
   (get_local $5)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN10blockflare10relayleaveEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $2
      (i32.load
       (tee_local $6
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
       )
      )
     )
    )
   )
   (set_local $3
    (get_local $6)
   )
   (set_local $4
    (get_local $2)
   )
   (block $label$1
    (loop $label$2
     (block $label$3
      (br_if $label$3
       (i64.ge_u
        (i64.load offset=16
         (get_local $4)
        )
        (get_local $1)
       )
      )
      (br_if $label$2
       (tee_local $4
        (i32.load offset=4
         (get_local $4)
        )
       )
      )
      (br $label$1)
     )
     (set_local $3
      (get_local $4)
     )
     (set_local $4
      (tee_local $5
       (i32.load
        (get_local $4)
       )
      )
     )
     (br_if $label$2
      (get_local $5)
     )
    )
   )
   (br_if $label$0
    (i32.eq
     (get_local $3)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $3)
     )
     (get_local $1)
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eqz
       (tee_local $4
        (i32.load offset=4
         (get_local $3)
        )
       )
      )
     )
     (loop $label$6
      (br_if $label$6
       (tee_local $4
        (i32.load
         (tee_local $6
          (get_local $4)
         )
        )
       )
      )
      (br $label$4)
     )
    )
    (br_if $label$4
     (i32.eq
      (i32.load
       (tee_local $6
        (i32.load offset=8
         (get_local $3)
        )
       )
      )
      (get_local $3)
     )
    )
    (set_local $5
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
    (loop $label$7
     (set_local $5
      (i32.add
       (tee_local $4
        (i32.load
         (get_local $5)
        )
       )
       (i32.const 8)
      )
     )
     (br_if $label$7
      (i32.ne
       (get_local $4)
       (i32.load
        (tee_local $6
         (i32.load offset=8
          (get_local $4)
         )
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.ne
      (i32.load
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 20)
        )
       )
      )
      (get_local $3)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store
    (tee_local $4
     (i32.add
      (get_local $0)
      (i32.const 28)
     )
    )
    (i32.add
     (i32.load
      (get_local $4)
     )
     (i32.const -1)
    )
   )
   (call $_ZNSt3__113__tree_removeIPNS_16__tree_node_baseIPvEEEEvT_S5_
    (get_local $2)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
 )
 (func $_ZN10blockflare11relayassignEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $4
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $0)
          (i32.const 24)
         )
        )
       )
      )
     )
    )
    (set_local $3
     (get_local $5)
    )
    (block $label$2
     (loop $label$3
      (block $label$4
       (br_if $label$4
        (i64.ge_u
         (i64.load offset=16
          (get_local $4)
         )
         (get_local $1)
        )
       )
       (br_if $label$3
        (tee_local $4
         (i32.load offset=4
          (get_local $4)
         )
        )
       )
       (br $label$2)
      )
      (set_local $3
       (get_local $4)
      )
      (set_local $4
       (tee_local $2
        (i32.load
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (get_local $2)
      )
     )
    )
    (br_if $label$1
     (i32.eq
      (get_local $3)
      (get_local $5)
     )
    )
    (br_if $label$0
     (i64.le_u
      (i64.load offset=16
       (get_local $3)
      )
      (get_local $1)
     )
    )
   )
   (set_local $3
    (get_local $5)
   )
  )
  (call $eosio_assert
   (i32.eq
    (get_local $3)
    (get_local $5)
   )
   (i32.const 112)
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.eq
      (tee_local $2
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 12)
        )
       )
      )
      (tee_local $5
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (set_local $2
     (i32.div_s
      (i32.sub
       (get_local $2)
       (get_local $5)
      )
      (i32.const 36)
     )
    )
    (set_local $5
     (i32.const 0)
    )
    (set_local $1
     (i64.const 0)
    )
    (loop $label$7
     (br_if $label$5
      (i32.le_u
       (i32.shr_s
        (i32.sub
         (tee_local $0
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 4)
           )
          )
         )
         (i32.load
          (get_local $4)
         )
        )
        (i32.const 3)
       )
       (i32.const 2)
      )
     )
     (set_local $1
      (i64.add
       (get_local $1)
       (i64.const 1)
      )
     )
     (set_local $4
      (i32.add
       (get_local $4)
       (i32.const 36)
      )
     )
     (br_if $label$7
      (i32.lt_u
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $2)
      )
     )
    )
   )
   (return)
  )
  (set_local $5
   (i32.add
    (get_local $3)
    (i32.const 24)
   )
  )
  (block $label$8
   (block $label$9
    (br_if $label$9
     (i32.eq
      (get_local $0)
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
    (i64.store
     (get_local $0)
     (i64.load
      (get_local $5)
     )
    )
    (br $label$8)
   )
   (call $_ZNSt3__16vectorIN10blockflare7relayerENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
    (get_local $4)
    (get_local $5)
   )
  )
  (call $prints
   (i32.const 160)
  )
  (call $printi
   (get_local $1)
  )
 )
 (func $_ZNSt3__16__treeINS_12__value_typeIyN10blockflare7relayerEEENS_19__map_value_compareIyS4_NS_4lessIyEELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE (param $0 i32) (param $1 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZNSt3__16__treeINS_12__value_typeIyN10blockflare7relayerEEENS_19__map_value_compareIyS4_NS_4lessIyEELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE
    (get_local $0)
    (i32.load
     (get_local $1)
    )
   )
   (call $_ZNSt3__16__treeINS_12__value_typeIyN10blockflare7relayerEEENS_19__map_value_compareIyS4_NS_4lessIyEELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE
    (get_local $0)
    (i32.load offset=4
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
 )
 (func $_ZNSt3__16vectorIN10blockflare7relayerENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.ge_u
       (tee_local $7
        (i32.add
         (tee_local $3
          (i32.shr_s
           (i32.sub
            (tee_local $6
             (i32.load offset=4
              (get_local $0)
             )
            )
            (tee_local $5
             (i32.load
              (get_local $0)
             )
            )
           )
           (i32.const 3)
          )
         )
         (i32.const 1)
        )
       )
       (i32.const 536870912)
      )
     )
     (set_local $4
      (i32.const 536870911)
     )
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.gt_u
         (i32.shr_s
          (tee_local $2
           (i32.sub
            (i32.load offset=8
             (get_local $0)
            )
            (get_local $5)
           )
          )
          (i32.const 3)
         )
         (i32.const 268435454)
        )
       )
       (br_if $label$3
        (i32.eqz
         (tee_local $4
          (select
           (get_local $7)
           (tee_local $4
            (i32.shr_s
             (get_local $2)
             (i32.const 2)
            )
           )
           (i32.lt_u
            (get_local $4)
            (get_local $7)
           )
          )
         )
        )
       )
       (br_if $label$1
        (i32.ge_u
         (get_local $4)
         (i32.const 536870912)
        )
       )
      )
      (set_local $7
       (call $_Znwj
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
      )
      (set_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (set_local $5
       (i32.load
        (get_local $0)
       )
      )
      (br $label$0)
     )
     (set_local $4
      (i32.const 0)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $label$0)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (call $abort)
   (unreachable)
  )
  (i64.store
   (tee_local $3
    (i32.add
     (get_local $7)
     (i32.shl
      (get_local $3)
      (i32.const 3)
     )
    )
   )
   (i64.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.sub
    (get_local $3)
    (tee_local $6
     (i32.sub
      (get_local $6)
      (get_local $5)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $7)
    (i32.shl
     (get_local $4)
     (i32.const 3)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_s
     (get_local $6)
     (i32.const 1)
    )
   )
   (drop
    (call $memcpy
     (get_local $1)
     (get_local $5)
     (get_local $6)
    )
   )
   (set_local $5
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $7)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (get_local $5)
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
 )
 (func $_ZNSt3__113__tree_removeIPNS_16__tree_node_baseIPvEEEEvT_S5_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
    (set_local $7
     (get_local $1)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $6
       (i32.load offset=4
        (get_local $1)
       )
      )
     )
    )
    (loop $label$2
     (br_if $label$2
      (tee_local $6
       (i32.load
        (tee_local $7
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $2
     (i32.const 0)
    )
    (br $label$0)
   )
   (set_local $2
    (i32.const 0)
   )
   (set_local $7
    (get_local $1)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $2
      (i32.load
       (select
        (get_local $7)
        (i32.add
         (get_local $7)
         (i32.const 4)
        )
        (get_local $2)
       )
      )
     )
    )
   )
   (i32.store offset=8
    (get_local $2)
    (i32.load
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
   )
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.eq
        (i32.load
         (tee_local $6
          (i32.load
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
          )
         )
        )
        (get_local $7)
       )
      )
      (i32.store offset=4
       (get_local $6)
       (get_local $2)
      )
      (br $label$6)
     )
     (i32.store
      (get_local $6)
      (get_local $2)
     )
     (br_if $label$5
      (i32.eq
       (get_local $7)
       (get_local $0)
      )
     )
     (set_local $6
      (i32.add
       (get_local $6)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $6)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (i32.const 0)
   )
   (set_local $0
    (get_local $2)
   )
  )
  (set_local $3
   (i32.load8_u offset=12
    (get_local $7)
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eq
     (get_local $7)
     (get_local $1)
    )
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
    (tee_local $4
     (i32.load offset=8
      (get_local $1)
     )
    )
   )
   (i32.store
    (select
     (get_local $4)
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
     (i32.eq
      (i32.load
       (i32.load offset=8
        (get_local $1)
       )
      )
      (get_local $1)
     )
    )
    (get_local $7)
   )
   (i32.store
    (get_local $7)
    (tee_local $5
     (i32.load
      (get_local $1)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 4)
    )
    (tee_local $4
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
   (i32.store offset=8
    (get_local $5)
    (get_local $7)
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (get_local $4)
     )
    )
    (i32.store offset=8
     (get_local $4)
     (get_local $7)
    )
   )
   (i32.store8
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
    (i32.load8_u offset=12
     (get_local $1)
    )
   )
   (set_local $0
    (select
     (get_local $7)
     (get_local $0)
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (i32.and
      (get_local $3)
      (i32.const 255)
     )
    )
   )
   (br_if $label$10
    (i32.eqz
     (get_local $0)
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.eqz
      (get_local $2)
     )
    )
    (i32.store8 offset=12
     (get_local $2)
     (i32.const 1)
    )
    (return)
   )
   (block $label$12
    (block $label$13
     (block $label$14
      (block $label$15
       (block $label$16
        (block $label$17
         (block $label$18
          (block $label$19
           (block $label$20
            (block $label$21
             (block $label$22
              (block $label$23
               (block $label$24
                (loop $label$25
                 (set_local $1
                  (i32.load8_u offset=12
                   (get_local $6)
                  )
                 )
                 (block $label$26
                  (block $label$27
                   (br_if $label$27
                    (i32.eq
                     (i32.load
                      (tee_local $7
                       (i32.load offset=8
                        (get_local $6)
                       )
                      )
                     )
                     (get_local $6)
                    )
                   )
                   (block $label$28
                    (br_if $label$28
                     (i32.and
                      (get_local $1)
                      (i32.const 255)
                     )
                    )
                    (i32.store8
                     (i32.add
                      (get_local $6)
                      (i32.const 12)
                     )
                     (i32.const 1)
                    )
                    (i32.store8 offset=12
                     (get_local $7)
                     (i32.const 0)
                    )
                    (i32.store offset=4
                     (get_local $7)
                     (tee_local $2
                      (i32.load
                       (tee_local $1
                        (i32.load offset=4
                         (get_local $7)
                        )
                       )
                      )
                     )
                    )
                    (block $label$29
                     (br_if $label$29
                      (i32.eqz
                       (get_local $2)
                      )
                     )
                     (i32.store offset=8
                      (get_local $2)
                      (get_local $7)
                     )
                    )
                    (i32.store offset=8
                     (get_local $1)
                     (i32.load offset=8
                      (get_local $7)
                     )
                    )
                    (i32.store
                     (select
                      (tee_local $2
                       (i32.load offset=8
                        (get_local $7)
                       )
                      )
                      (i32.add
                       (get_local $2)
                       (i32.const 4)
                      )
                      (i32.eq
                       (i32.load
                        (get_local $2)
                       )
                       (get_local $7)
                      )
                     )
                     (get_local $1)
                    )
                    (i32.store
                     (get_local $1)
                     (get_local $7)
                    )
                    (i32.store offset=8
                     (get_local $7)
                     (get_local $1)
                    )
                    (set_local $0
                     (select
                      (get_local $6)
                      (get_local $0)
                      (i32.eq
                       (get_local $0)
                       (tee_local $7
                        (i32.load
                         (get_local $6)
                        )
                       )
                      )
                     )
                    )
                    (set_local $6
                     (i32.load offset=4
                      (get_local $7)
                     )
                    )
                   )
                   (block $label$30
                    (br_if $label$30
                     (i32.eqz
                      (tee_local $7
                       (i32.load
                        (get_local $6)
                       )
                      )
                     )
                    )
                    (br_if $label$21
                     (i32.eqz
                      (i32.load8_u offset=12
                       (get_local $7)
                      )
                     )
                    )
                   )
                   (block $label$31
                    (br_if $label$31
                     (i32.eqz
                      (tee_local $1
                       (i32.load offset=4
                        (get_local $6)
                       )
                      )
                     )
                    )
                    (br_if $label$20
                     (i32.eqz
                      (i32.load8_u offset=12
                       (get_local $1)
                      )
                     )
                    )
                   )
                   (i32.store8 offset=12
                    (get_local $6)
                    (i32.const 0)
                   )
                   (br_if $label$23
                    (i32.eq
                     (tee_local $6
                      (i32.load offset=8
                       (get_local $6)
                      )
                     )
                     (get_local $0)
                    )
                   )
                   (br_if $label$26
                    (i32.load8_u offset=12
                     (get_local $6)
                    )
                   )
                   (br $label$22)
                  )
                  (block $label$32
                   (br_if $label$32
                    (i32.and
                     (get_local $1)
                     (i32.const 255)
                    )
                   )
                   (i32.store8
                    (i32.add
                     (get_local $6)
                     (i32.const 12)
                    )
                    (i32.const 1)
                   )
                   (i32.store8 offset=12
                    (get_local $7)
                    (i32.const 0)
                   )
                   (i32.store
                    (get_local $7)
                    (tee_local $2
                     (i32.load offset=4
                      (tee_local $1
                       (i32.load
                        (get_local $7)
                       )
                      )
                     )
                    )
                   )
                   (block $label$33
                    (br_if $label$33
                     (i32.eqz
                      (get_local $2)
                     )
                    )
                    (i32.store offset=8
                     (get_local $2)
                     (get_local $7)
                    )
                   )
                   (i32.store offset=8
                    (get_local $1)
                    (i32.load offset=8
                     (get_local $7)
                    )
                   )
                   (i32.store
                    (select
                     (tee_local $2
                      (i32.load offset=8
                       (get_local $7)
                      )
                     )
                     (i32.add
                      (get_local $2)
                      (i32.const 4)
                     )
                     (i32.eq
                      (i32.load
                       (get_local $2)
                      )
                      (get_local $7)
                     )
                    )
                    (get_local $1)
                   )
                   (i32.store
                    (i32.add
                     (get_local $1)
                     (i32.const 4)
                    )
                    (get_local $7)
                   )
                   (i32.store offset=8
                    (get_local $7)
                    (get_local $1)
                   )
                   (set_local $0
                    (select
                     (get_local $6)
                     (get_local $0)
                     (i32.eq
                      (get_local $0)
                      (tee_local $7
                       (i32.load offset=4
                        (get_local $6)
                       )
                      )
                     )
                    )
                   )
                   (set_local $6
                    (i32.load
                     (get_local $7)
                    )
                   )
                  )
                  (block $label$34
                   (br_if $label$34
                    (i32.eqz
                     (tee_local $7
                      (i32.load
                       (get_local $6)
                      )
                     )
                    )
                   )
                   (br_if $label$15
                    (i32.eqz
                     (i32.load8_u offset=12
                      (get_local $7)
                     )
                    )
                   )
                  )
                  (block $label$35
                   (br_if $label$35
                    (i32.eqz
                     (tee_local $1
                      (i32.load offset=4
                       (get_local $6)
                      )
                     )
                    )
                   )
                   (br_if $label$16
                    (i32.eqz
                     (i32.load8_u offset=12
                      (get_local $1)
                     )
                    )
                   )
                  )
                  (i32.store8 offset=12
                   (get_local $6)
                   (i32.const 0)
                  )
                  (br_if $label$24
                   (i32.eq
                    (tee_local $6
                     (i32.load offset=8
                      (get_local $6)
                     )
                    )
                    (get_local $0)
                   )
                  )
                  (br_if $label$24
                   (i32.eqz
                    (i32.and
                     (i32.load8_u offset=12
                      (get_local $6)
                     )
                     (i32.const 255)
                    )
                   )
                  )
                 )
                 (set_local $6
                  (i32.load
                   (select
                    (i32.add
                     (tee_local $7
                      (i32.load offset=8
                       (get_local $6)
                      )
                     )
                     (i32.const 4)
                    )
                    (get_local $7)
                    (i32.eq
                     (i32.load
                      (get_local $7)
                     )
                     (get_local $6)
                    )
                   )
                  )
                 )
                 (br $label$25)
                )
               )
               (i32.store8
                (i32.add
                 (get_local $6)
                 (i32.const 12)
                )
                (i32.const 1)
               )
               (return)
              )
              (set_local $6
               (get_local $0)
              )
             )
             (i32.store8 offset=12
              (get_local $6)
              (i32.const 1)
             )
             (return)
            )
            (br_if $label$19
             (i32.eqz
              (tee_local $1
               (i32.load offset=4
                (get_local $6)
               )
              )
             )
            )
           )
           (br_if $label$18
            (i32.eqz
             (i32.load8_u offset=12
              (get_local $1)
             )
            )
           )
          )
          (i32.store8 offset=12
           (get_local $7)
           (i32.const 1)
          )
          (i32.store8 offset=12
           (get_local $6)
           (i32.const 0)
          )
          (i32.store
           (get_local $6)
           (tee_local $1
            (i32.load offset=4
             (get_local $7)
            )
           )
          )
          (block $label$36
           (br_if $label$36
            (i32.eqz
             (get_local $1)
            )
           )
           (i32.store offset=8
            (get_local $1)
            (get_local $6)
           )
          )
          (i32.store offset=8
           (get_local $7)
           (i32.load offset=8
            (get_local $6)
           )
          )
          (i32.store
           (select
            (tee_local $1
             (i32.load offset=8
              (get_local $6)
             )
            )
            (i32.add
             (get_local $1)
             (i32.const 4)
            )
            (i32.eq
             (i32.load
              (get_local $1)
             )
             (get_local $6)
            )
           )
           (get_local $7)
          )
          (i32.store offset=8
           (get_local $6)
           (get_local $7)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 4)
           )
           (get_local $6)
          )
          (set_local $1
           (get_local $6)
          )
          (br $label$17)
         )
         (set_local $7
          (get_local $6)
         )
        )
        (i32.store8 offset=12
         (get_local $7)
         (i32.load8_u offset=12
          (tee_local $6
           (i32.load offset=8
            (get_local $7)
           )
          )
         )
        )
        (i32.store8 offset=12
         (get_local $6)
         (i32.const 1)
        )
        (i32.store8 offset=12
         (get_local $1)
         (i32.const 1)
        )
        (i32.store offset=4
         (get_local $6)
         (tee_local $1
          (i32.load
           (tee_local $7
            (i32.load offset=4
             (get_local $6)
            )
           )
          )
         )
        )
        (block $label$37
         (br_if $label$37
          (i32.eqz
           (get_local $1)
          )
         )
         (i32.store offset=8
          (get_local $1)
          (get_local $6)
         )
        )
        (i32.store offset=8
         (get_local $7)
         (i32.load offset=8
          (get_local $6)
         )
        )
        (i32.store
         (select
          (tee_local $1
           (i32.load offset=8
            (get_local $6)
           )
          )
          (i32.add
           (get_local $1)
           (i32.const 4)
          )
          (i32.eq
           (i32.load
            (get_local $1)
           )
           (get_local $6)
          )
         )
         (get_local $7)
        )
        (i32.store offset=8
         (get_local $6)
         (get_local $7)
        )
        (i32.store
         (get_local $7)
         (get_local $6)
        )
        (return)
       )
       (br_if $label$14
        (i32.eqz
         (get_local $7)
        )
       )
      )
      (br_if $label$13
       (i32.eqz
        (i32.load8_u offset=12
         (get_local $7)
        )
       )
      )
     )
     (i32.store8 offset=12
      (tee_local $1
       (i32.load offset=4
        (get_local $6)
       )
      )
      (i32.const 1)
     )
     (i32.store8 offset=12
      (get_local $6)
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $6)
      (tee_local $7
       (i32.load
        (get_local $1)
       )
      )
     )
     (block $label$38
      (br_if $label$38
       (i32.eqz
        (get_local $7)
       )
      )
      (i32.store offset=8
       (get_local $7)
       (get_local $6)
      )
     )
     (i32.store offset=8
      (get_local $1)
      (i32.load offset=8
       (get_local $6)
      )
     )
     (i32.store
      (select
       (tee_local $7
        (i32.load offset=8
         (get_local $6)
        )
       )
       (i32.add
        (get_local $7)
        (i32.const 4)
       )
       (i32.eq
        (i32.load
         (get_local $7)
        )
        (get_local $6)
       )
      )
      (get_local $1)
     )
     (i32.store offset=8
      (get_local $6)
      (get_local $1)
     )
     (i32.store
      (get_local $1)
      (get_local $6)
     )
     (set_local $7
      (get_local $6)
     )
     (br $label$12)
    )
    (set_local $1
     (get_local $6)
    )
   )
   (i32.store8 offset=12
    (get_local $1)
    (i32.load8_u offset=12
     (tee_local $6
      (i32.load offset=8
       (get_local $1)
      )
     )
    )
   )
   (i32.store8 offset=12
    (get_local $6)
    (i32.const 1)
   )
   (i32.store8 offset=12
    (get_local $7)
    (i32.const 1)
   )
   (i32.store
    (get_local $6)
    (tee_local $1
     (i32.load offset=4
      (tee_local $7
       (i32.load
        (get_local $6)
       )
      )
     )
    )
   )
   (block $label$39
    (br_if $label$39
     (i32.eqz
      (get_local $1)
     )
    )
    (i32.store offset=8
     (get_local $1)
     (get_local $6)
    )
   )
   (i32.store offset=8
    (get_local $7)
    (i32.load offset=8
     (get_local $6)
    )
   )
   (i32.store
    (select
     (tee_local $1
      (i32.load offset=8
       (get_local $6)
      )
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.eq
      (i32.load
       (get_local $1)
      )
      (get_local $6)
     )
    )
    (get_local $7)
   )
   (i32.store offset=8
    (get_local $6)
    (get_local $7)
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 4)
    )
    (get_local $6)
   )
  )
 )
 (func $_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store8 offset=12
   (get_local $1)
   (tee_local $3
    (i32.eq
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (get_local $3)
     )
     (block $label$3
      (block $label$4
       (block $label$5
        (loop $label$6
         (br_if $label$2
          (i32.load8_u offset=12
           (tee_local $2
            (i32.load offset=8
             (get_local $1)
            )
           )
          )
         )
         (block $label$7
          (block $label$8
           (block $label$9
            (br_if $label$9
             (i32.eq
              (tee_local $4
               (i32.load
                (tee_local $3
                 (i32.load offset=8
                  (get_local $2)
                 )
                )
               )
              )
              (get_local $2)
             )
            )
            (br_if $label$7
             (i32.eqz
              (get_local $4)
             )
            )
            (br_if $label$7
             (i32.load8_u offset=12
              (get_local $4)
             )
            )
            (set_local $4
             (i32.add
              (get_local $4)
              (i32.const 12)
             )
            )
            (br $label$8)
           )
           (br_if $label$5
            (i32.eqz
             (tee_local $4
              (i32.load offset=4
               (get_local $3)
              )
             )
            )
           )
           (br_if $label$5
            (i32.load8_u offset=12
             (get_local $4)
            )
           )
           (set_local $4
            (i32.add
             (get_local $4)
             (i32.const 12)
            )
           )
          )
          (i32.store8
           (i32.add
            (get_local $2)
            (i32.const 12)
           )
           (i32.const 1)
          )
          (i32.store8 offset=12
           (get_local $3)
           (tee_local $2
            (i32.eq
             (get_local $3)
             (get_local $0)
            )
           )
          )
          (i32.store8
           (get_local $4)
           (i32.const 1)
          )
          (set_local $1
           (get_local $3)
          )
          (br_if $label$6
           (i32.eqz
            (get_local $2)
           )
          )
          (br $label$2)
         )
        )
        (br_if $label$4
         (i32.eq
          (i32.load
           (get_local $2)
          )
          (get_local $1)
         )
        )
        (set_local $4
         (get_local $2)
        )
        (br $label$3)
       )
       (br_if $label$1
        (i32.eq
         (i32.load
          (get_local $2)
         )
         (get_local $1)
        )
       )
       (i32.store offset=4
        (get_local $2)
        (tee_local $1
         (i32.load
          (tee_local $4
           (i32.load offset=4
            (get_local $2)
           )
          )
         )
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.eqz
          (get_local $1)
         )
        )
        (i32.store offset=8
         (get_local $1)
         (get_local $2)
        )
        (set_local $3
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 8)
          )
         )
        )
       )
       (i32.store offset=8
        (get_local $4)
        (get_local $3)
       )
       (i32.store
        (select
         (tee_local $3
          (i32.load
           (tee_local $1
            (i32.add
             (get_local $2)
             (i32.const 8)
            )
           )
          )
         )
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
         (i32.eq
          (i32.load
           (get_local $3)
          )
          (get_local $2)
         )
        )
        (get_local $4)
       )
       (i32.store
        (get_local $1)
        (get_local $4)
       )
       (i32.store
        (get_local $4)
        (get_local $2)
       )
       (set_local $3
        (i32.load offset=8
         (get_local $4)
        )
       )
       (br $label$0)
      )
      (i32.store
       (get_local $2)
       (tee_local $1
        (i32.load offset=4
         (tee_local $4
          (i32.load
           (get_local $2)
          )
         )
        )
       )
      )
      (block $label$11
       (br_if $label$11
        (i32.eqz
         (get_local $1)
        )
       )
       (i32.store offset=8
        (get_local $1)
        (get_local $2)
       )
       (set_local $3
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
      )
      (i32.store offset=8
       (get_local $4)
       (get_local $3)
      )
      (i32.store
       (select
        (tee_local $3
         (i32.load
          (tee_local $1
           (i32.add
            (get_local $2)
            (i32.const 8)
           )
          )
         )
        )
        (i32.add
         (get_local $3)
         (i32.const 4)
        )
        (i32.eq
         (i32.load
          (get_local $3)
         )
         (get_local $2)
        )
       )
       (get_local $4)
      )
      (i32.store
       (get_local $1)
       (get_local $4)
      )
      (i32.store
       (i32.add
        (get_local $4)
        (i32.const 4)
       )
       (get_local $2)
      )
      (set_local $3
       (i32.load offset=8
        (get_local $4)
       )
      )
     )
     (i32.store8 offset=12
      (get_local $4)
      (i32.const 1)
     )
     (i32.store8 offset=12
      (get_local $3)
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $3)
      (tee_local $4
       (i32.load
        (tee_local $2
         (i32.load offset=4
          (get_local $3)
         )
        )
       )
      )
     )
     (block $label$12
      (br_if $label$12
       (i32.eqz
        (get_local $4)
       )
      )
      (i32.store offset=8
       (get_local $4)
       (get_local $3)
      )
     )
     (i32.store offset=8
      (get_local $2)
      (i32.load offset=8
       (get_local $3)
      )
     )
     (i32.store
      (select
       (tee_local $4
        (i32.load offset=8
         (get_local $3)
        )
       )
       (i32.add
        (get_local $4)
        (i32.const 4)
       )
       (i32.eq
        (i32.load
         (get_local $4)
        )
        (get_local $3)
       )
      )
      (get_local $2)
     )
     (i32.store offset=8
      (get_local $3)
      (get_local $2)
     )
     (i32.store
      (get_local $2)
      (get_local $3)
     )
    )
    (return)
   )
   (set_local $4
    (get_local $2)
   )
  )
  (i32.store8 offset=12
   (get_local $4)
   (i32.const 1)
  )
  (i32.store8 offset=12
   (get_local $3)
   (i32.const 0)
  )
  (i32.store
   (get_local $3)
   (tee_local $4
    (i32.load offset=4
     (tee_local $2
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  (block $label$13
   (br_if $label$13
    (i32.eqz
     (get_local $4)
    )
   )
   (i32.store offset=8
    (get_local $4)
    (get_local $3)
   )
  )
  (i32.store offset=8
   (get_local $2)
   (i32.load offset=8
    (get_local $3)
   )
  )
  (i32.store
   (select
    (tee_local $4
     (i32.load offset=8
      (get_local $3)
     )
    )
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
    (i32.eq
     (i32.load
      (get_local $4)
     )
     (get_local $3)
    )
   )
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $3)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 4)
   )
   (get_local $3)
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
    (get_local $0)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.ne
             (tee_local $5
              (i32.load offset=20
               (get_local $7)
              )
             )
             (tee_local $4
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$7
            (i32.and
             (i32.load8_u
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.store16
            (get_local $1)
            (i32.const 0)
           )
           (set_local $4
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (br $label$6)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $7)
           (i64.const 0)
          )
          (br_if $label$0
           (i32.ge_u
            (tee_local $2
             (i32.sub
              (get_local $5)
              (get_local $4)
             )
            )
            (i32.const -16)
           )
          )
          (br_if $label$5
           (i32.ge_u
            (get_local $2)
            (i32.const 11)
           )
          )
          (i32.store8
           (get_local $7)
           (i32.shl
            (get_local $2)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.or
            (get_local $7)
            (i32.const 1)
           )
          )
          (br_if $label$4
           (get_local $2)
          )
          (br $label$3)
         )
         (i32.store8
          (i32.load offset=8
           (get_local $1)
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $1)
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
         (get_local $1)
         (i32.const 0)
        )
        (i32.store
         (get_local $4)
         (i32.const 0)
        )
        (i64.store align=4
         (get_local $1)
         (i64.const 0)
        )
        (br_if $label$2
         (tee_local $4
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
        (br $label$1)
       )
       (set_local $6
        (call $_Znwj
         (tee_local $5
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const 16)
           )
           (i32.const -16)
          )
         )
        )
       )
       (i32.store
        (get_local $7)
        (i32.or
         (get_local $5)
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $6)
       )
       (i32.store offset=4
        (get_local $7)
        (get_local $2)
       )
      )
      (set_local $3
       (get_local $2)
      )
      (set_local $5
       (get_local $6)
      )
      (loop $label$9
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $4)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (br_if $label$9
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (i32.store8
      (get_local $6)
      (i32.const 0)
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (i32.and
         (i32.load8_u
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store16
        (get_local $1)
        (i32.const 0)
       )
       (br $label$10)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (get_local $1)
      (i64.load
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load offset=16
         (get_local $7)
        )
       )
      )
     )
    )
    (i32.store offset=20
     (get_local $7)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $7)
  )
  (unreachable)
 )
 (func $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI10blockflareS5_JNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESC_SC_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJSC_SC_SC_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $2)
     (i32.const 32)
    )
    (get_local $1)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 12)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (get_local $2)
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
  )
  (call $_ZZN5eosio14execute_actionI10blockflareS1_JNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJS8_S8_S8_EEEDaSH_
   (get_local $0)
   (i32.add
    (get_local $2)
    (i32.const 32)
   )
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
   (get_local $2)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=24
     (get_local $2)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=40
     (get_local $2)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio14execute_actionI10blockflareS1_JNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8_S8_EEEbPT_MT0_FvDpT1_EENKUlDpT_E_clIJS8_S8_S8_EEEDaSH_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $4
   (i32.add
    (i32.load
     (i32.load
      (get_local $0)
     )
    )
    (i32.shr_s
     (tee_local $5
      (i32.load offset=4
       (tee_local $0
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $0
    (i32.load
     (i32.add
      (i32.load
       (get_local $4)
      )
      (get_local $0)
     )
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
    (get_local $1)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (get_local $2)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (get_local $6)
    (get_local $3)
   )
  )
  (call_indirect (type $FUNCSIG$viiii)
   (get_local $4)
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $6)
   (get_local $0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (i32.load8_u
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=8
     (get_local $6)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=24
     (get_local $6)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=40
     (get_local $6)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 208)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 192)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_SB_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (tee_local $8
      (i32.add
       (tee_local $4
        (select
         (i32.load offset=4
          (get_local $2)
         )
         (i32.shr_u
          (tee_local $3
           (i32.load8_u
            (get_local $2)
           )
          )
          (i32.const 1)
         )
         (i32.and
          (get_local $3)
          (i32.const 1)
         )
        )
       )
       (tee_local $3
        (select
         (i32.load offset=4
          (get_local $1)
         )
         (i32.shr_u
          (tee_local $3
           (i32.load8_u
            (get_local $1)
           )
          )
          (i32.const 1)
         )
         (tee_local $5
          (i32.and
           (get_local $3)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
     (i32.const -16)
    )
   )
   (set_local $6
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (get_local $8)
        (i32.const 10)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (set_local $8
      (call $_Znwj
       (tee_local $7
        (i32.and
         (i32.add
          (get_local $8)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $8)
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
      (get_local $3)
     )
     (br_if $label$1
      (i32.eqz
       (get_local $3)
      )
     )
    )
    (drop
     (call $memcpy
      (get_local $8)
      (select
       (get_local $6)
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (get_local $5)
      )
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $8)
     (get_local $3)
    )
    (i32.const 0)
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj
     (get_local $0)
     (select
      (i32.load offset=8
       (get_local $2)
      )
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
      (i32.and
       (i32.load8_u
        (get_local $2)
       )
       (i32.const 1)
      )
     )
     (get_local $4)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $0)
  )
  (unreachable)
 )
 (func $_ZN10blockflare15decode_checksumENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.and
      (tee_local $6
       (i32.load8_u
        (get_local $2)
       )
      )
      (i32.const 1)
     )
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $3
       (i32.shr_u
        (get_local $6)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.const 0)
    )
    (loop $label$2
     (block $label$3
      (br_if $label$3
       (i32.lt_u
        (i32.and
         (tee_local $6
          (i32.add
           (tee_local $5
            (i32.load8_s
             (i32.add
              (get_local $4)
              (tee_local $2
               (get_local $2)
              )
             )
            )
           )
           (i32.const -48)
          )
         )
         (i32.const 255)
        )
        (i32.const 10)
       )
      )
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.and
          (i32.add
           (get_local $5)
           (i32.const -65)
          )
          (i32.const 255)
         )
         (i32.const 6)
        )
       )
       (set_local $6
        (i32.add
         (get_local $5)
         (i32.const -55)
        )
       )
       (br $label$3)
      )
      (set_local $6
       (select
        (i32.add
         (get_local $5)
         (i32.const -87)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $5)
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 6)
        )
       )
      )
     )
     (i32.store8
      (tee_local $5
       (i32.add
        (get_local $0)
        (i32.div_s
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (i32.add
       (i32.load8_u
        (get_local $5)
       )
       (i32.shl
        (get_local $6)
        (i32.shl
         (i32.rem_s
          (tee_local $2
           (i32.add
            (get_local $2)
            (i32.const 1)
           )
          )
          (i32.const 2)
         )
         (i32.const 2)
        )
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (get_local $3)
       (get_local $2)
      )
     )
     (br $label$0)
    )
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=4
       (get_local $2)
      )
     )
    )
   )
   (set_local $4
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
   (set_local $2
    (i32.const 0)
   )
   (loop $label$5
    (block $label$6
     (br_if $label$6
      (i32.le_u
       (i32.and
        (tee_local $6
         (i32.add
          (tee_local $5
           (i32.load8_s
            (i32.add
             (get_local $4)
             (tee_local $2
              (get_local $2)
             )
            )
           )
          )
          (i32.const -48)
         )
        )
        (i32.const 255)
       )
       (i32.const 9)
      )
     )
     (block $label$7
      (br_if $label$7
       (i32.gt_u
        (i32.and
         (i32.add
          (get_local $5)
          (i32.const -65)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
      (set_local $6
       (i32.add
        (get_local $5)
        (i32.const -55)
       )
      )
      (br $label$6)
     )
     (set_local $6
      (select
       (i32.add
        (get_local $5)
        (i32.const -87)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $5)
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 6)
       )
      )
     )
    )
    (i32.store8
     (tee_local $5
      (i32.add
       (get_local $0)
       (i32.div_s
        (get_local $2)
        (i32.const 2)
       )
      )
     )
     (i32.add
      (i32.load8_u
       (get_local $5)
      )
      (i32.shl
       (get_local $6)
       (i32.shl
        (i32.rem_s
         (tee_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (i32.const 2)
        )
        (i32.const 2)
       )
      )
     )
    )
    (br_if $label$5
     (i32.lt_u
      (get_local $2)
      (get_local $3)
     )
    )
   )
  )
 )
 (func $_ZN5eosio7print_fIiJNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_S7_S7_EEEvPKcT_DpT0_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $6
      (i32.load8_u
       (get_local $0)
      )
     )
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.eq
       (get_local $6)
       (i32.const 37)
      )
     )
     (call $prints_l
      (get_local $0)
      (i32.const 1)
     )
     (br_if $label$0
      (i32.eqz
       (tee_local $6
        (i32.load8_u
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
     (br $label$2)
    )
   )
   (call $printi
    (i64.extend_s/i32
     (get_local $1)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (i32.add
      (get_local $7)
      (i32.const 48)
     )
     (get_local $2)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (i32.add
      (get_local $7)
      (i32.const 32)
     )
     (get_local $3)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (get_local $4)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (get_local $7)
     (get_local $5)
    )
   )
   (call $_ZN5eosio7print_fINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEJS7_S7_S7_EEEvPKcT_DpT0_
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
    (i32.add
     (get_local $7)
     (i32.const 48)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (get_local $7)
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $7)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=8
      (get_local $7)
     )
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (i32.and
       (i32.load8_u offset=16
        (get_local $7)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=24
      (get_local $7)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (i32.and
       (i32.load8_u offset=32
        (get_local $7)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=40
      (get_local $7)
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u offset=48
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=56
     (get_local $7)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
 )
 (func $_ZNSt3__16vectorIN10blockflare14queued_requestENS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $7
       (i32.add
        (tee_local $8
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $10
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 36)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 119304648)
     )
    )
    (set_local $6
     (i32.const 119304647)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $10
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $10)
          )
          (i32.const 36)
         )
        )
        (i32.const 59652322)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $6
         (select
          (get_local $7)
          (tee_local $10
           (i32.shl
            (get_local $10)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $10)
           (get_local $7)
          )
         )
        )
       )
      )
     )
     (set_local $7
      (call $_Znwj
       (i32.mul
        (get_local $6)
        (i32.const 36)
       )
      )
     )
     (br $label$0)
    )
    (set_local $6
     (i32.const 0)
    )
    (set_local $7
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i64.load align=4
    (get_local $1)
   )
  )
  (i64.store align=4
   (get_local $1)
   (i64.const 0)
  )
  (i64.store align=4
   (tee_local $10
    (i32.add
     (get_local $7)
     (i32.mul
      (get_local $8)
      (i32.const 36)
     )
    )
   )
   (get_local $5)
  )
  (set_local $9
   (i32.load
    (tee_local $8
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
  )
  (i32.store
   (get_local $8)
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 8)
   )
   (get_local $9)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 20)
   )
   (i32.load
    (tee_local $8
     (i32.add
      (get_local $1)
      (i32.const 20)
     )
    )
   )
  )
  (i64.store offset=12 align=4
   (get_local $10)
   (i64.load offset=12 align=4
    (get_local $1)
   )
  )
  (i32.store offset=12
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (i32.store
   (get_local $8)
   (i32.const 0)
  )
  (i32.store offset=24
   (get_local $10)
   (i32.load offset=24
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 28)
   )
   (i32.load
    (tee_local $8
     (i32.add
      (get_local $1)
      (i32.const 28)
     )
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $9
     (i32.add
      (get_local $1)
      (i32.const 32)
     )
    )
   )
  )
  (i32.store
   (get_local $9)
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (get_local $4)
  )
  (i32.store
   (get_local $8)
   (i32.const 0)
  )
  (i32.store offset=24
   (get_local $1)
   (i32.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $7)
    (i32.mul
     (get_local $6)
     (i32.const 36)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $10)
    (i32.const 36)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $1
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (set_local $4
     (i32.sub
      (i32.const 0)
      (get_local $1)
     )
    )
    (set_local $1
     (i32.add
      (get_local $6)
      (i32.const -16)
     )
    )
    (loop $label$6
     (i32.store
      (i32.add
       (get_local $10)
       (i32.const -28)
      )
      (i32.load
       (tee_local $6
        (i32.add
         (get_local $1)
         (i32.const -12)
        )
       )
      )
     )
     (i64.store align=4
      (i32.add
       (get_local $10)
       (i32.const -36)
      )
      (i64.load align=4
       (tee_local $7
        (i32.add
         (get_local $1)
         (i32.const -20)
        )
       )
      )
     )
     (i32.store
      (get_local $7)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $6)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $10)
       (i32.const -16)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i64.store align=4
      (i32.add
       (get_local $10)
       (i32.const -24)
      )
      (i64.load align=4
       (tee_local $6
        (i32.add
         (get_local $1)
         (i32.const -8)
        )
       )
      )
     )
     (i32.store
      (get_local $6)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -4)
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (tee_local $6
       (i32.add
        (get_local $10)
        (i32.const -12)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (tee_local $7
       (i32.add
        (get_local $10)
        (i32.const -8)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $10)
        (i32.const -4)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $6)
      (i32.load
       (tee_local $9
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
     )
     (i32.store
      (get_local $7)
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.load
       (tee_local $6
        (i32.add
         (get_local $1)
         (i32.const 12)
        )
       )
      )
     )
     (i32.store
      (get_local $6)
      (i32.const 0)
     )
     (i64.store align=4
      (get_local $9)
      (i64.const 0)
     )
     (set_local $10
      (i32.add
       (get_local $10)
       (i32.const -36)
      )
     )
     (br_if $label$6
      (i32.ne
       (i32.add
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -36)
         )
        )
        (get_local $4)
       )
       (i32.const -16)
      )
     )
    )
    (set_local $1
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $7
    (get_local $1)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $10)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $3)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $2)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $1)
     (get_local $7)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $7)
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const -16)
    )
   )
   (loop $label$8
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (tee_local $10
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (get_local $10)
     )
     (call $_ZdlPv
      (get_local $10)
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (i32.and
        (i32.load8_u
         (i32.add
          (get_local $1)
          (i32.const -8)
         )
        )
        (i32.const 1)
       )
      )
     )
     (call $_ZdlPv
      (i32.load
       (get_local $1)
      )
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (i32.and
        (i32.load8_u
         (i32.add
          (get_local $1)
          (i32.const -20)
         )
        )
        (i32.const 1)
       )
      )
     )
     (call $_ZdlPv
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const -12)
       )
      )
     )
    )
    (br_if $label$8
     (i32.ne
      (i32.add
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const -36)
        )
       )
       (get_local $6)
      )
      (i32.const -16)
     )
    )
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
 )
 (func $_ZN5eosio7print_fINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEJS7_S7_S7_EEEvPKcT_DpT0_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load8_u
       (get_local $0)
      )
     )
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.eq
       (get_local $5)
       (i32.const 37)
      )
     )
     (call $prints_l
      (get_local $0)
      (i32.const 1)
     )
     (br_if $label$0
      (i32.eqz
       (tee_local $5
        (i32.load8_u
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
     (br $label$2)
    )
   )
   (call $prints_l
    (select
     (i32.load offset=8
      (get_local $1)
     )
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
     (tee_local $6
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (get_local $5)
      (i32.const 1)
     )
     (get_local $6)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (i32.add
      (get_local $7)
      (i32.const 32)
     )
     (get_local $2)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (get_local $3)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (get_local $7)
     (get_local $4)
    )
   )
   (call $_ZN5eosio7print_fINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEJS7_S7_EEEvPKcT_DpT0_
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (get_local $7)
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $7)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=8
      (get_local $7)
     )
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (i32.and
       (i32.load8_u offset=16
        (get_local $7)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=24
      (get_local $7)
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=40
     (get_local $7)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosio7print_fINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEJS7_S7_EEEvPKcT_DpT0_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $4
      (i32.load8_u
       (get_local $0)
      )
     )
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.eq
       (get_local $4)
       (i32.const 37)
      )
     )
     (call $prints_l
      (get_local $0)
      (i32.const 1)
     )
     (br_if $label$0
      (i32.eqz
       (tee_local $4
        (i32.load8_u
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
     (br $label$2)
    )
   )
   (call $prints_l
    (select
     (i32.load offset=8
      (get_local $1)
     )
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
     (tee_local $5
      (i32.and
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (get_local $4)
      (i32.const 1)
     )
     (get_local $5)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (get_local $2)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (get_local $6)
     (get_local $3)
    )
   )
   (call $_ZN5eosio7print_fINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEJS7_EEEvPKcT_DpT0_
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (get_local $6)
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $6)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=8
      (get_local $6)
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=24
     (get_local $6)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosio7print_fINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEJS7_EEEvPKcT_DpT0_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load8_u
       (get_local $0)
      )
     )
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.eq
       (get_local $3)
       (i32.const 37)
      )
     )
     (call $prints_l
      (get_local $0)
      (i32.const 1)
     )
     (br_if $label$0
      (i32.eqz
       (tee_local $3
        (i32.load8_u
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
     (br $label$2)
    )
   )
   (call $prints_l
    (select
     (i32.load offset=8
      (get_local $1)
     )
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
     (tee_local $4
      (i32.and
       (tee_local $3
        (i32.load8_u
         (get_local $1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (get_local $3)
      (i32.const 1)
     )
     (get_local $4)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (get_local $5)
     (get_local $2)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (tee_local $3
       (i32.load8_u
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (block $label$4
     (loop $label$5
      (br_if $label$4
       (i32.eq
        (get_local $3)
        (i32.const 37)
       )
      )
      (call $prints_l
       (get_local $0)
       (i32.const 1)
      )
      (br_if $label$3
       (i32.eqz
        (tee_local $3
         (i32.load8_u
          (tee_local $0
           (i32.add
            (get_local $0)
            (i32.const 1)
           )
          )
         )
        )
       )
      )
      (br $label$5)
     )
    )
    (call $prints_l
     (select
      (i32.load offset=8
       (get_local $5)
      )
      (i32.or
       (get_local $5)
       (i32.const 1)
      )
      (tee_local $1
       (i32.and
        (tee_local $3
         (i32.load8_u
          (get_local $5)
         )
        )
        (i32.const 1)
       )
      )
     )
     (select
      (i32.load offset=4
       (get_local $5)
      )
      (i32.shr_u
       (get_local $3)
       (i32.const 1)
      )
      (get_local $1)
     )
    )
    (call $prints
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 492)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 8896)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=8982
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=8984
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=8982
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8984
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=8984
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=8984
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=8982
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8982
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8984
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=8984
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8984
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=8876
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 8684)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 8684)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=8988
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $1)
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.const 10)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $2
     (i32.add
      (i32.and
       (tee_local $5
        (i32.load
         (get_local $0)
        )
       )
       (i32.const -2)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.shr_u
       (i32.and
        (get_local $5)
        (i32.const 254)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (set_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (tee_local $1
       (select
        (get_local $3)
        (get_local $1)
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
       (i32.const -16)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eq
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ne
        (get_local $4)
        (i32.const 10)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $1
      (call $_Znwj
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (get_local $4)
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.eqz
        (get_local $1)
       )
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.and
        (tee_local $5
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $7
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (set_local $7
      (i32.const 1)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.shr_u
        (i32.and
         (get_local $5)
         (i32.const 254)
        )
        (i32.const 1)
       )
      )
      (br $label$10)
     )
     (set_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eqz
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store
      (get_local $0)
      (i32.or
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (return)
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.const 10)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (tee_local $3
       (i32.load8_u
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
   )
   (set_local $4
    (i32.add
     (i32.and
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
      (i32.const -2)
     )
     (i32.const -1)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.and
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i32.shr_u
      (i32.and
       (get_local $3)
       (i32.const 254)
      )
      (i32.const 1)
     )
    )
    (br $label$1)
   )
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.ge_u
     (i32.sub
      (get_local $4)
      (get_local $5)
     )
     (get_local $2)
    )
   )
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
    (get_local $0)
    (get_local $4)
    (i32.add
     (i32.sub
      (get_local $2)
      (get_local $4)
     )
     (get_local $5)
    )
    (get_local $5)
    (get_local $5)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (return
    (get_local $0)
   )
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (get_local $2)
      )
     )
     (br_if $label$5
      (i32.and
       (get_local $3)
       (i32.const 1)
      )
     )
     (set_local $4
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$4)
    )
    (return
     (get_local $0)
    )
   )
   (set_local $4
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (get_local $5)
    )
    (get_local $1)
    (get_local $2)
   )
  )
  (set_local $2
   (i32.add
    (get_local $5)
    (get_local $2)
   )
  )
  (block $label$7
   (block $label$8
    (br_if $label$8
     (i32.and
      (i32.load8_u
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $label$7)
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $2)
   )
  )
  (i32.store8
   (i32.add
    (get_local $4)
    (get_local $2)
   )
   (i32.const 0)
  )
  (get_local $0)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (i32.sub
      (i32.const -18)
      (get_local $1)
     )
     (get_local $2)
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.and
       (i32.load8_u
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $9
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$1)
    )
    (set_local $9
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (set_local $10
    (i32.const -17)
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_u
      (get_local $1)
      (i32.const 2147483622)
     )
    )
    (set_local $10
     (i32.const 11)
    )
    (br_if $label$3
     (i32.lt_u
      (tee_local $2
       (select
        (tee_local $8
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (tee_local $2
         (i32.add
          (get_local $2)
          (get_local $1)
         )
        )
        (i32.lt_u
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $10
     (i32.and
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
      (i32.const -16)
     )
    )
   )
   (set_local $2
    (call $_Znwj
     (get_local $10)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $4)
     )
    )
    (drop
     (call $memcpy
      (get_local $2)
      (get_local $9)
      (get_local $4)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (get_local $6)
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $2)
       (get_local $4)
      )
      (get_local $7)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $7
       (i32.sub
        (tee_local $3
         (i32.sub
          (get_local $3)
          (get_local $5)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (i32.add
        (get_local $2)
        (get_local $4)
       )
       (get_local $6)
      )
      (i32.add
       (i32.add
        (get_local $9)
        (get_local $4)
       )
       (get_local $5)
      )
      (get_local $7)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eq
      (get_local $1)
      (i32.const 10)
     )
    )
    (call $_ZdlPv
     (get_local $9)
    )
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (get_local $10)
     (i32.const 1)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (tee_local $4
     (i32.add
      (get_local $3)
      (get_local $6)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $2)
     (get_local $4)
    )
    (i32.const 0)
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc (param $0 i32) (param $1 i32) (result i32)
  (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj
   (get_local $0)
   (get_local $1)
   (call $strlen
    (get_local $1)
   )
  )
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.and
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (i64.store align=4
    (get_local $0)
    (i64.load align=4
     (get_local $1)
    )
   )
   (i32.store
    (get_local $3)
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (return
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.ge_u
     (tee_local $3
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (get_local $3)
      )
      (br $label$2)
     )
     (set_local $1
      (call $_Znwj
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $1)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (tee_local $8
      (select
       (i32.load offset=4
        (get_local $1)
       )
       (i32.shr_u
        (tee_local $8
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $5
        (i32.and
         (get_local $8)
         (i32.const 1)
        )
       )
      )
     )
     (get_local $2)
    )
   )
   (br_if $label$0
    (i32.ge_u
     (tee_local $3
      (select
       (tee_local $8
        (i32.sub
         (get_local $8)
         (get_local $2)
        )
       )
       (get_local $3)
       (i32.lt_u
        (get_local $8)
        (get_local $3)
       )
      )
     )
     (i32.const -16)
    )
   )
   (set_local $6
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (set_local $8
      (call $_Znwj
       (tee_local $7
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $8)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $8)
      (i32.add
       (select
        (get_local $6)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
        (get_local $5)
       )
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $8)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $strlen (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (get_local $0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
     )
    )
    (set_local $2
     (get_local $0)
    )
    (loop $label$2
     (br_if $label$0
      (i32.eqz
       (i32.load8_u
        (get_local $2)
       )
      )
     )
     (br_if $label$2
      (i32.and
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -4)
    )
   )
   (loop $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.and
        (i32.xor
         (tee_local $1
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $2)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const -1)
        )
        (i32.add
         (get_local $1)
         (i32.const -16843009)
        )
       )
       (i32.const -2139062144)
      )
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
   )
   (loop $label$4
    (br_if $label$4
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (i32.sub
   (get_local $2)
   (get_local $0)
  )
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
