        .globl std::ios_base_library_init()
"multiplyMatrices(std::vector<int, std::allocator<int>> const&, std::vector<int, std::allocator<int>> const&, std::vector<int, std::allocator<int>>&)":
        push    rbp
        xor     r10d, r10d
        mov     rbp, rsp
        push    r12
        push    rbx
        mov     r11, QWORD PTR [rsi]
        mov     rbx, QWORD PTR [rdi]
        mov     r12, QWORD PTR [rdx]
        lea     r8, [r11+6000]
        lea     rcx, [rbx+5984]
.L2:
        mov     rsi, r11
        lea     rdi, [r12+r10]
        lea     r9, [r10+rbx]
.L3:
        mov     rdx, r9
        mov     rax, rsi
        vpxor   xmm3, xmm3, xmm3
.L5:
        vmovd   xmm0, DWORD PTR [rax+36000]
        add     rdx, 32
        vpinsrd xmm0, xmm0, DWORD PTR [rax+42000], 1
        add     rax, 48000
        vmovd   xmm1, DWORD PTR [rax-24000]
        vpinsrd xmm1, xmm1, DWORD PTR [rax-18000], 1
        vpunpcklqdq     xmm1, xmm1, xmm0
        vmovd   xmm0, DWORD PTR [rax-36000]
        vpinsrd xmm2, xmm0, DWORD PTR [rax-30000], 1
        vmovd   xmm0, DWORD PTR [rax-48000]
        vpinsrd xmm0, xmm0, DWORD PTR [rax-42000], 1
        vpunpcklqdq     xmm0, xmm0, xmm2
        vinserti128     ymm0, ymm0, xmm1, 0x1
        vpmulld ymm0, ymm0, YMMWORD PTR [rdx-32]
        vpaddd  ymm3, ymm0, ymm3
        cmp     rdx, rcx
        jne     .L5
        vmovd   xmm0, DWORD PTR [rsi+8988000]
        add     rsi, 4
        add     rdi, 4
        vpinsrd xmm1, xmm0, DWORD PTR [rsi+8993996], 1
        vmovd   xmm0, DWORD PTR [rsi+8975996]
        vpinsrd xmm0, xmm0, DWORD PTR [rsi+8981996], 1
        vpunpcklqdq     xmm0, xmm0, xmm1
        vmovdqa xmm1, xmm3
        vextracti128    xmm3, ymm3, 0x1
        vpmulld xmm0, xmm0, XMMWORD PTR [rdx]
        vpaddd  xmm1, xmm1, xmm3
        vpaddd  xmm0, xmm0, xmm1
        vpsrldq xmm1, xmm0, 8
        vpaddd  xmm0, xmm0, xmm1
        vpsrldq xmm1, xmm0, 4
        vpaddd  xmm0, xmm0, xmm1
        vmovd   DWORD PTR [rdi-4], xmm0
        cmp     rsi, r8
        jne     .L3
        add     r10, 6000
        lea     rcx, [rdx+6000]
        cmp     r10, 9000000
        jne     .L2
        vzeroupper
        pop     rbx
        pop     r12
        pop     rbp
        ret
.LC2:
        .string "Start "
.LC3:
        .string "x"
.LC4:
        .string "...\n"
.LC5:
        .string "Result C[0]: "
"main":
        push    rbp
        mov     edi, 9000000
        mov     rbp, rsp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        and     rsp, -32
        sub     rsp, 32
        call    "operator new(unsigned long)"
        vpcmpeqd        ymm0, ymm0, ymm0
        mov     r12, rax
        vpsrld  ymm0, ymm0, 31
        lea     rdx, [rax+9000000]
.L16:
        vmovdqu YMMWORD PTR [rax], ymm0
        add     rax, 64
        vmovdqu YMMWORD PTR [rax-32], ymm0
        cmp     rdx, rax
        jne     .L16
        mov     edi, 9000000
        vzeroupper
        call    "operator new(unsigned long)"
        mov     edx, 2
        mov     r13, rax
        lea     r14, [rax+9000000]
        vmovd   xmm0, edx
        vpbroadcastd    ymm0, xmm0
