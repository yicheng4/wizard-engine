(module
  (func (export "m0") (param ) (result f64)
    (f64.convert_i64_s (i64.const 18446744073709545616))
  )
  (func (export "m1") (param ) (result f64)
    (f64.convert_i64_s (i64.const 18446744071562067968))
  )
  (func (export "m2") (param ) (result f64)
    (f64.convert_i64_s (i64.const 9223372036854775802))
  )
)
(assert_return (invoke "m0" ) (f64.const -0x1.7700000000000p12))
(assert_return (invoke "m1" ) (f64.const -0x1.0000000000000p31))
(assert_return (invoke "m2" ) (f64.const 0x1.0000000000000p63))