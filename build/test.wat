(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (import "env" "writeString" (func $assembly/test/writeString (param i32)))
 (import "env" "readString" (func $assembly/test/readString (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $assembly/test/str (mut i32) (i32.const 32))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/__rtti_base i32 (i32.const 2224))
 (global $~lib/memory/__heap_base i32 (i32.const 2244))
 (global $__asyncify_state (mut i32) (i32.const 0))
 (global $__asyncify_data (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 12) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00X\00\00\00H\00e\00l\00l\00o\00 \00f\00r\00o\00m\00 \00A\00s\00s\00e\00m\00b\00l\00y\00S\00c\00r\00i\00p\00t\00 \00t\00h\00r\00o\00u\00g\00h\00 \00a\00s\00-\00b\00r\00i\00d\00g\00e\00!\00\00\00\00\00")
 (data (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00R\00e\00c\00i\00e\00v\00e\00d\00 \00p\00o\00i\00n\00t\00e\00r\00:\00 \00\00\00\00\00\00\00\00\00")
 (data (i32.const 188) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 316) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 380) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 476) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 540) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 940) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1996) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 2092) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2124) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00R\00e\00c\00i\00v\00e\00d\00 \00s\00t\00r\00i\00n\00g\00:\00 \00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2188) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00n\00u\00l\00l\00\00\00\00\00")
 (data (i32.const 2224) "\04\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "main" (func $assembly/test/main))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__pin" (func $~lib/rt/stub/__pin))
 (export "__unpin" (func $~lib/rt/stub/__unpin))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "asyncify_start_unwind" (func $asyncify_start_unwind))
 (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
 (export "asyncify_start_rewind" (func $asyncify_start_rewind))
 (export "asyncify_stop_rewind" (func $asyncify_stop_rewind))
 (export "asyncify_get_state" (func $asyncify_get_state))
 (start $~start)
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  memory.size $0
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $6
   local.get $6
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load $0
   i32.const 4
   i32.sub
   i32.store $0
   global.get $__asyncify_data
   i32.load $0
   i32.load $0
   local.set $0
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
    local.set $1
   end
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   local.get $2
   local.get $0
   i32.const 1073741820
   i32.gt_u
   global.get $__asyncify_state
   select
   i32.or
   if
    local.get $1
    i32.const 0
    global.get $__asyncify_state
    select
    i32.eqz
    if
     i32.const 432
     i32.const 496
     i32.const 33
     i32.const 29
     call $~lib/builtins/abort
     i32.const 0
     global.get $__asyncify_state
     i32.const 1
     i32.eq
     br_if $__asyncify_unwind
     drop
    end
    global.get $__asyncify_state
    i32.eqz
    if
     unreachable
    end
   end
   global.get $__asyncify_state
   i32.eqz
   if
    global.get $~lib/rt/stub/offset
    local.set $1
    local.get $0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee $0
    global.get $~lib/rt/stub/offset
    i32.const 4
    i32.add
    local.tee $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $1
    local.get $0
    call $~lib/rt/common/BLOCK#set:mmInfo
    local.get $2
    return
   end
   unreachable
  end
  local.set $2
  global.get $__asyncify_data
  i32.load $0
  local.get $2
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  global.get $__asyncify_data
  i32.load $0
  local.get $0
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  i32.const 0
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load $0
   i32.const 16
   i32.sub
   i32.store $0
   global.get $__asyncify_data
   i32.load $0
   local.tee $3
   i32.load $0
   local.set $0
   local.get $3
   i32.load $0 offset=4
   local.set $1
   local.get $3
   i32.load $0 offset=8
   local.set $4
   local.get $3
   i32.load $0 offset=12
   local.set $3
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
    local.set $2
   end
   local.get $4
   local.get $0
   i32.const 1073741804
   i32.gt_u
   global.get $__asyncify_state
   select
   local.tee $4
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   i32.or
   if
    local.get $2
    i32.const 0
    global.get $__asyncify_state
    select
    i32.eqz
    if
     i32.const 432
     i32.const 496
     i32.const 86
     i32.const 30
     call $~lib/builtins/abort
     i32.const 0
     global.get $__asyncify_state
     i32.const 1
     i32.eq
     br_if $__asyncify_unwind
     drop
    end
    global.get $__asyncify_state
    i32.eqz
    if
     unreachable
    end
   end
   local.get $4
   local.get $0
   i32.const 16
   i32.add
   global.get $__asyncify_state
   select
   local.set $4
   local.get $2
   i32.const 1
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    local.get $4
    call $~lib/rt/stub/__alloc
    local.set $2
    i32.const 1
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $2
    local.set $3
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $3
    i32.const 4
    i32.sub
    local.tee $4
    i32.const 0
    call $~lib/rt/common/OBJECT#set:gcInfo
    local.get $4
    i32.const 0
    call $~lib/rt/common/OBJECT#set:gcInfo2
    local.get $4
    local.get $1
    call $~lib/rt/common/OBJECT#set:rtId
    local.get $4
    local.get $0
    call $~lib/rt/common/OBJECT#set:rtSize
    local.get $3
    i32.const 16
    i32.add
    return
   end
   unreachable
  end
  local.set $2
  global.get $__asyncify_data
  i32.load $0
  local.get $2
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  global.get $__asyncify_data
  i32.load $0
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $4
  i32.store $0 offset=8
  local.get $2
  local.get $3
  i32.store $0 offset=12
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 16
  i32.add
  i32.store $0
  i32.const 0
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $4
    local.get $3
    local.set $1
    local.get $4
    i32.const 100
    i32.div_u
    local.set $5
    local.get $4
    i32.const 100
    i32.rem_u
    local.set $6
    i32.const 540
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $7
    i32.const 540
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $8
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $7
    local.get $8
    i64.const 32
    i64.shl
    i64.or
    i64.store $0
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $9
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $9
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 540
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store $0
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 540
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $12
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $12
   i32.store $0
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $13
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $13
   i32.store16 $0
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 960
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    i32.store $0
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 960
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u $0
   i32.store16 $0
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-loop|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2016
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $7
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2016
    local.get $1
    local.get $7
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $7
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load $0
   i32.const 24
   i32.sub
   i32.store $0
   global.get $__asyncify_data
   i32.load $0
   local.tee $3
   i32.load $0
   local.set $0
   local.get $3
   i32.load $0 offset=8
   local.set $2
   local.get $3
   i32.load $0 offset=12
   local.set $4
   local.get $3
   i32.load $0 offset=16
   local.set $6
   local.get $3
   i32.load $0 offset=20
   local.set $7
   local.get $3
   i32.load $0 offset=4
   local.set $1
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
    local.set $5
   end
   local.get $2
   local.get $1
   i32.const 2
   i32.lt_s
   local.get $1
   i32.const 36
   i32.gt_s
   i32.or
   global.get $__asyncify_state
   select
   local.tee $2
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   i32.or
   if
    local.get $5
    i32.const 0
    global.get $__asyncify_state
    select
    i32.eqz
    if
     i32.const 208
     i32.const 336
     i32.const 350
     i32.const 5
     call $~lib/builtins/abort
     i32.const 0
     global.get $__asyncify_state
     i32.const 1
     i32.eq
     br_if $__asyncify_unwind
     drop
    end
    global.get $__asyncify_state
    i32.eqz
    if
     unreachable
    end
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $0
    i32.eqz
    if
     i32.const 400
     return
    end
    local.get $1
    i32.const 10
    i32.eq
    local.set $2
   end
   local.get $6
   local.get $2
   global.get $__asyncify_state
   select
   local.tee $6
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   i32.or
   if
    global.get $__asyncify_state
    i32.eqz
    if
     local.get $0
     call $~lib/util/number/decimalCount32
     local.tee $1
     i32.const 1
     i32.shl
     local.set $2
    end
    local.get $5
    i32.const 1
    i32.eq
    i32.const 1
    global.get $__asyncify_state
    select
    if
     local.get $2
     i32.const 2
     call $~lib/rt/stub/__new
     local.set $3
     i32.const 1
     global.get $__asyncify_state
     i32.const 1
     i32.eq
     br_if $__asyncify_unwind
     drop
     local.get $3
     local.set $2
    end
    global.get $__asyncify_state
    if (result i32)
     local.get $4
    else
     local.get $2
     local.get $0
     local.get $1
     call $~lib/util/number/utoa32_dec_lut
     i32.const 0
    end
    local.set $4
   end
   local.get $6
   i32.eqz
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   i32.or
   if
    local.get $7
    local.get $2
    local.get $1
    i32.const 16
    i32.eq
    global.get $__asyncify_state
    select
    local.tee $2
    global.get $__asyncify_state
    select
    local.tee $7
    global.get $__asyncify_state
    i32.const 2
    i32.eq
    i32.or
    if
     global.get $__asyncify_state
     i32.eqz
     if
      i32.const 31
      local.get $0
      i32.clz
      i32.sub
      i32.const 2
      i32.shr_s
      i32.const 1
      i32.add
      local.tee $1
      i32.const 1
      i32.shl
      local.set $2
     end
     local.get $5
     i32.const 2
     i32.eq
     i32.const 1
     global.get $__asyncify_state
     select
     if
      local.get $2
      i32.const 2
      call $~lib/rt/stub/__new
      local.set $3
      i32.const 2
      global.get $__asyncify_state
      i32.const 1
      i32.eq
      br_if $__asyncify_unwind
      drop
      local.get $3
      local.set $2
     end
     global.get $__asyncify_state
     if (result i32)
      local.get $4
     else
      local.get $2
      local.get $0
      i64.extend_i32_u
      local.get $1
      call $~lib/util/number/utoa_hex_lut
      i32.const 0
     end
     local.set $4
    end
    local.get $7
    i32.eqz
    global.get $__asyncify_state
    i32.const 2
    i32.eq
    i32.or
    if
     global.get $__asyncify_state
     i32.eqz
     if
      local.get $0
      i64.extend_i32_u
      local.get $1
      call $~lib/util/number/ulog_base
      local.tee $4
      i32.const 1
      i32.shl
      local.set $2
     end
     local.get $5
     i32.const 3
     i32.eq
     i32.const 1
     global.get $__asyncify_state
     select
     if
      local.get $2
      i32.const 2
      call $~lib/rt/stub/__new
      local.set $3
      i32.const 3
      global.get $__asyncify_state
      i32.const 1
      i32.eq
      br_if $__asyncify_unwind
      drop
      local.get $3
      local.set $2
     end
     global.get $__asyncify_state
     i32.eqz
     if
      local.get $2
      local.get $0
      i64.extend_i32_u
      local.get $4
      local.get $1
      call $~lib/util/number/utoa64_any_core
     end
    end
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $2
    return
   end
   unreachable
  end
  local.set $3
  global.get $__asyncify_data
  i32.load $0
  local.get $3
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  global.get $__asyncify_data
  i32.load $0
  local.tee $3
  local.get $0
  i32.store $0
  local.get $3
  local.get $1
  i32.store $0 offset=4
  local.get $3
  local.get $2
  i32.store $0 offset=8
  local.get $3
  local.get $4
  i32.store $0 offset=12
  local.get $3
  local.get $6
  i32.store $0 offset=16
  local.get $3
  local.get $7
  i32.store $0 offset=20
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 24
  i32.add
  i32.store $0
  i32.const 0
 )
 (func $~lib/number/Usize#toString (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load $0
   i32.const 8
   i32.sub
   i32.store $0
   global.get $__asyncify_data
   i32.load $0
   local.tee $1
   i32.load $0
   local.set $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if (result i32)
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
   else
    local.get $2
   end
   i32.const 0
   global.get $__asyncify_state
   select
   i32.eqz
   if
    local.get $0
    local.get $1
    call $~lib/util/number/utoa32
    local.set $2
    i32.const 0
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $2
    local.set $0
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $0
    return
   end
   unreachable
  end
  local.set $2
  global.get $__asyncify_data
  i32.load $0
  local.get $2
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  global.get $__asyncify_data
  i32.load $0
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 8
  i32.add
  i32.store $0
  i32.const 0
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $0 i32) (result i32)
  local.get $0
  i32.load $0 offset=16
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load $0
   i32.const 20
   i32.sub
   i32.store $0
   global.get $__asyncify_data
   i32.load $0
   local.tee $3
   i32.load $0
   local.set $0
   local.get $3
   i32.load $0 offset=4
   local.set $1
   local.get $3
   i32.load $0 offset=8
   local.set $4
   local.get $3
   i32.load $0 offset=12
   local.set $5
   local.get $3
   i32.load $0 offset=16
   local.set $3
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
    local.set $2
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $0
    call $~lib/string/String#get:length
    i32.const 1
    i32.shl
    local.tee $5
    local.get $1
    call $~lib/string/String#get:length
    i32.const 1
    i32.shl
    local.tee $3
    i32.add
    local.tee $4
    i32.eqz
    if
     i32.const 2112
     return
    end
   end
   local.get $2
   i32.const 0
   global.get $__asyncify_state
   select
   i32.eqz
   if
    local.get $4
    i32.const 2
    call $~lib/rt/stub/__new
    local.set $2
    i32.const 0
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $2
    local.set $4
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $4
    local.get $0
    local.get $5
    memory.copy $0 $0
    local.get $4
    local.get $5
    i32.add
    local.get $1
    local.get $3
    memory.copy $0 $0
    local.get $4
    return
   end
   unreachable
  end
  local.set $2
  global.get $__asyncify_data
  i32.load $0
  local.get $2
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  global.get $__asyncify_data
  i32.load $0
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $4
  i32.store $0 offset=8
  local.get $2
  local.get $5
  i32.store $0 offset=12
  local.get $2
  local.get $3
  i32.store $0 offset=16
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 20
  i32.add
  i32.store $0
  i32.const 0
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $__asyncify_state
  i32.const 2
  i32.eq
  if
   global.get $__asyncify_data
   global.get $__asyncify_data
   i32.load $0
   i32.const 8
   i32.sub
   i32.store $0
   global.get $__asyncify_data
   i32.load $0
   local.tee $1
   i32.load $0
   local.set $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
  end
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if (result i32)
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
   else
    local.get $2
   end
   i32.const 0
   global.get $__asyncify_state
   select
   i32.eqz
   if
    local.get $0
    local.get $1
    call $~lib/string/String#concat
    local.set $2
    i32.const 0
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $2
    local.set $0
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $0
    return
   end
   unreachable
  end
  local.set $2
  global.get $__asyncify_data
  i32.load $0
  local.get $2
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  global.get $__asyncify_data
  i32.load $0
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 8
  i32.add
  i32.store $0
  i32.const 0
 )
 (func $assembly/test/main
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $__asyncify_unwind (result i32)
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if (result i32)
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
   else
    local.get $0
   end
   global.get $assembly/test/str
   global.get $__asyncify_state
   select
   local.set $0
   global.get $__asyncify_state
   i32.const 2
   i32.eq
   if
    global.get $__asyncify_data
    global.get $__asyncify_data
    i32.load $0
    i32.const 4
    i32.sub
    i32.store $0
    global.get $__asyncify_data
    i32.load $0
    i32.load $0
    local.set $2
   end
   local.get $2
   i32.const 0
   global.get $__asyncify_state
   select
   i32.eqz
   if
    local.get $0
    call $assembly/test/writeString
    i32.const 0
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
   end
   local.get $2
   i32.const 1
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    call $assembly/test/readString
    local.set $1
    i32.const 1
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $1
    local.set $0
   end
   global.get $__asyncify_state
   i32.eqz
   if
    local.get $0
    global.set $assembly/test/str
    global.get $assembly/test/str
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    local.get $0
    i32.const 10
    call $~lib/number/Usize#toString
    local.set $1
    i32.const 2
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $1
    local.set $0
   end
   local.get $2
   i32.const 3
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    i32.const 144
    local.get $0
    call $~lib/string/String.__concat
    local.set $1
    i32.const 3
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $1
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    local.get $0
    call $assembly/test/writeString
    i32.const 4
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
   end
   local.get $0
   global.get $assembly/test/str
   i32.const 2208
   global.get $assembly/test/str
   select
   global.get $__asyncify_state
   select
   local.set $0
   local.get $2
   i32.const 5
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    i32.const 2144
    local.get $0
    call $~lib/string/String.__concat
    local.set $1
    i32.const 5
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $1
    local.set $0
   end
   local.get $2
   i32.const 6
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    local.get $0
    call $assembly/test/writeString
    i32.const 6
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
   end
   return
  end
  local.set $1
  global.get $__asyncify_data
  i32.load $0
  local.get $1
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
  global.get $__asyncify_data
  i32.load $0
  local.get $0
  i32.store $0
  global.get $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  i32.const 4
  i32.add
  i32.store $0
 )
 (func $~lib/rt/stub/__pin (param $0 i32) (result i32)
  local.get $0
  return
 )
 (func $~lib/rt/stub/__unpin (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect
  nop
 )
 (func $~start
  global.get $~lib/memory/__heap_base
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $asyncify_start_unwind (param $0 i32)
  i32.const 1
  global.set $__asyncify_state
  local.get $0
  global.set $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  global.get $__asyncify_data
  i32.load $0 offset=4
  i32.gt_u
  if
   unreachable
  end
 )
 (func $asyncify_stop_unwind
  i32.const 0
  global.set $__asyncify_state
  global.get $__asyncify_data
  i32.load $0
  global.get $__asyncify_data
  i32.load $0 offset=4
  i32.gt_u
  if
   unreachable
  end
 )
 (func $asyncify_start_rewind (param $0 i32)
  i32.const 2
  global.set $__asyncify_state
  local.get $0
  global.set $__asyncify_data
  global.get $__asyncify_data
  i32.load $0
  global.get $__asyncify_data
  i32.load $0 offset=4
  i32.gt_u
  if
   unreachable
  end
 )
 (func $asyncify_stop_rewind
  i32.const 0
  global.set $__asyncify_state
  global.get $__asyncify_data
  i32.load $0
  global.get $__asyncify_data
  i32.load $0 offset=4
  i32.gt_u
  if
   unreachable
  end
 )
 (func $asyncify_get_state (result i32)
  global.get $__asyncify_state
 )
)
