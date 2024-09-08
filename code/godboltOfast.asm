fast_fk::internal::forward_kinematics_internal(float*, unsigned long):
        movss   xmm5, DWORD PTR [rdi+4]
        movss   xmm3, DWORD PTR [rdi]
        movabs  rsi, 4575657221408423936
        mov     DWORD PTR [rdi+28], 0x00000000
        movss   xmm2, DWORD PTR [rdi+64]
        mov     QWORD PTR [rdi+48], rsi
        movaps  xmm0, xmm5
        movaps  xmm4, xmm3
        xorps   xmm0, XMMWORD PTR .LC0[rip]
        movss   xmm7, DWORD PTR .LC3[rip]
        xorps   xmm4, XMMWORD PTR .LC0[rip]
        movaps  xmm11, xmm3
        movaps  xmm9, xmm2
        movss   xmm8, DWORD PTR .LC4[rip]
        mulss   xmm7, xmm2
        movaps  xmm1, xmm0
        movaps  xmm15, xmm0
        movss   DWORD PTR [rdi+36], xmm0
        mulss   xmm9, xmm8
        unpcklps        xmm1, xmm3
        movss   xmm10, DWORD PTR .LC3[rip]
        movss   DWORD PTR [rdi+32], xmm4
        movlps  QWORD PTR [rdi+20], xmm1
        movss   xmm1, DWORD PTR [rdi+68]
        mov     QWORD PTR [rdi+40], 0
        mulss   xmm15, xmm1
        movaps  xmm6, xmm1
        mov     QWORD PTR [rdi+8], 0
        mulss   xmm6, xmm8
        mov     DWORD PTR [rdi+16], 0x3e2678d4
        mulss   xmm10, xmm1
        movss   DWORD PTR [rdi+108], xmm9
        mulss   xmm11, xmm7
        mov     DWORD PTR [rdi+116], 0xba37dab3
        mulss   xmm7, xmm0
        mulss   xmm1, xmm4
        movss   DWORD PTR [rsp-44], xmm6
        movss   DWORD PTR [rdi+112], xmm6
        movaps  xmm6, xmm15
        addss   xmm6, xmm11
        movaps  xmm11, xmm3
        mulss   xmm11, xmm10
        addss   xmm1, xmm7
        mulss   xmm10, xmm0
        movaps  xmm7, xmm5
        mulss   xmm7, xmm2
        movss   DWORD PTR [rdi+84], xmm6
        mulss   xmm2, xmm3
        mulss   xmm5, xmm8
        movss   DWORD PTR [rdi+96], xmm1
        movss   xmm8, DWORD PTR .LC6[rip]
        mulss   xmm3, DWORD PTR .LC5[rip]
        mulss   xmm0, xmm8
        mulss   xmm4, xmm8
        addss   xmm7, xmm11
        addss   xmm2, xmm10
        movss   DWORD PTR [rdi+104], xmm5
        movss   DWORD PTR [rdi+88], xmm7
        movss   DWORD PTR [rdi+100], xmm2
        movss   DWORD PTR [rdi+92], xmm3
        movss   DWORD PTR [rsp-40], xmm0
        movss   DWORD PTR [rdi+72], xmm0
        movss   DWORD PTR [rsp-36], xmm4
        movss   DWORD PTR [rdi+76], xmm4
        movss   xmm4, DWORD PTR [rdi+128]
        movss   xmm15, DWORD PTR .LC8[rip]
        movss   xmm12, DWORD PTR [rdi+132]
        mov     DWORD PTR [rdi+80], 0x3e2678d4
        mulss   xmm15, xmm4
        movaps  xmm11, xmm4
        movss   xmm14, DWORD PTR .LC11[rip]
        movss   xmm8, DWORD PTR .LC9[rip]
        movss   xmm13, DWORD PTR .LC7[rip]
        movaps  xmm10, xmm4
        mulss   xmm11, xmm8
        mulss   xmm13, xmm12
        mulss   xmm8, xmm12
        mulss   xmm4, DWORD PTR .LC12[rip]
        movaps  xmm0, xmm15
        movss   xmm15, DWORD PTR .LC10[rip]
        mulss   xmm10, xmm14
        mulss   xmm15, xmm12
        mulss   xmm12, xmm14
        movaps  xmm14, xmm6
        mulss   xmm14, xmm13
        addss   xmm10, xmm15
        addss   xmm4, xmm12
        movaps  xmm12, xmm7
        mulss   xmm12, xmm11
        addss   xmm12, xmm14
        movaps  xmm14, xmm3
        mulss   xmm14, xmm10
        movaps  xmm15, xmm12
        movaps  xmm12, xmm2
        mulss   xmm12, xmm11
        mulss   xmm11, DWORD PTR [rsp-44]
        addss   xmm15, xmm14
        movaps  xmm14, xmm1
        mulss   xmm14, xmm13
        mulss   xmm13, xmm9
        addss   xmm12, xmm14
        movaps  xmm14, xmm5
        mulss   xmm14, xmm10
        addss   xmm11, xmm13
        mulss   xmm10, DWORD PTR .LC3[rip]
        movaps  xmm13, xmm11
        movaps  xmm11, xmm2
        mulss   xmm11, xmm8
        addss   xmm12, xmm14
        addss   xmm13, xmm10
        movaps  xmm10, xmm6
        mulss   xmm10, xmm0
        movaps  xmm14, xmm12
        movaps  xmm12, xmm7
        mulss   xmm12, xmm8
        mulss   xmm8, DWORD PTR [rsp-44]
        addss   xmm12, xmm10
        movaps  xmm10, xmm3
        mulss   xmm10, xmm4
        addss   xmm12, xmm10
        movaps  xmm10, xmm1
        mulss   xmm10, xmm0
        mulss   xmm0, xmm9
        addss   xmm11, xmm10
        movaps  xmm10, xmm5
        mulss   xmm10, xmm4
        addss   xmm0, xmm8
        movaps  xmm8, xmm6
        mulss   xmm4, DWORD PTR .LC3[rip]
        addss   xmm11, xmm10
        movss   xmm10, DWORD PTR .LC13[rip]
        addss   xmm4, xmm0
        movss   xmm0, DWORD PTR .LC14[rip]
        mulss   xmm8, xmm10
        mulss   xmm7, xmm0
        mulss   xmm2, xmm0
        mulss   xmm0, DWORD PTR [rsp-44]
        movss   DWORD PTR [rsp-44], xmm14
        addss   xmm7, xmm8
        movss   xmm8, DWORD PTR .LC15[rip]
        mulss   xmm3, xmm8
        mulss   xmm5, xmm8
        addss   xmm3, xmm7
        movaps  xmm7, xmm1
        mulss   xmm7, xmm10
        mulss   xmm10, xmm9
        addss   xmm7, xmm2
        movss   xmm2, DWORD PTR .LC2[rip]
        addss   xmm10, xmm0
        movss   xmm0, DWORD PTR .LC17[rip]
        subss   xmm10, DWORD PTR .LC16[rip]
        mulss   xmm6, xmm0
        addss   xmm5, xmm7
        movss   xmm7, DWORD PTR [rsp-40]
        movss   DWORD PTR [rsp-40], xmm13
        mulss   xmm9, xmm0
        mulss   xmm1, xmm0
        addss   xmm1, DWORD PTR [rsp-36]
        addss   xmm7, xmm6
        addss   xmm2, xmm9
        movaps  xmm6, xmm1
        movss   xmm9, DWORD PTR .LC18[rip]
        movss   DWORD PTR [rsp-24], xmm6
        movaps  xmm0, xmm7
        movss   DWORD PTR [rsp-28], xmm7
        movss   xmm7, DWORD PTR [rdi+196]
        movaps  xmm1, xmm2
        unpcklps        xmm0, xmm6
        movss   DWORD PTR [rsp-20], xmm2
        mulss   xmm9, xmm7
        unpcklps        xmm1, xmm15
        movlhps xmm0, xmm1
        movaps  xmm1, xmm14
        movups  XMMWORD PTR [rdi+136], xmm0
        movaps  xmm0, xmm12
        unpcklps        xmm1, xmm11
        unpcklps        xmm0, xmm3
        movlhps xmm0, xmm1
        movaps  xmm1, xmm4
        movups  XMMWORD PTR [rdi+152], xmm0
        movaps  xmm0, xmm5
        unpcklps        xmm1, xmm10
        unpcklps        xmm0, xmm13
        movlhps xmm0, xmm1
        movups  XMMWORD PTR [rdi+168], xmm0
        movss   xmm1, DWORD PTR [rdi+192]
        movss   xmm6, DWORD PTR .LC21[rip]
        movss   xmm2, DWORD PTR .LC20[rip]
        movss   xmm13, DWORD PTR .LC24[rip]
        movss   xmm14, DWORD PTR .LC23[rip]
        movaps  xmm0, xmm1
        movss   xmm8, DWORD PTR .LC19[rip]
        mulss   xmm0, xmm6
        mulss   xmm2, xmm7
        mulss   xmm6, xmm7
        mulss   xmm14, xmm7
        mulss   xmm8, xmm1
        mulss   xmm7, xmm13
        addss   xmm2, xmm0
        movss   xmm0, DWORD PTR .LC22[rip]
        mulss   xmm0, xmm1
        addss   xmm0, xmm6
        movaps  xmm6, xmm1
        mulss   xmm6, xmm13
        movaps  xmm13, xmm9
        mulss   xmm1, DWORD PTR .LC25[rip]
        mulss   xmm13, xmm15
        addss   xmm6, xmm14
        movaps  xmm14, xmm2
        mulss   xmm14, xmm12
        addss   xmm1, xmm7
        movaps  xmm7, xmm14
        movaps  xmm14, xmm2
        addss   xmm7, xmm13
        mulss   xmm14, xmm11
        movaps  xmm13, xmm6
        mulss   xmm13, xmm3
        mulss   xmm2, xmm4
        addss   xmm7, xmm13
        movss   xmm13, DWORD PTR [rsp-44]
        mulss   xmm13, xmm9
        movss   DWORD PTR [rsp-36], xmm7
        movaps  xmm7, xmm14
        movaps  xmm14, xmm6
        mulss   xmm14, xmm5
        mulss   xmm6, xmm10
        addss   xmm7, xmm13
        movaps  xmm13, xmm14
        movaps  xmm14, xmm7
        movss   xmm7, DWORD PTR [rsp-40]
        addss   xmm14, xmm13
        movaps  xmm13, xmm0
        mulss   xmm9, xmm7
        mulss   xmm13, xmm11
        movss   DWORD PTR [rsp-32], xmm14
        addss   xmm2, xmm9
        movss   xmm9, DWORD PTR [rsp-44]
        addss   xmm2, xmm6
        movaps  xmm6, xmm8
        mulss   xmm6, xmm15
        movss   DWORD PTR [rsp-16], xmm2
        movaps  xmm2, xmm0
        mulss   xmm2, xmm12
        mulss   xmm0, xmm4
        addss   xmm2, xmm6
        movaps  xmm6, xmm1
        mulss   xmm6, xmm3
        movaps  xmm14, xmm2
        movaps  xmm2, xmm13
        movaps  xmm13, xmm1
        mulss   xmm1, xmm10
        mulss   xmm13, xmm5
        addss   xmm14, xmm6
        movaps  xmm6, xmm9
        mulss   xmm6, xmm8
        mulss   xmm8, xmm7
        addss   xmm2, xmm6
        movaps  xmm6, xmm13
        addss   xmm0, xmm8
        movaps  xmm13, xmm2
        movss   xmm2, DWORD PTR .LC26[rip]
        addss   xmm0, xmm1
        movaps  xmm1, xmm12
        addss   xmm13, xmm6
        mulss   xmm9, xmm2
        movaps  xmm6, xmm3
        movaps  xmm8, xmm0
        movaps  xmm0, xmm15
        mulss   xmm0, xmm2
        mulss   xmm2, DWORD PTR [rsp-40]
        movaps  xmm7, xmm0
        movss   xmm0, DWORD PTR .LC27[rip]
        mulss   xmm1, xmm0
        addss   xmm7, xmm1
        movss   xmm1, DWORD PTR .LC28[rip]
        mulss   xmm6, xmm1
        addss   xmm7, xmm6
        movaps  xmm6, xmm11
        mulss   xmm6, xmm0
        mulss   xmm0, xmm4
        addss   xmm6, xmm9
        movaps  xmm9, xmm5
        mulss   xmm9, xmm1
        addss   xmm0, xmm2
        movss   xmm2, DWORD PTR .LC29[rip]
        mulss   xmm1, xmm10
        addss   xmm6, xmm9
        movss   xmm9, DWORD PTR .LC30[rip]
        addss   xmm0, xmm1
        movaps  xmm1, xmm15
        movss   xmm15, DWORD PTR [rsp-36]
        mulss   xmm1, xmm2
        mulss   xmm12, xmm9
        mulss   xmm4, xmm9
        mulss   xmm11, xmm9
        addss   xmm12, xmm1
        movss   xmm1, DWORD PTR .LC31[rip]
        mulss   xmm3, xmm1
        addss   xmm3, DWORD PTR [rsp-28]
        mulss   xmm10, xmm1
        addss   xmm10, DWORD PTR [rsp-20]
        mulss   xmm5, xmm1
        addss   xmm5, DWORD PTR [rsp-24]
        addss   xmm12, xmm3
        movss   xmm3, DWORD PTR [rsp-44]
        mulss   xmm3, xmm2
        mulss   xmm2, DWORD PTR [rsp-40]
        movaps  xmm1, xmm12
        movss   DWORD PTR [rsp-28], xmm12
        addss   xmm11, xmm3
        movaps  xmm3, xmm10
        addss   xmm2, xmm4
        addss   xmm11, xmm5
        addss   xmm3, xmm2
        unpcklps        xmm1, xmm11
        movss   DWORD PTR [rsp-24], xmm11
        movaps  xmm11, xmm14
        movaps  xmm4, xmm3
        movss   DWORD PTR [rsp-20], xmm3
        unpcklps        xmm4, xmm15
        movlhps xmm1, xmm4
        movss   xmm4, DWORD PTR [rsp-32]
        movups  XMMWORD PTR [rdi+200], xmm1
        movaps  xmm1, xmm14
        unpcklps        xmm4, xmm13
        unpcklps        xmm1, xmm7
        movlhps xmm1, xmm4
        movaps  xmm4, xmm8
        movups  XMMWORD PTR [rdi+216], xmm1
        movss   xmm5, DWORD PTR [rsp-16]
        movaps  xmm1, xmm6
        unpcklps        xmm4, xmm0
        movq    xmm9, QWORD PTR [rdi+256]
        movq    xmm3, QWORD PTR .LC33[rip]
        unpcklps        xmm1, xmm5
        movlhps xmm1, xmm4
        movaps  xmm2, xmm9
        movaps  xmm12, xmm9
        movups  XMMWORD PTR [rdi+232], xmm1
        shufps  xmm12, xmm12, 0xe5
        movq    xmm1, QWORD PTR .LC32[rip]
        mulss   xmm15, xmm12
        xorps   xmm9, XMMWORD PTR .LC0[rip]
        mulps   xmm1, xmm2
        mulps   xmm2, xmm3
        movaps  xmm4, xmm1
        movaps  xmm10, xmm1
        mulss   xmm11, xmm2
        shufps  xmm4, xmm4, 0xe5
        movaps  xmm5, xmm4
        movaps  xmm4, xmm2
        shufps  xmm4, xmm4, 0xe5
        mulss   xmm10, xmm6
        movaps  xmm3, xmm4
        movaps  xmm4, xmm2
        mulss   xmm4, xmm13
        addss   xmm11, xmm15
        movaps  xmm15, xmm7
        mulss   xmm15, xmm1
        addss   xmm11, xmm15
        movss   xmm15, DWORD PTR [rsp-36]
        mulss   xmm15, xmm9
        movss   DWORD PTR [rsp-44], xmm11
        movss   xmm11, DWORD PTR [rsp-32]
        mulss   xmm11, xmm12
        addss   xmm4, xmm11
        addss   xmm4, xmm10
        movaps  xmm10, xmm14
        mulss   xmm10, xmm3
        mulss   xmm3, xmm13
        movss   DWORD PTR [rsp-40], xmm4
        movaps  xmm4, xmm15
        addss   xmm4, xmm10
        movaps  xmm10, xmm7
        mulss   xmm10, xmm5
        mulss   xmm5, xmm6
        movaps  xmm15, xmm4
        movss   xmm4, DWORD PTR [rsp-32]
        mulss   xmm4, xmm9
        addss   xmm15, xmm10
        movaps  xmm10, xmm6
        movss   DWORD PTR [rdi+280], xmm15
        addss   xmm3, xmm4
        movaps  xmm4, xmm8
        shufps  xmm4, xmm4, 0
        mulps   xmm2, xmm4
        movaps  xmm4, xmm0
        shufps  xmm4, xmm4, 0
        mulps   xmm4, xmm1
        addss   xmm3, xmm5
        movss   xmm5, DWORD PTR [rsp-16]
        mulss   xmm9, xmm5
        mulss   xmm5, xmm12
        movss   xmm12, DWORD PTR [rsp-40]
        addps   xmm2, xmm4
        movaps  xmm4, xmm7
        movaps  xmm1, xmm5
        unpcklps        xmm1, xmm9
        addps   xmm1, xmm2
        movss   xmm2, DWORD PTR .LC35[rip]
        mulss   xmm2, xmm0
        movaps  xmm5, xmm1
        movq    rcx, xmm1
        movss   DWORD PTR [rsp-16], xmm1
        movaps  xmm1, xmm8
        shufps  xmm5, xmm5, 0xe5
        movss   DWORD PTR [rsp-12], xmm5
        movss   xmm5, DWORD PTR .LC34[rip]
        mov     QWORD PTR [rdi+300], rcx
        mulss   xmm1, xmm5
        mulss   xmm4, xmm5
        mulss   xmm10, xmm5
        mulss   xmm5, xmm0
        addss   xmm1, xmm2
        mulss   xmm1, DWORD PTR [rdi+260]
        movaps  xmm2, xmm9
        addss   xmm2, xmm1
        movaps  xmm1, xmm14
        movd    edx, xmm2
        movss   xmm2, DWORD PTR .LC36[rip]
        mulss   xmm1, xmm2
        addss   xmm1, xmm4
        movaps  xmm4, xmm13
        mulss   xmm4, xmm2
        mulss   xmm2, xmm8
        addss   xmm4, xmm10
        movss   xmm10, DWORD PTR .LC38[rip]
        addss   xmm2, xmm5
        movaps  xmm5, xmm3
        mulss   xmm14, xmm10
        mulss   xmm13, xmm10
        unpcklps        xmm5, xmm4
        addss   xmm14, DWORD PTR [rsp-28]
        mulss   xmm10, xmm8
        movaps  xmm9, xmm5
        movaps  xmm5, xmm1
        movss   DWORD PTR [rdi+308], xmm2
        unpcklps        xmm5, xmm12
        addss   xmm10, DWORD PTR [rsp-20]
        addss   xmm13, DWORD PTR [rsp-24]
        movlhps xmm5, xmm9
        movups  XMMWORD PTR [rdi+284], xmm5
        movss   xmm5, DWORD PTR .LC37[rip]
        mulss   xmm7, xmm5
        mulss   xmm0, xmm5
        mulss   xmm6, xmm5
        movaps  xmm9, xmm7
        movaps  xmm5, xmm0
        addss   xmm9, xmm14
        movss   xmm14, DWORD PTR [rsp-44]
        addss   xmm5, xmm10
        movaps  xmm7, xmm6
        addss   xmm7, xmm13
        movss   DWORD PTR [rsp-36], xmm9
        movss   DWORD PTR [rsp-28], xmm5
        movaps  xmm6, xmm5
        movaps  xmm5, xmm9
        unpcklps        xmm6, xmm14
        unpcklps        xmm5, xmm7
        movss   DWORD PTR [rsp-32], xmm7
        movlhps xmm5, xmm6
        movups  XMMWORD PTR [rdi+264], xmm5
        movss   xmm0, DWORD PTR [rsp-40]
        movq    xmm5, QWORD PTR [rdi+320]
        movq    xmm8, QWORD PTR .LC39[rip]
        movaps  xmm7, xmm5
        movaps  xmm10, xmm5
        xorps   xmm5, XMMWORD PTR .LC0[rip]
        mulps   xmm8, xmm7
        movaps  xmm9, xmm7
        shufps  xmm10, xmm10, 0xe5
        movaps  xmm7, xmm10
        mulss   xmm14, xmm10
        movaps  xmm10, xmm15
        movaps  xmm6, xmm8
        movaps  xmm13, xmm8
        shufps  xmm6, xmm6, 0xe5
        mulss   xmm13, xmm4
        movaps  xmm12, xmm6
        movq    xmm6, QWORD PTR .LC40[rip]
        mulps   xmm9, xmm6
        mulss   xmm10, xmm9
        movaps  xmm11, xmm9
        movaps  xmm6, xmm9
        mulss   xmm11, xmm3
        shufps  xmm6, xmm6, 0xe5
        addss   xmm14, xmm10
        movaps  xmm10, xmm1
        mulss   xmm10, xmm8
        movss   DWORD PTR [rsp-24], xmm14
        movaps  xmm14, xmm15
        mulss   xmm14, xmm6
        mulss   xmm6, xmm3
        movss   DWORD PTR [rsp-20], xmm10
        movaps  xmm10, xmm0
        mulss   xmm10, xmm7
        mulss   xmm0, xmm5
        addss   xmm10, xmm11
        movss   xmm11, DWORD PTR [rsp-44]
        addss   xmm6, xmm0
        movss   xmm0, DWORD PTR [rsp-16]
        mulss   xmm11, xmm5
        mulss   xmm7, xmm0
        addss   xmm10, xmm13
        movss   xmm13, DWORD PTR [rsp-12]
        mulss   xmm5, xmm0
        addss   xmm11, xmm14
        movaps  xmm14, xmm1
        mulss   xmm14, xmm12
        mulss   xmm12, xmm4
        unpcklps        xmm7, xmm5
        movss   xmm5, DWORD PTR .LC7[rip]
        mulss   xmm5, xmm15
        addss   xmm11, xmm14
        addss   xmm6, xmm12
        movss   DWORD PTR [rdi+344], xmm11
        movd    xmm11, edx
        shufps  xmm11, xmm11, 0
        mulps   xmm9, xmm11
        movaps  xmm11, xmm2
        shufps  xmm11, xmm11, 0
        mulps   xmm11, xmm8
        movaps  xmm8, xmm1
        addps   xmm9, xmm11
        addps   xmm9, xmm7
        movss   xmm7, DWORD PTR .LC41[rip]
        mulss   xmm8, xmm7
        movlps  QWORD PTR [rdi+364], xmm9
        movaps  xmm9, xmm4
        mulss   xmm9, xmm7
        mulss   xmm7, xmm2
        movaps  xmm11, xmm8
        movss   xmm8, DWORD PTR .LC7[rip]
        addss   xmm5, xmm11
        mulss   xmm8, xmm3
        unpcklps        xmm5, xmm10
        addss   xmm8, xmm9
        movss   xmm9, DWORD PTR [rsp-40]
        unpcklps        xmm6, xmm8
        movaps  xmm8, xmm15
        movlhps xmm5, xmm6
        movss   xmm6, DWORD PTR .LC42[rip]
        movups  XMMWORD PTR [rdi+348], xmm5
        movss   xmm5, DWORD PTR .LC7[rip]
        mulss   xmm9, xmm6
        mulss   xmm5, xmm13
        mulss   xmm0, xmm6
        addss   xmm5, xmm7
        movss   xmm7, DWORD PTR [rsp-44]
        mulss   xmm7, xmm6
        movss   DWORD PTR [rdi+372], xmm5
        movss   xmm5, DWORD PTR .LC43[rip]
        mulss   xmm8, xmm5
        mulss   xmm3, xmm5
        addss   xmm7, xmm8
        movss   xmm8, DWORD PTR .LC44[rip]
        addss   xmm3, xmm9
        mulss   xmm4, xmm8
        addss   xmm4, DWORD PTR [rsp-32]
        mulss   xmm1, xmm8
        mulss   xmm2, xmm8
        addss   xmm1, DWORD PTR [rsp-36]
        addss   xmm2, DWORD PTR [rsp-28]
        addss   xmm3, xmm4
        movaps  xmm4, xmm13
        mulss   xmm4, xmm5
        addss   xmm1, xmm7
        unpcklps        xmm1, xmm3
        addss   xmm0, xmm4
        addss   xmm0, xmm2
        movss   xmm2, DWORD PTR [rsp-24]
        addss   xmm2, DWORD PTR [rsp-20]
        unpcklps        xmm0, xmm2
        movlhps xmm1, xmm0
        movups  XMMWORD PTR [rdi+328], xmm1
        ret
