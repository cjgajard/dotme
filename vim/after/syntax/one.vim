"if exists("b:current_syntax") | finish | endif

let s:cpo_save = &cpo
set cpo&vim

syn keyword	oneStatement	return
syn keyword	oneConditional	if else switch
syn keyword	oneLoop		for
syn keyword	cType		byte integer i8 i16 i32 i64 u8 u16 u32 u64
syn keyword	cNil		nil

