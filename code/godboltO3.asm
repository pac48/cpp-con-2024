fast_fk::internal::forward_kinematics_internal(float*, unsigned long):
        movss   xmm4, DWORD PTR [rdi]
        pxor    xmm3, xmm3
        movss   xmm2, DWORD PTR [rdi+4]
        mov     DWORD PTR [rdi+52], 0x3f800000
        movss   xmm7, DWORD PTR [rdi+68]
        movss   xmm6, DWORD PTR .LC4[rip]
        movss   DWORD PTR [rdi+28], xmm3
        movaps  xmm0, xmm4
        movaps  xmm11, xmm4
        xorps   xmm4, XMMWORD PTR .LC1[rip]
        movss   xmm10, DWORD PTR .LC6[rip]
        mulss   xmm0, xmm3
        movss   xmm5, DWORD PTR .LC5[rip]
        movss   xmm1, DWORD PTR .LC4[rip]
        movaps  xmm13, xmm7
        mulss   xmm6, xmm7
        movss   DWORD PTR [rdi+40], xmm3
        mov     QWORD PTR [rdi+8], 0
        mov     DWORD PTR [rdi+16], 0x3e2678d4
        movaps  xmm9, xmm0
        movaps  xmm12, xmm0
        subss   xmm9, xmm2
        mulss   xmm2, xmm3
        movaps  xmm8, xmm6
        movss   DWORD PTR [rdi+20], xmm9
        movss   DWORD PTR [rdi+36], xmm9
        addss   xmm12, xmm2
        addss   xmm11, xmm2
        subss   xmm4, xmm2
        subss   xmm2, xmm0
        movss   xmm0, DWORD PTR [rdi+64]
        movaps  xmm15, xmm0
        subss   xmm8, xmm0
        movss   DWORD PTR [rdi+24], xmm11
        mulss   xmm1, xmm0
        movss   DWORD PTR [rdi+32], xmm4
        mulss   xmm15, xmm5
        movss   DWORD PTR [rdi+48], xmm2
        mulss   xmm5, xmm7
        movss   DWORD PTR [rdi+44], xmm12
        mulss   xmm7, xmm10
        mulss   xmm0, xmm10
        movaps  xmm10, xmm9
        addss   xmm13, xmm1
        addss   xmm15, xmm6
        subss   xmm5, xmm1
        addss   xmm7, xmm1
        subss   xmm0, xmm6
        movaps  xmm6, xmm11
        movaps  xmm14, xmm15
        mulss   xmm6, xmm15
        mulss   xmm14, xmm2
        movaps  xmm1, xmm7
        mulss   xmm15, xmm9
        unpcklps        xmm1, xmm4
        unpcklps        xmm10, xmm0
        movlhps xmm10, xmm1
        pxor    xmm1, xmm1
        mulps   xmm10, xmm1
        movaps  xmm1, xmm13
        mulss   xmm1, xmm9
        addss   xmm6, xmm1
        movaps  xmm1, xmm0
        mulss   xmm1, xmm3
        addss   xmm6, xmm1
        movaps  xmm1, xmm12
        mulss   xmm1, xmm13
        mulss   xmm13, xmm4
        addss   xmm1, xmm14
        movaps  xmm14, xmm5
        mulss   xmm14, xmm2
        addss   xmm13, xmm15
        addss   xmm1, xmm0
        movaps  xmm0, xmm8
        mulss   xmm0, xmm9
        movss   DWORD PTR [rsp-60], xmm1
        movaps  xmm1, xmm11
        mulss   xmm1, xmm5
        mulss   xmm5, xmm9
        addss   xmm1, xmm0
        movaps  xmm0, xmm7
        mulss   xmm0, xmm3
        addss   xmm1, xmm0
        movaps  xmm0, xmm12
        mulss   xmm0, xmm8
        mulss   xmm8, xmm4
        movss   DWORD PTR [rdi+88], xmm1
        addss   xmm0, xmm14
        movss   xmm14, DWORD PTR .LC7[rip]
        addss   xmm8, xmm5
        movaps  xmm5, xmm9
        mulss   xmm5, xmm14
        addss   xmm0, xmm7
        movss   xmm7, DWORD PTR [rsp-60]
        unpcklps        xmm7, xmm0
        movlps  QWORD PTR [rdi+108], xmm7
        movaps  xmm7, xmm11
        unpcklps        xmm8, xmm5
        mulss   xmm7, xmm14
        mulss   xmm14, xmm2
        mulss   xmm2, xmm3
        mulss   xmm11, xmm3
        unpcklps        xmm7, xmm13
        movlhps xmm7, xmm8
        addps   xmm7, xmm10
        movaps  xmm5, xmm7
        movaps  xmm8, xmm7
        movaps  xmm13, xmm7
        movups  XMMWORD PTR [rdi+92], xmm7
        shufps  xmm5, xmm7, 255
        movss   DWORD PTR [rsp-56], xmm5
        movaps  xmm5, xmm7
        shufps  xmm8, xmm7, 85
        unpckhps        xmm5, xmm7
        movss   xmm7, DWORD PTR .LC9[rip]
        movss   DWORD PTR [rsp-64], xmm5
        movaps  xmm5, xmm12
        mulss   xmm9, xmm7
        mulss   xmm4, xmm7
        mulss   xmm7, xmm12
        mulss   xmm5, xmm3
        addss   xmm9, xmm11
        addss   xmm4, xmm10
        addss   xmm7, xmm2
        movss   xmm2, DWORD PTR .LC3[rip]
        addss   xmm9, xmm3
        addss   xmm5, xmm14
        addss   xmm4, xmm3
        subss   xmm5, DWORD PTR .LC8[rip]
        addss   xmm7, xmm3
        movaps  xmm11, xmm4
        movss   DWORD PTR [rdi+116], xmm5
        addss   xmm2, xmm7
        movss   DWORD PTR [rsp-40], xmm2
        movaps  xmm4, xmm2
        movaps  xmm2, xmm9
        movss   xmm12, DWORD PTR [rdi+132]
        unpcklps        xmm4, xmm6
        unpcklps        xmm2, xmm11
        movss   DWORD PTR [rsp-44], xmm11
        movss   xmm14, DWORD PTR .LC4[rip]
        movlhps xmm2, xmm4
        movss   DWORD PTR [rsp-52], xmm9
        movss   xmm4, DWORD PTR .LC10[rip]
        movss   xmm10, DWORD PTR .LC4[rip]
        movups  XMMWORD PTR [rdi+72], xmm2
        mulss   xmm14, xmm12
        movss   xmm2, DWORD PTR [rdi+128]
        movss   xmm15, DWORD PTR .LC13[rip]
        mulss   xmm4, xmm12
        mulss   xmm10, xmm2
        movaps  xmm7, xmm2
        mulss   xmm15, xmm12
        movaps  xmm11, xmm4
        movss   xmm4, DWORD PTR .LC11[rip]
        addss   xmm11, xmm10
        mulss   xmm4, xmm2
        movaps  xmm9, xmm4
        movss   xmm4, DWORD PTR .LC12[rip]
        addss   xmm9, xmm14
        mulss   xmm7, xmm4
        mulss   xmm4, xmm12
        subss   xmm7, xmm14
        movss   xmm14, DWORD PTR .LC14[rip]
        addss   xmm4, xmm10
        movaps  xmm10, xmm2
        mulss   xmm12, xmm14
        mulss   xmm2, DWORD PTR .LC15[rip]
        mulss   xmm10, xmm14
        movaps  xmm14, xmm11
        mulss   xmm14, xmm6
        addss   xmm2, xmm12
        movaps  xmm12, xmm7
        mulss   xmm12, xmm1
        addss   xmm10, xmm15
        movss   xmm15, DWORD PTR [rsp-64]
        addss   xmm12, xmm14
        movaps  xmm14, xmm10
        mulss   xmm14, xmm13
        addss   xmm14, xmm12
        movaps  xmm12, xmm11
        mulss   xmm12, xmm8
        mulss   xmm11, DWORD PTR [rsp-60]
        movss   DWORD PTR [rsp-48], xmm14
        movaps  xmm14, xmm12
        movaps  xmm12, xmm15
        mulss   xmm12, xmm7
        mulss   xmm7, xmm0
        addss   xmm12, xmm14
        movss   xmm14, DWORD PTR [rsp-56]
        addss   xmm7, xmm11
        mulss   xmm14, xmm10
        mulss   xmm10, xmm5
        addss   xmm14, xmm12
        addss   xmm7, xmm10
        movaps  xmm10, xmm9
        mulss   xmm10, xmm6
        movss   DWORD PTR [rsp-72], xmm7
        movaps  xmm7, xmm4
        mulss   xmm7, xmm1
        addss   xmm7, xmm10
        movaps  xmm10, xmm2
        mulss   xmm10, xmm13
        addss   xmm10, xmm7
        movaps  xmm7, xmm15
        mulss   xmm7, xmm4
        mulss   xmm4, xmm0
        movaps  xmm12, xmm10
        movaps  xmm10, xmm9
        mulss   xmm10, xmm8
        mulss   xmm9, DWORD PTR [rsp-60]
        addss   xmm7, xmm10
        movss   xmm10, DWORD PTR [rsp-56]
        addss   xmm4, xmm9
        movss   xmm9, DWORD PTR .LC16[rip]
        mulss   xmm10, xmm2
        mulss   xmm2, xmm5
        movaps  xmm15, xmm7
        movss   xmm7, DWORD PTR .LC18[rip]
        addss   xmm15, xmm10
        movaps  xmm10, xmm1
        addss   xmm4, xmm2
        movss   xmm2, DWORD PTR .LC17[rip]
        mulss   xmm1, xmm3
        mulss   xmm10, xmm2
        movss   DWORD PTR [rsp-68], xmm4
        movaps  xmm4, xmm6
        mulss   xmm4, xmm9
        addss   xmm4, xmm10
        movaps  xmm10, xmm13
        mulss   xmm10, xmm7
        mulss   xmm13, xmm3
        addss   xmm10, xmm4
        movaps  xmm4, xmm8
        mulss   xmm4, xmm9
        movaps  xmm11, xmm4
        movss   xmm4, DWORD PTR [rsp-64]
        mulss   xmm4, xmm2
        mulss   xmm2, xmm0
        mulss   xmm0, xmm3
        addss   xmm4, xmm11
        movss   xmm11, DWORD PTR [rsp-56]
        mulss   xmm11, xmm7
        mulss   xmm7, xmm5
        mulss   xmm5, xmm3
        addss   xmm4, xmm11
        movss   xmm11, DWORD PTR [rsp-60]
        mulss   xmm9, xmm11
        addss   xmm2, xmm9
        addss   xmm2, xmm7
        movss   xmm7, DWORD PTR .LC19[rip]
        mulss   xmm6, xmm7
        mulss   xmm8, xmm7
        mulss   xmm7, xmm11
        addss   xmm1, xmm6
        movss   xmm6, DWORD PTR [rsp-56]
        mulss   xmm6, xmm3
        addss   xmm0, xmm7
        addss   xmm1, xmm13
        movss   xmm13, DWORD PTR [rsp-52]
        addss   xmm0, xmm5
        addss   xmm13, xmm1
        movss   xmm1, DWORD PTR [rsp-64]
        mulss   xmm1, xmm3
        movaps  xmm5, xmm13
        addss   xmm1, xmm8
        addss   xmm1, xmm6
        addss   xmm1, DWORD PTR [rsp-44]
        addss   xmm0, DWORD PTR [rsp-40]
        movss   xmm11, DWORD PTR [rsp-48]
        movss   DWORD PTR [rsp-44], xmm13
        movss   xmm7, DWORD PTR [rsp-72]
        movss   xmm6, DWORD PTR .LC20[rip]
        movss   xmm8, DWORD PTR .LC23[rip]
        movaps  xmm9, xmm1
        unpcklps        xmm5, xmm9
        movaps  xmm1, xmm0
        movss   DWORD PTR [rsp-36], xmm0
        unpcklps        xmm1, xmm11
        movaps  xmm0, xmm5
        movaps  xmm5, xmm12
        movss   DWORD PTR [rsp-40], xmm9
        movss   xmm11, DWORD PTR .LC26[rip]
        movlhps xmm0, xmm1
        unpcklps        xmm5, xmm10
        movaps  xmm1, xmm14
        unpcklps        xmm1, xmm15
        movups  XMMWORD PTR [rdi+136], xmm0
        movaps  xmm0, xmm5
        movaps  xmm5, xmm4
        movlhps xmm0, xmm1
        movss   xmm1, DWORD PTR [rsp-68]
        unpcklps        xmm5, xmm7
        movups  XMMWORD PTR [rdi+152], xmm0
        movaps  xmm0, xmm5
        unpcklps        xmm1, xmm2
        movlhps xmm0, xmm1
        movss   xmm1, DWORD PTR [rdi+192]
        movups  XMMWORD PTR [rdi+168], xmm0
        movss   xmm0, DWORD PTR [rdi+196]
        movaps  xmm5, xmm1
        movaps  xmm13, xmm1
        mulss   xmm6, xmm0
        mulss   xmm5, xmm3
        mulss   xmm13, xmm11
        movaps  xmm9, xmm6
        movss   xmm6, DWORD PTR .LC21[rip]
        addss   xmm9, xmm5
        movaps  xmm5, xmm0
        mulss   xmm6, xmm1
        mulss   xmm5, xmm3
        movaps  xmm7, xmm6
        movss   xmm6, DWORD PTR .LC22[rip]
        addss   xmm7, xmm5
        movaps  xmm5, xmm1
        mulss   xmm5, xmm8
        mulss   xmm6, xmm0
        mulss   xmm8, xmm0
        addss   xmm6, xmm5
        movss   xmm5, DWORD PTR .LC24[rip]
        mulss   xmm5, xmm1
        mulss   xmm1, DWORD PTR .LC27[rip]
        addss   xmm5, xmm8
        movss   xmm8, DWORD PTR .LC25[rip]
        mulss   xmm8, xmm0
        mulss   xmm0, xmm11
        movss   xmm11, DWORD PTR [rsp-48]
        mulss   xmm11, xmm9
        addss   xmm8, xmm13
        addss   xmm1, xmm0
        movaps  xmm0, xmm6
        mulss   xmm0, xmm12
        movaps  xmm13, xmm8
        mulss   xmm13, xmm10
        addss   xmm0, xmm11
        addss   xmm0, xmm13
        movaps  xmm13, xmm9
        mulss   xmm13, xmm14
        mulss   xmm9, DWORD PTR [rsp-72]
        movss   DWORD PTR [rsp-56], xmm0
        movaps  xmm11, xmm13
        movaps  xmm13, xmm6
        mulss   xmm13, xmm15
        mulss   xmm6, DWORD PTR [rsp-68]
        movaps  xmm0, xmm13
        movaps  xmm13, xmm8
        mulss   xmm13, xmm4
        addss   xmm0, xmm11
        addss   xmm6, xmm9
        mulss   xmm8, xmm2
        movaps  xmm11, xmm13
        movaps  xmm13, xmm0
        addss   xmm6, xmm8
        movaps  xmm8, xmm5
        addss   xmm13, xmm11
        movss   xmm11, DWORD PTR [rsp-48]
        mulss   xmm8, xmm12
        movaps  xmm9, xmm11
        movss   DWORD PTR [rsp-52], xmm6
        movaps  xmm6, xmm11
        mulss   xmm6, xmm7
        movaps  xmm0, xmm8
        movaps  xmm8, xmm1
        mulss   xmm8, xmm10
        addss   xmm0, xmm6
        addss   xmm0, xmm8
        movaps  xmm8, xmm7
        mulss   xmm8, xmm14
        movss   DWORD PTR [rsp-32], xmm0
        movaps  xmm6, xmm8
        movaps  xmm8, xmm5
        mulss   xmm8, xmm15
        mulss   xmm5, DWORD PTR [rsp-68]
        movaps  xmm0, xmm8
        movaps  xmm8, xmm1
        mulss   xmm8, xmm4
        addss   xmm0, xmm6
        mulss   xmm1, xmm2
        addss   xmm0, xmm8
        movss   xmm8, DWORD PTR [rsp-72]
        mulss   xmm7, xmm8
        movss   DWORD PTR [rsp-64], xmm0
        addss   xmm5, xmm7
        movaps  xmm7, xmm12
        addss   xmm5, xmm1
        movss   xmm1, DWORD PTR .LC28[rip]
        mulss   xmm9, xmm1
        movss   DWORD PTR [rsp-60], xmm5
        movss   xmm5, DWORD PTR .LC29[rip]
        movss   xmm0, DWORD PTR .LC30[rip]
        mulss   xmm7, xmm5
        addss   xmm9, xmm7
        movaps  xmm7, xmm10
        mulss   xmm7, xmm0
        addss   xmm9, xmm7
        movaps  xmm7, xmm14
        mulss   xmm7, xmm1
        mulss   xmm1, xmm8
        movaps  xmm6, xmm7
        movaps  xmm7, xmm15
        mulss   xmm7, xmm5
        mulss   xmm5, DWORD PTR [rsp-68]
        addss   xmm7, xmm6
        movaps  xmm6, xmm4
        mulss   xmm6, xmm0
        addss   xmm5, xmm1
        movss   xmm1, DWORD PTR .LC31[rip]
        mulss   xmm0, xmm2
        mulss   xmm11, xmm1
        mulss   xmm14, xmm1
        mulss   xmm1, DWORD PTR [rsp-72]
        addss   xmm7, xmm6
        movss   xmm6, DWORD PTR .LC33[rip]
        addss   xmm5, xmm0
        movss   xmm0, DWORD PTR .LC32[rip]
        mulss   xmm10, xmm6
        mulss   xmm12, xmm0
        mulss   xmm15, xmm0
        mulss   xmm0, DWORD PTR [rsp-68]
        mulss   xmm4, xmm6
        mulss   xmm2, xmm6
        movss   xmm6, DWORD PTR [rsp-52]
        addss   xmm12, xmm11
        movss   xmm11, DWORD PTR [rsp-44]
        addss   xmm15, xmm14
        movss   xmm14, DWORD PTR [rsp-56]
        addss   xmm1, xmm0
        addss   xmm12, xmm10
        addss   xmm15, xmm4
        addss   xmm15, DWORD PTR [rsp-40]
        movss   xmm4, DWORD PTR [rdi+260]
        addss   xmm1, xmm2
        addss   xmm1, DWORD PTR [rsp-36]
        movss   xmm2, DWORD PTR [rsp-64]
        addss   xmm11, xmm12
        movss   DWORD PTR [rsp-44], xmm15
        movss   DWORD PTR [rsp-40], xmm1
        unpcklps        xmm1, xmm14
        movss   xmm14, DWORD PTR .LC35[rip]
        movaps  xmm8, xmm11
        movss   DWORD PTR [rsp-48], xmm11
        unpcklps        xmm8, xmm15
        movss   xmm15, DWORD PTR [rsp-32]
        movaps  xmm0, xmm8
        movaps  xmm8, xmm15
        movlhps xmm0, xmm1
        movaps  xmm1, xmm13
        unpcklps        xmm8, xmm9
        unpcklps        xmm1, xmm2
        movups  XMMWORD PTR [rdi+200], xmm0
        movaps  xmm2, xmm4
        movaps  xmm0, xmm8
        movss   xmm8, DWORD PTR .LC34[rip]
        movlhps xmm0, xmm1
        movss   xmm1, DWORD PTR [rsp-60]
        movups  XMMWORD PTR [rdi+216], xmm0
        mulss   xmm2, xmm8
        movaps  xmm0, xmm7
        unpcklps        xmm1, xmm5
        unpcklps        xmm0, xmm6
        movlhps xmm0, xmm1
        movups  XMMWORD PTR [rdi+232], xmm0
        movss   xmm0, DWORD PTR [rdi+256]
        movaps  xmm1, xmm0
        mulss   xmm1, xmm3
        movaps  xmm10, xmm1
        movaps  xmm1, xmm4
        addss   xmm1, xmm10
        addss   xmm2, xmm10
        movaps  xmm11, xmm1
        movaps  xmm1, xmm4
        mulss   xmm1, xmm3
        mulss   xmm4, xmm14
        movaps  xmm12, xmm1
        subss   xmm1, xmm0
        addss   xmm4, xmm10
        movaps  xmm10, xmm15
        movaps  xmm6, xmm1
        movaps  xmm1, xmm0
        mulss   xmm1, xmm8
        mulss   xmm0, xmm14
        movaps  xmm14, xmm11
        mulss   xmm14, xmm13
        subss   xmm1, xmm12
        subss   xmm0, xmm12
        movss   xmm12, DWORD PTR [rsp-56]
        mulss   xmm10, xmm1
        mulss   xmm12, xmm11
        mulss   xmm11, DWORD PTR [rsp-52]
        addss   xmm10, xmm12
        movaps  xmm12, xmm0
        mulss   xmm12, xmm9
        addss   xmm10, xmm12
        movss   xmm12, DWORD PTR [rsp-64]
        mulss   xmm12, xmm1
        addss   xmm12, xmm14
        movaps  xmm14, xmm0
        mulss   xmm14, xmm7
        mulss   xmm0, xmm5
        addss   xmm12, xmm14
        movss   DWORD PTR [rsp-72], xmm12
        movss   xmm12, DWORD PTR [rsp-60]
        mulss   xmm1, xmm12
        addss   xmm1, xmm11
        movaps  xmm11, xmm6
        mulss   xmm11, xmm13
        addss   xmm1, xmm0
        movaps  xmm0, xmm15
        mulss   xmm0, xmm2
        movss   DWORD PTR [rsp-68], xmm1
        movss   xmm14, DWORD PTR [rsp-56]
        movaps  xmm1, xmm14
        mulss   xmm1, xmm6
        mulss   xmm6, DWORD PTR [rsp-52]
        mulss   xmm14, xmm3
        addss   xmm0, xmm1
        movaps  xmm1, xmm4
        mulss   xmm1, xmm9
        addss   xmm0, xmm1
        movss   xmm1, DWORD PTR [rsp-64]
        mulss   xmm1, xmm2
        mulss   xmm2, xmm12
        addss   xmm1, xmm11
        movaps  xmm11, xmm4
        mulss   xmm4, xmm5
        addss   xmm2, xmm6
        movaps  xmm6, xmm9
        mulss   xmm11, xmm7
        mulss   xmm6, xmm8
        addss   xmm2, xmm4
        movss   xmm4, DWORD PTR .LC36[rip]
        addss   xmm1, xmm11
        movaps  xmm11, xmm14
        movaps  xmm14, xmm15
        mulss   xmm15, xmm4
        addss   xmm15, xmm11
        addss   xmm15, xmm6
        movaps  xmm6, xmm13
        movaps  xmm13, xmm7
        mulss   xmm6, xmm3
        mulss   xmm13, xmm8
        mulss   xmm3, DWORD PTR [rsp-52]
        mulss   xmm8, xmm5
        movaps  xmm12, xmm6
        movss   xmm6, DWORD PTR [rsp-64]
        mulss   xmm6, xmm4
        addss   xmm6, xmm12
        addss   xmm6, xmm13
        movss   xmm13, DWORD PTR .LC37[rip]
        mulss   xmm14, xmm13
        movss   DWORD PTR [rsp-56], xmm6
        movss   xmm6, DWORD PTR [rsp-60]
        mulss   xmm4, xmm6
        addss   xmm4, xmm3
        addss   xmm4, xmm8
        movaps  xmm8, xmm14
        movss   xmm14, DWORD PTR [rsp-48]
        addss   xmm8, xmm11
        movss   xmm11, DWORD PTR .LC38[rip]
        mulss   xmm9, xmm11
        mulss   xmm7, xmm11
        mulss   xmm5, xmm11
        addss   xmm8, xmm9
        movss   xmm9, DWORD PTR .LC4[rip]
        addss   xmm14, xmm8
        movss   xmm8, DWORD PTR [rsp-64]
        mulss   xmm8, xmm13
        movss   DWORD PTR [rsp-64], xmm14
        addss   xmm8, xmm12
        addss   xmm8, xmm7
        movaps  xmm7, xmm6
        addss   xmm8, DWORD PTR [rsp-44]
        movss   xmm6, DWORD PTR [rsp-72]
        mulss   xmm7, xmm13
        movss   xmm13, DWORD PTR .LC4[rip]
        movss   DWORD PTR [rsp-60], xmm8
        addss   xmm7, xmm3
        movaps  xmm3, xmm14
        unpcklps        xmm3, xmm8
        movss   xmm8, DWORD PTR .LC39[rip]
        addss   xmm7, xmm5
        addss   xmm7, DWORD PTR [rsp-40]
        movaps  xmm5, xmm7
        movss   DWORD PTR [rsp-52], xmm7
        movss   xmm7, DWORD PTR [rsp-68]
        unpcklps        xmm5, xmm10
        movlhps xmm3, xmm5
        movaps  xmm5, xmm6
        movups  XMMWORD PTR [rdi+264], xmm3
        movaps  xmm3, xmm0
        unpcklps        xmm5, xmm1
        unpcklps        xmm3, xmm15
        movlhps xmm3, xmm5
        movaps  xmm5, xmm2
        movups  XMMWORD PTR [rdi+280], xmm3
        movss   xmm3, DWORD PTR [rsp-56]
        unpcklps        xmm5, xmm4
        unpcklps        xmm3, xmm7
        movlhps xmm3, xmm5
        movss   xmm5, DWORD PTR [rdi+324]
        movups  XMMWORD PTR [rdi+296], xmm3
        movss   xmm3, DWORD PTR [rdi+320]
        mulss   xmm9, xmm5
        movaps  xmm7, xmm5
        movaps  xmm12, xmm5
        mulss   xmm13, xmm3
        mulss   xmm7, xmm8
        mulss   xmm5, DWORD PTR .LC11[rip]
        movaps  xmm14, xmm9
        movaps  xmm11, xmm9
        movaps  xmm9, xmm3
        addss   xmm12, xmm13
        mulss   xmm9, xmm8
        subss   xmm11, xmm3
        addss   xmm7, xmm13
        mulss   xmm3, DWORD PTR .LC11[rip]
        subss   xmm5, xmm13
        movaps  xmm13, xmm12
        mulss   xmm13, xmm10
        subss   xmm9, xmm14
        addss   xmm3, xmm14
        movaps  xmm14, xmm13
        movaps  xmm13, xmm9
        mulss   xmm13, xmm0
        addss   xmm14, xmm13
        movaps  xmm13, xmm3
        mulss   xmm13, xmm15
        movss   DWORD PTR [rsp-48], xmm14
        movaps  xmm14, xmm6
        mulss   xmm14, xmm12
        movss   DWORD PTR [rsp-44], xmm13
        movaps  xmm13, xmm9
        mulss   xmm13, xmm1
        mulss   xmm9, xmm2
        addss   xmm13, xmm14
        movss   xmm14, DWORD PTR [rsp-56]
        mulss   xmm14, xmm3
        mulss   xmm3, xmm4
        movss   DWORD PTR [rsp-40], xmm14
        movss   xmm14, DWORD PTR [rsp-68]
        movss   DWORD PTR [rsp-36], xmm3
        movaps  xmm3, xmm7
        mulss   xmm12, xmm14
        mulss   xmm3, xmm0
        addss   xmm12, xmm9
        movaps  xmm9, xmm11
        mulss   xmm9, xmm10
        addss   xmm9, xmm3
        movaps  xmm3, xmm5
        mulss   xmm3, xmm15
        movss   DWORD PTR [rsp-32], xmm9
        movaps  xmm9, xmm6
        movaps  xmm6, xmm14
        mulss   xmm9, xmm11
        mulss   xmm11, xmm14
        movss   DWORD PTR [rsp-28], xmm3
        movaps  xmm3, xmm7
        mulss   xmm7, xmm2
        mulss   xmm3, xmm1
        addss   xmm11, xmm7
        movss   xmm7, DWORD PTR .LC4[rip]
        mulss   xmm7, DWORD PTR [rsp-72]
        addss   xmm9, xmm3
        movss   xmm3, DWORD PTR [rsp-56]
        movss   DWORD PTR [rsp-16], xmm11
        mulss   xmm3, xmm5
        movss   xmm11, DWORD PTR .LC4[rip]
        movss   DWORD PTR [rsp-24], xmm9
        mulss   xmm5, xmm4
        mulss   xmm11, xmm10
        mulss   xmm10, DWORD PTR .LC40[rip]
        movss   DWORD PTR [rsp-20], xmm3
        movss   xmm3, DWORD PTR .LC4[rip]
        mulss   xmm3, xmm6
        movaps  xmm9, xmm11
        movss   xmm6, DWORD PTR .LC40[rip]
        movss   xmm11, DWORD PTR .LC10[rip]
        mulss   xmm6, DWORD PTR [rsp-72]
        mulss   xmm11, xmm0
        addss   xmm9, xmm11
        movaps  xmm11, xmm15
        mulss   xmm11, xmm8
        movaps  xmm14, xmm11
        movss   xmm11, DWORD PTR .LC10[rip]
        addss   xmm9, xmm14
        mulss   xmm11, xmm1
        addss   xmm7, xmm11
        movss   xmm11, DWORD PTR [rsp-56]
        mulss   xmm11, xmm8
        mulss   xmm8, xmm4
        movss   DWORD PTR [rsp-12], xmm11
        movss   xmm11, DWORD PTR .LC10[rip]
        mulss   xmm11, xmm2
        addss   xmm3, xmm11
        movss   xmm11, DWORD PTR .LC41[rip]
        mulss   xmm0, xmm11
        mulss   xmm1, xmm11
        addss   xmm3, xmm8
        mulss   xmm2, xmm11
        addss   xmm0, xmm10
        movss   xmm10, DWORD PTR .LC42[rip]
        addss   xmm1, xmm6
        movss   xmm6, DWORD PTR [rsp-56]
        mulss   xmm15, xmm10
        mulss   xmm6, xmm10
        mulss   xmm4, xmm10
        addss   xmm0, xmm15
        addss   xmm0, DWORD PTR [rsp-64]
        addss   xmm1, xmm6
        movss   xmm6, DWORD PTR .LC40[rip]
        mulss   xmm6, DWORD PTR [rsp-68]
        addss   xmm1, DWORD PTR [rsp-60]
        unpcklps        xmm0, xmm1
        addss   xmm6, xmm2
        movss   xmm2, DWORD PTR [rsp-48]
        addss   xmm2, DWORD PTR [rsp-44]
        addss   xmm6, xmm4
        addss   xmm6, DWORD PTR [rsp-52]
        unpcklps        xmm6, xmm2
        movlhps xmm0, xmm6
        movups  XMMWORD PTR [rdi+328], xmm0
        movss   xmm1, DWORD PTR [rsp-40]
        movss   xmm0, DWORD PTR [rsp-32]
        movss   xmm2, DWORD PTR [rsp-24]
        addss   xmm0, DWORD PTR [rsp-28]
        addss   xmm1, xmm13
        addss   xmm2, DWORD PTR [rsp-20]
        addss   xmm7, DWORD PTR [rsp-12]
        unpcklps        xmm0, xmm9
        unpcklps        xmm1, xmm2
        movlhps xmm0, xmm1
        movss   xmm1, DWORD PTR [rsp-36]
        movups  XMMWORD PTR [rdi+344], xmm0
        movss   xmm0, DWORD PTR [rsp-16]
        addss   xmm1, xmm12
        addss   xmm0, xmm5
        unpcklps        xmm7, xmm1
        unpcklps        xmm0, xmm3
        movlhps xmm7, xmm0
        movups  XMMWORD PTR [rdi+360], xmm7
        ret
