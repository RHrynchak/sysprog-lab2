        .globl std::ios_base_library_init()
"multiplyMatrices(std::vector<int, std::allocator<int>> const&, std::vector<int, std::allocator<int>> const&, std::vector<int, std::allocator<int>>&)":
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 56
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        mov     QWORD PTR [rbp-56], rdx
        mov     DWORD PTR [rbp-20], 0
        jmp     .L5
.L10:
        mov     DWORD PTR [rbp-24], 0
        jmp     .L6
.L9:
        mov     DWORD PTR [rbp-28], 0
        mov     DWORD PTR [rbp-32], 0
        jmp     .L7
.L8:
        mov     eax, DWORD PTR [rbp-20]
        imul    edx, eax, 1500
        mov     eax, DWORD PTR [rbp-32]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, QWORD PTR [rbp-40]
        mov     rsi, rdx
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::operator[](unsigned long) const"
        mov     ebx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-32]
        imul    edx, eax, 1500
        mov     eax, DWORD PTR [rbp-24]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, QWORD PTR [rbp-48]
        mov     rsi, rdx
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::operator[](unsigned long) const"
        mov     eax, DWORD PTR [rax]
        imul    eax, ebx
        add     DWORD PTR [rbp-28], eax
        add     DWORD PTR [rbp-32], 1
.L7:
        cmp     DWORD PTR [rbp-32], 1499
        jle     .L8
        mov     ebx, DWORD PTR [rbp-28]
        mov     eax, DWORD PTR [rbp-20]
        imul    edx, eax, 1500
        mov     eax, DWORD PTR [rbp-24]
        add     eax, edx
        movsxd  rdx, eax
        mov     rax, QWORD PTR [rbp-56]
        mov     rsi, rdx
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::operator[](unsigned long)"
        mov     DWORD PTR [rax], ebx
        add     DWORD PTR [rbp-24], 1
.L6:
        cmp     DWORD PTR [rbp-24], 1499
        jle     .L9
        add     DWORD PTR [rbp-20], 1
.L5:
        cmp     DWORD PTR [rbp-20], 1499
        jle     .L10
        nop
        nop
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC0:
        .string "Start "
.LC1:
        .string "x"
.LC2:
        .string "...\n"
.LC3:
        .string "Result C[0]: "