.L17:
        vmovdqu YMMWORD PTR [rax], ymm0
        add     rax, 64
        vmovdqu YMMWORD PTR [rax-32], ymm0
        cmp     r14, rax
        jne     .L17
        mov     edi, 9000000
        vzeroupper
        call    "operator new(unsigned long)"
        mov     edx, 9000000
        xor     esi, esi
        mov     rdi, rax
        mov     rbx, rax
        call    "memset"
        mov     edx, 6
        mov     esi, OFFSET FLAT:.LC2
        mov     edi, OFFSET FLAT:"std::cout"
        call    "std::basic_ostream<char, std::char_traits<char>>& std::__ostream_insert<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*, long)"
        mov     esi, 1500
        mov     edi, OFFSET FLAT:"std::cout"
        call    "std::ostream::operator<<(int)"
        mov     edx, 1
        mov     esi, OFFSET FLAT:.LC3
        mov     rdi, rax
        mov     r15, rax
        call    "std::basic_ostream<char, std::char_traits<char>>& std::__ostream_insert<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*, long)"
        mov     esi, 1500
        mov     rdi, r15
        call    "std::ostream::operator<<(int)"
        mov     edx, 4
        mov     esi, OFFSET FLAT:.LC4
        mov     rdi, rax
        call    "std::basic_ostream<char, std::char_traits<char>>& std::__ostream_insert<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*, long)"
        lea     rax, [r13+9005984]
        mov     r10, rbx
        xor     r9d, r9d
        mov     QWORD PTR [rsp+8], rax
.L18:
        imul    r11, r9, 6000
        mov     rcx, r14
        mov     rsi, r10
        lea     rdi, [r10+5984]
        lea     r8, [r12+r11]
.L20:
        lea     rax, [rcx-9000000]
        mov     rdx, r8
        vpxor   xmm1, xmm1, xmm1
.L19:
        vpbroadcastd    ymm0, DWORD PTR [rdx]
        add     rax, 6000
        add     rdx, 4
        vpmulld ymm0, ymm0, YMMWORD PTR [rax-6000]
        vpaddd  ymm1, ymm1, ymm0
        cmp     rax, rcx
        jne     .L19
        vmovdqu YMMWORD PTR [rsi], ymm1
        add     rsi, 32
        lea     rcx, [rax+32]
        cmp     rdi, rsi
        jne     .L20
        mov     rdi, QWORD PTR [rsp+8]
        add     r11, rbx
        mov     r15d, 1496
.L22:
        lea     rax, [rdi-9000000]
        mov     rcx, r8
        xor     esi, esi
.L21:
        mov     edx, DWORD PTR [rax]
        imul    edx, DWORD PTR [rcx]
        add     rax, 6000
        add     rcx, 4
        add     esi, edx
        cmp     rdi, rax
        jne     .L21
        mov     DWORD PTR [r11+r15*4], esi
        inc     r15
        add     rdi, 4
        cmp     r15, 1500
        jne     .L22
        inc     r9
        add     r10, 6000
        cmp     r9, 1500
        jne     .L18
        mov     edx, 13
        mov     esi, OFFSET FLAT:.LC5
        mov     edi, OFFSET FLAT:"std::cout"
        vzeroupper
        call    "std::basic_ostream<char, std::char_traits<char>>& std::__ostream_insert<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*, long)"
        mov     esi, DWORD PTR [rbx]
        mov     edi, OFFSET FLAT:"std::cout"
        call    "std::ostream::operator<<(int)"
        mov     rdi, rax
        mov     rax, QWORD PTR [rax]
        mov     BYTE PTR [rsp+31], 10
        mov     rax, QWORD PTR [rax-24]
        cmp     QWORD PTR [rdi+16+rax], 0
        je      .L26
        lea     rsi, [rsp+31]
        mov     edx, 1
        call    "std::basic_ostream<char, std::char_traits<char>>& std::__ostream_insert<char, std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*, long)"
.L46:
        mov     rdi, rbx
        mov     esi, 9000000
        call    "operator delete(void*, unsigned long)"
        mov     rdi, r13
        mov     esi, 9000000
        call    "operator delete(void*, unsigned long)"
        mov     rdi, r12
        mov     esi, 9000000
        call    "operator delete(void*, unsigned long)"
        lea     rsp, [rbp-40]
        xor     eax, eax
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.L26:
        mov     esi, 10
        call    "std::ostream::put(char)"
        jmp     .L46
        mov     rbx, rax
        vzeroupper
        jmp     .L30
        jmp     .L28
        mov     rbx, rax
        vzeroupper
        jmp     .L29
"main.cold":
