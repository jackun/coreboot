F000:4C93 ; =============== S U B R O U T I N E =======================================
F000:4C93
F000:4C93
F000:4C93 sio_ri2_chk     proc near               ; CODE XREF: do_start+20j
F000:4C93                 shl     esp, 10h
F000:4C97                 mov     cx, 0A348h      ; enable sio access at 0x2e
F000:4C9A                 mov     sp, 4CA0h       ; pci 0:20:3 0x48
F000:4C9D                 jmp     pci_cfg_readb
F000:4C9D ; ---------------------------------------------------------------------------
F000:4CA0                 dw 4CA2h
F000:4CA2 ; ---------------------------------------------------------------------------
F000:4CA2                 or      al, 1
F000:4CA4                 mov     sp, 4CAAh
F000:4CA7                 jmp     pci_cfg_writeb
F000:4CA7 ; ---------------------------------------------------------------------------
F000:4CAA                 dw 4CACh
F000:4CAC ; ---------------------------------------------------------------------------
F000:4CAC                 mov     dx, 2Eh ; '.'   ; sio config mode
F000:4CAF                 mov     al, 87h ; 'ç'
F000:4CB1                 out     dx, al
F000:4CB2
F000:4CB2 loc_F4CB2:
F000:4CB2                 mov     al, 1
F000:4CB4                 out     dx, al
F000:4CB5                 mov     al, 55h ; 'U'
F000:4CB7                 out     dx, al
F000:4CB8                 mov     al, 55h ; 'U'
F000:4CBA                 out     dx, al
F000:4CBB                 mov     cl, 4           ; select ldn 4 (EC)
F000:4CBD                 mov     dx, 2Eh ; '.'
F000:4CC0                 mov     al, 7
F000:4CC2                 out     dx, al
F000:4CC3                 out     0EBh, al
F000:4CC5                 inc     dx
F000:4CC6                 mov     al, cl
F000:4CC8                 out     dx, al
F000:4CC9                 out     0EBh, al
F000:4CCB                 mov     cl, 0F1h ; '±'  ; ldn 4, reg F1
F000:4CCD                 mov     al, cl
F000:4CCF                 mov     dx, 2Eh ; '.'
F000:4CD2                 out     dx, al
F000:4CD3                 out     0EBh, al
F000:4CD5                 inc     dx
F000:4CD6                 in      al, dx
F000:4CD7                 out     0EBh, al
F000:4CD9                 test    al, 4           ; check RI2
F000:4CDB                 jz      short end_0     ; RI2 not set
F000:4CDD otherwise switch to backup bios
F000:4CDD                 mov     cl, 7           ; select ldn 7 (GPIO)
F000:4CDF                 mov     dx, 2Eh ; '.'
F000:4CE2                 mov     al, 7
F000:4CE4                 out     dx, al
F000:4CE5                 out     0EBh, al
F000:4CE7                 inc     dx
F000:4CE8                 mov     al, cl
F000:4CEA                 out     dx, al
F000:4CEB                 out     0EBh, al
F000:4CED                 mov     cl, 0EFh ; 'n'  ; 0xef register (undocumented)
F000:4CEF                 mov     al, cl
F000:4CF1                 mov     dx, 2Eh ; '.'
F000:4CF4                 out     dx, al
F000:4CF5                 out     0EBh, al
F000:4CF7                 inc     dx
F000:4CF8                 in      al, dx          ; current value: 72h
F000:4CF9                 out     0EBh, al
F000:4CFB                 test    al, 1           ; if already backup bios, don't do anything
F000:4CFD                 jnz     short end_0     ; exit sio config
F000:4CFF                 mov     cl, 0EFh ; 'n'  ; working with EF again
F000:4D01                 mov     al, cl
F000:4D03                 mov     dx, 2Eh ; '.'
F000:4D06                 out     dx, al
F000:4D07                 out     0EBh, al
F000:4D09                 inc     dx
F000:4D0A                 in      al, dx          ; re-read
F000:4D0B                 out     0EBh, al
F000:4D0D                 or      al, 1           ; switch to backup
F000:4D0F                 mov     ah, al
F000:4D11                 mov     dx, 2Eh ; '.'
F000:4D14                 mov     al, cl
F000:4D16                 out     dx, al
F000:4D17                 out     0EBh, al
F000:4D19                 mov     al, ah
F000:4D1B                 inc     dx
F000:4D1C                 out     dx, al          ; write back 'val | 1'
F000:4D1D                 out     0EBh, al
F000:4D1F                 mov     al, 2
F000:4D21                 mov     dx, 0CF9h       ; system reset register
F000:4D24                 out     dx, al
F000:4D25                 mov     al, 6
F000:4D27                 out     dx, al          ; do hard reset
F000:4D28
F000:4D28 forever:                                ; CODE XREF: sio_ri2_chk:foreverj
F000:4D28                 jmp     short forever
F000:4D2A ; ---------------------------------------------------------------------------
F000:4D2A
F000:4D2A end_0:                                  ; CODE XREF: sio_ri2_chk+48j
F000:4D2A                                         ; sio_ri2_chk+6Aj
F000:4D2A                 mov     dx, 2Eh ; '.'   ; exit sio config
F000:4D2D                 mov     al, 2
F000:4D2F                 out     dx, al
F000:4D30                 out     0EBh, al
F000:4D32                 inc     dx
F000:4D33                 mov     al, 2
F000:4D35                 out     dx, al
F000:4D36                 shr     esp, 10h
F000:4D3A                 retn
F000:4D3A sio_ri2_chk     endp
F000:4D3A