"main":
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 152
        lea     rax, [rbp-61]
        mov     QWORD PTR [rbp-24], rax
        nop
        nop
        mov     DWORD PTR [rbp-60], 1
        lea     rcx, [rbp-61]
        lea     rdx, [rbp-60]
        lea     rax, [rbp-96]
        mov     esi, 2250000
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::vector(unsigned long, int const&, std::allocator<int> const&)"
        nop
        lea     rax, [rbp-53]
        mov     QWORD PTR [rbp-32], rax
        nop
        nop
        mov     DWORD PTR [rbp-52], 2
        lea     rcx, [rbp-53]
        lea     rdx, [rbp-52]
        lea     rax, [rbp-128]
        mov     esi, 2250000
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::vector(unsigned long, int const&, std::allocator<int> const&)"
        nop
        lea     rax, [rbp-45]
        mov     QWORD PTR [rbp-40], rax
        nop
        nop
        mov     DWORD PTR [rbp-44], 0
        lea     rcx, [rbp-45]
        lea     rdx, [rbp-44]
        lea     rax, [rbp-160]
        mov     esi, 2250000
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::vector(unsigned long, int const&, std::allocator<int> const&)"
        nop
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:"std::cout"
        call    "std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)"
        mov     esi, 1500
        mov     rdi, rax
        call    "std::ostream::operator<<(int)"
        mov     esi, OFFSET FLAT:.LC1
        mov     rdi, rax
        call    "std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)"
        mov     esi, 1500
        mov     rdi, rax
        call    "std::ostream::operator<<(int)"
        mov     esi, OFFSET FLAT:.LC2
        mov     rdi, rax
        call    "std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)"
        lea     rdx, [rbp-160]
        lea     rcx, [rbp-128]
        lea     rax, [rbp-96]
        mov     rsi, rcx
        mov     rdi, rax
        call    "multiplyMatrices(std::vector<int, std::allocator<int>> const&, std::vector<int, std::allocator<int>> const&, std::vector<int, std::allocator<int>>&)"
        mov     esi, OFFSET FLAT:.LC3
        mov     edi, OFFSET FLAT:"std::cout"
        call    "std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char const*)"
        mov     rbx, rax
        lea     rax, [rbp-160]
        mov     esi, 0
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::operator[](unsigned long)"
        mov     eax, DWORD PTR [rax]
        mov     esi, eax
        mov     rdi, rbx
        call    "std::ostream::operator<<(int)"
        mov     esi, 10
        mov     rdi, rax
        call    "std::basic_ostream<char, std::char_traits<char>>& std::operator<<<std::char_traits<char>>(std::basic_ostream<char, std::char_traits<char>>&, char)"
        mov     ebx, 0
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::~vector()"
        lea     rax, [rbp-128]
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::~vector()"
        lea     rax, [rbp-96]
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::~vector()"
        mov     eax, ebx
        jmp     .L23
        nop
        mov     rdi, rax
        call    "_Unwind_Resume"
        nop
        mov     rbx, rax
        jmp     .L15
        nop
        mov     rbx, rax
        jmp     .L17
        mov     rbx, rax
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::~vector()"
.L17:
        lea     rax, [rbp-128]
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::~vector()"
.L15:
        lea     rax, [rbp-96]
        mov     rdi, rax
        call    "std::vector<int, std::allocator<int>>::~vector()"
        mov     rax, rbx
        mov     rdi, rax
        call    "_Unwind_Resume"
.L23:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC4:
        .string "__n < this->size()"
.LC5:
        .string "constexpr std::vector<_Tp, _Alloc>::const_reference std::vector<_Tp, _Alloc>::operator[](size_type) const [with _Tp = int; _Alloc = std::allocator<int>; const_reference = const int&; size_type = long unsigned int]"
.LC6:
        .string "/cefs/17/17a2c76db590a13a8a92c74c_consolidated/compilers_c++_x86_gcc_16.2.0/include/c++/16.2.0/bits/stl_vector.h"
.LC7:
        .string "constexpr std::vector<_Tp, _Alloc>::reference std::vector<_Tp, _Alloc>::operator[](size_type) [with _Tp = int; _Alloc = std::allocator<int>; reference = int&; size_type = long unsigned int]"
        .set    "std::vector<int, std::allocator<int>>::vector(unsigned long, int const&, std::allocator<int> const&)","_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_"
        .set    "std::vector<int, std::allocator<int>>::~vector()","_ZNSt6vectorIiSaIiEED2Ev"
.LC8:
        .string "cannot create std::vector larger than max_size()"
        .set    "std::_Vector_base<int, std::allocator<int>>::_Vector_impl::~_Vector_impl()","_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev"
        .set    "std::_Vector_base<int, std::allocator<int>>::_Vector_base(unsigned long, std::allocator<int> const&)","_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_"
        .set    "std::_Vector_base<int, std::allocator<int>>::~_Vector_base()","_ZNSt12_Vector_baseIiSaIiEED2Ev"
        .set    "std::_Vector_base<int, std::allocator<int>>::_Vector_impl::_Vector_impl(std::allocator<int> const&)","_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_"
        .set    "std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data::_Vector_impl_data()","_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev"
        .set    "std::_UninitDestroyGuard<int*, void>::_UninitDestroyGuard(int*&)","_ZNSt19_UninitDestroyGuardIPivEC2ERS0_"
        .set    "std::_UninitDestroyGuard<int*, void>::~_UninitDestroyGuard()","_ZNSt19_UninitDestroyGuardIPivED2Ev"
