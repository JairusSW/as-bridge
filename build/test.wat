(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "writeString" (func $assembly/test/writeString (param i32)))
 (import "env" "readString" (func $assembly/test/readString (result i32)))
 (import "env" "sleep" (func $assembly/test/sleep (param i32)))
 (import "env" "writeFromPtr" (func $assembly/test/writeFromPtr (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $assembly/test/str i32 (i32.const 32))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 304))
 (global $~lib/memory/__heap_base i32 (i32.const 324))
 (global $__asyncify_state (mut i32) (i32.const 0))
 (global $__asyncify_data (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 12) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00X\00\00\00H\00e\00l\00l\00o\00 \00f\00r\00o\00m\00 \00A\00s\00s\00e\00m\00b\00l\00y\00S\00c\00r\00i\00p\00t\00 \00t\00h\00r\00o\00u\00g\00h\00 \00a\00s\00-\00b\00r\00i\00d\00g\00e\00!\00\00\00\00\00")
 (data (i32.const 124) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00S\00l\00e\00e\00p\00i\00n\00g\00 \00n\00o\00w\00!\00\00\00")
 (data (i32.const 172) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 236) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 304) "\04\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00")
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
   i32.const 32
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
    local.set $1
   end
   local.get $1
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
   local.get $1
   i32.const 1
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    call $assembly/test/readString
    local.set $2
    i32.const 1
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
    local.get $2
    local.set $0
   end
   local.get $1
   i32.const 2
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    i32.const 144
    call $assembly/test/writeString
    i32.const 2
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
   end
   local.get $1
   i32.const 3
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    i32.const 2000
    call $assembly/test/sleep
    i32.const 3
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
   end
   local.get $1
   i32.const 4
   i32.eq
   i32.const 1
   global.get $__asyncify_state
   select
   if
    local.get $0
    call $assembly/test/writeFromPtr
    i32.const 4
    global.get $__asyncify_state
    i32.const 1
    i32.eq
    br_if $__asyncify_unwind
    drop
   end
   return
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
     i32.const 192
     i32.const 256
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
     i32.const 192
     i32.const 256
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