.LC1:
        .long   -2147483648
        .long   0
        .long   0
        .long   0
.LC3:
        .long   1042708692
.LC5:
        .long   -1170744653
.LC6:
        .long   1065353212
.LC7:
        .long   -1082130436
.LC8:
        .long   976738995
.LC9:
        .long   960434387
.LC10:
        .long   1065353205
.LC11:
        .long   -1082130443
.LC12:
        .long   1065353207
.LC13:
        .long   -1164361000
.LC14:
        .long   982080437
.LC15:
        .long   983122648
.LC16:
        .long   983122693
.LC17:
        .long   -1165403262
.LC18:
        .long   1065353195
.LC19:
        .long   -1093036234
.LC20:
        .long   1065353214
.LC21:
        .long   -1082130434
.LC22:
        .long   -1221851316
.LC23:
        .long   1065352747
.LC24:
        .long   925632332
.LC25:
        .long   971095315
.LC26:
        .long   1005914593
.LC27:
        .long   -1176388333
.LC28:
        .long   -1176386112
.LC29:
        .long   -1141569063
.LC30:
        .long   1065352745
.LC31:
        .long   -1094137327
.LC32:
        .long   -1165836396
.LC33:
        .long   1040750569
.LC34:
        .long   988649164
.LC35:
        .long   1065353188
.LC36:
        .long   -1082130460
.LC37:
        .long   -1110705626
.LC38:
        .long   960319185
.LC39:
        .long   982902130
.LC40:
        .long   949974906
.LC41:
        .long   1036765246
.LC42:
        .long   955163755