.LC0:
        .long   -2147483648
        .long   0
        .long   0
        .long   0
.LC2:
        .long   1042708692
.LC3:
        .long   -1170744653
.LC4:
        .long   1065353212
.LC5:
        .long   -1082130436
.LC6:
        .long   960434387
.LC7:
        .long   1065353205
.LC9:
        .long   1065353207
.LC10:
        .long   -1164361000
.LC11:
        .long   982080437
.LC12:
        .long   983122648
.LC13:
        .long   983122693
.LC14:
        .long   -1165403262
.LC15:
        .long   1065353195
.LC16:
        .long   976738980
.LC17:
        .long   -1093036234
.LC18:
        .long   1065353214
.LC19:
        .long   -1082130434
.LC20:
        .long   -1221851316
.LC21:
        .long   1065352747
.LC22:
        .long   925632332
.LC23:
        .long   971095315
.LC24:
        .long   1005914593
.LC25:
        .long   -1176388333
.LC26:
        .long   -1176386112
.LC27:
        .long   -1141569063
.LC28:
        .long   1065352745
.LC29:
        .long   -1094137327
.LC30:
        .long   -1165836396
.LC31:
        .long   1040750569
.LC32:
        .long   1065353188
        .long   1065353188
.LC33:
        .long   988649164
        .long   988649164
.LC36:
        .long   -1082130460
.LC37:
        .long   960319185
.LC38:
        .long   -1110705626
.LC39:
        .long   -1082130443
        .long   -1082130443
.LC40:
        .long   982902130
        .long   982902130
.LC42:
        .long   949974906
.LC43:
        .long   1036765246
.LC44:
        .long   955163755