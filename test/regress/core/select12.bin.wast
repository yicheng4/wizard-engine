(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\00\00\60\03\7f\7f\7f\01\7f\03\84\80\80\80\00\03"
  "\00\01\00\07\8a\80\80\80\00\01\06\73\65\6c\65\63"
  "\74\00\01\0a\88\81\80\80\00\03\82\80\80\80\00\00"
  "\0b\f4\80\80\80\00\01\0f\7f\20\00\20\01\20\02\20"
  "\00\41\03\6a\21\03\20\00\41\04\6a\21\04\20\00\41"
  "\05\6a\21\05\20\00\41\06\6a\21\06\20\00\41\07\6a"
  "\21\07\20\00\41\08\6a\21\08\20\00\41\09\6a\21\09"
  "\20\00\41\0a\6a\21\0a\20\00\41\0b\6a\21\0b\20\00"
  "\41\0c\6a\21\0c\20\00\41\0d\6a\21\0d\20\00\41\0e"
  "\6a\21\0e\20\00\41\0f\6a\21\0f\20\00\41\10\6a\21"
  "\10\20\00\41\11\6a\21\11\1b\0b\82\80\80\80\00\00"
  "\0b"
)
(assert_return
  (invoke "select" (i32.const 0x29a) (i32.const 0x6f) (i32.const 0x0))
  (i32.const 0x6f)
)
(assert_return
  (invoke "select"
    (i32.const 0xffff_fd66)
    (i32.const 0xffff_ff91)
    (i32.const 0x0)
  )
  (i32.const 0xffff_ff91)
)
(assert_return
  (invoke "select" (i32.const 0x309) (i32.const 0xde) (i32.const 0x1))
  (i32.const 0x309)
)
(assert_return
  (invoke "select"
    (i32.const 0xffff_fcf7)
    (i32.const 0xffff_ff22)
    (i32.const 0x1)
  )
  (i32.const 0xffff_fcf7)
)
