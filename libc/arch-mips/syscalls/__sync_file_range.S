/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(__sync_file_range)
    .set noreorder
    .cpload t9
    li v0, __NR_sync_file_range
    syscall
    bnez a3, 1f
    move a0, v0
    j ra
    nop
1:
    la t9,__set_errno_internal
    j t9
    nop
    .set reorder
END(__sync_file_range)
