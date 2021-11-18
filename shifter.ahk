;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Maave (maave0 on github)
;
; Turns the Caps Lock key into a one-shot Shift key. 
; This only affects the mapped keys, it's not a global shift
; This may lag and capitilize wrong when computer is under high load i.e.  during the first few seconds after opening CMD.
;
; Press Caps Lock once. The next key you press will be shifted/capitalized
;
; Press Ctrl+Caps to always Shift.
; Caps Lock again to cancel.

SendMode Input
SetCapsLockState, AlwaysOff
#InstallKeybdHook
#NoEnv

oneShift := false
holdShift :=false

Capslock::
{
	if (holdShift) {
		oneShift:=false
		holdShift:=false
	}
	else {
		oneShift:=!oneShift
	}
	return
}

^Capslock::
{
	oneShift:=false
	holdShift:=!holdShift
	return
}

; There might be a better way but this worked
#if (oneShift || holdShift)
{
	a::
	b::
	c::
	d::
	e::
	f::
	g::
	h::
	i::
	j::
	k::
	l::
	m::
	n::
	o::
	p::
	q::
	r::
	s::
	t::
	u::
	v::
	w::
	x::
	y::
	z::
	1::
	2::
	3::
	4::
	5::
	6::
	7::
	8::
	9::
	0::
	-::
	=::
	[::
	]::
	`;::
	'::
	,::
	.::
	/::
	`::
	\::
	Send +%A_ThisHotkey%
	if (!holdShift) {
		oneShift:=!oneShift
	}
	return
}