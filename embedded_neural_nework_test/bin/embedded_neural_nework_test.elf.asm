
bin/embedded_neural_nework_test.elf:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100001ef0 __Z10dot_kernelPaS_j:
100001ef0: 55                          	pushq	%rbp
100001ef1: 48 89 e5                    	movq	%rsp, %rbp
100001ef4: 41 56                       	pushq	%r14
100001ef6: 53                          	pushq	%rbx
100001ef7: 31 c0                       	xorl	%eax, %eax
100001ef9: 83 fa 20                    	cmpl	$32, %edx
100001efc: 0f 82 36 01 00 00           	jb	310 <__Z10dot_kernelPaS_j+0x148>
100001f02: 83 c2 e0                    	addl	$-32, %edx
100001f05: 89 d0                       	movl	%edx, %eax
100001f07: c1 e8 05                    	shrl	$5, %eax
100001f0a: 44 8d 48 01                 	leal	1(%rax), %r9d
100001f0e: 45 89 c8                    	movl	%r9d, %r8d
100001f11: 41 83 e0 01                 	andl	$1, %r8d
100001f15: 85 c0                       	testl	%eax, %eax
100001f17: 0f 84 f0 03 00 00           	je	1008 <__Z10dot_kernelPaS_j+0x41d>
100001f1d: 45 29 c1                    	subl	%r8d, %r9d
100001f20: 31 c9                       	xorl	%ecx, %ecx
100001f22: 31 c0                       	xorl	%eax, %eax
100001f24: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001f2e: 66 90                       	nop
100001f30: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100001f37: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
100001f3e: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100001f44: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
100001f4b: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
100001f52: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100001f57: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
100001f5e: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100001f63: c4 e2 7d 21 24 0e           	vpmovsxbd	(%rsi,%rcx), %ymm4
100001f69: c4 e2 5d 40 d2              	vpmulld	%ymm2, %ymm4, %ymm2
100001f6e: c4 e2 7d 21 64 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm4
100001f75: c4 e2 5d 40 db              	vpmulld	%ymm3, %ymm4, %ymm3
100001f7a: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100001f7e: c5 ed fe cb                 	vpaddd	%ymm3, %ymm2, %ymm1
100001f82: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100001f86: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100001f8c: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001f90: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100001f95: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001f99: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100001f9e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001fa2: c4 c1 79 7e c2              	vmovd	%xmm0, %r10d
100001fa7: c4 e2 7d 21 44 0f 28        	vpmovsxbd	40(%rdi,%rcx), %ymm0
100001fae: c4 e2 7d 21 4c 0f 38        	vpmovsxbd	56(%rdi,%rcx), %ymm1
100001fb5: c4 e2 7d 21 54 0f 20        	vpmovsxbd	32(%rdi,%rcx), %ymm2
100001fbc: c4 e2 7d 21 5c 0f 30        	vpmovsxbd	48(%rdi,%rcx), %ymm3
100001fc3: c4 e2 7d 21 64 0e 28        	vpmovsxbd	40(%rsi,%rcx), %ymm4
100001fca: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100001fcf: c4 e2 7d 21 64 0e 38        	vpmovsxbd	56(%rsi,%rcx), %ymm4
100001fd6: 41 01 c2                    	addl	%eax, %r10d
100001fd9: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100001fde: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100001fe2: c4 e2 7d 21 4c 0e 20        	vpmovsxbd	32(%rsi,%rcx), %ymm1
100001fe9: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
100001fee: c4 e2 7d 21 54 0e 30        	vpmovsxbd	48(%rsi,%rcx), %ymm2
100001ff5: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
100001ffa: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
100001ffe: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002002: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002008: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000200c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002011: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002015: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000201a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000201e: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002022: 44 01 d0                    	addl	%r10d, %eax
100002025: 48 83 c1 40                 	addq	$64, %rcx
100002029: 41 83 c1 fe                 	addl	$-2, %r9d
10000202d: 0f 85 fd fe ff ff           	jne	-259 <__Z10dot_kernelPaS_j+0x40>
100002033: e9 d9 02 00 00              	jmp	729 <__Z10dot_kernelPaS_j+0x421>
100002038: 45 31 db                    	xorl	%r11d, %r11d
10000203b: 83 fa 10                    	cmpl	$16, %edx
10000203e: 0f 83 61 03 00 00           	jae	865 <__Z10dot_kernelPaS_j+0x4b5>
100002044: 45 89 d9                    	movl	%r11d, %r9d
100002047: 83 fa 08                    	cmpl	$8, %edx
10000204a: 0f 83 e8 04 00 00           	jae	1256 <__Z10dot_kernelPaS_j+0x648>
100002050: 45 89 c8                    	movl	%r9d, %r8d
100002053: 85 d2                       	testl	%edx, %edx
100002055: 0f 84 bc 05 00 00           	je	1468 <__Z10dot_kernelPaS_j+0x727>
10000205b: 83 fa 1f                    	cmpl	$31, %edx
10000205e: 0f 86 ad 01 00 00           	jbe	429 <__Z10dot_kernelPaS_j+0x321>
100002064: 8d 4a ff                    	leal	-1(%rdx), %ecx
100002067: 44 89 c3                    	movl	%r8d, %ebx
10000206a: f7 d3                       	notl	%ebx
10000206c: 39 d9                       	cmpl	%ebx, %ecx
10000206e: 0f 87 9d 01 00 00           	ja	413 <__Z10dot_kernelPaS_j+0x321>
100002074: 41 89 d1                    	movl	%edx, %r9d
100002077: 41 83 e1 e0                 	andl	$-32, %r9d
10000207b: c5 79 6e c0                 	vmovd	%eax, %xmm8
10000207f: 41 8d 41 e0                 	leal	-32(%r9), %eax
100002083: 89 c1                       	movl	%eax, %ecx
100002085: c1 e9 05                    	shrl	$5, %ecx
100002088: ff c1                       	incl	%ecx
10000208a: 41 89 ca                    	movl	%ecx, %r10d
10000208d: 41 83 e2 01                 	andl	$1, %r10d
100002091: 85 c0                       	testl	%eax, %eax
100002093: 0f 84 86 05 00 00           	je	1414 <__Z10dot_kernelPaS_j+0x72f>
100002099: 44 29 d1                    	subl	%r10d, %ecx
10000209c: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
1000020a0: 45 31 db                    	xorl	%r11d, %r11d
1000020a3: 44 89 c0                    	movl	%r8d, %eax
1000020a6: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
1000020aa: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
1000020af: 90                          	nop
1000020b0: 89 c3                       	movl	%eax, %ebx
1000020b2: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
1000020b8: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
1000020bf: c4 e2 79 20 74 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm6
1000020c6: c4 e2 79 20 7c 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm7
1000020cd: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
1000020d3: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
1000020d7: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
1000020de: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
1000020e2: c4 e2 79 20 6c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm5
1000020e9: c5 d1 f5 ee                 	vpmaddwd	%xmm6, %xmm5, %xmm5
1000020ed: c4 e2 79 20 74 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm6
1000020f4: c5 c9 f5 f7                 	vpmaddwd	%xmm7, %xmm6, %xmm6
1000020f8: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
1000020fd: c5 5d fe d1                 	vpaddd	%ymm1, %ymm4, %ymm10
100002101: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
100002105: 8d 58 20                    	leal	32(%rax), %ebx
100002108: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
10000210e: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
100002115: c4 e2 79 20 7c 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm7
10000211c: c4 e2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm2
100002123: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
100002129: c4 c1 4d fe f1              	vpaddd	%ymm9, %ymm6, %ymm6
10000212e: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
100002132: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
100002139: c4 e2 79 20 4c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm1
100002140: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
100002144: c5 f1 f5 ef                 	vpmaddwd	%xmm7, %xmm1, %xmm5
100002148: c4 e2 79 20 4c 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm1
10000214f: c5 f1 f5 d2                 	vpmaddwd	%xmm2, %xmm1, %xmm2
100002153: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
100002158: c4 c1 5d fe ca              	vpaddd	%ymm10, %ymm4, %ymm1
10000215d: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
100002161: c5 6d fe ce                 	vpaddd	%ymm6, %ymm2, %ymm9
100002165: 41 83 c3 40                 	addl	$64, %r11d
100002169: 83 c0 40                    	addl	$64, %eax
10000216c: 83 c1 fe                    	addl	$-2, %ecx
10000216f: 0f 85 3b ff ff ff           	jne	-197 <__Z10dot_kernelPaS_j+0x1c0>
100002175: 45 85 d2                    	testl	%r10d, %r10d
100002178: 74 5b                       	je	91 <__Z10dot_kernelPaS_j+0x2e5>
10000217a: 45 01 c3                    	addl	%r8d, %r11d
10000217d: c4 a2 79 20 44 1e 18        	vpmovsxbw	24(%rsi,%r11), %xmm0
100002184: c4 a2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%r11), %xmm2
10000218b: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
10000218f: c4 41 7d fe c9              	vpaddd	%ymm9, %ymm0, %ymm9
100002194: c4 a2 79 20 44 1e 10        	vpmovsxbw	16(%rsi,%r11), %xmm0
10000219b: c4 a2 79 20 54 1f 10        	vpmovsxbw	16(%rdi,%r11), %xmm2
1000021a2: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
1000021a6: c5 fd fe db                 	vpaddd	%ymm3, %ymm0, %ymm3
1000021aa: c4 a2 79 20 44 1e 08        	vpmovsxbw	8(%rsi,%r11), %xmm0
1000021b1: c4 a2 79 20 54 1f 08        	vpmovsxbw	8(%rdi,%r11), %xmm2
1000021b8: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
1000021bc: c5 fd fe c9                 	vpaddd	%ymm1, %ymm0, %ymm1
1000021c0: c4 a2 79 20 04 1e           	vpmovsxbw	(%rsi,%r11), %xmm0
1000021c6: c4 a2 79 20 14 1f           	vpmovsxbw	(%rdi,%r11), %xmm2
1000021cc: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
1000021d0: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
1000021d5: c4 c1 75 fe c1              	vpaddd	%ymm9, %ymm1, %ymm0
1000021da: c5 bd fe cb                 	vpaddd	%ymm3, %ymm8, %ymm1
1000021de: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
1000021e2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000021e8: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000021ec: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000021f1: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000021f5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000021fa: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000021fe: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002202: 44 39 ca                    	cmpl	%r9d, %edx
100002205: 0f 84 0c 04 00 00           	je	1036 <__Z10dot_kernelPaS_j+0x727>
10000220b: 45 01 c8                    	addl	%r9d, %r8d
10000220e: 44 29 ca                    	subl	%r9d, %edx
100002211: 44 8d 4a ff                 	leal	-1(%rdx), %r9d
100002215: 41 89 d2                    	movl	%edx, %r10d
100002218: 41 83 e2 07                 	andl	$7, %r10d
10000221c: 74 21                       	je	33 <__Z10dot_kernelPaS_j+0x34f>
10000221e: 31 c9                       	xorl	%ecx, %ecx
100002220: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002224: 44 0f be 1c 1f              	movsbl	(%rdi,%rbx), %r11d
100002229: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000222d: 41 0f af db                 	imull	%r11d, %ebx
100002231: 01 d8                       	addl	%ebx, %eax
100002233: ff c1                       	incl	%ecx
100002235: 41 39 ca                    	cmpl	%ecx, %r10d
100002238: 75 e6                       	jne	-26 <__Z10dot_kernelPaS_j+0x330>
10000223a: 41 01 c8                    	addl	%ecx, %r8d
10000223d: 29 ca                       	subl	%ecx, %edx
10000223f: 41 83 f9 07                 	cmpl	$7, %r9d
100002243: 0f 82 ce 03 00 00           	jb	974 <__Z10dot_kernelPaS_j+0x727>
100002249: 31 c9                       	xorl	%ecx, %ecx
10000224b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002250: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002254: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002259: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000225d: 41 0f af d9                 	imull	%r9d, %ebx
100002261: 01 c3                       	addl	%eax, %ebx
100002263: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
100002267: 83 c0 01                    	addl	$1, %eax
10000226a: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
10000226f: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002273: 41 0f af c1                 	imull	%r9d, %eax
100002277: 01 d8                       	addl	%ebx, %eax
100002279: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
10000227d: 83 c3 02                    	addl	$2, %ebx
100002280: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002285: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002289: 41 0f af d9                 	imull	%r9d, %ebx
10000228d: 01 c3                       	addl	%eax, %ebx
10000228f: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
100002293: 83 c0 03                    	addl	$3, %eax
100002296: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
10000229b: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000229f: 41 0f af c1                 	imull	%r9d, %eax
1000022a3: 01 d8                       	addl	%ebx, %eax
1000022a5: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000022a9: 83 c3 04                    	addl	$4, %ebx
1000022ac: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
1000022b1: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000022b5: 41 0f af d9                 	imull	%r9d, %ebx
1000022b9: 01 c3                       	addl	%eax, %ebx
1000022bb: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
1000022bf: 83 c0 05                    	addl	$5, %eax
1000022c2: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
1000022c7: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000022cb: 41 0f af c1                 	imull	%r9d, %eax
1000022cf: 01 d8                       	addl	%ebx, %eax
1000022d1: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000022d5: 83 c3 06                    	addl	$6, %ebx
1000022d8: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
1000022dd: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000022e1: 41 0f af d9                 	imull	%r9d, %ebx
1000022e5: 01 c3                       	addl	%eax, %ebx
1000022e7: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
1000022eb: 83 c0 07                    	addl	$7, %eax
1000022ee: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
1000022f3: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000022f7: 41 0f af c1                 	imull	%r9d, %eax
1000022fb: 01 d8                       	addl	%ebx, %eax
1000022fd: 83 c1 08                    	addl	$8, %ecx
100002300: 39 ca                       	cmpl	%ecx, %edx
100002302: 0f 85 48 ff ff ff           	jne	-184 <__Z10dot_kernelPaS_j+0x360>
100002308: e9 0a 03 00 00              	jmp	778 <__Z10dot_kernelPaS_j+0x727>
10000230d: 31 c9                       	xorl	%ecx, %ecx
10000230f: 31 c0                       	xorl	%eax, %eax
100002311: 41 89 d3                    	movl	%edx, %r11d
100002314: 41 83 e3 e0                 	andl	$-32, %r11d
100002318: 45 85 c0                    	testl	%r8d, %r8d
10000231b: 74 78                       	je	120 <__Z10dot_kernelPaS_j+0x4a5>
10000231d: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100002324: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
10000232b: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100002331: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
100002338: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
10000233f: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100002344: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
10000234b: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100002350: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100002354: c4 e2 7d 21 0c 0e           	vpmovsxbd	(%rsi,%rcx), %ymm1
10000235a: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
10000235f: c4 e2 7d 21 54 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm2
100002366: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
10000236b: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
10000236f: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002373: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002379: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000237d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002382: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002386: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000238b: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000238f: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100002393: 01 c8                       	addl	%ecx, %eax
100002395: 44 29 da                    	subl	%r11d, %edx
100002398: 41 83 c3 20                 	addl	$32, %r11d
10000239c: 83 fa 10                    	cmpl	$16, %edx
10000239f: 0f 82 9f fc ff ff           	jb	-865 <__Z10dot_kernelPaS_j+0x154>
1000023a5: 44 8d 42 f0                 	leal	-16(%rdx), %r8d
1000023a9: 45 89 c2                    	movl	%r8d, %r10d
1000023ac: 41 83 e2 f0                 	andl	$-16, %r10d
1000023b0: 47 8d 0c 13                 	leal	(%r11,%r10), %r9d
1000023b4: 41 83 c1 10                 	addl	$16, %r9d
1000023b8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000023c0: 44 89 d9                    	movl	%r11d, %ecx
1000023c3: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000023c8: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
1000023cc: 41 0f af de                 	imull	%r14d, %ebx
1000023d0: 01 c3                       	addl	%eax, %ebx
1000023d2: 48 89 c8                    	movq	%rcx, %rax
1000023d5: 48 83 c8 01                 	orq	$1, %rax
1000023d9: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000023de: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000023e2: 41 0f af c6                 	imull	%r14d, %eax
1000023e6: 01 d8                       	addl	%ebx, %eax
1000023e8: 48 89 cb                    	movq	%rcx, %rbx
1000023eb: 48 83 cb 02                 	orq	$2, %rbx
1000023ef: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000023f4: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000023f8: 41 0f af de                 	imull	%r14d, %ebx
1000023fc: 01 c3                       	addl	%eax, %ebx
1000023fe: 48 89 c8                    	movq	%rcx, %rax
100002401: 48 83 c8 03                 	orq	$3, %rax
100002405: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000240a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000240e: 41 0f af c6                 	imull	%r14d, %eax
100002412: 01 d8                       	addl	%ebx, %eax
100002414: 48 89 cb                    	movq	%rcx, %rbx
100002417: 48 83 cb 04                 	orq	$4, %rbx
10000241b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002420: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002424: 41 0f af de                 	imull	%r14d, %ebx
100002428: 01 c3                       	addl	%eax, %ebx
10000242a: 48 89 c8                    	movq	%rcx, %rax
10000242d: 48 83 c8 05                 	orq	$5, %rax
100002431: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002436: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000243a: 41 0f af c6                 	imull	%r14d, %eax
10000243e: 01 d8                       	addl	%ebx, %eax
100002440: 48 89 cb                    	movq	%rcx, %rbx
100002443: 48 83 cb 06                 	orq	$6, %rbx
100002447: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000244c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002450: 41 0f af de                 	imull	%r14d, %ebx
100002454: 01 c3                       	addl	%eax, %ebx
100002456: 48 89 c8                    	movq	%rcx, %rax
100002459: 48 83 c8 07                 	orq	$7, %rax
10000245d: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002462: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002466: 41 0f af c6                 	imull	%r14d, %eax
10000246a: 01 d8                       	addl	%ebx, %eax
10000246c: 48 89 cb                    	movq	%rcx, %rbx
10000246f: 48 83 cb 08                 	orq	$8, %rbx
100002473: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002478: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000247c: 41 0f af de                 	imull	%r14d, %ebx
100002480: 01 c3                       	addl	%eax, %ebx
100002482: 48 89 c8                    	movq	%rcx, %rax
100002485: 48 83 c8 09                 	orq	$9, %rax
100002489: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000248e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002492: 41 0f af c6                 	imull	%r14d, %eax
100002496: 01 d8                       	addl	%ebx, %eax
100002498: 48 89 cb                    	movq	%rcx, %rbx
10000249b: 48 83 cb 0a                 	orq	$10, %rbx
10000249f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000024a4: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000024a8: 41 0f af de                 	imull	%r14d, %ebx
1000024ac: 01 c3                       	addl	%eax, %ebx
1000024ae: 48 89 c8                    	movq	%rcx, %rax
1000024b1: 48 83 c8 0b                 	orq	$11, %rax
1000024b5: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000024ba: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000024be: 41 0f af c6                 	imull	%r14d, %eax
1000024c2: 01 d8                       	addl	%ebx, %eax
1000024c4: 48 89 cb                    	movq	%rcx, %rbx
1000024c7: 48 83 cb 0c                 	orq	$12, %rbx
1000024cb: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000024d0: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000024d4: 41 0f af de                 	imull	%r14d, %ebx
1000024d8: 01 c3                       	addl	%eax, %ebx
1000024da: 48 89 c8                    	movq	%rcx, %rax
1000024dd: 48 83 c8 0d                 	orq	$13, %rax
1000024e1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000024e6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000024ea: 41 0f af c6                 	imull	%r14d, %eax
1000024ee: 01 d8                       	addl	%ebx, %eax
1000024f0: 48 89 cb                    	movq	%rcx, %rbx
1000024f3: 48 83 cb 0e                 	orq	$14, %rbx
1000024f7: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000024fc: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002500: 41 0f af de                 	imull	%r14d, %ebx
100002504: 01 c3                       	addl	%eax, %ebx
100002506: 48 83 c9 0f                 	orq	$15, %rcx
10000250a: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
10000250f: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
100002513: 41 0f af c6                 	imull	%r14d, %eax
100002517: 01 d8                       	addl	%ebx, %eax
100002519: 41 83 c3 10                 	addl	$16, %r11d
10000251d: 83 c2 f0                    	addl	$-16, %edx
100002520: 83 fa 0f                    	cmpl	$15, %edx
100002523: 0f 87 97 fe ff ff           	ja	-361 <__Z10dot_kernelPaS_j+0x4d0>
100002529: 45 29 d0                    	subl	%r10d, %r8d
10000252c: 44 89 c2                    	movl	%r8d, %edx
10000252f: 83 fa 08                    	cmpl	$8, %edx
100002532: 0f 82 18 fb ff ff           	jb	-1256 <__Z10dot_kernelPaS_j+0x160>
100002538: 44 8d 52 f8                 	leal	-8(%rdx), %r10d
10000253c: 45 89 d3                    	movl	%r10d, %r11d
10000253f: 41 83 e3 f8                 	andl	$-8, %r11d
100002543: 47 8d 04 19                 	leal	(%r9,%r11), %r8d
100002547: 41 83 c0 08                 	addl	$8, %r8d
10000254b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002550: 44 89 c9                    	movl	%r9d, %ecx
100002553: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
100002558: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
10000255c: 41 0f af de                 	imull	%r14d, %ebx
100002560: 01 c3                       	addl	%eax, %ebx
100002562: 48 89 c8                    	movq	%rcx, %rax
100002565: 48 83 c8 01                 	orq	$1, %rax
100002569: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000256e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002572: 41 0f af c6                 	imull	%r14d, %eax
100002576: 01 d8                       	addl	%ebx, %eax
100002578: 48 89 cb                    	movq	%rcx, %rbx
10000257b: 48 83 cb 02                 	orq	$2, %rbx
10000257f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002584: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002588: 41 0f af de                 	imull	%r14d, %ebx
10000258c: 01 c3                       	addl	%eax, %ebx
10000258e: 48 89 c8                    	movq	%rcx, %rax
100002591: 48 83 c8 03                 	orq	$3, %rax
100002595: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000259a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000259e: 41 0f af c6                 	imull	%r14d, %eax
1000025a2: 01 d8                       	addl	%ebx, %eax
1000025a4: 48 89 cb                    	movq	%rcx, %rbx
1000025a7: 48 83 cb 04                 	orq	$4, %rbx
1000025ab: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000025b0: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000025b4: 41 0f af de                 	imull	%r14d, %ebx
1000025b8: 01 c3                       	addl	%eax, %ebx
1000025ba: 48 89 c8                    	movq	%rcx, %rax
1000025bd: 48 83 c8 05                 	orq	$5, %rax
1000025c1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000025c6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000025ca: 41 0f af c6                 	imull	%r14d, %eax
1000025ce: 01 d8                       	addl	%ebx, %eax
1000025d0: 48 89 cb                    	movq	%rcx, %rbx
1000025d3: 48 83 cb 06                 	orq	$6, %rbx
1000025d7: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000025dc: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000025e0: 41 0f af de                 	imull	%r14d, %ebx
1000025e4: 01 c3                       	addl	%eax, %ebx
1000025e6: 48 83 c9 07                 	orq	$7, %rcx
1000025ea: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000025ef: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
1000025f3: 41 0f af c6                 	imull	%r14d, %eax
1000025f7: 01 d8                       	addl	%ebx, %eax
1000025f9: 41 83 c1 08                 	addl	$8, %r9d
1000025fd: 83 c2 f8                    	addl	$-8, %edx
100002600: 83 fa 07                    	cmpl	$7, %edx
100002603: 0f 87 47 ff ff ff           	ja	-185 <__Z10dot_kernelPaS_j+0x660>
100002609: 45 29 da                    	subl	%r11d, %r10d
10000260c: 44 89 d2                    	movl	%r10d, %edx
10000260f: 85 d2                       	testl	%edx, %edx
100002611: 0f 85 44 fa ff ff           	jne	-1468 <__Z10dot_kernelPaS_j+0x16b>
100002617: 5b                          	popq	%rbx
100002618: 41 5e                       	popq	%r14
10000261a: 5d                          	popq	%rbp
10000261b: c5 f8 77                    	vzeroupper
10000261e: c3                          	retq
10000261f: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100002623: 45 31 db                    	xorl	%r11d, %r11d
100002626: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
10000262a: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
10000262f: 45 85 d2                    	testl	%r10d, %r10d
100002632: 0f 85 42 fb ff ff           	jne	-1214 <__Z10dot_kernelPaS_j+0x28a>
100002638: e9 98 fb ff ff              	jmp	-1128 <__Z10dot_kernelPaS_j+0x2e5>
10000263d: 0f 1f 00                    	nopl	(%rax)

0000000100002640 __Z6LinearPaS_S_S_ijj:
100002640: 55                          	pushq	%rbp
100002641: 48 89 e5                    	movq	%rsp, %rbp
100002644: 41 57                       	pushq	%r15
100002646: 41 56                       	pushq	%r14
100002648: 41 55                       	pushq	%r13
10000264a: 41 54                       	pushq	%r12
10000264c: 53                          	pushq	%rbx
10000264d: 48 83 ec 28                 	subq	$40, %rsp
100002651: 44 89 45 d4                 	movl	%r8d, -44(%rbp)
100002655: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002659: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
10000265d: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100002661: 8b 45 10                    	movl	16(%rbp), %eax
100002664: 85 c0                       	testl	%eax, %eax
100002666: 74 6d                       	je	109 <__Z6LinearPaS_S_S_ijj+0x95>
100002668: 44 89 cb                    	movl	%r9d, %ebx
10000266b: 49 89 fe                    	movq	%rdi, %r14
10000266e: 41 89 c7                    	movl	%eax, %r15d
100002671: 45 31 e4                    	xorl	%r12d, %r12d
100002674: 45 31 ed                    	xorl	%r13d, %r13d
100002677: eb 16                       	jmp	22 <__Z6LinearPaS_S_S_ijj+0x4f>
100002679: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002680: 43 88 04 2e                 	movb	%al, (%r14,%r13)
100002684: 49 ff c5                    	incq	%r13
100002687: 41 01 dc                    	addl	%ebx, %r12d
10000268a: 4d 39 ef                    	cmpq	%r13, %r15
10000268d: 74 46                       	je	70 <__Z6LinearPaS_S_S_ijj+0x95>
10000268f: 44 89 e6                    	movl	%r12d, %esi
100002692: 48 03 75 c0                 	addq	-64(%rbp), %rsi
100002696: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
10000269a: 89 da                       	movl	%ebx, %edx
10000269c: e8 4f f8 ff ff              	callq	-1969 <__Z10dot_kernelPaS_j>
1000026a1: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000026a5: 42 0f be 0c 29              	movsbl	(%rcx,%r13), %ecx
1000026aa: 01 c1                       	addl	%eax, %ecx
1000026ac: 0f af 4d d4                 	imull	-44(%rbp), %ecx
1000026b0: 89 c8                       	movl	%ecx, %eax
1000026b2: c1 f8 1f                    	sarl	$31, %eax
1000026b5: c1 e8 12                    	shrl	$18, %eax
1000026b8: 01 c8                       	addl	%ecx, %eax
1000026ba: c1 f8 0e                    	sarl	$14, %eax
1000026bd: 3d 80 00 00 00              	cmpl	$128, %eax
1000026c2: 7c 05                       	jl	5 <__Z6LinearPaS_S_S_ijj+0x89>
1000026c4: b8 7f 00 00 00              	movl	$127, %eax
1000026c9: 83 f8 81                    	cmpl	$-127, %eax
1000026cc: 7f b2                       	jg	-78 <__Z6LinearPaS_S_S_ijj+0x40>
1000026ce: b8 81 00 00 00              	movl	$129, %eax
1000026d3: eb ab                       	jmp	-85 <__Z6LinearPaS_S_S_ijj+0x40>
1000026d5: 48 83 c4 28                 	addq	$40, %rsp
1000026d9: 5b                          	popq	%rbx
1000026da: 41 5c                       	popq	%r12
1000026dc: 41 5d                       	popq	%r13
1000026de: 41 5e                       	popq	%r14
1000026e0: 41 5f                       	popq	%r15
1000026e2: 5d                          	popq	%rbp
1000026e3: c3                          	retq
1000026e4: 90                          	nop
1000026e5: 90                          	nop
1000026e6: 90                          	nop
1000026e7: 90                          	nop
1000026e8: 90                          	nop
1000026e9: 90                          	nop
1000026ea: 90                          	nop
1000026eb: 90                          	nop
1000026ec: 90                          	nop
1000026ed: 90                          	nop
1000026ee: 90                          	nop
1000026ef: 90                          	nop

00000001000026f0 __Z6Conv2dPaS_PKaS1_ijjjjjj:
1000026f0: 55                          	pushq	%rbp
1000026f1: 48 89 e5                    	movq	%rsp, %rbp
1000026f4: 41 57                       	pushq	%r15
1000026f6: 41 56                       	pushq	%r14
1000026f8: 41 55                       	pushq	%r13
1000026fa: 41 54                       	pushq	%r12
1000026fc: 53                          	pushq	%rbx
1000026fd: 48 83 ec 78                 	subq	$120, %rsp
100002701: 44 89 4d d4                 	movl	%r9d, -44(%rbp)
100002705: 44 89 45 d0                 	movl	%r8d, -48(%rbp)
100002709: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
10000270d: 48 89 55 98                 	movq	%rdx, -104(%rbp)
100002711: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
100002715: 48 89 7d 90                 	movq	%rdi, -112(%rbp)
100002719: 8b 4d 28                    	movl	40(%rbp), %ecx
10000271c: 8b 45 18                    	movl	24(%rbp), %eax
10000271f: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002723: 8b 45 10                    	movl	16(%rbp), %eax
100002726: 83 f9 03                    	cmpl	$3, %ecx
100002729: 0f 84 43 01 00 00           	je	323 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x182>
10000272f: 83 f9 01                    	cmpl	$1, %ecx
100002732: 0f 85 26 08 00 00           	jne	2086 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002738: 8d 48 ff                    	leal	-1(%rax), %ecx
10000273b: 83 f9 1f                    	cmpl	$31, %ecx
10000273e: 0f 87 7c 01 00 00           	ja	380 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x1d0>
100002744: 48 8d 05 71 09 00 00        	leaq	2417(%rip), %rax
10000274b: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
10000274f: 48 01 c1                    	addq	%rax, %rcx
100002752: ff e1                       	jmpq	*%rcx
100002754: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002758: 0f 84 00 08 00 00           	je	2048 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
10000275e: 8b 45 30                    	movl	48(%rbp), %eax
100002761: 48 89 c2                    	movq	%rax, %rdx
100002764: d1 e8                       	shrl	%eax
100002766: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000276a: 29 c1                       	subl	%eax, %ecx
10000276c: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100002770: 8b 4d 20                    	movl	32(%rbp), %ecx
100002773: 41 89 cd                    	movl	%ecx, %r13d
100002776: 41 29 c5                    	subl	%eax, %r13d
100002779: 8b 45 d4                    	movl	-44(%rbp), %eax
10000277c: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100002780: 89 d0                       	movl	%edx, %eax
100002782: 0f af c1                    	imull	%ecx, %eax
100002785: 89 45 88                    	movl	%eax, -120(%rbp)
100002788: 31 c9                       	xorl	%ecx, %ecx
10000278a: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
10000278e: 4c 8b 55 a0                 	movq	-96(%rbp), %r10
100002792: 4c 8b 5d 98                 	movq	-104(%rbp), %r11
100002796: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
10000279a: 4c 8b 75 90                 	movq	-112(%rbp), %r14
10000279e: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
1000027a2: 75 1f                       	jne	31 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xd3>
1000027a4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000027ae: 66 90                       	nop
1000027b0: 48 ff c1                    	incq	%rcx
1000027b3: 48 3b 4d a8                 	cmpq	-88(%rbp), %rcx
1000027b7: 0f 84 a1 07 00 00           	je	1953 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
1000027bd: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
1000027c1: 74 ed                       	je	-19 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xc0>
1000027c3: 45 31 e4                    	xorl	%r12d, %r12d
1000027c6: c7 45 b8 00 00 00 00        	movl	$0, -72(%rbp)
1000027cd: eb 13                       	jmp	19 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xf2>
1000027cf: 90                          	nop
1000027d0: 8b 45 b8                    	movl	-72(%rbp), %eax
1000027d3: 44 01 c0                    	addl	%r8d, %eax
1000027d6: 44 03 65 88                 	addl	-120(%rbp), %r12d
1000027da: 89 45 b8                    	movl	%eax, -72(%rbp)
1000027dd: 3b 45 c8                    	cmpl	-56(%rbp), %eax
1000027e0: 73 ce                       	jae	-50 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xc0>
1000027e2: 45 85 ed                    	testl	%r13d, %r13d
1000027e5: 44 8b 45 30                 	movl	48(%rbp), %r8d
1000027e9: 74 e5                       	je	-27 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
1000027eb: 8b 45 b8                    	movl	-72(%rbp), %eax
1000027ee: 31 d2                       	xorl	%edx, %edx
1000027f0: 41 f7 f0                    	divl	%r8d
1000027f3: 89 c7                       	movl	%eax, %edi
1000027f5: 8b 45 20                    	movl	32(%rbp), %eax
1000027f8: 31 d2                       	xorl	%edx, %edx
1000027fa: 41 f7 f0                    	divl	%r8d
1000027fd: 89 c6                       	movl	%eax, %esi
1000027ff: 0f af f7                    	imull	%edi, %esi
100002802: 31 ff                       	xorl	%edi, %edi
100002804: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000280e: 66 90                       	nop
100002810: 41 8d 04 3c                 	leal	(%r12,%rdi), %eax
100002814: 41 0f be 14 0a              	movsbl	(%r10,%rcx), %edx
100002819: 41 0f be 04 07              	movsbl	(%r15,%rax), %eax
10000281e: 0f af c2                    	imull	%edx, %eax
100002821: 41 0f be 14 0b              	movsbl	(%r11,%rcx), %edx
100002826: 01 c2                       	addl	%eax, %edx
100002828: 41 0f af d1                 	imull	%r9d, %edx
10000282c: 89 d3                       	movl	%edx, %ebx
10000282e: c1 fb 1f                    	sarl	$31, %ebx
100002831: c1 eb 12                    	shrl	$18, %ebx
100002834: 01 d3                       	addl	%edx, %ebx
100002836: c1 fb 0e                    	sarl	$14, %ebx
100002839: 81 fb 80 00 00 00           	cmpl	$128, %ebx
10000283f: b8 7f 00 00 00              	movl	$127, %eax
100002844: 0f 4d d8                    	cmovgel	%eax, %ebx
100002847: 89 f8                       	movl	%edi, %eax
100002849: 31 d2                       	xorl	%edx, %edx
10000284b: 41 f7 f0                    	divl	%r8d
10000284e: ba 81 00 00 00              	movl	$129, %edx
100002853: 01 f0                       	addl	%esi, %eax
100002855: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002859: 01 c8                       	addl	%ecx, %eax
10000285b: 83 fb 81                    	cmpl	$-127, %ebx
10000285e: 0f 4e da                    	cmovlel	%edx, %ebx
100002861: 41 88 1c 06                 	movb	%bl, (%r14,%rax)
100002865: 44 01 c7                    	addl	%r8d, %edi
100002868: 44 39 ef                    	cmpl	%r13d, %edi
10000286b: 72 a3                       	jb	-93 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x120>
10000286d: e9 5e ff ff ff              	jmp	-162 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
100002872: 8d 48 ff                    	leal	-1(%rax), %ecx
100002875: 83 f9 1f                    	cmpl	$31, %ecx
100002878: 0f 87 d4 01 00 00           	ja	468 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x362>
10000287e: 48 8d 05 b7 07 00 00        	leaq	1975(%rip), %rax
100002885: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002889: 48 01 c1                    	addq	%rax, %rcx
10000288c: ff e1                       	jmpq	*%rcx
10000288e: 48 83 ec 08                 	subq	$8, %rsp
100002892: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002896: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
10000289a: 48 8b 55 98                 	movq	-104(%rbp), %rdx
10000289e: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
1000028a2: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
1000028a6: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
1000028aa: 8b 45 30                    	movl	48(%rbp), %eax
1000028ad: 50                          	pushq	%rax
1000028ae: 8b 45 20                    	movl	32(%rbp), %eax
1000028b1: 50                          	pushq	%rax
1000028b2: 8b 45 18                    	movl	24(%rbp), %eax
1000028b5: 50                          	pushq	%rax
1000028b6: e8 35 0a 00 00              	callq	2613 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj>
1000028bb: e9 64 07 00 00              	jmp	1892 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x934>
1000028c0: 83 f8 40                    	cmpl	$64, %eax
1000028c3: 0f 85 95 06 00 00           	jne	1685 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
1000028c9: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000028cd: 0f 84 8b 06 00 00           	je	1675 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
1000028d3: 8b 45 30                    	movl	48(%rbp), %eax
1000028d6: 48 89 c2                    	movq	%rax, %rdx
1000028d9: d1 e8                       	shrl	%eax
1000028db: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000028df: 29 c1                       	subl	%eax, %ecx
1000028e1: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000028e5: 8b 4d 20                    	movl	32(%rbp), %ecx
1000028e8: 89 cf                       	movl	%ecx, %edi
1000028ea: 29 c7                       	subl	%eax, %edi
1000028ec: 8b 45 d4                    	movl	-44(%rbp), %eax
1000028ef: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
1000028f6: 89 d0                       	movl	%edx, %eax
1000028f8: 0f af c1                    	imull	%ecx, %eax
1000028fb: c1 e0 06                    	shll	$6, %eax
1000028fe: 89 85 70 ff ff ff           	movl	%eax, -144(%rbp)
100002904: 89 d1                       	movl	%edx, %ecx
100002906: c1 e1 06                    	shll	$6, %ecx
100002909: 45 31 c9                    	xorl	%r9d, %r9d
10000290c: 89 7d c4                    	movl	%edi, -60(%rbp)
10000290f: 89 4d 80                    	movl	%ecx, -128(%rbp)
100002912: 44 8b 7d d4                 	movl	-44(%rbp), %r15d
100002916: eb 18                       	jmp	24 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x240>
100002918: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002920: 49 ff c1                    	incq	%r9
100002923: 4c 3b 8d 68 ff ff ff        	cmpq	-152(%rbp), %r9
10000292a: 0f 84 2e 06 00 00           	je	1582 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002930: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002934: 8b 75 30                    	movl	48(%rbp), %esi
100002937: 74 e7                       	je	-25 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x230>
100002939: 49 89 f2                    	movq	%rsi, %r10
10000293c: 44 89 ca                    	movl	%r9d, %edx
10000293f: c1 e2 06                    	shll	$6, %edx
100002942: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100002946: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
10000294a: 48 8d 34 10                 	leaq	(%rax,%rdx), %rsi
10000294e: c7 85 78 ff ff ff 00 00 00 00       	movl	$0, -136(%rbp)
100002958: 45 31 db                    	xorl	%r11d, %r11d
10000295b: 48 89 75 b8                 	movq	%rsi, -72(%rbp)
10000295f: 4c 89 4d 88                 	movq	%r9, -120(%rbp)
100002963: eb 26                       	jmp	38 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x29b>
100002965: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000296f: 90                          	nop
100002970: 45 01 d3                    	addl	%r10d, %r11d
100002973: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100002979: 03 85 70 ff ff ff           	addl	-144(%rbp), %eax
10000297f: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100002985: 44 3b 5d c8                 	cmpl	-56(%rbp), %r11d
100002989: 73 95                       	jae	-107 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x230>
10000298b: 85 ff                       	testl	%edi, %edi
10000298d: 44 8b 75 20                 	movl	32(%rbp), %r14d
100002991: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002995: 74 d9                       	je	-39 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x280>
100002997: 31 db                       	xorl	%ebx, %ebx
100002999: 44 8b a5 78 ff ff ff        	movl	-136(%rbp), %r12d
1000029a0: 44 89 e7                    	movl	%r12d, %edi
1000029a3: 48 01 c7                    	addq	%rax, %rdi
1000029a6: 4d 89 f5                    	movq	%r14, %r13
1000029a9: 45 89 de                    	movl	%r11d, %r14d
1000029ac: e8 df 16 00 00              	callq	5855 <__Z11microkernelILj1ELj64EasET2_PKT1_S3_>
1000029b1: 45 89 f3                    	movl	%r14d, %r11d
1000029b4: 4d 89 ee                    	movq	%r13, %r14
1000029b7: 44 8b 6d d0                 	movl	-48(%rbp), %r13d
1000029bb: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
1000029bf: ba 7f 00 00 00              	movl	$127, %edx
1000029c4: 8b 75 30                    	movl	48(%rbp), %esi
1000029c7: 49 89 f2                    	movq	%rsi, %r10
1000029ca: 98                          	cwtl
1000029cb: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
1000029cf: 0f be 0c 39                 	movsbl	(%rcx,%rdi), %ecx
1000029d3: 01 c1                       	addl	%eax, %ecx
1000029d5: 41 0f af cd                 	imull	%r13d, %ecx
1000029d9: 89 cf                       	movl	%ecx, %edi
1000029db: c1 ff 1f                    	sarl	$31, %edi
1000029de: c1 ef 12                    	shrl	$18, %edi
1000029e1: 01 cf                       	addl	%ecx, %edi
1000029e3: c1 ff 0e                    	sarl	$14, %edi
1000029e6: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000029ec: 0f 4d fa                    	cmovgel	%edx, %edi
1000029ef: 89 d8                       	movl	%ebx, %eax
1000029f1: 31 d2                       	xorl	%edx, %edx
1000029f3: 41 f7 f2                    	divl	%r10d
1000029f6: 41 89 c0                    	movl	%eax, %r8d
1000029f9: 44 89 d8                    	movl	%r11d, %eax
1000029fc: 31 d2                       	xorl	%edx, %edx
1000029fe: 41 f7 f2                    	divl	%r10d
100002a01: 89 c1                       	movl	%eax, %ecx
100002a03: 44 89 f0                    	movl	%r14d, %eax
100002a06: 31 d2                       	xorl	%edx, %edx
100002a08: 41 f7 f2                    	divl	%r10d
100002a0b: 4c 8b 4d 88                 	movq	-120(%rbp), %r9
100002a0f: 0f af c1                    	imull	%ecx, %eax
100002a12: 8b 4d 80                    	movl	-128(%rbp), %ecx
100002a15: 44 01 c0                    	addl	%r8d, %eax
100002a18: 41 b8 81 00 00 00           	movl	$129, %r8d
100002a1e: 41 0f af c7                 	imull	%r15d, %eax
100002a22: 44 01 c8                    	addl	%r9d, %eax
100002a25: 83 ff 81                    	cmpl	$-127, %edi
100002a28: 41 0f 4e f8                 	cmovlel	%r8d, %edi
100002a2c: 48 8b 55 90                 	movq	-112(%rbp), %rdx
100002a30: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100002a34: 40 88 3c 02                 	movb	%dil, (%rdx,%rax)
100002a38: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002a3c: 8b 7d c4                    	movl	-60(%rbp), %edi
100002a3f: 44 01 d3                    	addl	%r10d, %ebx
100002a42: 41 01 cc                    	addl	%ecx, %r12d
100002a45: 39 fb                       	cmpl	%edi, %ebx
100002a47: 0f 82 53 ff ff ff           	jb	-173 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x2b0>
100002a4d: e9 1e ff ff ff              	jmp	-226 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x280>
100002a52: 83 f8 40                    	cmpl	$64, %eax
100002a55: 0f 85 03 05 00 00           	jne	1283 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002a5b: 48 83 ec 08                 	subq	$8, %rsp
100002a5f: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002a63: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002a67: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002a6b: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002a6f: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002a73: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002a77: 8b 45 30                    	movl	48(%rbp), %eax
100002a7a: 50                          	pushq	%rax
100002a7b: 8b 45 20                    	movl	32(%rbp), %eax
100002a7e: 50                          	pushq	%rax
100002a7f: 8b 45 18                    	movl	24(%rbp), %eax
100002a82: 50                          	pushq	%rax
100002a83: e8 78 13 00 00              	callq	4984 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj>
100002a88: e9 97 05 00 00              	jmp	1431 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x934>
100002a8d: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002a91: 0f 84 c7 04 00 00           	je	1223 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002a97: 8b 45 30                    	movl	48(%rbp), %eax
100002a9a: 48 89 c2                    	movq	%rax, %rdx
100002a9d: d1 e8                       	shrl	%eax
100002a9f: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002aa3: 29 c1                       	subl	%eax, %ecx
100002aa5: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100002aa9: 8b 4d 20                    	movl	32(%rbp), %ecx
100002aac: 89 cf                       	movl	%ecx, %edi
100002aae: 29 c7                       	subl	%eax, %edi
100002ab0: 8b 45 d4                    	movl	-44(%rbp), %eax
100002ab3: 48 89 45 80                 	movq	%rax, -128(%rbp)
100002ab7: 89 d0                       	movl	%edx, %eax
100002ab9: 0f af c1                    	imull	%ecx, %eax
100002abc: c1 e0 02                    	shll	$2, %eax
100002abf: 89 45 c4                    	movl	%eax, -60(%rbp)
100002ac2: 8d 34 95 00 00 00 00        	leal	(,%rdx,4), %esi
100002ac9: 31 c0                       	xorl	%eax, %eax
100002acb: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100002acf: eb 20                       	jmp	32 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x401>
100002ad1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002adb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002ae0: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100002ae4: 48 ff c0                    	incq	%rax
100002ae7: 48 3b 45 80                 	cmpq	-128(%rbp), %rax
100002aeb: 0f 84 6d 04 00 00           	je	1133 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002af1: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100002af5: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002af9: 74 e5                       	je	-27 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3f0>
100002afb: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100002aff: 44 8d 2c 85 00 00 00 00     	leal	(,%rax,4), %r13d
100002b07: c7 45 88 00 00 00 00        	movl	$0, -120(%rbp)
100002b0e: c7 45 a8 00 00 00 00        	movl	$0, -88(%rbp)
100002b15: eb 24                       	jmp	36 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x44b>
100002b17: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002b20: 8b 55 a8                    	movl	-88(%rbp), %edx
100002b23: 8b 45 30                    	movl	48(%rbp), %eax
100002b26: 01 c2                       	addl	%eax, %edx
100002b28: 8b 45 88                    	movl	-120(%rbp), %eax
100002b2b: 03 45 c4                    	addl	-60(%rbp), %eax
100002b2e: 89 45 88                    	movl	%eax, -120(%rbp)
100002b31: 89 55 a8                    	movl	%edx, -88(%rbp)
100002b34: 3b 55 c8                    	cmpl	-56(%rbp), %edx
100002b37: 89 cf                       	movl	%ecx, %edi
100002b39: 73 a5                       	jae	-91 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3f0>
100002b3b: 85 ff                       	testl	%edi, %edi
100002b3d: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002b41: 4c 8b 4d a0                 	movq	-96(%rbp), %r9
100002b45: 4c 8b 75 98                 	movq	-104(%rbp), %r14
100002b49: 89 f9                       	movl	%edi, %ecx
100002b4b: 41 bb 7f 00 00 00           	movl	$127, %r11d
100002b51: 74 cd                       	je	-51 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x430>
100002b53: 8b 45 a8                    	movl	-88(%rbp), %eax
100002b56: 31 d2                       	xorl	%edx, %edx
100002b58: 8b 7d 30                    	movl	48(%rbp), %edi
100002b5b: 48 89 fb                    	movq	%rdi, %rbx
100002b5e: f7 f3                       	divl	%ebx
100002b60: 89 c7                       	movl	%eax, %edi
100002b62: 8b 45 20                    	movl	32(%rbp), %eax
100002b65: 31 d2                       	xorl	%edx, %edx
100002b67: f7 f3                       	divl	%ebx
100002b69: 41 89 c2                    	movl	%eax, %r10d
100002b6c: 44 0f af d7                 	imull	%edi, %r10d
100002b70: 31 ff                       	xorl	%edi, %edi
100002b72: 8b 5d 88                    	movl	-120(%rbp), %ebx
100002b75: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002b7f: 90                          	nop
100002b80: 89 d8                       	movl	%ebx, %eax
100002b82: c4 82 79 21 04 29           	vpmovsxbd	(%r9,%r13), %xmm0
100002b88: c4 c2 79 21 0c 07           	vpmovsxbd	(%r15,%rax), %xmm1
100002b8e: c4 e2 71 40 c0              	vpmulld	%xmm0, %xmm1, %xmm0
100002b93: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002b98: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002b9c: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002ba1: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002ba5: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002ba9: 98                          	cwtl
100002baa: 43 0f be 14 2e              	movsbl	(%r14,%r13), %edx
100002baf: 01 c2                       	addl	%eax, %edx
100002bb1: 41 0f af d0                 	imull	%r8d, %edx
100002bb5: 4d 89 f4                    	movq	%r14, %r12
100002bb8: 4d 89 ce                    	movq	%r9, %r14
100002bbb: 41 89 d1                    	movl	%edx, %r9d
100002bbe: 41 c1 f9 1f                 	sarl	$31, %r9d
100002bc2: 41 c1 e9 12                 	shrl	$18, %r9d
100002bc6: 41 01 d1                    	addl	%edx, %r9d
100002bc9: 41 c1 f9 0e                 	sarl	$14, %r9d
100002bcd: 41 81 f9 80 00 00 00        	cmpl	$128, %r9d
100002bd4: 45 0f 4d cb                 	cmovgel	%r11d, %r9d
100002bd8: 89 f8                       	movl	%edi, %eax
100002bda: 31 d2                       	xorl	%edx, %edx
100002bdc: 45 89 c3                    	movl	%r8d, %r11d
100002bdf: 44 8b 45 30                 	movl	48(%rbp), %r8d
100002be3: 41 f7 f0                    	divl	%r8d
100002be6: ba 81 00 00 00              	movl	$129, %edx
100002beb: 44 01 d0                    	addl	%r10d, %eax
100002bee: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002bf2: 03 45 b8                    	addl	-72(%rbp), %eax
100002bf5: 41 83 f9 81                 	cmpl	$-127, %r9d
100002bf9: 44 0f 4e ca                 	cmovlel	%edx, %r9d
100002bfd: 48 8b 55 90                 	movq	-112(%rbp), %rdx
100002c01: 44 88 0c 02                 	movb	%r9b, (%rdx,%rax)
100002c05: 4d 89 f1                    	movq	%r14, %r9
100002c08: 4d 89 e6                    	movq	%r12, %r14
100002c0b: 44 01 c7                    	addl	%r8d, %edi
100002c0e: 45 89 d8                    	movl	%r11d, %r8d
100002c11: 41 bb 7f 00 00 00           	movl	$127, %r11d
100002c17: 01 f3                       	addl	%esi, %ebx
100002c19: 39 cf                       	cmpl	%ecx, %edi
100002c1b: 0f 82 5f ff ff ff           	jb	-161 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x490>
100002c21: e9 fa fe ff ff              	jmp	-262 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x430>
100002c26: 48 83 ec 08                 	subq	$8, %rsp
100002c2a: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002c2e: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002c32: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002c36: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002c3a: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002c3e: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002c42: 8b 45 30                    	movl	48(%rbp), %eax
100002c45: 50                          	pushq	%rax
100002c46: 8b 45 20                    	movl	32(%rbp), %eax
100002c49: 50                          	pushq	%rax
100002c4a: 8b 45 18                    	movl	24(%rbp), %eax
100002c4d: 50                          	pushq	%rax
100002c4e: e8 ed 04 00 00              	callq	1261 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj>
100002c53: e9 cc 03 00 00              	jmp	972 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x934>
100002c58: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002c5c: 0f 84 fc 02 00 00           	je	764 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002c62: 8b 45 30                    	movl	48(%rbp), %eax
100002c65: 48 89 c2                    	movq	%rax, %rdx
100002c68: d1 e8                       	shrl	%eax
100002c6a: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002c6e: 29 c1                       	subl	%eax, %ecx
100002c70: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100002c74: 8b 4d 20                    	movl	32(%rbp), %ecx
100002c77: 41 89 c9                    	movl	%ecx, %r9d
100002c7a: 41 29 c1                    	subl	%eax, %r9d
100002c7d: 8b 45 d4                    	movl	-44(%rbp), %eax
100002c80: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100002c87: 89 d0                       	movl	%edx, %eax
100002c89: 0f af c1                    	imull	%ecx, %eax
100002c8c: c1 e0 04                    	shll	$4, %eax
100002c8f: 89 45 80                    	movl	%eax, -128(%rbp)
100002c92: 89 d0                       	movl	%edx, %eax
100002c94: c1 e0 04                    	shll	$4, %eax
100002c97: 31 c9                       	xorl	%ecx, %ecx
100002c99: 89 45 88                    	movl	%eax, -120(%rbp)
100002c9c: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002ca0: 4c 8b 6d a0                 	movq	-96(%rbp), %r13
100002ca4: 4c 8b 7d 98                 	movq	-104(%rbp), %r15
100002ca8: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
100002cac: eb 16                       	jmp	22 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5d4>
100002cae: 66 90                       	nop
100002cb0: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100002cb4: 48 ff c1                    	incq	%rcx
100002cb7: 48 3b 8d 78 ff ff ff        	cmpq	-136(%rbp), %rcx
100002cbe: 0f 84 9a 02 00 00           	je	666 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002cc4: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002cc8: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002ccc: 74 e2                       	je	-30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002cce: 48 8b 5d b8                 	movq	-72(%rbp), %rbx
100002cd2: 41 89 da                    	movl	%ebx, %r10d
100002cd5: 41 c1 e2 04                 	shll	$4, %r10d
100002cd9: c7 45 a8 00 00 00 00        	movl	$0, -88(%rbp)
100002ce0: c7 45 c4 00 00 00 00        	movl	$0, -60(%rbp)
100002ce7: eb 20                       	jmp	32 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x619>
100002ce9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002cf0: 8b 55 c4                    	movl	-60(%rbp), %edx
100002cf3: 8b 4d 30                    	movl	48(%rbp), %ecx
100002cf6: 01 ca                       	addl	%ecx, %edx
100002cf8: 8b 4d a8                    	movl	-88(%rbp), %ecx
100002cfb: 03 4d 80                    	addl	-128(%rbp), %ecx
100002cfe: 89 4d a8                    	movl	%ecx, -88(%rbp)
100002d01: 89 55 c4                    	movl	%edx, -60(%rbp)
100002d04: 3b 55 c8                    	cmpl	-56(%rbp), %edx
100002d07: 73 a7                       	jae	-89 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002d09: 45 85 c9                    	testl	%r9d, %r9d
100002d0c: 8b 5d d4                    	movl	-44(%rbp), %ebx
100002d0f: 41 bb 7f 00 00 00           	movl	$127, %r11d
100002d15: 74 d9                       	je	-39 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x600>
100002d17: 8b 45 c4                    	movl	-60(%rbp), %eax
100002d1a: 31 d2                       	xorl	%edx, %edx
100002d1c: 8b 4d 30                    	movl	48(%rbp), %ecx
100002d1f: f7 f1                       	divl	%ecx
100002d21: 89 c7                       	movl	%eax, %edi
100002d23: 8b 45 20                    	movl	32(%rbp), %eax
100002d26: 31 d2                       	xorl	%edx, %edx
100002d28: f7 f1                       	divl	%ecx
100002d2a: 41 89 c4                    	movl	%eax, %r12d
100002d2d: 44 0f af e7                 	imull	%edi, %r12d
100002d31: 31 ff                       	xorl	%edi, %edi
100002d33: 8b 4d a8                    	movl	-88(%rbp), %ecx
100002d36: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002d40: 89 c8                       	movl	%ecx, %eax
100002d42: c4 82 7d 21 44 15 00        	vpmovsxbd	(%r13,%r10), %ymm0
100002d49: c4 82 7d 21 4c 15 08        	vpmovsxbd	8(%r13,%r10), %ymm1
100002d50: c4 c2 7d 21 14 06           	vpmovsxbd	(%r14,%rax), %ymm2
100002d56: c4 e2 6d 40 c0              	vpmulld	%ymm0, %ymm2, %ymm0
100002d5b: c4 c2 7d 21 54 06 08        	vpmovsxbd	8(%r14,%rax), %ymm2
100002d62: c4 e2 6d 40 c9              	vpmulld	%ymm1, %ymm2, %ymm1
100002d67: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100002d6b: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002d71: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002d75: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002d7a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002d7e: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002d83: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002d87: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002d8b: 98                          	cwtl
100002d8c: 43 0f be 14 17              	movsbl	(%r15,%r10), %edx
100002d91: 01 c2                       	addl	%eax, %edx
100002d93: 41 0f af d0                 	imull	%r8d, %edx
100002d97: 89 d6                       	movl	%edx, %esi
100002d99: c1 fe 1f                    	sarl	$31, %esi
100002d9c: c1 ee 12                    	shrl	$18, %esi
100002d9f: 01 d6                       	addl	%edx, %esi
100002da1: c1 fe 0e                    	sarl	$14, %esi
100002da4: 81 fe 80 00 00 00           	cmpl	$128, %esi
100002daa: 41 0f 4d f3                 	cmovgel	%r11d, %esi
100002dae: 89 f8                       	movl	%edi, %eax
100002db0: 31 d2                       	xorl	%edx, %edx
100002db2: 44 8b 5d 30                 	movl	48(%rbp), %r11d
100002db6: 41 f7 f3                    	divl	%r11d
100002db9: ba 81 00 00 00              	movl	$129, %edx
100002dbe: 44 01 e0                    	addl	%r12d, %eax
100002dc1: 0f af c3                    	imull	%ebx, %eax
100002dc4: 03 45 b8                    	addl	-72(%rbp), %eax
100002dc7: 83 fe 81                    	cmpl	$-127, %esi
100002dca: 0f 4e f2                    	cmovlel	%edx, %esi
100002dcd: 48 8b 55 90                 	movq	-112(%rbp), %rdx
100002dd1: 40 88 34 02                 	movb	%sil, (%rdx,%rax)
100002dd5: 8b 45 88                    	movl	-120(%rbp), %eax
100002dd8: 44 01 df                    	addl	%r11d, %edi
100002ddb: 41 bb 7f 00 00 00           	movl	$127, %r11d
100002de1: 01 c1                       	addl	%eax, %ecx
100002de3: 44 39 cf                    	cmpl	%r9d, %edi
100002de6: 0f 82 54 ff ff ff           	jb	-172 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x650>
100002dec: e9 ff fe ff ff              	jmp	-257 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x600>
100002df1: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002df5: 0f 84 63 01 00 00           	je	355 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002dfb: 8b 45 30                    	movl	48(%rbp), %eax
100002dfe: 48 89 c2                    	movq	%rax, %rdx
100002e01: d1 e8                       	shrl	%eax
100002e03: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002e07: 29 c1                       	subl	%eax, %ecx
100002e09: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100002e0d: 8b 4d 20                    	movl	32(%rbp), %ecx
100002e10: 41 89 cb                    	movl	%ecx, %r11d
100002e13: 41 29 c3                    	subl	%eax, %r11d
100002e16: 8b 45 d4                    	movl	-44(%rbp), %eax
100002e19: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100002e20: 89 d0                       	movl	%edx, %eax
100002e22: 0f af c1                    	imull	%ecx, %eax
100002e25: c1 e0 05                    	shll	$5, %eax
100002e28: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100002e2e: 89 d1                       	movl	%edx, %ecx
100002e30: c1 e1 05                    	shll	$5, %ecx
100002e33: 45 31 c0                    	xorl	%r8d, %r8d
100002e36: 89 4d a8                    	movl	%ecx, -88(%rbp)
100002e39: 44 89 5d c4                 	movl	%r11d, -60(%rbp)
100002e3d: eb 11                       	jmp	17 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x760>
100002e3f: 90                          	nop
100002e40: 49 ff c0                    	incq	%r8
100002e43: 4c 3b 85 70 ff ff ff        	cmpq	-144(%rbp), %r8
100002e4a: 0f 84 0e 01 00 00           	je	270 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86e>
100002e50: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002e54: 8b 5d 30                    	movl	48(%rbp), %ebx
100002e57: 74 e7                       	je	-25 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x750>
100002e59: 45 89 c1                    	movl	%r8d, %r9d
100002e5c: 41 c1 e1 05                 	shll	$5, %r9d
100002e60: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100002e64: 4a 8d 34 08                 	leaq	(%rax,%r9), %rsi
100002e68: c7 45 80 00 00 00 00        	movl	$0, -128(%rbp)
100002e6f: 45 31 d2                    	xorl	%r10d, %r10d
100002e72: 48 89 75 b8                 	movq	%rsi, -72(%rbp)
100002e76: 4c 89 45 88                 	movq	%r8, -120(%rbp)
100002e7a: eb 19                       	jmp	25 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7a5>
100002e7c: 0f 1f 40 00                 	nopl	(%rax)
100002e80: 41 01 da                    	addl	%ebx, %r10d
100002e83: 8b 45 80                    	movl	-128(%rbp), %eax
100002e86: 03 85 78 ff ff ff           	addl	-136(%rbp), %eax
100002e8c: 89 45 80                    	movl	%eax, -128(%rbp)
100002e8f: 44 3b 55 c8                 	cmpl	-56(%rbp), %r10d
100002e93: 73 ab                       	jae	-85 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x750>
100002e95: 45 85 db                    	testl	%r11d, %r11d
100002e98: 44 8b 75 20                 	movl	32(%rbp), %r14d
100002e9c: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002ea0: 74 de                       	je	-34 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x790>
100002ea2: 45 31 ed                    	xorl	%r13d, %r13d
100002ea5: 44 8b 65 80                 	movl	-128(%rbp), %r12d
100002ea9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002eb0: 44 89 e7                    	movl	%r12d, %edi
100002eb3: 48 01 c7                    	addq	%rax, %rdi
100002eb6: 4c 89 cb                    	movq	%r9, %rbx
100002eb9: 4d 89 f7                    	movq	%r14, %r15
100002ebc: 45 89 d6                    	movl	%r10d, %r14d
100002ebf: e8 6c 11 00 00              	callq	4460 <__Z11microkernelILj1ELj32EasET2_PKT1_S3_>
100002ec4: 45 89 f2                    	movl	%r14d, %r10d
100002ec7: 4d 89 fe                    	movq	%r15, %r14
100002eca: 44 8b 7d d4                 	movl	-44(%rbp), %r15d
100002ece: 49 89 d9                    	movq	%rbx, %r9
100002ed1: ba 7f 00 00 00              	movl	$127, %edx
100002ed6: 8b 5d 30                    	movl	48(%rbp), %ebx
100002ed9: 98                          	cwtl
100002eda: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002ede: 42 0f be 0c 09              	movsbl	(%rcx,%r9), %ecx
100002ee3: 01 c1                       	addl	%eax, %ecx
100002ee5: 0f af 4d d0                 	imull	-48(%rbp), %ecx
100002ee9: 89 cf                       	movl	%ecx, %edi
100002eeb: c1 ff 1f                    	sarl	$31, %edi
100002eee: c1 ef 12                    	shrl	$18, %edi
100002ef1: 01 cf                       	addl	%ecx, %edi
100002ef3: c1 ff 0e                    	sarl	$14, %edi
100002ef6: 81 ff 80 00 00 00           	cmpl	$128, %edi
100002efc: 0f 4d fa                    	cmovgel	%edx, %edi
100002eff: 44 89 e8                    	movl	%r13d, %eax
100002f02: 31 d2                       	xorl	%edx, %edx
100002f04: f7 f3                       	divl	%ebx
100002f06: 89 c1                       	movl	%eax, %ecx
100002f08: 44 89 d0                    	movl	%r10d, %eax
100002f0b: 31 d2                       	xorl	%edx, %edx
100002f0d: f7 f3                       	divl	%ebx
100002f0f: 89 c6                       	movl	%eax, %esi
100002f11: 44 89 f0                    	movl	%r14d, %eax
100002f14: 31 d2                       	xorl	%edx, %edx
100002f16: f7 f3                       	divl	%ebx
100002f18: 4c 8b 45 88                 	movq	-120(%rbp), %r8
100002f1c: 0f af c6                    	imull	%esi, %eax
100002f1f: 44 8b 5d c4                 	movl	-60(%rbp), %r11d
100002f23: 01 c8                       	addl	%ecx, %eax
100002f25: 8b 4d a8                    	movl	-88(%rbp), %ecx
100002f28: 41 0f af c7                 	imull	%r15d, %eax
100002f2c: 44 01 c0                    	addl	%r8d, %eax
100002f2f: 83 ff 81                    	cmpl	$-127, %edi
100002f32: ba 81 00 00 00              	movl	$129, %edx
100002f37: 0f 4e fa                    	cmovlel	%edx, %edi
100002f3a: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100002f3e: 48 8b 55 90                 	movq	-112(%rbp), %rdx
100002f42: 40 88 3c 02                 	movb	%dil, (%rdx,%rax)
100002f46: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002f4a: 41 01 dd                    	addl	%ebx, %r13d
100002f4d: 41 01 cc                    	addl	%ecx, %r12d
100002f50: 45 39 dd                    	cmpl	%r11d, %r13d
100002f53: 0f 82 57 ff ff ff           	jb	-169 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7c0>
100002f59: e9 22 ff ff ff              	jmp	-222 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x790>
100002f5e: 48 83 c4 78                 	addq	$120, %rsp
100002f62: e9 c4 00 00 00              	jmp	196 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x93b>
100002f67: 48 83 ec 08                 	subq	$8, %rsp
100002f6b: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002f6f: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002f73: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002f77: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002f7b: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002f7f: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002f83: 8b 45 30                    	movl	48(%rbp), %eax
100002f86: 50                          	pushq	%rax
100002f87: 8b 45 20                    	movl	32(%rbp), %eax
100002f8a: 50                          	pushq	%rax
100002f8b: 8b 45 18                    	movl	24(%rbp), %eax
100002f8e: 50                          	pushq	%rax
100002f8f: e8 9c 05 00 00              	callq	1436 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj>
100002f94: e9 8b 00 00 00              	jmp	139 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x934>
100002f99: 48 83 ec 08                 	subq	$8, %rsp
100002f9d: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002fa1: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002fa5: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002fa9: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002fad: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002fb1: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002fb5: 8b 45 30                    	movl	48(%rbp), %eax
100002fb8: 50                          	pushq	%rax
100002fb9: 8b 45 20                    	movl	32(%rbp), %eax
100002fbc: 50                          	pushq	%rax
100002fbd: 8b 45 18                    	movl	24(%rbp), %eax
100002fc0: 50                          	pushq	%rax
100002fc1: e8 aa 07 00 00              	callq	1962 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj>
100002fc6: eb 5c                       	jmp	92 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x934>
100002fc8: 48 83 ec 08                 	subq	$8, %rsp
100002fcc: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002fd0: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002fd4: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002fd8: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002fdc: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002fe0: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002fe4: 8b 45 30                    	movl	48(%rbp), %eax
100002fe7: 50                          	pushq	%rax
100002fe8: 8b 45 20                    	movl	32(%rbp), %eax
100002feb: 50                          	pushq	%rax
100002fec: 8b 45 18                    	movl	24(%rbp), %eax
100002fef: 50                          	pushq	%rax
100002ff0: e8 ab 09 00 00              	callq	2475 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj>
100002ff5: eb 2d                       	jmp	45 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x934>
100002ff7: 48 83 ec 08                 	subq	$8, %rsp
100002ffb: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100002fff: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100003003: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100003007: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
10000300b: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000300f: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100003013: 8b 45 30                    	movl	48(%rbp), %eax
100003016: 50                          	pushq	%rax
100003017: 8b 45 20                    	movl	32(%rbp), %eax
10000301a: 50                          	pushq	%rax
10000301b: 8b 45 18                    	movl	24(%rbp), %eax
10000301e: 50                          	pushq	%rax
10000301f: e8 ac 0b 00 00              	callq	2988 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj>
100003024: 48 81 c4 98 00 00 00        	addq	$152, %rsp
10000302b: 5b                          	popq	%rbx
10000302c: 41 5c                       	popq	%r12
10000302e: 41 5d                       	popq	%r13
100003030: 41 5e                       	popq	%r14
100003032: 41 5f                       	popq	%r15
100003034: 5d                          	popq	%rbp
100003035: c5 f8 77                    	vzeroupper
100003038: c3                          	retq
100003039: 0f 1f 00                    	nopl	(%rax)
10000303c: 52                          	pushq	%rdx
10000303d: f8                          	clc
10000303e: ff ff                       	<unknown>
100003040: 22 ff                       	andb	%bh, %bh
100003042: ff ff                       	<unknown>
100003044: 22 ff                       	andb	%bh, %bh
100003046: ff ff                       	<unknown>
100003048: 2b ff                       	subl	%edi, %edi
10000304a: ff ff                       	<unknown>
10000304c: 22 ff                       	andb	%bh, %bh
10000304e: ff ff                       	<unknown>
100003050: 22 ff                       	andb	%bh, %bh
100003052: ff ff                       	<unknown>
100003054: 22 ff                       	andb	%bh, %bh
100003056: ff ff                       	<unknown>
100003058: 5d                          	popq	%rbp
100003059: ff ff                       	<unknown>
10000305b: ff 22                       	jmpq	*(%rdx)
10000305d: ff ff                       	<unknown>
10000305f: ff 22                       	jmpq	*(%rdx)
100003061: ff ff                       	<unknown>
100003063: ff 22                       	jmpq	*(%rdx)
100003065: ff ff                       	<unknown>
100003067: ff 22                       	jmpq	*(%rdx)
100003069: ff ff                       	<unknown>
10000306b: ff 22                       	jmpq	*(%rdx)
10000306d: ff ff                       	<unknown>
10000306f: ff 22                       	jmpq	*(%rdx)
100003071: ff ff                       	<unknown>
100003073: ff 22                       	jmpq	*(%rdx)
100003075: ff ff                       	<unknown>
100003077: ff 8c ff ff ff 22 ff        	decl	-14483457(%rdi,%rdi,8)
10000307e: ff ff                       	<unknown>
100003080: 22 ff                       	andb	%bh, %bh
100003082: ff ff                       	<unknown>
100003084: 22 ff                       	andb	%bh, %bh
100003086: ff ff                       	<unknown>
100003088: 22 ff                       	andb	%bh, %bh
10000308a: ff ff                       	<unknown>
10000308c: 22 ff                       	andb	%bh, %bh
10000308e: ff ff                       	<unknown>
100003090: 22 ff                       	andb	%bh, %bh
100003092: ff ff                       	<unknown>
100003094: 22 ff                       	andb	%bh, %bh
100003096: ff ff                       	<unknown>
100003098: 22 ff                       	andb	%bh, %bh
10000309a: ff ff                       	<unknown>
10000309c: 22 ff                       	andb	%bh, %bh
10000309e: ff ff                       	<unknown>
1000030a0: 22 ff                       	andb	%bh, %bh
1000030a2: ff ff                       	<unknown>
1000030a4: 22 ff                       	andb	%bh, %bh
1000030a6: ff ff                       	<unknown>
1000030a8: 22 ff                       	andb	%bh, %bh
1000030aa: ff ff                       	<unknown>
1000030ac: 22 ff                       	andb	%bh, %bh
1000030ae: ff ff                       	<unknown>
1000030b0: 22 ff                       	andb	%bh, %bh
1000030b2: ff ff                       	<unknown>
1000030b4: 22 ff                       	andb	%bh, %bh
1000030b6: ff ff                       	<unknown>
1000030b8: bb ff ff ff 98              	movl	$2566914047, %ebx
1000030bd: f6 ff                       	idivb	%bh
1000030bf: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
1000030c5: fe ff                       	<unknown>
1000030c7: ff d1                       	callq	*%rcx
1000030c9: f9                          	stc
1000030ca: ff ff                       	<unknown>
1000030cc: a2 fe ff ff a2 fe ff ff a2  	movabsb	%al, -6701356251382546434
1000030d5: fe ff                       	<unknown>
1000030d7: ff 6a fb                    	ljmpl	*-5(%rdx)
1000030da: ff ff                       	<unknown>
1000030dc: a2 fe ff ff a2 fe ff ff a2  	movabsb	%al, -6701356251382546434
1000030e5: fe ff                       	<unknown>
1000030e7: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
1000030ed: fe ff                       	<unknown>
1000030ef: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
1000030f5: fe ff                       	<unknown>
1000030f7: ff 9c fb ff ff a2 fe        	lcalll	*-22872065(%rbx,%rdi,8)
1000030fe: ff ff                       	<unknown>
100003100: a2 fe ff ff a2 fe ff ff a2  	movabsb	%al, -6701356251382546434
100003109: fe ff                       	<unknown>
10000310b: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003111: fe ff                       	<unknown>
100003113: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003119: fe ff                       	<unknown>
10000311b: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003121: fe ff                       	<unknown>
100003123: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003129: fe ff                       	<unknown>
10000312b: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003131: fe ff                       	<unknown>
100003133: ff a2 fe ff ff 35           	jmpq	*905969662(%rdx)
100003139: fd                          	std
10000313a: ff ff                       	<unknown>
10000313c: 0f 1f 40 00                 	nopl	(%rax)

0000000100003140 __Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj:
100003140: 55                          	pushq	%rbp
100003141: 48 89 e5                    	movq	%rsp, %rbp
100003144: 41 57                       	pushq	%r15
100003146: 41 56                       	pushq	%r14
100003148: 41 55                       	pushq	%r13
10000314a: 41 54                       	pushq	%r12
10000314c: 53                          	pushq	%rbx
10000314d: 48 89 75 a0                 	movq	%rsi, -96(%rbp)
100003151: 45 85 c9                    	testl	%r9d, %r9d
100003154: 0f 84 80 01 00 00           	je	384 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x19a>
10000315a: 45 89 cf                    	movl	%r9d, %r15d
10000315d: 49 89 d4                    	movq	%rdx, %r12
100003160: 44 8b 75 20                 	movl	32(%rbp), %r14d
100003164: 8b 75 18                    	movl	24(%rbp), %esi
100003167: 8b 5d 10                    	movl	16(%rbp), %ebx
10000316a: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
10000316e: 44 89 f0                    	movl	%r14d, %eax
100003171: d1 e8                       	shrl	%eax
100003173: 29 c3                       	subl	%eax, %ebx
100003175: 89 5d cc                    	movl	%ebx, -52(%rbp)
100003178: 89 f7                       	movl	%esi, %edi
10000317a: 29 c7                       	subl	%eax, %edi
10000317c: 44 89 c8                    	movl	%r9d, %eax
10000317f: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100003183: 44 89 f0                    	movl	%r14d, %eax
100003186: 0f af c6                    	imull	%esi, %eax
100003189: c1 e0 03                    	shll	$3, %eax
10000318c: 89 45 bc                    	movl	%eax, -68(%rbp)
10000318f: 42 8d 34 f5 00 00 00 00     	leal	(,%r14,8), %esi
100003197: 31 c0                       	xorl	%eax, %eax
100003199: 41 bd 7f 00 00 00           	movl	$127, %r13d
10000319f: 89 7d c8                    	movl	%edi, -56(%rbp)
1000031a2: 44 89 4d b8                 	movl	%r9d, -72(%rbp)
1000031a6: 4c 8b 5d a0                 	movq	-96(%rbp), %r11
1000031aa: 44 8b 7d b8                 	movl	-72(%rbp), %r15d
1000031ae: eb 11                       	jmp	17 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x81>
1000031b0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000031b4: 48 ff c0                    	incq	%rax
1000031b7: 48 3b 45 a8                 	cmpq	-88(%rbp), %rax
1000031bb: 0f 84 19 01 00 00           	je	281 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x19a>
1000031c1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000031c5: 83 7d cc 00                 	cmpl	$0, -52(%rbp)
1000031c9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x70>
1000031cb: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000031cf: 44 8d 14 c5 00 00 00 00     	leal	(,%rax,8), %r10d
1000031d7: c7 45 d0 00 00 00 00        	movl	$0, -48(%rbp)
1000031de: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
1000031e5: 85 ff                       	testl	%edi, %edi
1000031e7: 75 25                       	jne	37 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0xce>
1000031e9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000031f0: 8b 7d d4                    	movl	-44(%rbp), %edi
1000031f3: 44 01 f7                    	addl	%r14d, %edi
1000031f6: 8b 45 d0                    	movl	-48(%rbp), %eax
1000031f9: 03 45 bc                    	addl	-68(%rbp), %eax
1000031fc: 89 45 d0                    	movl	%eax, -48(%rbp)
1000031ff: 89 7d d4                    	movl	%edi, -44(%rbp)
100003202: 3b 7d cc                    	cmpl	-52(%rbp), %edi
100003205: 8b 7d c8                    	movl	-56(%rbp), %edi
100003208: 73 a6                       	jae	-90 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x70>
10000320a: 85 ff                       	testl	%edi, %edi
10000320c: 74 e2                       	je	-30 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0xb0>
10000320e: 8b 45 d4                    	movl	-44(%rbp), %eax
100003211: 31 d2                       	xorl	%edx, %edx
100003213: 41 f7 f6                    	divl	%r14d
100003216: 89 c3                       	movl	%eax, %ebx
100003218: 8b 45 18                    	movl	24(%rbp), %eax
10000321b: 31 d2                       	xorl	%edx, %edx
10000321d: 41 f7 f6                    	divl	%r14d
100003220: 0f af c3                    	imull	%ebx, %eax
100003223: 89 45 b4                    	movl	%eax, -76(%rbp)
100003226: 31 db                       	xorl	%ebx, %ebx
100003228: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
10000322c: 0f 1f 40 00                 	nopl	(%rax)
100003230: 44 89 c8                    	movl	%r9d, %eax
100003233: c4 a2 7d 21 04 11           	vpmovsxbd	(%rcx,%r10), %ymm0
100003239: c4 c2 7d 21 0c 03           	vpmovsxbd	(%r11,%rax), %ymm1
10000323f: c4 e2 75 40 c0              	vpmulld	%ymm0, %ymm1, %ymm0
100003244: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000324a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000324e: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100003253: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003257: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000325c: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003260: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100003264: 98                          	cwtl
100003265: 43 0f be 14 14              	movsbl	(%r12,%r10), %edx
10000326a: 01 c2                       	addl	%eax, %edx
10000326c: 41 0f af d0                 	imull	%r8d, %edx
100003270: 4c 89 e7                    	movq	%r12, %rdi
100003273: 45 89 c4                    	movl	%r8d, %r12d
100003276: 41 89 d0                    	movl	%edx, %r8d
100003279: 41 c1 f8 1f                 	sarl	$31, %r8d
10000327d: 41 c1 e8 12                 	shrl	$18, %r8d
100003281: 41 01 d0                    	addl	%edx, %r8d
100003284: 41 c1 f8 0e                 	sarl	$14, %r8d
100003288: 41 81 f8 80 00 00 00        	cmpl	$128, %r8d
10000328f: 45 0f 4d c5                 	cmovgel	%r13d, %r8d
100003293: 89 d8                       	movl	%ebx, %eax
100003295: 31 d2                       	xorl	%edx, %edx
100003297: 41 f7 f6                    	divl	%r14d
10000329a: 03 45 b4                    	addl	-76(%rbp), %eax
10000329d: 41 0f af c7                 	imull	%r15d, %eax
1000032a1: 03 45 c0                    	addl	-64(%rbp), %eax
1000032a4: 41 83 f8 81                 	cmpl	$-127, %r8d
1000032a8: ba 81 00 00 00              	movl	$129, %edx
1000032ad: 44 0f 4e c2                 	cmovlel	%edx, %r8d
1000032b1: 4c 8b 6d 98                 	movq	-104(%rbp), %r13
1000032b5: 45 88 44 05 00              	movb	%r8b, (%r13,%rax)
1000032ba: 41 bd 7f 00 00 00           	movl	$127, %r13d
1000032c0: 45 89 e0                    	movl	%r12d, %r8d
1000032c3: 49 89 fc                    	movq	%rdi, %r12
1000032c6: 44 01 f3                    	addl	%r14d, %ebx
1000032c9: 41 01 f1                    	addl	%esi, %r9d
1000032cc: 3b 5d c8                    	cmpl	-56(%rbp), %ebx
1000032cf: 0f 82 5b ff ff ff           	jb	-165 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0xf0>
1000032d5: e9 16 ff ff ff              	jmp	-234 <__Z13Conv2d_kernelILj1ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0xb0>
1000032da: 5b                          	popq	%rbx
1000032db: 41 5c                       	popq	%r12
1000032dd: 41 5d                       	popq	%r13
1000032df: 41 5e                       	popq	%r14
1000032e1: 41 5f                       	popq	%r15
1000032e3: 5d                          	popq	%rbp
1000032e4: c5 f8 77                    	vzeroupper
1000032e7: c3                          	retq
1000032e8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

00000001000032f0 __Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj:
1000032f0: 55                          	pushq	%rbp
1000032f1: 48 89 e5                    	movq	%rsp, %rbp
1000032f4: 41 57                       	pushq	%r15
1000032f6: 41 56                       	pushq	%r14
1000032f8: 41 55                       	pushq	%r13
1000032fa: 41 54                       	pushq	%r12
1000032fc: 53                          	pushq	%rbx
1000032fd: 45 85 c9                    	testl	%r9d, %r9d
100003300: 0f 84 16 02 00 00           	je	534 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0x22c>
100003306: 49 89 d4                    	movq	%rdx, %r12
100003309: 8b 55 20                    	movl	32(%rbp), %edx
10000330c: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003310: 8b 5d 10                    	movl	16(%rbp), %ebx
100003313: 89 d0                       	movl	%edx, %eax
100003315: d1 e8                       	shrl	%eax
100003317: 29 c3                       	subl	%eax, %ebx
100003319: 83 c3 fe                    	addl	$-2, %ebx
10000331c: 89 5d d0                    	movl	%ebx, -48(%rbp)
10000331f: 45 89 da                    	movl	%r11d, %r10d
100003322: 41 29 c2                    	subl	%eax, %r10d
100003325: 41 83 c2 fe                 	addl	$-2, %r10d
100003329: 44 89 c8                    	movl	%r9d, %eax
10000332c: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100003330: 43 8d 04 1b                 	leal	(%r11,%r11), %eax
100003334: 89 45 c4                    	movl	%eax, -60(%rbp)
100003337: 89 d0                       	movl	%edx, %eax
100003339: 41 0f af c3                 	imull	%r11d, %eax
10000333d: 89 45 c0                    	movl	%eax, -64(%rbp)
100003340: 31 c0                       	xorl	%eax, %eax
100003342: 44 89 55 bc                 	movl	%r10d, -68(%rbp)
100003346: eb 19                       	jmp	25 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0x71>
100003348: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100003350: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003354: 48 ff c0                    	incq	%rax
100003357: 48 3b 45 a0                 	cmpq	-96(%rbp), %rax
10000335b: 0f 84 bb 01 00 00           	je	443 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0x22c>
100003361: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003365: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003369: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0x60>
10000336b: 48 8b 45 c8                 	movq	-56(%rbp), %rax
10000336f: 44 8d 34 c0                 	leal	(%rax,%rax,8), %r14d
100003373: 45 31 db                    	xorl	%r11d, %r11d
100003376: 8b 45 18                    	movl	24(%rbp), %eax
100003379: 89 c3                       	movl	%eax, %ebx
10000337b: 8b 45 c4                    	movl	-60(%rbp), %eax
10000337e: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003385: eb 2f                       	jmp	47 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0xc6>
100003387: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100003390: 8b 55 d4                    	movl	-44(%rbp), %edx
100003393: 8b 45 20                    	movl	32(%rbp), %eax
100003396: 01 c2                       	addl	%eax, %edx
100003398: 8b 45 c0                    	movl	-64(%rbp), %eax
10000339b: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
10000339f: 41 01 c7                    	addl	%eax, %r15d
1000033a2: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
1000033a6: 01 c3                       	addl	%eax, %ebx
1000033a8: 41 01 c3                    	addl	%eax, %r11d
1000033ab: 89 55 d4                    	movl	%edx, -44(%rbp)
1000033ae: 3b 55 d0                    	cmpl	-48(%rbp), %edx
1000033b1: 4c 89 f8                    	movq	%r15, %rax
1000033b4: 73 9a                       	jae	-102 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0x60>
1000033b6: 48 89 45 b0                 	movq	%rax, -80(%rbp)
1000033ba: 48 89 5d a8                 	movq	%rbx, -88(%rbp)
1000033be: 45 85 d2                    	testl	%r10d, %r10d
1000033c1: 74 cd                       	je	-51 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0xa0>
1000033c3: 8b 45 d4                    	movl	-44(%rbp), %eax
1000033c6: 31 d2                       	xorl	%edx, %edx
1000033c8: 8b 5d 20                    	movl	32(%rbp), %ebx
1000033cb: 41 89 df                    	movl	%ebx, %r15d
1000033ce: f7 f3                       	divl	%ebx
1000033d0: 89 c3                       	movl	%eax, %ebx
1000033d2: 8b 45 18                    	movl	24(%rbp), %eax
1000033d5: 31 d2                       	xorl	%edx, %edx
1000033d7: 41 f7 f7                    	divl	%r15d
1000033da: ff c3                       	incl	%ebx
1000033dc: 0f af c3                    	imull	%ebx, %eax
1000033df: 48 89 45 98                 	movq	%rax, -104(%rbp)
1000033e3: 45 31 ed                    	xorl	%r13d, %r13d
1000033e6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000033f0: 43 8d 04 2b                 	leal	(%r11,%r13), %eax
1000033f4: 42 0f be 14 31              	movsbl	(%rcx,%r14), %edx
1000033f9: 4c 89 e3                    	movq	%r12, %rbx
1000033fc: 44 0f be 24 06              	movsbl	(%rsi,%rax), %r12d
100003401: 44 0f af e2                 	imull	%edx, %r12d
100003405: 42 0f be 54 31 01           	movsbl	1(%rcx,%r14), %edx
10000340b: 49 89 ff                    	movq	%rdi, %r15
10000340e: 0f be 7c 06 01              	movsbl	1(%rsi,%rax), %edi
100003413: 0f af fa                    	imull	%edx, %edi
100003416: 44 01 e7                    	addl	%r12d, %edi
100003419: 42 0f be 54 31 02           	movsbl	2(%rcx,%r14), %edx
10000341f: 0f be 44 06 02              	movsbl	2(%rsi,%rax), %eax
100003424: 0f af c2                    	imull	%edx, %eax
100003427: 01 f8                       	addl	%edi, %eax
100003429: 44 0f bf e0                 	movswl	%ax, %r12d
10000342d: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100003431: 42 8d 14 28                 	leal	(%rax,%r13), %edx
100003435: 42 0f be 7c 31 03           	movsbl	3(%rcx,%r14), %edi
10000343b: 0f be 04 16                 	movsbl	(%rsi,%rdx), %eax
10000343f: 0f af c7                    	imull	%edi, %eax
100003442: 42 0f be 7c 31 04           	movsbl	4(%rcx,%r14), %edi
100003448: 4d 89 da                    	movq	%r11, %r10
10000344b: 44 0f be 5c 16 01           	movsbl	1(%rsi,%rdx), %r11d
100003451: 44 0f af df                 	imull	%edi, %r11d
100003455: 41 01 c3                    	addl	%eax, %r11d
100003458: 42 0f be 44 31 05           	movsbl	5(%rcx,%r14), %eax
10000345e: 0f be 54 16 02              	movsbl	2(%rsi,%rdx), %edx
100003463: 0f af d0                    	imull	%eax, %edx
100003466: 44 01 da                    	addl	%r11d, %edx
100003469: 0f bf c2                    	movswl	%dx, %eax
10000346c: 44 01 e0                    	addl	%r12d, %eax
10000346f: 49 89 dc                    	movq	%rbx, %r12
100003472: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
100003476: 44 01 ea                    	addl	%r13d, %edx
100003479: 46 0f be 5c 31 06           	movsbl	6(%rcx,%r14), %r11d
10000347f: 0f be 3c 16                 	movsbl	(%rsi,%rdx), %edi
100003483: 41 0f af fb                 	imull	%r11d, %edi
100003487: 46 0f be 5c 31 07           	movsbl	7(%rcx,%r14), %r11d
10000348d: 0f be 5c 16 01              	movsbl	1(%rsi,%rdx), %ebx
100003492: 41 0f af db                 	imull	%r11d, %ebx
100003496: 41 bb 7f 00 00 00           	movl	$127, %r11d
10000349c: 01 fb                       	addl	%edi, %ebx
10000349e: 42 0f be 7c 31 08           	movsbl	8(%rcx,%r14), %edi
1000034a4: 0f be 54 16 02              	movsbl	2(%rsi,%rdx), %edx
1000034a9: 0f af d7                    	imull	%edi, %edx
1000034ac: 01 da                       	addl	%ebx, %edx
1000034ae: 0f bf d2                    	movswl	%dx, %edx
1000034b1: 01 c2                       	addl	%eax, %edx
1000034b3: 43 0f be 04 34              	movsbl	(%r12,%r14), %eax
1000034b8: 01 d0                       	addl	%edx, %eax
1000034ba: 41 0f af c0                 	imull	%r8d, %eax
1000034be: 89 c7                       	movl	%eax, %edi
1000034c0: c1 ff 1f                    	sarl	$31, %edi
1000034c3: c1 ef 12                    	shrl	$18, %edi
1000034c6: 01 c7                       	addl	%eax, %edi
1000034c8: c1 ff 0e                    	sarl	$14, %edi
1000034cb: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000034d1: 41 0f 4d fb                 	cmovgel	%r11d, %edi
1000034d5: 4d 89 d3                    	movq	%r10, %r11
1000034d8: 41 ba 81 00 00 00           	movl	$129, %r10d
1000034de: 44 89 e8                    	movl	%r13d, %eax
1000034e1: 31 d2                       	xorl	%edx, %edx
1000034e3: 8b 5d 20                    	movl	32(%rbp), %ebx
1000034e6: f7 f3                       	divl	%ebx
1000034e8: 48 8b 55 98                 	movq	-104(%rbp), %rdx
1000034ec: 8d 04 10                    	leal	(%rax,%rdx), %eax
1000034ef: 83 c0 01                    	addl	$1, %eax
1000034f2: 41 0f af c1                 	imull	%r9d, %eax
1000034f6: 03 45 c8                    	addl	-56(%rbp), %eax
1000034f9: 83 ff 81                    	cmpl	$-127, %edi
1000034fc: 41 0f 4e fa                 	cmovlel	%r10d, %edi
100003500: 41 88 3c 07                 	movb	%dil, (%r15,%rax)
100003504: 4c 89 ff                    	movq	%r15, %rdi
100003507: 44 8b 55 bc                 	movl	-68(%rbp), %r10d
10000350b: 41 01 dd                    	addl	%ebx, %r13d
10000350e: 45 39 d5                    	cmpl	%r10d, %r13d
100003511: 0f 82 d9 fe ff ff           	jb	-295 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003517: e9 74 fe ff ff              	jmp	-396 <__Z13Conv2d_kernelILj3ELj1EaiEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000351c: 5b                          	popq	%rbx
10000351d: 41 5c                       	popq	%r12
10000351f: 41 5d                       	popq	%r13
100003521: 41 5e                       	popq	%r14
100003523: 41 5f                       	popq	%r15
100003525: 5d                          	popq	%rbp
100003526: c3                          	retq
100003527: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100003530 __Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj:
100003530: 55                          	pushq	%rbp
100003531: 48 89 e5                    	movq	%rsp, %rbp
100003534: 41 57                       	pushq	%r15
100003536: 41 56                       	pushq	%r14
100003538: 41 55                       	pushq	%r13
10000353a: 41 54                       	pushq	%r12
10000353c: 53                          	pushq	%rbx
10000353d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003544: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003548: 45 85 c9                    	testl	%r9d, %r9d
10000354b: 0f 84 09 02 00 00           	je	521 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0x22a>
100003551: 49 89 d2                    	movq	%rdx, %r10
100003554: 49 89 f7                    	movq	%rsi, %r15
100003557: 8b 5d 20                    	movl	32(%rbp), %ebx
10000355a: 8b 45 18                    	movl	24(%rbp), %eax
10000355d: 8b 55 10                    	movl	16(%rbp), %edx
100003560: 89 d9                       	movl	%ebx, %ecx
100003562: d1 e9                       	shrl	%ecx
100003564: 29 ca                       	subl	%ecx, %edx
100003566: 83 c2 fe                    	addl	$-2, %edx
100003569: 89 55 d0                    	movl	%edx, -48(%rbp)
10000356c: 89 c2                       	movl	%eax, %edx
10000356e: 29 ca                       	subl	%ecx, %edx
100003570: 83 c2 fe                    	addl	$-2, %edx
100003573: 44 89 c9                    	movl	%r9d, %ecx
100003576: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
10000357a: 8d 0c c5 00 00 00 00        	leal	(,%rax,8), %ecx
100003581: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003585: 89 d9                       	movl	%ebx, %ecx
100003587: 0f af c8                    	imull	%eax, %ecx
10000358a: c1 e1 02                    	shll	$2, %ecx
10000358d: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003590: 44 8d 1c 9d 00 00 00 00     	leal	(,%rbx,4), %r11d
100003598: 44 8d 24 85 00 00 00 00     	leal	(,%rax,4), %r12d
1000035a0: 31 c0                       	xorl	%eax, %eax
1000035a2: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
1000035a6: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
1000035aa: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
1000035b1: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
1000035b5: 89 55 b4                    	movl	%edx, -76(%rbp)
1000035b8: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
1000035bc: 4c 89 65 90                 	movq	%r12, -112(%rbp)
1000035c0: eb 1f                       	jmp	31 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0xb1>
1000035c2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000035cc: 0f 1f 40 00                 	nopl	(%rax)
1000035d0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000035d4: 48 ff c0                    	incq	%rax
1000035d7: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
1000035db: 0f 84 79 01 00 00           	je	377 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0x22a>
1000035e1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000035e5: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
1000035e9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0xa0>
1000035eb: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000035ef: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
1000035f6: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
1000035f9: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
1000035fd: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003601: 49 8d 44 0e 0c              	leaq	12(%r14,%rcx), %rax
100003606: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000360d: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003614: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003618: 48 83 c0 18                 	addq	$24, %rax
10000361c: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003623: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000362a: 31 c0                       	xorl	%eax, %eax
10000362c: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003633: eb 24                       	jmp	36 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0x129>
100003635: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000363f: 90                          	nop
100003640: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003643: 01 d9                       	addl	%ebx, %ecx
100003645: 8b 45 d4                    	movl	-44(%rbp), %eax
100003648: 03 45 bc                    	addl	-68(%rbp), %eax
10000364b: 89 45 d4                    	movl	%eax, -44(%rbp)
10000364e: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003651: 89 c8                       	movl	%ecx, %eax
100003653: 0f 83 77 ff ff ff           	jae	-137 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003659: 89 45 cc                    	movl	%eax, -52(%rbp)
10000365c: 85 d2                       	testl	%edx, %edx
10000365e: 74 e0                       	je	-32 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003660: 45 31 f6                    	xorl	%r14d, %r14d
100003663: 8b 45 d4                    	movl	-44(%rbp), %eax
100003666: 41 89 c5                    	movl	%eax, %r13d
100003669: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100003670: 44 89 ef                    	movl	%r13d, %edi
100003673: 4c 01 ff                    	addq	%r15, %rdi
100003676: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
10000367d: e8 be 0a 00 00              	callq	2750 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
100003682: 0f bf d8                    	movswl	%ax, %ebx
100003685: 43 8d 3c 2c                 	leal	(%r12,%r13), %edi
100003689: 4c 01 ff                    	addq	%r15, %rdi
10000368c: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003693: e8 a8 0a 00 00              	callq	2728 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
100003698: 44 0f bf e0                 	movswl	%ax, %r12d
10000369c: 41 01 dc                    	addl	%ebx, %r12d
10000369f: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000036a3: 42 8d 3c 28                 	leal	(%rax,%r13), %edi
1000036a7: 4c 01 ff                    	addq	%r15, %rdi
1000036aa: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000036b1: e8 8a 0a 00 00              	callq	2698 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000036b6: 44 8b 5d 18                 	movl	24(%rbp), %r11d
1000036ba: 8b 5d 20                    	movl	32(%rbp), %ebx
1000036bd: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
1000036c4: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
1000036c8: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
1000036cc: 98                          	cwtl
1000036cd: 44 01 e0                    	addl	%r12d, %eax
1000036d0: 4c 8b 65 90                 	movq	-112(%rbp), %r12
1000036d4: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
1000036db: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
1000036e0: 01 c1                       	addl	%eax, %ecx
1000036e2: 41 0f af c8                 	imull	%r8d, %ecx
1000036e6: 89 cf                       	movl	%ecx, %edi
1000036e8: c1 ff 1f                    	sarl	$31, %edi
1000036eb: c1 ef 12                    	shrl	$18, %edi
1000036ee: 01 cf                       	addl	%ecx, %edi
1000036f0: c1 ff 0e                    	sarl	$14, %edi
1000036f3: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000036f9: b8 7f 00 00 00              	movl	$127, %eax
1000036fe: 0f 4d f8                    	cmovgel	%eax, %edi
100003701: 44 89 f0                    	movl	%r14d, %eax
100003704: 31 d2                       	xorl	%edx, %edx
100003706: f7 f3                       	divl	%ebx
100003708: 89 c1                       	movl	%eax, %ecx
10000370a: 8b 45 cc                    	movl	-52(%rbp), %eax
10000370d: 31 d2                       	xorl	%edx, %edx
10000370f: f7 f3                       	divl	%ebx
100003711: 89 c6                       	movl	%eax, %esi
100003713: 44 89 d8                    	movl	%r11d, %eax
100003716: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
10000371a: 31 d2                       	xorl	%edx, %edx
10000371c: f7 f3                       	divl	%ebx
10000371e: 8b 55 b4                    	movl	-76(%rbp), %edx
100003721: ff c6                       	incl	%esi
100003723: 0f af c6                    	imull	%esi, %eax
100003726: be 81 00 00 00              	movl	$129, %esi
10000372b: 8d 04 01                    	leal	(%rcx,%rax), %eax
10000372e: 83 c0 01                    	addl	$1, %eax
100003731: 41 0f af c1                 	imull	%r9d, %eax
100003735: 03 45 c0                    	addl	-64(%rbp), %eax
100003738: 83 ff 81                    	cmpl	$-127, %edi
10000373b: 0f 4e fe                    	cmovlel	%esi, %edi
10000373e: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
100003742: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100003746: 41 01 de                    	addl	%ebx, %r14d
100003749: 45 01 dd                    	addl	%r11d, %r13d
10000374c: 41 39 d6                    	cmpl	%edx, %r14d
10000374f: 0f 82 1b ff ff ff           	jb	-229 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0x140>
100003755: e9 e6 fe ff ff              	jmp	-282 <__Z13Conv2d_kernelILj3ELj4EaiEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000375a: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003761: 5b                          	popq	%rbx
100003762: 41 5c                       	popq	%r12
100003764: 41 5d                       	popq	%r13
100003766: 41 5e                       	popq	%r14
100003768: 41 5f                       	popq	%r15
10000376a: 5d                          	popq	%rbp
10000376b: c3                          	retq
10000376c: 0f 1f 40 00                 	nopl	(%rax)

0000000100003770 __Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj:
100003770: 55                          	pushq	%rbp
100003771: 48 89 e5                    	movq	%rsp, %rbp
100003774: 41 57                       	pushq	%r15
100003776: 41 56                       	pushq	%r14
100003778: 41 55                       	pushq	%r13
10000377a: 41 54                       	pushq	%r12
10000377c: 53                          	pushq	%rbx
10000377d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003784: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003788: 45 85 c9                    	testl	%r9d, %r9d
10000378b: 0f 84 f9 01 00 00           	je	505 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
100003791: 49 89 d2                    	movq	%rdx, %r10
100003794: 49 89 f7                    	movq	%rsi, %r15
100003797: 8b 5d 20                    	movl	32(%rbp), %ebx
10000379a: 8b 45 18                    	movl	24(%rbp), %eax
10000379d: 8b 55 10                    	movl	16(%rbp), %edx
1000037a0: 89 d9                       	movl	%ebx, %ecx
1000037a2: d1 e9                       	shrl	%ecx
1000037a4: 29 ca                       	subl	%ecx, %edx
1000037a6: 83 c2 fe                    	addl	$-2, %edx
1000037a9: 89 55 d0                    	movl	%edx, -48(%rbp)
1000037ac: 89 c2                       	movl	%eax, %edx
1000037ae: 29 ca                       	subl	%ecx, %edx
1000037b0: 83 c2 fe                    	addl	$-2, %edx
1000037b3: 44 89 c9                    	movl	%r9d, %ecx
1000037b6: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000037ba: 89 c1                       	movl	%eax, %ecx
1000037bc: c1 e1 04                    	shll	$4, %ecx
1000037bf: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000037c3: 89 d9                       	movl	%ebx, %ecx
1000037c5: 0f af c8                    	imull	%eax, %ecx
1000037c8: c1 e1 03                    	shll	$3, %ecx
1000037cb: 89 4d bc                    	movl	%ecx, -68(%rbp)
1000037ce: 44 8d 1c dd 00 00 00 00     	leal	(,%rbx,8), %r11d
1000037d6: 44 8d 24 c5 00 00 00 00     	leal	(,%rax,8), %r12d
1000037de: 31 c0                       	xorl	%eax, %eax
1000037e0: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
1000037e4: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
1000037e8: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
1000037ef: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
1000037f3: 89 55 b4                    	movl	%edx, -76(%rbp)
1000037f6: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
1000037fa: 4c 89 65 90                 	movq	%r12, -112(%rbp)
1000037fe: eb 11                       	jmp	17 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0xa1>
100003800: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003804: 48 ff c0                    	incq	%rax
100003807: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
10000380b: 0f 84 79 01 00 00           	je	377 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
100003811: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003815: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003819: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
10000381b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000381f: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003826: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003829: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
10000382d: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003831: 49 8d 44 0e 18              	leaq	24(%r14,%rcx), %rax
100003836: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000383d: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003844: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003848: 48 83 c0 30                 	addq	$48, %rax
10000384c: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003853: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000385a: 31 c0                       	xorl	%eax, %eax
10000385c: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003863: eb 24                       	jmp	36 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x119>
100003865: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000386f: 90                          	nop
100003870: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003873: 01 d9                       	addl	%ebx, %ecx
100003875: 8b 45 d4                    	movl	-44(%rbp), %eax
100003878: 03 45 bc                    	addl	-68(%rbp), %eax
10000387b: 89 45 d4                    	movl	%eax, -44(%rbp)
10000387e: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003881: 89 c8                       	movl	%ecx, %eax
100003883: 0f 83 77 ff ff ff           	jae	-137 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
100003889: 89 45 cc                    	movl	%eax, -52(%rbp)
10000388c: 85 d2                       	testl	%edx, %edx
10000388e: 74 e0                       	je	-32 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003890: 45 31 f6                    	xorl	%r14d, %r14d
100003893: 8b 45 d4                    	movl	-44(%rbp), %eax
100003896: 41 89 c5                    	movl	%eax, %r13d
100003899: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000038a0: 44 89 ef                    	movl	%r13d, %edi
1000038a3: 4c 01 ff                    	addq	%r15, %rdi
1000038a6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
1000038ad: e8 fe 08 00 00              	callq	2302 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
1000038b2: 0f bf d8                    	movswl	%ax, %ebx
1000038b5: 43 8d 3c 2c                 	leal	(%r12,%r13), %edi
1000038b9: 4c 01 ff                    	addq	%r15, %rdi
1000038bc: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
1000038c3: e8 e8 08 00 00              	callq	2280 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
1000038c8: 44 0f bf e0                 	movswl	%ax, %r12d
1000038cc: 41 01 dc                    	addl	%ebx, %r12d
1000038cf: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000038d3: 42 8d 3c 28                 	leal	(%rax,%r13), %edi
1000038d7: 4c 01 ff                    	addq	%r15, %rdi
1000038da: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000038e1: e8 ca 08 00 00              	callq	2250 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
1000038e6: 44 8b 5d 18                 	movl	24(%rbp), %r11d
1000038ea: 8b 5d 20                    	movl	32(%rbp), %ebx
1000038ed: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
1000038f4: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
1000038f8: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
1000038fc: 98                          	cwtl
1000038fd: 44 01 e0                    	addl	%r12d, %eax
100003900: 4c 8b 65 90                 	movq	-112(%rbp), %r12
100003904: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000390b: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003910: 01 c1                       	addl	%eax, %ecx
100003912: 41 0f af c8                 	imull	%r8d, %ecx
100003916: 89 cf                       	movl	%ecx, %edi
100003918: c1 ff 1f                    	sarl	$31, %edi
10000391b: c1 ef 12                    	shrl	$18, %edi
10000391e: 01 cf                       	addl	%ecx, %edi
100003920: c1 ff 0e                    	sarl	$14, %edi
100003923: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003929: b8 7f 00 00 00              	movl	$127, %eax
10000392e: 0f 4d f8                    	cmovgel	%eax, %edi
100003931: 44 89 f0                    	movl	%r14d, %eax
100003934: 31 d2                       	xorl	%edx, %edx
100003936: f7 f3                       	divl	%ebx
100003938: 89 c1                       	movl	%eax, %ecx
10000393a: 8b 45 cc                    	movl	-52(%rbp), %eax
10000393d: 31 d2                       	xorl	%edx, %edx
10000393f: f7 f3                       	divl	%ebx
100003941: 89 c6                       	movl	%eax, %esi
100003943: 44 89 d8                    	movl	%r11d, %eax
100003946: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
10000394a: 31 d2                       	xorl	%edx, %edx
10000394c: f7 f3                       	divl	%ebx
10000394e: 8b 55 b4                    	movl	-76(%rbp), %edx
100003951: ff c6                       	incl	%esi
100003953: 0f af c6                    	imull	%esi, %eax
100003956: be 81 00 00 00              	movl	$129, %esi
10000395b: 8d 04 01                    	leal	(%rcx,%rax), %eax
10000395e: 83 c0 01                    	addl	$1, %eax
100003961: 41 0f af c1                 	imull	%r9d, %eax
100003965: 03 45 c0                    	addl	-64(%rbp), %eax
100003968: 83 ff 81                    	cmpl	$-127, %edi
10000396b: 0f 4e fe                    	cmovlel	%esi, %edi
10000396e: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
100003972: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100003976: 41 01 de                    	addl	%ebx, %r14d
100003979: 45 01 dd                    	addl	%r11d, %r13d
10000397c: 41 39 d6                    	cmpl	%edx, %r14d
10000397f: 0f 82 1b ff ff ff           	jb	-229 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x130>
100003985: e9 e6 fe ff ff              	jmp	-282 <__Z13Conv2d_kernelILj3ELj8EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
10000398a: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003991: 5b                          	popq	%rbx
100003992: 41 5c                       	popq	%r12
100003994: 41 5d                       	popq	%r13
100003996: 41 5e                       	popq	%r14
100003998: 41 5f                       	popq	%r15
10000399a: 5d                          	popq	%rbp
10000399b: c3                          	retq
10000399c: 0f 1f 40 00                 	nopl	(%rax)

00000001000039a0 __Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj:
1000039a0: 55                          	pushq	%rbp
1000039a1: 48 89 e5                    	movq	%rsp, %rbp
1000039a4: 41 57                       	pushq	%r15
1000039a6: 41 56                       	pushq	%r14
1000039a8: 41 55                       	pushq	%r13
1000039aa: 41 54                       	pushq	%r12
1000039ac: 53                          	pushq	%rbx
1000039ad: 48 81 ec 88 00 00 00        	subq	$136, %rsp
1000039b4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
1000039b8: 45 85 c9                    	testl	%r9d, %r9d
1000039bb: 0f 84 f9 01 00 00           	je	505 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
1000039c1: 49 89 d2                    	movq	%rdx, %r10
1000039c4: 49 89 f7                    	movq	%rsi, %r15
1000039c7: 8b 5d 20                    	movl	32(%rbp), %ebx
1000039ca: 8b 45 18                    	movl	24(%rbp), %eax
1000039cd: 8b 55 10                    	movl	16(%rbp), %edx
1000039d0: 89 d9                       	movl	%ebx, %ecx
1000039d2: d1 e9                       	shrl	%ecx
1000039d4: 29 ca                       	subl	%ecx, %edx
1000039d6: 83 c2 fe                    	addl	$-2, %edx
1000039d9: 89 55 d0                    	movl	%edx, -48(%rbp)
1000039dc: 89 c2                       	movl	%eax, %edx
1000039de: 29 ca                       	subl	%ecx, %edx
1000039e0: 83 c2 fe                    	addl	$-2, %edx
1000039e3: 44 89 c9                    	movl	%r9d, %ecx
1000039e6: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000039ea: 89 c1                       	movl	%eax, %ecx
1000039ec: c1 e1 05                    	shll	$5, %ecx
1000039ef: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000039f3: 89 d9                       	movl	%ebx, %ecx
1000039f5: 0f af c8                    	imull	%eax, %ecx
1000039f8: c1 e1 04                    	shll	$4, %ecx
1000039fb: 89 4d bc                    	movl	%ecx, -68(%rbp)
1000039fe: 41 89 db                    	movl	%ebx, %r11d
100003a01: 41 c1 e3 04                 	shll	$4, %r11d
100003a05: 41 89 c4                    	movl	%eax, %r12d
100003a08: 41 c1 e4 04                 	shll	$4, %r12d
100003a0c: 31 c0                       	xorl	%eax, %eax
100003a0e: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003a12: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003a16: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003a1d: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003a21: 89 55 b4                    	movl	%edx, -76(%rbp)
100003a24: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003a28: 4c 89 65 90                 	movq	%r12, -112(%rbp)
100003a2c: eb 13                       	jmp	19 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0xa1>
100003a2e: 66 90                       	nop
100003a30: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003a34: 48 ff c0                    	incq	%rax
100003a37: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003a3b: 0f 84 79 01 00 00           	je	377 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
100003a41: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003a45: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003a49: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
100003a4b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003a4f: c1 e0 04                    	shll	$4, %eax
100003a52: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003a55: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003a59: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003a5d: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003a61: 48 83 c0 30                 	addq	$48, %rax
100003a65: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003a6c: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003a73: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003a77: 48 83 c0 60                 	addq	$96, %rax
100003a7b: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003a82: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003a89: 31 c0                       	xorl	%eax, %eax
100003a8b: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003a92: eb 25                       	jmp	37 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x119>
100003a94: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003a9e: 66 90                       	nop
100003aa0: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003aa3: 01 d9                       	addl	%ebx, %ecx
100003aa5: 8b 45 d4                    	movl	-44(%rbp), %eax
100003aa8: 03 45 bc                    	addl	-68(%rbp), %eax
100003aab: 89 45 d4                    	movl	%eax, -44(%rbp)
100003aae: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003ab1: 89 c8                       	movl	%ecx, %eax
100003ab3: 0f 83 77 ff ff ff           	jae	-137 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
100003ab9: 89 45 cc                    	movl	%eax, -52(%rbp)
100003abc: 85 d2                       	testl	%edx, %edx
100003abe: 74 e0                       	je	-32 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003ac0: 45 31 f6                    	xorl	%r14d, %r14d
100003ac3: 8b 45 d4                    	movl	-44(%rbp), %eax
100003ac6: 41 89 c5                    	movl	%eax, %r13d
100003ac9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100003ad0: 44 89 ef                    	movl	%r13d, %edi
100003ad3: 4c 01 ff                    	addq	%r15, %rdi
100003ad6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003add: e8 7e 07 00 00              	callq	1918 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003ae2: 0f bf d8                    	movswl	%ax, %ebx
100003ae5: 43 8d 3c 2c                 	leal	(%r12,%r13), %edi
100003ae9: 4c 01 ff                    	addq	%r15, %rdi
100003aec: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003af3: e8 68 07 00 00              	callq	1896 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003af8: 44 0f bf e0                 	movswl	%ax, %r12d
100003afc: 41 01 dc                    	addl	%ebx, %r12d
100003aff: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003b03: 42 8d 3c 28                 	leal	(%rax,%r13), %edi
100003b07: 4c 01 ff                    	addq	%r15, %rdi
100003b0a: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003b11: e8 4a 07 00 00              	callq	1866 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003b16: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003b1a: 8b 5d 20                    	movl	32(%rbp), %ebx
100003b1d: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003b24: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
100003b28: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003b2c: 98                          	cwtl
100003b2d: 44 01 e0                    	addl	%r12d, %eax
100003b30: 4c 8b 65 90                 	movq	-112(%rbp), %r12
100003b34: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003b3b: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003b40: 01 c1                       	addl	%eax, %ecx
100003b42: 41 0f af c8                 	imull	%r8d, %ecx
100003b46: 89 cf                       	movl	%ecx, %edi
100003b48: c1 ff 1f                    	sarl	$31, %edi
100003b4b: c1 ef 12                    	shrl	$18, %edi
100003b4e: 01 cf                       	addl	%ecx, %edi
100003b50: c1 ff 0e                    	sarl	$14, %edi
100003b53: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003b59: b8 7f 00 00 00              	movl	$127, %eax
100003b5e: 0f 4d f8                    	cmovgel	%eax, %edi
100003b61: 44 89 f0                    	movl	%r14d, %eax
100003b64: 31 d2                       	xorl	%edx, %edx
100003b66: f7 f3                       	divl	%ebx
100003b68: 89 c1                       	movl	%eax, %ecx
100003b6a: 8b 45 cc                    	movl	-52(%rbp), %eax
100003b6d: 31 d2                       	xorl	%edx, %edx
100003b6f: f7 f3                       	divl	%ebx
100003b71: 89 c6                       	movl	%eax, %esi
100003b73: 44 89 d8                    	movl	%r11d, %eax
100003b76: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
100003b7a: 31 d2                       	xorl	%edx, %edx
100003b7c: f7 f3                       	divl	%ebx
100003b7e: 8b 55 b4                    	movl	-76(%rbp), %edx
100003b81: ff c6                       	incl	%esi
100003b83: 0f af c6                    	imull	%esi, %eax
100003b86: be 81 00 00 00              	movl	$129, %esi
100003b8b: 8d 04 01                    	leal	(%rcx,%rax), %eax
100003b8e: 83 c0 01                    	addl	$1, %eax
100003b91: 41 0f af c1                 	imull	%r9d, %eax
100003b95: 03 45 c0                    	addl	-64(%rbp), %eax
100003b98: 83 ff 81                    	cmpl	$-127, %edi
100003b9b: 0f 4e fe                    	cmovlel	%esi, %edi
100003b9e: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
100003ba2: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100003ba6: 41 01 de                    	addl	%ebx, %r14d
100003ba9: 45 01 dd                    	addl	%r11d, %r13d
100003bac: 41 39 d6                    	cmpl	%edx, %r14d
100003baf: 0f 82 1b ff ff ff           	jb	-229 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x130>
100003bb5: e9 e6 fe ff ff              	jmp	-282 <__Z13Conv2d_kernelILj3ELj16EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003bba: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003bc1: 5b                          	popq	%rbx
100003bc2: 41 5c                       	popq	%r12
100003bc4: 41 5d                       	popq	%r13
100003bc6: 41 5e                       	popq	%r14
100003bc8: 41 5f                       	popq	%r15
100003bca: 5d                          	popq	%rbp
100003bcb: c3                          	retq
100003bcc: 0f 1f 40 00                 	nopl	(%rax)

0000000100003bd0 __Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj:
100003bd0: 55                          	pushq	%rbp
100003bd1: 48 89 e5                    	movq	%rsp, %rbp
100003bd4: 41 57                       	pushq	%r15
100003bd6: 41 56                       	pushq	%r14
100003bd8: 41 55                       	pushq	%r13
100003bda: 41 54                       	pushq	%r12
100003bdc: 53                          	pushq	%rbx
100003bdd: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003be4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003be8: 45 85 c9                    	testl	%r9d, %r9d
100003beb: 0f 84 f9 01 00 00           	je	505 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
100003bf1: 49 89 d2                    	movq	%rdx, %r10
100003bf4: 49 89 f7                    	movq	%rsi, %r15
100003bf7: 8b 5d 20                    	movl	32(%rbp), %ebx
100003bfa: 8b 45 18                    	movl	24(%rbp), %eax
100003bfd: 8b 55 10                    	movl	16(%rbp), %edx
100003c00: 89 d9                       	movl	%ebx, %ecx
100003c02: d1 e9                       	shrl	%ecx
100003c04: 29 ca                       	subl	%ecx, %edx
100003c06: 83 c2 fe                    	addl	$-2, %edx
100003c09: 89 55 d0                    	movl	%edx, -48(%rbp)
100003c0c: 89 c2                       	movl	%eax, %edx
100003c0e: 29 ca                       	subl	%ecx, %edx
100003c10: 83 c2 fe                    	addl	$-2, %edx
100003c13: 44 89 c9                    	movl	%r9d, %ecx
100003c16: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003c1a: 89 c1                       	movl	%eax, %ecx
100003c1c: c1 e1 06                    	shll	$6, %ecx
100003c1f: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003c23: 89 d9                       	movl	%ebx, %ecx
100003c25: 0f af c8                    	imull	%eax, %ecx
100003c28: c1 e1 05                    	shll	$5, %ecx
100003c2b: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003c2e: 41 89 db                    	movl	%ebx, %r11d
100003c31: 41 c1 e3 05                 	shll	$5, %r11d
100003c35: 41 89 c4                    	movl	%eax, %r12d
100003c38: 41 c1 e4 05                 	shll	$5, %r12d
100003c3c: 31 c0                       	xorl	%eax, %eax
100003c3e: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003c42: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003c46: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003c4d: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003c51: 89 55 b4                    	movl	%edx, -76(%rbp)
100003c54: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003c58: 4c 89 65 90                 	movq	%r12, -112(%rbp)
100003c5c: eb 13                       	jmp	19 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0xa1>
100003c5e: 66 90                       	nop
100003c60: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003c64: 48 ff c0                    	incq	%rax
100003c67: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003c6b: 0f 84 79 01 00 00           	je	377 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
100003c71: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003c75: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003c79: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
100003c7b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003c7f: c1 e0 05                    	shll	$5, %eax
100003c82: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003c85: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003c89: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003c8d: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003c91: 48 83 c0 60                 	addq	$96, %rax
100003c95: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003c9c: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003ca3: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003ca7: 48 05 c0 00 00 00           	addq	$192, %rax
100003cad: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003cb4: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003cbb: 31 c0                       	xorl	%eax, %eax
100003cbd: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003cc4: eb 23                       	jmp	35 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x119>
100003cc6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003cd0: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003cd3: 01 d9                       	addl	%ebx, %ecx
100003cd5: 8b 45 d4                    	movl	-44(%rbp), %eax
100003cd8: 03 45 bc                    	addl	-68(%rbp), %eax
100003cdb: 89 45 d4                    	movl	%eax, -44(%rbp)
100003cde: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003ce1: 89 c8                       	movl	%ecx, %eax
100003ce3: 0f 83 77 ff ff ff           	jae	-137 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
100003ce9: 89 45 cc                    	movl	%eax, -52(%rbp)
100003cec: 85 d2                       	testl	%edx, %edx
100003cee: 74 e0                       	je	-32 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003cf0: 45 31 f6                    	xorl	%r14d, %r14d
100003cf3: 8b 45 d4                    	movl	-44(%rbp), %eax
100003cf6: 41 89 c5                    	movl	%eax, %r13d
100003cf9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100003d00: 44 89 ef                    	movl	%r13d, %edi
100003d03: 4c 01 ff                    	addq	%r15, %rdi
100003d06: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003d0d: e8 ce 07 00 00              	callq	1998 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100003d12: 0f bf d8                    	movswl	%ax, %ebx
100003d15: 43 8d 3c 2c                 	leal	(%r12,%r13), %edi
100003d19: 4c 01 ff                    	addq	%r15, %rdi
100003d1c: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003d23: e8 b8 07 00 00              	callq	1976 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100003d28: 44 0f bf e0                 	movswl	%ax, %r12d
100003d2c: 41 01 dc                    	addl	%ebx, %r12d
100003d2f: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003d33: 42 8d 3c 28                 	leal	(%rax,%r13), %edi
100003d37: 4c 01 ff                    	addq	%r15, %rdi
100003d3a: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003d41: e8 9a 07 00 00              	callq	1946 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100003d46: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003d4a: 8b 5d 20                    	movl	32(%rbp), %ebx
100003d4d: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003d54: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
100003d58: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003d5c: 98                          	cwtl
100003d5d: 44 01 e0                    	addl	%r12d, %eax
100003d60: 4c 8b 65 90                 	movq	-112(%rbp), %r12
100003d64: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003d6b: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003d70: 01 c1                       	addl	%eax, %ecx
100003d72: 41 0f af c8                 	imull	%r8d, %ecx
100003d76: 89 cf                       	movl	%ecx, %edi
100003d78: c1 ff 1f                    	sarl	$31, %edi
100003d7b: c1 ef 12                    	shrl	$18, %edi
100003d7e: 01 cf                       	addl	%ecx, %edi
100003d80: c1 ff 0e                    	sarl	$14, %edi
100003d83: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003d89: b8 7f 00 00 00              	movl	$127, %eax
100003d8e: 0f 4d f8                    	cmovgel	%eax, %edi
100003d91: 44 89 f0                    	movl	%r14d, %eax
100003d94: 31 d2                       	xorl	%edx, %edx
100003d96: f7 f3                       	divl	%ebx
100003d98: 89 c1                       	movl	%eax, %ecx
100003d9a: 8b 45 cc                    	movl	-52(%rbp), %eax
100003d9d: 31 d2                       	xorl	%edx, %edx
100003d9f: f7 f3                       	divl	%ebx
100003da1: 89 c6                       	movl	%eax, %esi
100003da3: 44 89 d8                    	movl	%r11d, %eax
100003da6: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
100003daa: 31 d2                       	xorl	%edx, %edx
100003dac: f7 f3                       	divl	%ebx
100003dae: 8b 55 b4                    	movl	-76(%rbp), %edx
100003db1: ff c6                       	incl	%esi
100003db3: 0f af c6                    	imull	%esi, %eax
100003db6: be 81 00 00 00              	movl	$129, %esi
100003dbb: 8d 04 01                    	leal	(%rcx,%rax), %eax
100003dbe: 83 c0 01                    	addl	$1, %eax
100003dc1: 41 0f af c1                 	imull	%r9d, %eax
100003dc5: 03 45 c0                    	addl	-64(%rbp), %eax
100003dc8: 83 ff 81                    	cmpl	$-127, %edi
100003dcb: 0f 4e fe                    	cmovlel	%esi, %edi
100003dce: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
100003dd2: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100003dd6: 41 01 de                    	addl	%ebx, %r14d
100003dd9: 45 01 dd                    	addl	%r11d, %r13d
100003ddc: 41 39 d6                    	cmpl	%edx, %r14d
100003ddf: 0f 82 1b ff ff ff           	jb	-229 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x130>
100003de5: e9 e6 fe ff ff              	jmp	-282 <__Z13Conv2d_kernelILj3ELj32EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003dea: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003df1: 5b                          	popq	%rbx
100003df2: 41 5c                       	popq	%r12
100003df4: 41 5d                       	popq	%r13
100003df6: 41 5e                       	popq	%r14
100003df8: 41 5f                       	popq	%r15
100003dfa: 5d                          	popq	%rbp
100003dfb: c3                          	retq
100003dfc: 0f 1f 40 00                 	nopl	(%rax)

0000000100003e00 __Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj:
100003e00: 55                          	pushq	%rbp
100003e01: 48 89 e5                    	movq	%rsp, %rbp
100003e04: 41 57                       	pushq	%r15
100003e06: 41 56                       	pushq	%r14
100003e08: 41 55                       	pushq	%r13
100003e0a: 41 54                       	pushq	%r12
100003e0c: 53                          	pushq	%rbx
100003e0d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003e14: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003e18: 45 85 c9                    	testl	%r9d, %r9d
100003e1b: 0f 84 f9 01 00 00           	je	505 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
100003e21: 49 89 d2                    	movq	%rdx, %r10
100003e24: 49 89 f7                    	movq	%rsi, %r15
100003e27: 8b 5d 20                    	movl	32(%rbp), %ebx
100003e2a: 8b 45 18                    	movl	24(%rbp), %eax
100003e2d: 8b 55 10                    	movl	16(%rbp), %edx
100003e30: 89 d9                       	movl	%ebx, %ecx
100003e32: d1 e9                       	shrl	%ecx
100003e34: 29 ca                       	subl	%ecx, %edx
100003e36: 83 c2 fe                    	addl	$-2, %edx
100003e39: 89 55 d0                    	movl	%edx, -48(%rbp)
100003e3c: 89 c2                       	movl	%eax, %edx
100003e3e: 29 ca                       	subl	%ecx, %edx
100003e40: 83 c2 fe                    	addl	$-2, %edx
100003e43: 44 89 c9                    	movl	%r9d, %ecx
100003e46: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003e4a: 89 c1                       	movl	%eax, %ecx
100003e4c: c1 e1 07                    	shll	$7, %ecx
100003e4f: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003e53: 89 d9                       	movl	%ebx, %ecx
100003e55: 0f af c8                    	imull	%eax, %ecx
100003e58: c1 e1 06                    	shll	$6, %ecx
100003e5b: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003e5e: 41 89 db                    	movl	%ebx, %r11d
100003e61: 41 c1 e3 06                 	shll	$6, %r11d
100003e65: 41 89 c4                    	movl	%eax, %r12d
100003e68: 41 c1 e4 06                 	shll	$6, %r12d
100003e6c: 31 c0                       	xorl	%eax, %eax
100003e6e: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003e72: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003e76: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003e7d: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003e81: 89 55 b4                    	movl	%edx, -76(%rbp)
100003e84: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003e88: 4c 89 65 90                 	movq	%r12, -112(%rbp)
100003e8c: eb 13                       	jmp	19 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0xa1>
100003e8e: 66 90                       	nop
100003e90: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003e94: 48 ff c0                    	incq	%rax
100003e97: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003e9b: 0f 84 79 01 00 00           	je	377 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x21a>
100003ea1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003ea5: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003ea9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
100003eab: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003eaf: c1 e0 06                    	shll	$6, %eax
100003eb2: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003eb5: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003eb9: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003ebd: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003ec1: 48 05 c0 00 00 00           	addq	$192, %rax
100003ec7: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003ece: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003ed5: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003ed9: 48 05 80 01 00 00           	addq	$384, %rax
100003edf: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003ee6: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003eed: 31 c0                       	xorl	%eax, %eax
100003eef: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003ef6: eb 21                       	jmp	33 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x119>
100003ef8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100003f00: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003f03: 01 d9                       	addl	%ebx, %ecx
100003f05: 8b 45 d4                    	movl	-44(%rbp), %eax
100003f08: 03 45 bc                    	addl	-68(%rbp), %eax
100003f0b: 89 45 d4                    	movl	%eax, -44(%rbp)
100003f0e: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003f11: 89 c8                       	movl	%ecx, %eax
100003f13: 0f 83 77 ff ff ff           	jae	-137 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x90>
100003f19: 89 45 cc                    	movl	%eax, -52(%rbp)
100003f1c: 85 d2                       	testl	%edx, %edx
100003f1e: 74 e0                       	je	-32 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003f20: 45 31 f6                    	xorl	%r14d, %r14d
100003f23: 8b 45 d4                    	movl	-44(%rbp), %eax
100003f26: 41 89 c5                    	movl	%eax, %r13d
100003f29: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100003f30: 44 89 ef                    	movl	%r13d, %edi
100003f33: 4c 01 ff                    	addq	%r15, %rdi
100003f36: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003f3d: e8 9e 06 00 00              	callq	1694 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
100003f42: 0f bf d8                    	movswl	%ax, %ebx
100003f45: 43 8d 3c 2c                 	leal	(%r12,%r13), %edi
100003f49: 4c 01 ff                    	addq	%r15, %rdi
100003f4c: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003f53: e8 88 06 00 00              	callq	1672 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
100003f58: 44 0f bf e0                 	movswl	%ax, %r12d
100003f5c: 41 01 dc                    	addl	%ebx, %r12d
100003f5f: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003f63: 42 8d 3c 28                 	leal	(%rax,%r13), %edi
100003f67: 4c 01 ff                    	addq	%r15, %rdi
100003f6a: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003f71: e8 6a 06 00 00              	callq	1642 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
100003f76: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003f7a: 8b 5d 20                    	movl	32(%rbp), %ebx
100003f7d: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003f84: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
100003f88: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003f8c: 98                          	cwtl
100003f8d: 44 01 e0                    	addl	%r12d, %eax
100003f90: 4c 8b 65 90                 	movq	-112(%rbp), %r12
100003f94: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003f9b: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003fa0: 01 c1                       	addl	%eax, %ecx
100003fa2: 41 0f af c8                 	imull	%r8d, %ecx
100003fa6: 89 cf                       	movl	%ecx, %edi
100003fa8: c1 ff 1f                    	sarl	$31, %edi
100003fab: c1 ef 12                    	shrl	$18, %edi
100003fae: 01 cf                       	addl	%ecx, %edi
100003fb0: c1 ff 0e                    	sarl	$14, %edi
100003fb3: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003fb9: b8 7f 00 00 00              	movl	$127, %eax
100003fbe: 0f 4d f8                    	cmovgel	%eax, %edi
100003fc1: 44 89 f0                    	movl	%r14d, %eax
100003fc4: 31 d2                       	xorl	%edx, %edx
100003fc6: f7 f3                       	divl	%ebx
100003fc8: 89 c1                       	movl	%eax, %ecx
100003fca: 8b 45 cc                    	movl	-52(%rbp), %eax
100003fcd: 31 d2                       	xorl	%edx, %edx
100003fcf: f7 f3                       	divl	%ebx
100003fd1: 89 c6                       	movl	%eax, %esi
100003fd3: 44 89 d8                    	movl	%r11d, %eax
100003fd6: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
100003fda: 31 d2                       	xorl	%edx, %edx
100003fdc: f7 f3                       	divl	%ebx
100003fde: 8b 55 b4                    	movl	-76(%rbp), %edx
100003fe1: ff c6                       	incl	%esi
100003fe3: 0f af c6                    	imull	%esi, %eax
100003fe6: be 81 00 00 00              	movl	$129, %esi
100003feb: 8d 04 01                    	leal	(%rcx,%rax), %eax
100003fee: 83 c0 01                    	addl	$1, %eax
100003ff1: 41 0f af c1                 	imull	%r9d, %eax
100003ff5: 03 45 c0                    	addl	-64(%rbp), %eax
100003ff8: 83 ff 81                    	cmpl	$-127, %edi
100003ffb: 0f 4e fe                    	cmovlel	%esi, %edi
100003ffe: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
100004002: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100004006: 41 01 de                    	addl	%ebx, %r14d
100004009: 45 01 dd                    	addl	%r11d, %r13d
10000400c: 41 39 d6                    	cmpl	%edx, %r14d
10000400f: 0f 82 1b ff ff ff           	jb	-229 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x130>
100004015: e9 e6 fe ff ff              	jmp	-282 <__Z13Conv2d_kernelILj3ELj64EaiEvPT1_S1_PKS0_S3_ijjjj+0x100>
10000401a: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100004021: 5b                          	popq	%rbx
100004022: 41 5c                       	popq	%r12
100004024: 41 5d                       	popq	%r13
100004026: 41 5e                       	popq	%r14
100004028: 41 5f                       	popq	%r15
10000402a: 5d                          	popq	%rbp
10000402b: c3                          	retq
10000402c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004030 __Z11microkernelILj1ELj32EasET2_PKT1_S3_:
100004030: 55                          	pushq	%rbp
100004031: 48 89 e5                    	movq	%rsp, %rbp
100004034: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004039: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000403f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004044: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004048: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000404e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004052: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004056: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000405c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004060: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004065: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004069: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000406e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004072: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004077: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000407b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000407f: 98                          	cwtl
100004080: 5d                          	popq	%rbp
100004081: c5 f8 77                    	vzeroupper
100004084: c3                          	retq
100004085: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000408f: 90                          	nop

0000000100004090 __Z11microkernelILj1ELj64EasET2_PKT1_S3_:
100004090: 55                          	pushq	%rbp
100004091: 48 89 e5                    	movq	%rsp, %rbp
100004094: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004099: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000409f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
1000040a4: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000040a8: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
1000040ae: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000040b2: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000040b6: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000040bc: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000040c0: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000040c5: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000040c9: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000040ce: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000040d2: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000040d7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000040db: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000040df: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
1000040e5: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
1000040eb: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
1000040f1: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000040f5: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
1000040fb: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000040ff: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004103: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004109: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000410d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004112: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004116: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000411b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000411f: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004124: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004128: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
10000412c: 01 c1                       	addl	%eax, %ecx
10000412e: 0f bf c1                    	movswl	%cx, %eax
100004131: 5d                          	popq	%rbp
100004132: c5 f8 77                    	vzeroupper
100004135: c3                          	retq
100004136: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004140 __Z11microkernelILj3ELj4EasET2_PKT1_S3_:
100004140: 55                          	pushq	%rbp
100004141: 48 89 e5                    	movq	%rsp, %rbp
100004144: c4 e2 79 20 06              	vpmovsxbw	(%rsi), %xmm0
100004149: c4 e2 79 20 0f              	vpmovsxbw	(%rdi), %xmm1
10000414e: c5 f1 d5 c0                 	vpmullw	%xmm0, %xmm1, %xmm0
100004152: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004157: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000415b: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004160: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004164: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004169: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000416d: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004171: 0f be 4e 08                 	movsbl	8(%rsi), %ecx
100004175: 0f be 57 08                 	movsbl	8(%rdi), %edx
100004179: 0f af d1                    	imull	%ecx, %edx
10000417c: 01 c2                       	addl	%eax, %edx
10000417e: 0f be 46 09                 	movsbl	9(%rsi), %eax
100004182: 0f be 4f 09                 	movsbl	9(%rdi), %ecx
100004186: 0f af c8                    	imull	%eax, %ecx
100004189: 01 d1                       	addl	%edx, %ecx
10000418b: 0f be 46 0a                 	movsbl	10(%rsi), %eax
10000418f: 0f be 57 0a                 	movsbl	10(%rdi), %edx
100004193: 0f af d0                    	imull	%eax, %edx
100004196: 01 ca                       	addl	%ecx, %edx
100004198: 0f be 46 0b                 	movsbl	11(%rsi), %eax
10000419c: 0f be 4f 0b                 	movsbl	11(%rdi), %ecx
1000041a0: 0f af c8                    	imull	%eax, %ecx
1000041a3: 01 d1                       	addl	%edx, %ecx
1000041a5: 0f bf c1                    	movswl	%cx, %eax
1000041a8: 5d                          	popq	%rbp
1000041a9: c3                          	retq
1000041aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000041b0 __Z11microkernelILj3ELj8EasET2_PKT1_S3_:
1000041b0: 55                          	pushq	%rbp
1000041b1: 48 89 e5                    	movq	%rsp, %rbp
1000041b4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
1000041b9: c4 e2 7d 20 0f              	vpmovsxbw	(%rdi), %ymm1
1000041be: c5 f5 d5 c0                 	vpmullw	%ymm0, %ymm1, %ymm0
1000041c2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000041c8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041cc: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000041d1: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041d5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000041da: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041de: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000041e3: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041e7: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000041eb: 0f be 4e 10                 	movsbl	16(%rsi), %ecx
1000041ef: 0f be 57 10                 	movsbl	16(%rdi), %edx
1000041f3: 0f af d1                    	imull	%ecx, %edx
1000041f6: 01 c2                       	addl	%eax, %edx
1000041f8: 0f be 46 11                 	movsbl	17(%rsi), %eax
1000041fc: 0f be 4f 11                 	movsbl	17(%rdi), %ecx
100004200: 0f af c8                    	imull	%eax, %ecx
100004203: 01 d1                       	addl	%edx, %ecx
100004205: 0f be 46 12                 	movsbl	18(%rsi), %eax
100004209: 0f be 57 12                 	movsbl	18(%rdi), %edx
10000420d: 0f af d0                    	imull	%eax, %edx
100004210: 01 ca                       	addl	%ecx, %edx
100004212: 0f be 46 13                 	movsbl	19(%rsi), %eax
100004216: 0f be 4f 13                 	movsbl	19(%rdi), %ecx
10000421a: 0f af c8                    	imull	%eax, %ecx
10000421d: 01 d1                       	addl	%edx, %ecx
10000421f: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004223: 0f be 57 14                 	movsbl	20(%rdi), %edx
100004227: 0f af d0                    	imull	%eax, %edx
10000422a: 01 ca                       	addl	%ecx, %edx
10000422c: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004230: 0f be 4f 15                 	movsbl	21(%rdi), %ecx
100004234: 0f af c8                    	imull	%eax, %ecx
100004237: 01 d1                       	addl	%edx, %ecx
100004239: 0f be 46 16                 	movsbl	22(%rsi), %eax
10000423d: 0f be 57 16                 	movsbl	22(%rdi), %edx
100004241: 0f af d0                    	imull	%eax, %edx
100004244: 01 ca                       	addl	%ecx, %edx
100004246: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000424a: 0f be 4f 17                 	movsbl	23(%rdi), %ecx
10000424e: 0f af c8                    	imull	%eax, %ecx
100004251: 01 d1                       	addl	%edx, %ecx
100004253: 0f bf c1                    	movswl	%cx, %eax
100004256: 5d                          	popq	%rbp
100004257: c5 f8 77                    	vzeroupper
10000425a: c3                          	retq
10000425b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004260 __Z11microkernelILj3ELj16EasET2_PKT1_S3_:
100004260: 55                          	pushq	%rbp
100004261: 48 89 e5                    	movq	%rsp, %rbp
100004264: 0f be 06                    	movsbl	(%rsi), %eax
100004267: 0f be 0f                    	movsbl	(%rdi), %ecx
10000426a: 0f af c8                    	imull	%eax, %ecx
10000426d: 0f be 46 01                 	movsbl	1(%rsi), %eax
100004271: 0f be 57 01                 	movsbl	1(%rdi), %edx
100004275: 0f af d0                    	imull	%eax, %edx
100004278: 01 ca                       	addl	%ecx, %edx
10000427a: 0f be 46 02                 	movsbl	2(%rsi), %eax
10000427e: 0f be 4f 02                 	movsbl	2(%rdi), %ecx
100004282: 0f af c8                    	imull	%eax, %ecx
100004285: 01 d1                       	addl	%edx, %ecx
100004287: 0f be 46 03                 	movsbl	3(%rsi), %eax
10000428b: 0f be 57 03                 	movsbl	3(%rdi), %edx
10000428f: 0f af d0                    	imull	%eax, %edx
100004292: 01 ca                       	addl	%ecx, %edx
100004294: 0f be 46 04                 	movsbl	4(%rsi), %eax
100004298: 0f be 4f 04                 	movsbl	4(%rdi), %ecx
10000429c: 0f af c8                    	imull	%eax, %ecx
10000429f: 01 d1                       	addl	%edx, %ecx
1000042a1: 0f be 46 05                 	movsbl	5(%rsi), %eax
1000042a5: 0f be 57 05                 	movsbl	5(%rdi), %edx
1000042a9: 0f af d0                    	imull	%eax, %edx
1000042ac: 01 ca                       	addl	%ecx, %edx
1000042ae: 0f be 46 06                 	movsbl	6(%rsi), %eax
1000042b2: 0f be 4f 06                 	movsbl	6(%rdi), %ecx
1000042b6: 0f af c8                    	imull	%eax, %ecx
1000042b9: 01 d1                       	addl	%edx, %ecx
1000042bb: 0f be 46 07                 	movsbl	7(%rsi), %eax
1000042bf: 0f be 57 07                 	movsbl	7(%rdi), %edx
1000042c3: 0f af d0                    	imull	%eax, %edx
1000042c6: 01 ca                       	addl	%ecx, %edx
1000042c8: 0f be 46 08                 	movsbl	8(%rsi), %eax
1000042cc: 0f be 4f 08                 	movsbl	8(%rdi), %ecx
1000042d0: 0f af c8                    	imull	%eax, %ecx
1000042d3: 01 d1                       	addl	%edx, %ecx
1000042d5: 0f be 46 09                 	movsbl	9(%rsi), %eax
1000042d9: 0f be 57 09                 	movsbl	9(%rdi), %edx
1000042dd: 0f af d0                    	imull	%eax, %edx
1000042e0: 01 ca                       	addl	%ecx, %edx
1000042e2: 0f be 46 0a                 	movsbl	10(%rsi), %eax
1000042e6: 0f be 4f 0a                 	movsbl	10(%rdi), %ecx
1000042ea: 0f af c8                    	imull	%eax, %ecx
1000042ed: 01 d1                       	addl	%edx, %ecx
1000042ef: 0f be 46 0b                 	movsbl	11(%rsi), %eax
1000042f3: 0f be 57 0b                 	movsbl	11(%rdi), %edx
1000042f7: 0f af d0                    	imull	%eax, %edx
1000042fa: 01 ca                       	addl	%ecx, %edx
1000042fc: 0f be 46 0c                 	movsbl	12(%rsi), %eax
100004300: 0f be 4f 0c                 	movsbl	12(%rdi), %ecx
100004304: 0f af c8                    	imull	%eax, %ecx
100004307: 01 d1                       	addl	%edx, %ecx
100004309: 0f be 46 0d                 	movsbl	13(%rsi), %eax
10000430d: 0f be 57 0d                 	movsbl	13(%rdi), %edx
100004311: 0f af d0                    	imull	%eax, %edx
100004314: 01 ca                       	addl	%ecx, %edx
100004316: 0f be 46 0e                 	movsbl	14(%rsi), %eax
10000431a: 0f be 4f 0e                 	movsbl	14(%rdi), %ecx
10000431e: 0f af c8                    	imull	%eax, %ecx
100004321: 01 d1                       	addl	%edx, %ecx
100004323: 0f be 46 0f                 	movsbl	15(%rsi), %eax
100004327: 0f be 57 0f                 	movsbl	15(%rdi), %edx
10000432b: 0f af d0                    	imull	%eax, %edx
10000432e: 01 ca                       	addl	%ecx, %edx
100004330: 0f be 46 10                 	movsbl	16(%rsi), %eax
100004334: 0f be 4f 10                 	movsbl	16(%rdi), %ecx
100004338: 0f af c8                    	imull	%eax, %ecx
10000433b: 01 d1                       	addl	%edx, %ecx
10000433d: 0f be 46 11                 	movsbl	17(%rsi), %eax
100004341: 0f be 57 11                 	movsbl	17(%rdi), %edx
100004345: 0f af d0                    	imull	%eax, %edx
100004348: 01 ca                       	addl	%ecx, %edx
10000434a: 0f be 46 12                 	movsbl	18(%rsi), %eax
10000434e: 0f be 4f 12                 	movsbl	18(%rdi), %ecx
100004352: 0f af c8                    	imull	%eax, %ecx
100004355: 01 d1                       	addl	%edx, %ecx
100004357: 0f be 46 13                 	movsbl	19(%rsi), %eax
10000435b: 0f be 57 13                 	movsbl	19(%rdi), %edx
10000435f: 0f af d0                    	imull	%eax, %edx
100004362: 01 ca                       	addl	%ecx, %edx
100004364: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004368: 0f be 4f 14                 	movsbl	20(%rdi), %ecx
10000436c: 0f af c8                    	imull	%eax, %ecx
10000436f: 01 d1                       	addl	%edx, %ecx
100004371: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004375: 0f be 57 15                 	movsbl	21(%rdi), %edx
100004379: 0f af d0                    	imull	%eax, %edx
10000437c: 01 ca                       	addl	%ecx, %edx
10000437e: 0f be 46 16                 	movsbl	22(%rsi), %eax
100004382: 0f be 4f 16                 	movsbl	22(%rdi), %ecx
100004386: 0f af c8                    	imull	%eax, %ecx
100004389: 01 d1                       	addl	%edx, %ecx
10000438b: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000438f: 0f be 57 17                 	movsbl	23(%rdi), %edx
100004393: 0f af d0                    	imull	%eax, %edx
100004396: 01 ca                       	addl	%ecx, %edx
100004398: 0f be 46 18                 	movsbl	24(%rsi), %eax
10000439c: 0f be 4f 18                 	movsbl	24(%rdi), %ecx
1000043a0: 0f af c8                    	imull	%eax, %ecx
1000043a3: 01 d1                       	addl	%edx, %ecx
1000043a5: 0f be 46 19                 	movsbl	25(%rsi), %eax
1000043a9: 0f be 57 19                 	movsbl	25(%rdi), %edx
1000043ad: 0f af d0                    	imull	%eax, %edx
1000043b0: 01 ca                       	addl	%ecx, %edx
1000043b2: 0f be 46 1a                 	movsbl	26(%rsi), %eax
1000043b6: 0f be 4f 1a                 	movsbl	26(%rdi), %ecx
1000043ba: 0f af c8                    	imull	%eax, %ecx
1000043bd: 01 d1                       	addl	%edx, %ecx
1000043bf: 0f be 46 1b                 	movsbl	27(%rsi), %eax
1000043c3: 0f be 57 1b                 	movsbl	27(%rdi), %edx
1000043c7: 0f af d0                    	imull	%eax, %edx
1000043ca: 01 ca                       	addl	%ecx, %edx
1000043cc: 0f be 46 1c                 	movsbl	28(%rsi), %eax
1000043d0: 0f be 4f 1c                 	movsbl	28(%rdi), %ecx
1000043d4: 0f af c8                    	imull	%eax, %ecx
1000043d7: 01 d1                       	addl	%edx, %ecx
1000043d9: 0f be 46 1d                 	movsbl	29(%rsi), %eax
1000043dd: 0f be 57 1d                 	movsbl	29(%rdi), %edx
1000043e1: 0f af d0                    	imull	%eax, %edx
1000043e4: 01 ca                       	addl	%ecx, %edx
1000043e6: 0f be 46 1e                 	movsbl	30(%rsi), %eax
1000043ea: 0f be 4f 1e                 	movsbl	30(%rdi), %ecx
1000043ee: 0f af c8                    	imull	%eax, %ecx
1000043f1: 01 d1                       	addl	%edx, %ecx
1000043f3: 0f be 46 1f                 	movsbl	31(%rsi), %eax
1000043f7: 0f be 57 1f                 	movsbl	31(%rdi), %edx
1000043fb: 0f af d0                    	imull	%eax, %edx
1000043fe: 01 ca                       	addl	%ecx, %edx
100004400: 0f be 46 20                 	movsbl	32(%rsi), %eax
100004404: 0f be 4f 20                 	movsbl	32(%rdi), %ecx
100004408: 0f af c8                    	imull	%eax, %ecx
10000440b: 01 d1                       	addl	%edx, %ecx
10000440d: 0f be 46 21                 	movsbl	33(%rsi), %eax
100004411: 0f be 57 21                 	movsbl	33(%rdi), %edx
100004415: 0f af d0                    	imull	%eax, %edx
100004418: 01 ca                       	addl	%ecx, %edx
10000441a: 0f be 46 22                 	movsbl	34(%rsi), %eax
10000441e: 0f be 4f 22                 	movsbl	34(%rdi), %ecx
100004422: 0f af c8                    	imull	%eax, %ecx
100004425: 01 d1                       	addl	%edx, %ecx
100004427: 0f be 46 23                 	movsbl	35(%rsi), %eax
10000442b: 0f be 57 23                 	movsbl	35(%rdi), %edx
10000442f: 0f af d0                    	imull	%eax, %edx
100004432: 01 ca                       	addl	%ecx, %edx
100004434: 0f be 46 24                 	movsbl	36(%rsi), %eax
100004438: 0f be 4f 24                 	movsbl	36(%rdi), %ecx
10000443c: 0f af c8                    	imull	%eax, %ecx
10000443f: 01 d1                       	addl	%edx, %ecx
100004441: 0f be 46 25                 	movsbl	37(%rsi), %eax
100004445: 0f be 57 25                 	movsbl	37(%rdi), %edx
100004449: 0f af d0                    	imull	%eax, %edx
10000444c: 01 ca                       	addl	%ecx, %edx
10000444e: 0f be 46 26                 	movsbl	38(%rsi), %eax
100004452: 0f be 4f 26                 	movsbl	38(%rdi), %ecx
100004456: 0f af c8                    	imull	%eax, %ecx
100004459: 01 d1                       	addl	%edx, %ecx
10000445b: 0f be 46 27                 	movsbl	39(%rsi), %eax
10000445f: 0f be 57 27                 	movsbl	39(%rdi), %edx
100004463: 0f af d0                    	imull	%eax, %edx
100004466: 01 ca                       	addl	%ecx, %edx
100004468: 0f be 46 28                 	movsbl	40(%rsi), %eax
10000446c: 0f be 4f 28                 	movsbl	40(%rdi), %ecx
100004470: 0f af c8                    	imull	%eax, %ecx
100004473: 01 d1                       	addl	%edx, %ecx
100004475: 0f be 46 29                 	movsbl	41(%rsi), %eax
100004479: 0f be 57 29                 	movsbl	41(%rdi), %edx
10000447d: 0f af d0                    	imull	%eax, %edx
100004480: 01 ca                       	addl	%ecx, %edx
100004482: 0f be 46 2a                 	movsbl	42(%rsi), %eax
100004486: 0f be 4f 2a                 	movsbl	42(%rdi), %ecx
10000448a: 0f af c8                    	imull	%eax, %ecx
10000448d: 01 d1                       	addl	%edx, %ecx
10000448f: 0f be 46 2b                 	movsbl	43(%rsi), %eax
100004493: 0f be 57 2b                 	movsbl	43(%rdi), %edx
100004497: 0f af d0                    	imull	%eax, %edx
10000449a: 01 ca                       	addl	%ecx, %edx
10000449c: 0f be 46 2c                 	movsbl	44(%rsi), %eax
1000044a0: 0f be 4f 2c                 	movsbl	44(%rdi), %ecx
1000044a4: 0f af c8                    	imull	%eax, %ecx
1000044a7: 01 d1                       	addl	%edx, %ecx
1000044a9: 0f be 46 2d                 	movsbl	45(%rsi), %eax
1000044ad: 0f be 57 2d                 	movsbl	45(%rdi), %edx
1000044b1: 0f af d0                    	imull	%eax, %edx
1000044b4: 01 ca                       	addl	%ecx, %edx
1000044b6: 0f be 46 2e                 	movsbl	46(%rsi), %eax
1000044ba: 0f be 4f 2e                 	movsbl	46(%rdi), %ecx
1000044be: 0f af c8                    	imull	%eax, %ecx
1000044c1: 01 d1                       	addl	%edx, %ecx
1000044c3: 0f be 46 2f                 	movsbl	47(%rsi), %eax
1000044c7: 0f be 57 2f                 	movsbl	47(%rdi), %edx
1000044cb: 0f af d0                    	imull	%eax, %edx
1000044ce: 01 ca                       	addl	%ecx, %edx
1000044d0: 0f bf c2                    	movswl	%dx, %eax
1000044d3: 5d                          	popq	%rbp
1000044d4: c3                          	retq
1000044d5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000044df: 90                          	nop

00000001000044e0 __Z11microkernelILj3ELj32EasET2_PKT1_S3_:
1000044e0: 55                          	pushq	%rbp
1000044e1: 48 89 e5                    	movq	%rsp, %rbp
1000044e4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
1000044e9: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
1000044ef: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
1000044f4: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000044f8: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
1000044fe: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004502: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004506: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000450c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004510: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004515: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004519: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000451e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004522: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004527: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000452b: c4 e2 7d 20 4e 20           	vpmovsxbw	32(%rsi), %ymm1
100004531: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004535: c4 e2 7d 20 46 30           	vpmovsxbw	48(%rsi), %ymm0
10000453b: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004541: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004545: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
10000454b: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
10000454f: c5 f5 fd c0                 	vpaddw	%ymm0, %ymm1, %ymm0
100004553: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004559: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000455d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004562: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004566: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000456b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000456f: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004574: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004578: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
10000457c: 01 c1                       	addl	%eax, %ecx
10000457e: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
100004584: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
10000458a: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004590: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004594: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
10000459a: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
10000459e: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000045a2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000045a8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000045ac: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000045b1: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000045b5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000045ba: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000045be: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000045c3: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000045c7: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000045cb: 01 c8                       	addl	%ecx, %eax
1000045cd: 98                          	cwtl
1000045ce: 5d                          	popq	%rbp
1000045cf: c5 f8 77                    	vzeroupper
1000045d2: c3                          	retq
1000045d3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000045dd: 0f 1f 00                    	nopl	(%rax)

00000001000045e0 __Z11microkernelILj3ELj64EasET2_PKT1_S3_:
1000045e0: 55                          	pushq	%rbp
1000045e1: 48 89 e5                    	movq	%rsp, %rbp
1000045e4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
1000045e9: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
1000045ef: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
1000045f4: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000045f8: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
1000045fe: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004602: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004606: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000460c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004610: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004615: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004619: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000461e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004622: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004627: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000462b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000462f: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
100004635: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
10000463b: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004641: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004645: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
10000464b: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
10000464f: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004653: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004659: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000465d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004662: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004666: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000466b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000466f: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004674: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004678: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
10000467c: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
100004682: 01 c1                       	addl	%eax, %ecx
100004684: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
10000468a: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004690: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004694: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
10000469a: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
10000469e: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000046a2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000046a8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000046ac: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000046b1: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000046b5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000046ba: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000046be: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000046c3: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000046c7: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000046cb: 01 c8                       	addl	%ecx, %eax
1000046cd: c4 e2 7d 20 46 60           	vpmovsxbw	96(%rsi), %ymm0
1000046d3: c4 e2 7d 20 4e 70           	vpmovsxbw	112(%rsi), %ymm1
1000046d9: c4 e2 7d 20 57 60           	vpmovsxbw	96(%rdi), %ymm2
1000046df: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000046e3: c4 e2 7d 20 57 70           	vpmovsxbw	112(%rdi), %ymm2
1000046e9: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000046ed: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000046f1: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000046f7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000046fb: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004700: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004704: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004709: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000470d: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004712: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004716: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
10000471a: c4 e2 7d 20 86 80 00 00 00  	vpmovsxbw	128(%rsi), %ymm0
100004723: 01 c1                       	addl	%eax, %ecx
100004725: c4 e2 7d 20 8e 90 00 00 00  	vpmovsxbw	144(%rsi), %ymm1
10000472e: c4 e2 7d 20 97 80 00 00 00  	vpmovsxbw	128(%rdi), %ymm2
100004737: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
10000473b: c4 e2 7d 20 97 90 00 00 00  	vpmovsxbw	144(%rdi), %ymm2
100004744: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004748: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
10000474c: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004752: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004756: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
10000475b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000475f: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004764: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004768: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
10000476d: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004771: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004775: 01 c8                       	addl	%ecx, %eax
100004777: c4 e2 7d 20 86 a0 00 00 00  	vpmovsxbw	160(%rsi), %ymm0
100004780: c4 e2 7d 20 8e b0 00 00 00  	vpmovsxbw	176(%rsi), %ymm1
100004789: c4 e2 7d 20 97 a0 00 00 00  	vpmovsxbw	160(%rdi), %ymm2
100004792: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004796: c4 e2 7d 20 97 b0 00 00 00  	vpmovsxbw	176(%rdi), %ymm2
10000479f: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000047a3: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000047a7: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000047ad: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000047b1: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000047b6: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000047ba: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000047bf: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000047c3: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000047c8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000047cc: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000047d0: 01 c1                       	addl	%eax, %ecx
1000047d2: 0f bf c1                    	movswl	%cx, %eax
1000047d5: 5d                          	popq	%rbp
1000047d6: c5 f8 77                    	vzeroupper
1000047d9: c3                          	retq
1000047da: 90                          	nop
1000047db: 90                          	nop
1000047dc: 90                          	nop
1000047dd: 90                          	nop
1000047de: 90                          	nop
1000047df: 90                          	nop

00000001000047e0 __ZN14ModelInterfaceC2Ev:
1000047e0: 55                          	pushq	%rbp
1000047e1: 48 89 e5                    	movq	%rsp, %rbp
1000047e4: 48 8d 05 dd 58 00 00        	leaq	22749(%rip), %rax
1000047eb: 48 89 07                    	movq	%rax, (%rdi)
1000047ee: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000047f2: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
1000047f7: 5d                          	popq	%rbp
1000047f8: c3                          	retq
1000047f9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004800 __ZN14ModelInterfaceC1Ev:
100004800: 55                          	pushq	%rbp
100004801: 48 89 e5                    	movq	%rsp, %rbp
100004804: 48 8d 05 bd 58 00 00        	leaq	22717(%rip), %rax
10000480b: 48 89 07                    	movq	%rax, (%rdi)
10000480e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004812: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004817: 5d                          	popq	%rbp
100004818: c3                          	retq
100004819: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004820 __ZN14ModelInterfaceD2Ev:
100004820: 55                          	pushq	%rbp
100004821: 48 89 e5                    	movq	%rsp, %rbp
100004824: 5d                          	popq	%rbp
100004825: c3                          	retq
100004826: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004830 __ZN14ModelInterfaceD1Ev:
100004830: 55                          	pushq	%rbp
100004831: 48 89 e5                    	movq	%rsp, %rbp
100004834: 5d                          	popq	%rbp
100004835: c3                          	retq
100004836: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004840 __ZN14ModelInterfaceD0Ev:
100004840: 55                          	pushq	%rbp
100004841: 48 89 e5                    	movq	%rsp, %rbp
100004844: 5d                          	popq	%rbp
100004845: e9 3e 36 00 00              	jmp	13886 <dyld_stub_binder+0x100007e88>
10000484a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100004850 __ZN14ModelInterface7forwardEv:
100004850: 55                          	pushq	%rbp
100004851: 48 89 e5                    	movq	%rsp, %rbp
100004854: 5d                          	popq	%rbp
100004855: c3                          	retq
100004856: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004860 __ZN14ModelInterface12input_bufferEv:
100004860: 55                          	pushq	%rbp
100004861: 48 89 e5                    	movq	%rsp, %rbp
100004864: 0f b6 47 20                 	movzbl	32(%rdi), %eax
100004868: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
10000486d: 5d                          	popq	%rbp
10000486e: c3                          	retq
10000486f: 90                          	nop

0000000100004870 __ZN14ModelInterface13output_bufferEv:
100004870: 55                          	pushq	%rbp
100004871: 48 89 e5                    	movq	%rsp, %rbp
100004874: 31 c0                       	xorl	%eax, %eax
100004876: 80 7f 20 00                 	cmpb	$0, 32(%rdi)
10000487a: 0f 94 c0                    	sete	%al
10000487d: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100004882: 5d                          	popq	%rbp
100004883: c3                          	retq
100004884: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000488e: 66 90                       	nop

0000000100004890 __ZN14ModelInterface11init_bufferEj:
100004890: 55                          	pushq	%rbp
100004891: 48 89 e5                    	movq	%rsp, %rbp
100004894: 41 57                       	pushq	%r15
100004896: 41 56                       	pushq	%r14
100004898: 41 54                       	pushq	%r12
10000489a: 53                          	pushq	%rbx
10000489b: 41 89 f7                    	movl	%esi, %r15d
10000489e: 48 89 fb                    	movq	%rdi, %rbx
1000048a1: c6 47 20 00                 	movb	$0, 32(%rdi)
1000048a5: 41 89 f6                    	movl	%esi, %r14d
1000048a8: 4c 89 f7                    	movq	%r14, %rdi
1000048ab: e8 de 35 00 00              	callq	13790 <dyld_stub_binder+0x100007e8e>
1000048b0: 49 89 c4                    	movq	%rax, %r12
1000048b3: 48 89 43 28                 	movq	%rax, 40(%rbx)
1000048b7: 4c 89 f7                    	movq	%r14, %rdi
1000048ba: e8 cf 35 00 00              	callq	13775 <dyld_stub_binder+0x100007e8e>
1000048bf: 48 89 43 30                 	movq	%rax, 48(%rbx)
1000048c3: 45 85 ff                    	testl	%r15d, %r15d
1000048c6: 0f 84 44 01 00 00           	je	324 <__ZN14ModelInterface11init_bufferEj+0x180>
1000048cc: 41 c6 04 24 00              	movb	$0, (%r12)
1000048d1: 41 83 ff 01                 	cmpl	$1, %r15d
1000048d5: 0f 84 95 00 00 00           	je	149 <__ZN14ModelInterface11init_bufferEj+0xe0>
1000048db: 41 8d 46 ff                 	leal	-1(%r14), %eax
1000048df: 49 8d 56 fe                 	leaq	-2(%r14), %rdx
1000048e3: 83 e0 07                    	andl	$7, %eax
1000048e6: b9 01 00 00 00              	movl	$1, %ecx
1000048eb: 48 83 fa 07                 	cmpq	$7, %rdx
1000048ef: 72 63                       	jb	99 <__ZN14ModelInterface11init_bufferEj+0xc4>
1000048f1: 48 89 c2                    	movq	%rax, %rdx
1000048f4: 48 f7 d2                    	notq	%rdx
1000048f7: 4c 01 f2                    	addq	%r14, %rdx
1000048fa: 31 c9                       	xorl	%ecx, %ecx
1000048fc: 0f 1f 40 00                 	nopl	(%rax)
100004900: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004904: c6 44 0e 01 00              	movb	$0, 1(%rsi,%rcx)
100004909: 48 8b 73 28                 	movq	40(%rbx), %rsi
10000490d: c6 44 0e 02 00              	movb	$0, 2(%rsi,%rcx)
100004912: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004916: c6 44 0e 03 00              	movb	$0, 3(%rsi,%rcx)
10000491b: 48 8b 73 28                 	movq	40(%rbx), %rsi
10000491f: c6 44 0e 04 00              	movb	$0, 4(%rsi,%rcx)
100004924: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004928: c6 44 0e 05 00              	movb	$0, 5(%rsi,%rcx)
10000492d: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004931: c6 44 0e 06 00              	movb	$0, 6(%rsi,%rcx)
100004936: 48 8b 73 28                 	movq	40(%rbx), %rsi
10000493a: c6 44 0e 07 00              	movb	$0, 7(%rsi,%rcx)
10000493f: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004943: c6 44 0e 08 00              	movb	$0, 8(%rsi,%rcx)
100004948: 48 83 c1 08                 	addq	$8, %rcx
10000494c: 48 39 ca                    	cmpq	%rcx, %rdx
10000494f: 75 af                       	jne	-81 <__ZN14ModelInterface11init_bufferEj+0x70>
100004951: 48 ff c1                    	incq	%rcx
100004954: 48 85 c0                    	testq	%rax, %rax
100004957: 74 17                       	je	23 <__ZN14ModelInterface11init_bufferEj+0xe0>
100004959: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004960: 48 8b 53 28                 	movq	40(%rbx), %rdx
100004964: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004968: 48 ff c1                    	incq	%rcx
10000496b: 48 ff c8                    	decq	%rax
10000496e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0xd0>
100004970: 45 85 ff                    	testl	%r15d, %r15d
100004973: 0f 84 97 00 00 00           	je	151 <__ZN14ModelInterface11init_bufferEj+0x180>
100004979: 49 8d 4e ff                 	leaq	-1(%r14), %rcx
10000497d: 44 89 f0                    	movl	%r14d, %eax
100004980: 83 e0 07                    	andl	$7, %eax
100004983: 48 83 f9 07                 	cmpq	$7, %rcx
100004987: 73 0c                       	jae	12 <__ZN14ModelInterface11init_bufferEj+0x105>
100004989: 31 c9                       	xorl	%ecx, %ecx
10000498b: 48 85 c0                    	testq	%rax, %rax
10000498e: 75 70                       	jne	112 <__ZN14ModelInterface11init_bufferEj+0x170>
100004990: e9 7b 00 00 00              	jmp	123 <__ZN14ModelInterface11init_bufferEj+0x180>
100004995: 49 29 c6                    	subq	%rax, %r14
100004998: 31 c9                       	xorl	%ecx, %ecx
10000499a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000049a0: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049a4: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
1000049a8: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049ac: c6 44 0a 01 00              	movb	$0, 1(%rdx,%rcx)
1000049b1: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049b5: c6 44 0a 02 00              	movb	$0, 2(%rdx,%rcx)
1000049ba: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049be: c6 44 0a 03 00              	movb	$0, 3(%rdx,%rcx)
1000049c3: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049c7: c6 44 0a 04 00              	movb	$0, 4(%rdx,%rcx)
1000049cc: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049d0: c6 44 0a 05 00              	movb	$0, 5(%rdx,%rcx)
1000049d5: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049d9: c6 44 0a 06 00              	movb	$0, 6(%rdx,%rcx)
1000049de: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000049e2: c6 44 0a 07 00              	movb	$0, 7(%rdx,%rcx)
1000049e7: 48 83 c1 08                 	addq	$8, %rcx
1000049eb: 49 39 ce                    	cmpq	%rcx, %r14
1000049ee: 75 b0                       	jne	-80 <__ZN14ModelInterface11init_bufferEj+0x110>
1000049f0: 48 85 c0                    	testq	%rax, %rax
1000049f3: 74 1b                       	je	27 <__ZN14ModelInterface11init_bufferEj+0x180>
1000049f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000049ff: 90                          	nop
100004a00: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004a04: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004a08: 48 ff c1                    	incq	%rcx
100004a0b: 48 ff c8                    	decq	%rax
100004a0e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0x170>
100004a10: 5b                          	popq	%rbx
100004a11: 41 5c                       	popq	%r12
100004a13: 41 5e                       	popq	%r14
100004a15: 41 5f                       	popq	%r15
100004a17: 5d                          	popq	%rbp
100004a18: c3                          	retq
100004a19: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004a20 __ZN14ModelInterface11swap_bufferEv:
100004a20: 55                          	pushq	%rbp
100004a21: 48 89 e5                    	movq	%rsp, %rbp
100004a24: 80 77 20 01                 	xorb	$1, 32(%rdi)
100004a28: 5d                          	popq	%rbp
100004a29: c3                          	retq
100004a2a: 90                          	nop
100004a2b: 90                          	nop
100004a2c: 90                          	nop
100004a2d: 90                          	nop
100004a2e: 90                          	nop
100004a2f: 90                          	nop

0000000100004a30 __Z11ReLU_kernelPaS_:
100004a30: 55                          	pushq	%rbp
100004a31: 48 89 e5                    	movq	%rsp, %rbp
100004a34: 0f b6 0e                    	movzbl	(%rsi), %ecx
100004a37: 31 c0                       	xorl	%eax, %eax
100004a39: 84 c9                       	testb	%cl, %cl
100004a3b: 0f 48 c8                    	cmovsl	%eax, %ecx
100004a3e: 88 0f                       	movb	%cl, (%rdi)
100004a40: 0f b6 4e 01                 	movzbl	1(%rsi), %ecx
100004a44: 84 c9                       	testb	%cl, %cl
100004a46: 0f 48 c8                    	cmovsl	%eax, %ecx
100004a49: 88 4f 01                    	movb	%cl, 1(%rdi)
100004a4c: 0f b6 4e 02                 	movzbl	2(%rsi), %ecx
100004a50: 84 c9                       	testb	%cl, %cl
100004a52: 0f 48 c8                    	cmovsl	%eax, %ecx
100004a55: 88 4f 02                    	movb	%cl, 2(%rdi)
100004a58: 0f b6 4e 03                 	movzbl	3(%rsi), %ecx
100004a5c: 84 c9                       	testb	%cl, %cl
100004a5e: 0f 48 c8                    	cmovsl	%eax, %ecx
100004a61: 88 4f 03                    	movb	%cl, 3(%rdi)
100004a64: 0f b6 4e 04                 	movzbl	4(%rsi), %ecx
100004a68: 84 c9                       	testb	%cl, %cl
100004a6a: 0f 48 c8                    	cmovsl	%eax, %ecx
100004a6d: 88 4f 04                    	movb	%cl, 4(%rdi)
100004a70: 0f b6 4e 05                 	movzbl	5(%rsi), %ecx
100004a74: 84 c9                       	testb	%cl, %cl
100004a76: 0f 48 c8                    	cmovsl	%eax, %ecx
100004a79: 88 4f 05                    	movb	%cl, 5(%rdi)
100004a7c: 0f b6 4e 06                 	movzbl	6(%rsi), %ecx
100004a80: 84 c9                       	testb	%cl, %cl
100004a82: 0f 48 c8                    	cmovsl	%eax, %ecx
100004a85: 88 4f 06                    	movb	%cl, 6(%rdi)
100004a88: 0f b6 4e 07                 	movzbl	7(%rsi), %ecx
100004a8c: 84 c9                       	testb	%cl, %cl
100004a8e: 0f 49 c1                    	cmovnsl	%ecx, %eax
100004a91: 88 47 07                    	movb	%al, 7(%rdi)
100004a94: 5d                          	popq	%rbp
100004a95: c3                          	retq
100004a96: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004aa0 __Z4ReLUPaS_j:
100004aa0: 55                          	pushq	%rbp
100004aa1: 48 89 e5                    	movq	%rsp, %rbp
100004aa4: 48 83 e4 e0                 	andq	$-32, %rsp
100004aa8: 48 81 ec 40 02 00 00        	subq	$576, %rsp
100004aaf: 83 fa 08                    	cmpl	$8, %edx
100004ab2: 0f 82 d1 00 00 00           	jb	209 <__Z4ReLUPaS_j+0xe9>
100004ab8: 8d 42 f8                    	leal	-8(%rdx), %eax
100004abb: 41 89 c1                    	movl	%eax, %r9d
100004abe: 41 c1 e9 03                 	shrl	$3, %r9d
100004ac2: 41 ff c1                    	incl	%r9d
100004ac5: 41 83 f9 1f                 	cmpl	$31, %r9d
100004ac9: 76 24                       	jbe	36 <__Z4ReLUPaS_j+0x4f>
100004acb: 83 e0 f8                    	andl	$-8, %eax
100004ace: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
100004ad2: 48 83 c1 08                 	addq	$8, %rcx
100004ad6: 48 39 f9                    	cmpq	%rdi, %rcx
100004ad9: 0f 86 c0 02 00 00           	jbe	704 <__Z4ReLUPaS_j+0x2ff>
100004adf: 48 01 f8                    	addq	%rdi, %rax
100004ae2: 48 83 c0 08                 	addq	$8, %rax
100004ae6: 48 39 f0                    	cmpq	%rsi, %rax
100004ae9: 0f 86 b0 02 00 00           	jbe	688 <__Z4ReLUPaS_j+0x2ff>
100004aef: 41 89 d0                    	movl	%edx, %r8d
100004af2: 48 89 f0                    	movq	%rsi, %rax
100004af5: 48 89 f9                    	movq	%rdi, %rcx
100004af8: 31 f6                       	xorl	%esi, %esi
100004afa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100004b00: 0f b6 38                    	movzbl	(%rax), %edi
100004b03: 40 84 ff                    	testb	%dil, %dil
100004b06: 0f 48 fe                    	cmovsl	%esi, %edi
100004b09: 40 88 39                    	movb	%dil, (%rcx)
100004b0c: 0f b6 78 01                 	movzbl	1(%rax), %edi
100004b10: 40 84 ff                    	testb	%dil, %dil
100004b13: 0f 48 fe                    	cmovsl	%esi, %edi
100004b16: 40 88 79 01                 	movb	%dil, 1(%rcx)
100004b1a: 0f b6 78 02                 	movzbl	2(%rax), %edi
100004b1e: 40 84 ff                    	testb	%dil, %dil
100004b21: 0f 48 fe                    	cmovsl	%esi, %edi
100004b24: 40 88 79 02                 	movb	%dil, 2(%rcx)
100004b28: 0f b6 78 03                 	movzbl	3(%rax), %edi
100004b2c: 40 84 ff                    	testb	%dil, %dil
100004b2f: 0f 48 fe                    	cmovsl	%esi, %edi
100004b32: 40 88 79 03                 	movb	%dil, 3(%rcx)
100004b36: 0f b6 78 04                 	movzbl	4(%rax), %edi
100004b3a: 40 84 ff                    	testb	%dil, %dil
100004b3d: 0f 48 fe                    	cmovsl	%esi, %edi
100004b40: 40 88 79 04                 	movb	%dil, 4(%rcx)
100004b44: 0f b6 78 05                 	movzbl	5(%rax), %edi
100004b48: 40 84 ff                    	testb	%dil, %dil
100004b4b: 0f 48 fe                    	cmovsl	%esi, %edi
100004b4e: 40 88 79 05                 	movb	%dil, 5(%rcx)
100004b52: 0f b6 78 06                 	movzbl	6(%rax), %edi
100004b56: 40 84 ff                    	testb	%dil, %dil
100004b59: 0f 48 fe                    	cmovsl	%esi, %edi
100004b5c: 40 88 79 06                 	movb	%dil, 6(%rcx)
100004b60: 0f b6 78 07                 	movzbl	7(%rax), %edi
100004b64: 40 84 ff                    	testb	%dil, %dil
100004b67: 0f 48 fe                    	cmovsl	%esi, %edi
100004b6a: 40 88 79 07                 	movb	%dil, 7(%rcx)
100004b6e: 48 83 c1 08                 	addq	$8, %rcx
100004b72: 48 83 c0 08                 	addq	$8, %rax
100004b76: 41 83 c0 f8                 	addl	$-8, %r8d
100004b7a: 41 83 f8 07                 	cmpl	$7, %r8d
100004b7e: 77 80                       	ja	-128 <__Z4ReLUPaS_j+0x60>
100004b80: 83 e2 07                    	andl	$7, %edx
100004b83: 48 89 cf                    	movq	%rcx, %rdi
100004b86: 48 89 c6                    	movq	%rax, %rsi
100004b89: 85 d2                       	testl	%edx, %edx
100004b8b: 0f 84 06 02 00 00           	je	518 <__Z4ReLUPaS_j+0x2f7>
100004b91: 8d 42 ff                    	leal	-1(%rdx), %eax
100004b94: 4c 8d 50 01                 	leaq	1(%rax), %r10
100004b98: 49 83 fa 7f                 	cmpq	$127, %r10
100004b9c: 0f 86 2a 01 00 00           	jbe	298 <__Z4ReLUPaS_j+0x22c>
100004ba2: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
100004ba6: 48 83 c1 01                 	addq	$1, %rcx
100004baa: 48 39 cf                    	cmpq	%rcx, %rdi
100004bad: 73 10                       	jae	16 <__Z4ReLUPaS_j+0x11f>
100004baf: 48 01 f8                    	addq	%rdi, %rax
100004bb2: 48 83 c0 01                 	addq	$1, %rax
100004bb6: 48 39 c6                    	cmpq	%rax, %rsi
100004bb9: 0f 82 0d 01 00 00           	jb	269 <__Z4ReLUPaS_j+0x22c>
100004bbf: 4d 89 d0                    	movq	%r10, %r8
100004bc2: 49 83 e0 80                 	andq	$-128, %r8
100004bc6: 49 8d 40 80                 	leaq	-128(%r8), %rax
100004bca: 48 89 c1                    	movq	%rax, %rcx
100004bcd: 48 c1 e9 07                 	shrq	$7, %rcx
100004bd1: 48 ff c1                    	incq	%rcx
100004bd4: 41 89 c9                    	movl	%ecx, %r9d
100004bd7: 41 83 e1 01                 	andl	$1, %r9d
100004bdb: 48 85 c0                    	testq	%rax, %rax
100004bde: 0f 84 fd 11 00 00           	je	4605 <__Z4ReLUPaS_j+0x1341>
100004be4: 4c 89 c8                    	movq	%r9, %rax
100004be7: 48 29 c8                    	subq	%rcx, %rax
100004bea: 31 c9                       	xorl	%ecx, %ecx
100004bec: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100004bf0: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
100004bf6: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100004bfd: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
100004c04: c4 e2 7d 3c 64 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm4
100004c0b: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100004c10: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
100004c16: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100004c1c: c5 fe 7f 64 0f 60           	vmovdqu	%ymm4, 96(%rdi,%rcx)
100004c22: c4 e2 7d 3c 8c 0e 80 00 00 00       	vpmaxsb	128(%rsi,%rcx), %ymm0, %ymm1
100004c2c: c4 e2 7d 3c 94 0e a0 00 00 00       	vpmaxsb	160(%rsi,%rcx), %ymm0, %ymm2
100004c36: c4 e2 7d 3c 9c 0e c0 00 00 00       	vpmaxsb	192(%rsi,%rcx), %ymm0, %ymm3
100004c40: c4 e2 7d 3c a4 0e e0 00 00 00       	vpmaxsb	224(%rsi,%rcx), %ymm0, %ymm4
100004c4a: c5 fe 7f 8c 0f 80 00 00 00  	vmovdqu	%ymm1, 128(%rdi,%rcx)
100004c53: c5 fe 7f 94 0f a0 00 00 00  	vmovdqu	%ymm2, 160(%rdi,%rcx)
100004c5c: c5 fe 7f 9c 0f c0 00 00 00  	vmovdqu	%ymm3, 192(%rdi,%rcx)
100004c65: c5 fe 7f a4 0f e0 00 00 00  	vmovdqu	%ymm4, 224(%rdi,%rcx)
100004c6e: 48 81 c1 00 01 00 00        	addq	$256, %rcx
100004c75: 48 83 c0 02                 	addq	$2, %rax
100004c79: 0f 85 71 ff ff ff           	jne	-143 <__Z4ReLUPaS_j+0x150>
100004c7f: 4d 85 c9                    	testq	%r9, %r9
100004c82: 74 36                       	je	54 <__Z4ReLUPaS_j+0x21a>
100004c84: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100004c88: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
100004c8e: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100004c95: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
100004c9c: c4 e2 7d 3c 44 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm0
100004ca3: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100004ca8: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
100004cae: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100004cb4: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
100004cba: 4d 39 c2                    	cmpq	%r8, %r10
100004cbd: 0f 84 d4 00 00 00           	je	212 <__Z4ReLUPaS_j+0x2f7>
100004cc3: 44 29 c2                    	subl	%r8d, %edx
100004cc6: 4c 01 c6                    	addq	%r8, %rsi
100004cc9: 4c 01 c7                    	addq	%r8, %rdi
100004ccc: 44 8d 42 ff                 	leal	-1(%rdx), %r8d
100004cd0: f6 c2 07                    	testb	$7, %dl
100004cd3: 74 38                       	je	56 <__Z4ReLUPaS_j+0x26d>
100004cd5: 41 89 d2                    	movl	%edx, %r10d
100004cd8: 41 83 e2 07                 	andl	$7, %r10d
100004cdc: 45 31 c9                    	xorl	%r9d, %r9d
100004cdf: 31 c9                       	xorl	%ecx, %ecx
100004ce1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004ceb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100004cf0: 0f b6 04 0e                 	movzbl	(%rsi,%rcx), %eax
100004cf4: 84 c0                       	testb	%al, %al
100004cf6: 41 0f 48 c1                 	cmovsl	%r9d, %eax
100004cfa: 88 04 0f                    	movb	%al, (%rdi,%rcx)
100004cfd: 48 ff c1                    	incq	%rcx
100004d00: 41 39 ca                    	cmpl	%ecx, %r10d
100004d03: 75 eb                       	jne	-21 <__Z4ReLUPaS_j+0x250>
100004d05: 29 ca                       	subl	%ecx, %edx
100004d07: 48 01 ce                    	addq	%rcx, %rsi
100004d0a: 48 01 cf                    	addq	%rcx, %rdi
100004d0d: 41 83 f8 07                 	cmpl	$7, %r8d
100004d11: 0f 82 80 00 00 00           	jb	128 <__Z4ReLUPaS_j+0x2f7>
100004d17: 41 89 d0                    	movl	%edx, %r8d
100004d1a: 31 c9                       	xorl	%ecx, %ecx
100004d1c: 31 d2                       	xorl	%edx, %edx
100004d1e: 66 90                       	nop
100004d20: 0f b6 04 16                 	movzbl	(%rsi,%rdx), %eax
100004d24: 84 c0                       	testb	%al, %al
100004d26: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d29: 88 04 17                    	movb	%al, (%rdi,%rdx)
100004d2c: 0f b6 44 16 01              	movzbl	1(%rsi,%rdx), %eax
100004d31: 84 c0                       	testb	%al, %al
100004d33: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d36: 88 44 17 01                 	movb	%al, 1(%rdi,%rdx)
100004d3a: 0f b6 44 16 02              	movzbl	2(%rsi,%rdx), %eax
100004d3f: 84 c0                       	testb	%al, %al
100004d41: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d44: 88 44 17 02                 	movb	%al, 2(%rdi,%rdx)
100004d48: 0f b6 44 16 03              	movzbl	3(%rsi,%rdx), %eax
100004d4d: 84 c0                       	testb	%al, %al
100004d4f: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d52: 88 44 17 03                 	movb	%al, 3(%rdi,%rdx)
100004d56: 0f b6 44 16 04              	movzbl	4(%rsi,%rdx), %eax
100004d5b: 84 c0                       	testb	%al, %al
100004d5d: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d60: 88 44 17 04                 	movb	%al, 4(%rdi,%rdx)
100004d64: 0f b6 44 16 05              	movzbl	5(%rsi,%rdx), %eax
100004d69: 84 c0                       	testb	%al, %al
100004d6b: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d6e: 88 44 17 05                 	movb	%al, 5(%rdi,%rdx)
100004d72: 0f b6 44 16 06              	movzbl	6(%rsi,%rdx), %eax
100004d77: 84 c0                       	testb	%al, %al
100004d79: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d7c: 88 44 17 06                 	movb	%al, 6(%rdi,%rdx)
100004d80: 0f b6 44 16 07              	movzbl	7(%rsi,%rdx), %eax
100004d85: 84 c0                       	testb	%al, %al
100004d87: 0f 48 c1                    	cmovsl	%ecx, %eax
100004d8a: 88 44 17 07                 	movb	%al, 7(%rdi,%rdx)
100004d8e: 48 83 c2 08                 	addq	$8, %rdx
100004d92: 41 39 d0                    	cmpl	%edx, %r8d
100004d95: 75 89                       	jne	-119 <__Z4ReLUPaS_j+0x280>
100004d97: 48 89 ec                    	movq	%rbp, %rsp
100004d9a: 5d                          	popq	%rbp
100004d9b: c5 f8 77                    	vzeroupper
100004d9e: c3                          	retq
100004d9f: 45 89 ca                    	movl	%r9d, %r10d
100004da2: 41 83 e2 e0                 	andl	$-32, %r10d
100004da6: 42 8d 04 d5 00 00 00 00     	leal	(,%r10,8), %eax
100004dae: 41 89 d0                    	movl	%edx, %r8d
100004db1: 41 29 c0                    	subl	%eax, %r8d
100004db4: 4a 8d 04 d6                 	leaq	(%rsi,%r10,8), %rax
100004db8: 4a 8d 0c d7                 	leaq	(%rdi,%r10,8), %rcx
100004dbc: 45 31 db                    	xorl	%r11d, %r11d
100004dbf: 90                          	nop
100004dc0: c4 a1 7a 6f 4c de 70        	vmovdqu	112(%rsi,%r11,8), %xmm1
100004dc7: c5 f9 7f 8c 24 00 01 00 00  	vmovdqa	%xmm1, 256(%rsp)
100004dd0: c5 f9 6f 05 48 32 00 00     	vmovdqa	12872(%rip), %xmm0
100004dd8: c5 f9 6f e8                 	vmovdqa	%xmm0, %xmm5
100004ddc: c4 e2 71 00 c0              	vpshufb	%xmm0, %xmm1, %xmm0
100004de1: c4 a1 7a 6f 54 de 60        	vmovdqu	96(%rsi,%r11,8), %xmm2
100004de8: c4 e2 69 00 cd              	vpshufb	%xmm5, %xmm2, %xmm1
100004ded: c5 79 6f ea                 	vmovdqa	%xmm2, %xmm13
100004df1: c5 f9 7f 94 24 e0 00 00 00  	vmovdqa	%xmm2, 224(%rsp)
100004dfa: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
100004dfe: c4 a1 7a 6f 54 de 50        	vmovdqu	80(%rsi,%r11,8), %xmm2
100004e05: c5 f9 6f 0d 23 32 00 00     	vmovdqa	12835(%rip), %xmm1
100004e0d: c5 79 6f c1                 	vmovdqa	%xmm1, %xmm8
100004e11: c4 e2 69 00 c9              	vpshufb	%xmm1, %xmm2, %xmm1
100004e16: c5 79 6f da                 	vmovdqa	%xmm2, %xmm11
100004e1a: c5 f9 7f 94 24 20 01 00 00  	vmovdqa	%xmm2, 288(%rsp)
100004e23: c4 a1 7a 6f 5c de 40        	vmovdqu	64(%rsi,%r11,8), %xmm3
100004e2a: c4 c2 61 00 d0              	vpshufb	%xmm8, %xmm3, %xmm2
100004e2f: c5 79 6f e3                 	vmovdqa	%xmm3, %xmm12
100004e33: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100004e37: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
100004e3d: c4 a1 7a 6f 34 de           	vmovdqu	(%rsi,%r11,8), %xmm6
100004e43: c4 a1 7a 6f 64 de 10        	vmovdqu	16(%rsi,%r11,8), %xmm4
100004e4a: c5 f9 7f 64 24 10           	vmovdqa	%xmm4, 16(%rsp)
100004e50: c4 a1 7a 6f 5c de 20        	vmovdqu	32(%rsi,%r11,8), %xmm3
100004e57: c5 f9 7f 5c 24 30           	vmovdqa	%xmm3, 48(%rsp)
100004e5d: c4 a1 7a 6f 54 de 30        	vmovdqu	48(%rsi,%r11,8), %xmm2
100004e64: c5 f9 7f 14 24              	vmovdqa	%xmm2, (%rsp)
100004e69: c5 f9 6f 0d cf 31 00 00     	vmovdqa	12751(%rip), %xmm1
100004e71: c5 79 6f c9                 	vmovdqa	%xmm1, %xmm9
100004e75: c4 e2 69 00 d1              	vpshufb	%xmm1, %xmm2, %xmm2
100004e7a: c4 e2 61 00 d9              	vpshufb	%xmm1, %xmm3, %xmm3
100004e7f: c5 e1 61 d2                 	vpunpcklwd	%xmm2, %xmm3, %xmm2
100004e83: c5 f9 6f 0d c5 31 00 00     	vmovdqa	12741(%rip), %xmm1
100004e8b: c5 79 6f f1                 	vmovdqa	%xmm1, %xmm14
100004e8f: c4 e2 59 00 d9              	vpshufb	%xmm1, %xmm4, %xmm3
100004e94: c4 e2 49 00 e1              	vpshufb	%xmm1, %xmm6, %xmm4
100004e99: c5 79 6f fe                 	vmovdqa	%xmm6, %xmm15
100004e9d: c5 f9 7f 74 24 50           	vmovdqa	%xmm6, 80(%rsp)
100004ea3: c5 d9 61 db                 	vpunpcklwd	%xmm3, %xmm4, %xmm3
100004ea7: c4 e3 61 02 d2 02           	vpblendd	$2, %xmm2, %xmm3, %xmm2
100004ead: c4 e3 69 02 d0 0c           	vpblendd	$12, %xmm0, %xmm2, %xmm2
100004eb3: c4 a1 7a 6f 84 de f0 00 00 00       	vmovdqu	240(%rsi,%r11,8), %xmm0
100004ebd: c5 f9 7f 44 24 20           	vmovdqa	%xmm0, 32(%rsp)
100004ec3: c4 e2 79 00 e5              	vpshufb	%xmm5, %xmm0, %xmm4
100004ec8: c4 a3 fd 00 9c de e0 00 00 00 4e    	vpermq	$78, 224(%rsi,%r11,8), %ymm3
100004ed3: c4 c3 7d 39 da 01           	vextracti128	$1, %ymm3, %xmm10
100004ed9: c4 e2 29 00 ed              	vpshufb	%xmm5, %xmm10, %xmm5
100004ede: c5 79 7f 54 24 70           	vmovdqa	%xmm10, 112(%rsp)
100004ee4: c5 d1 61 e4                 	vpunpcklwd	%xmm4, %xmm5, %xmm4
100004ee8: c4 e3 7d 38 f4 01           	vinserti128	$1, %xmm4, %ymm0, %ymm6
100004eee: c4 a1 7a 6f 84 de d0 00 00 00       	vmovdqu	208(%rsi,%r11,8), %xmm0
100004ef8: c5 f9 7f 84 24 80 00 00 00  	vmovdqa	%xmm0, 128(%rsp)
100004f01: c4 c2 79 00 f8              	vpshufb	%xmm8, %xmm0, %xmm7
100004f06: c4 a3 fd 00 ac de c0 00 00 00 4e    	vpermq	$78, 192(%rsi,%r11,8), %ymm5
100004f11: c4 e3 7d 39 e8 01           	vextracti128	$1, %ymm5, %xmm0
100004f17: c5 f9 7f 84 24 b0 00 00 00  	vmovdqa	%xmm0, 176(%rsp)
100004f20: c4 c2 79 00 c8              	vpshufb	%xmm8, %xmm0, %xmm1
100004f25: c5 f1 61 cf                 	vpunpcklwd	%xmm7, %xmm1, %xmm1
100004f29: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100004f2f: c4 e3 75 02 ce 80           	vpblendd	$128, %ymm6, %ymm1, %ymm1
100004f35: c4 a3 fd 00 b4 de a0 00 00 00 4e    	vpermq	$78, 160(%rsi,%r11,8), %ymm6
100004f40: c4 a1 7a 6f 9c de b0 00 00 00       	vmovdqu	176(%rsi,%r11,8), %xmm3
100004f4a: c5 f9 7f 9c 24 c0 00 00 00  	vmovdqa	%xmm3, 192(%rsp)
100004f53: c4 e3 7d 39 f0 01           	vextracti128	$1, %ymm6, %xmm0
100004f59: c5 f9 7f 44 24 60           	vmovdqa	%xmm0, 96(%rsp)
100004f5f: c4 42 61 00 c1              	vpshufb	%xmm9, %xmm3, %xmm8
100004f64: c4 42 79 00 c9              	vpshufb	%xmm9, %xmm0, %xmm9
100004f69: c4 a3 fd 00 84 de 80 00 00 00 4e    	vpermq	$78, 128(%rsi,%r11,8), %ymm0
100004f74: c4 41 31 61 c0              	vpunpcklwd	%xmm8, %xmm9, %xmm8
100004f79: c4 e3 7d 39 c3 01           	vextracti128	$1, %ymm0, %xmm3
100004f7f: c5 f9 7f 9c 24 90 00 00 00  	vmovdqa	%xmm3, 144(%rsp)
100004f88: c4 a1 7a 6f 84 de 90 00 00 00       	vmovdqu	144(%rsi,%r11,8), %xmm0
100004f92: c5 f9 7f 44 24 40           	vmovdqa	%xmm0, 64(%rsp)
100004f98: c4 c2 79 00 c6              	vpshufb	%xmm14, %xmm0, %xmm0
100004f9d: c4 42 61 00 f6              	vpshufb	%xmm14, %xmm3, %xmm14
100004fa2: c5 89 61 c0                 	vpunpcklwd	%xmm0, %xmm14, %xmm0
100004fa6: c4 43 7d 38 c0 01           	vinserti128	$1, %xmm8, %ymm0, %ymm8
100004fac: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100004fb2: c4 c3 7d 02 c0 20           	vpblendd	$32, %ymm8, %ymm0, %ymm0
100004fb8: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
100004fbe: c4 e3 6d 02 c0 f0           	vpblendd	$240, %ymm0, %ymm2, %ymm0
100004fc4: c5 fd 7f 84 24 00 02 00 00  	vmovdqa	%ymm0, 512(%rsp)
100004fcd: c5 f9 6f 05 8b 30 00 00     	vmovdqa	12427(%rip), %xmm0
100004fd5: c5 f9 6f e8                 	vmovdqa	%xmm0, %xmm5
100004fd9: c5 f9 6f 9c 24 00 01 00 00  	vmovdqa	256(%rsp), %xmm3
100004fe2: c4 e2 61 00 c0              	vpshufb	%xmm0, %xmm3, %xmm0
100004fe7: c4 e2 11 00 cd              	vpshufb	%xmm5, %xmm13, %xmm1
100004fec: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
100004ff0: c5 79 6f 0d 78 30 00 00     	vmovdqa	12408(%rip), %xmm9
100004ff8: c4 c2 21 00 c9              	vpshufb	%xmm9, %xmm11, %xmm1
100004ffd: c4 c2 19 00 d1              	vpshufb	%xmm9, %xmm12, %xmm2
100005002: c4 41 79 6f ec              	vmovdqa	%xmm12, %xmm13
100005007: c5 79 7f a4 24 a0 00 00 00  	vmovdqa	%xmm12, 160(%rsp)
100005010: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005014: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
10000501a: c5 f9 6f 0d 5e 30 00 00     	vmovdqa	12382(%rip), %xmm1
100005022: c5 f9 6f f1                 	vmovdqa	%xmm1, %xmm6
100005026: c5 f9 6f 0c 24              	vmovdqa	(%rsp), %xmm1
10000502b: c4 e2 71 00 ce              	vpshufb	%xmm6, %xmm1, %xmm1
100005030: c5 79 6f 74 24 30           	vmovdqa	48(%rsp), %xmm14
100005036: c4 e2 09 00 d6              	vpshufb	%xmm6, %xmm14, %xmm2
10000503b: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
10000503f: c5 79 6f 25 49 30 00 00     	vmovdqa	12361(%rip), %xmm12
100005047: c5 79 6f 5c 24 10           	vmovdqa	16(%rsp), %xmm11
10000504d: c4 c2 21 00 d4              	vpshufb	%xmm12, %xmm11, %xmm2
100005052: c4 c2 01 00 e4              	vpshufb	%xmm12, %xmm15, %xmm4
100005057: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
10000505b: c4 e3 69 02 c9 02           	vpblendd	$2, %xmm1, %xmm2, %xmm1
100005061: c4 e3 71 02 c0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm0
100005067: c5 79 6f 7c 24 20           	vmovdqa	32(%rsp), %xmm15
10000506d: c4 e2 01 00 cd              	vpshufb	%xmm5, %xmm15, %xmm1
100005072: c4 e2 29 00 d5              	vpshufb	%xmm5, %xmm10, %xmm2
100005077: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
10000507b: c5 79 6f 84 24 80 00 00 00  	vmovdqa	128(%rsp), %xmm8
100005084: c4 c2 39 00 d1              	vpshufb	%xmm9, %xmm8, %xmm2
100005089: c5 f9 6f bc 24 b0 00 00 00  	vmovdqa	176(%rsp), %xmm7
100005092: c4 c2 41 00 e1              	vpshufb	%xmm9, %xmm7, %xmm4
100005097: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
10000509b: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
1000050a1: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000050a7: c4 e3 6d 02 c9 80           	vpblendd	$128, %ymm1, %ymm2, %ymm1
1000050ad: c5 79 6f 94 24 c0 00 00 00  	vmovdqa	192(%rsp), %xmm10
1000050b6: c4 e2 29 00 d6              	vpshufb	%xmm6, %xmm10, %xmm2
1000050bb: c5 79 6f 4c 24 60           	vmovdqa	96(%rsp), %xmm9
1000050c1: c4 e2 31 00 e6              	vpshufb	%xmm6, %xmm9, %xmm4
1000050c6: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000050ca: c5 f9 6f 64 24 40           	vmovdqa	64(%rsp), %xmm4
1000050d0: c4 c2 59 00 e4              	vpshufb	%xmm12, %xmm4, %xmm4
1000050d5: c5 f9 6f ac 24 90 00 00 00  	vmovdqa	144(%rsp), %xmm5
1000050de: c4 c2 51 00 ec              	vpshufb	%xmm12, %xmm5, %xmm5
1000050e3: c5 d1 61 e4                 	vpunpcklwd	%xmm4, %xmm5, %xmm4
1000050e7: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000050ed: c4 e3 7d 38 e4 01           	vinserti128	$1, %xmm4, %ymm0, %ymm4
1000050f3: c4 e3 5d 02 d2 20           	vpblendd	$32, %ymm2, %ymm4, %ymm2
1000050f9: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
1000050ff: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
100005105: c5 fd 7f 84 24 e0 01 00 00  	vmovdqa	%ymm0, 480(%rsp)
10000510e: c5 f9 6f 05 8a 2f 00 00     	vmovdqa	12170(%rip), %xmm0
100005116: c5 f9 6f e8                 	vmovdqa	%xmm0, %xmm5
10000511a: c4 e2 61 00 c0              	vpshufb	%xmm0, %xmm3, %xmm0
10000511f: c5 f9 6f 8c 24 e0 00 00 00  	vmovdqa	224(%rsp), %xmm1
100005128: c4 e2 71 00 cd              	vpshufb	%xmm5, %xmm1, %xmm1
10000512d: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
100005131: c5 79 6f 25 77 2f 00 00     	vmovdqa	12151(%rip), %xmm12
100005139: c5 f9 6f 9c 24 20 01 00 00  	vmovdqa	288(%rsp), %xmm3
100005142: c4 c2 61 00 cc              	vpshufb	%xmm12, %xmm3, %xmm1
100005147: c4 c2 11 00 d4              	vpshufb	%xmm12, %xmm13, %xmm2
10000514c: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005150: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
100005156: c5 79 6f 2d 62 2f 00 00     	vmovdqa	12130(%rip), %xmm13
10000515e: c5 f9 6f 34 24              	vmovdqa	(%rsp), %xmm6
100005163: c4 c2 49 00 cd              	vpshufb	%xmm13, %xmm6, %xmm1
100005168: c4 c2 09 00 d5              	vpshufb	%xmm13, %xmm14, %xmm2
10000516d: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005171: c5 f9 6f 15 57 2f 00 00     	vmovdqa	12119(%rip), %xmm2
100005179: c5 79 6f f2                 	vmovdqa	%xmm2, %xmm14
10000517d: c4 e2 21 00 d2              	vpshufb	%xmm2, %xmm11, %xmm2
100005182: c5 f9 6f 64 24 50           	vmovdqa	80(%rsp), %xmm4
100005188: c4 c2 59 00 e6              	vpshufb	%xmm14, %xmm4, %xmm4
10000518d: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
100005191: c4 e3 69 02 c9 02           	vpblendd	$2, %xmm1, %xmm2, %xmm1
100005197: c4 e3 71 02 c0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm0
10000519d: c4 e2 01 00 cd              	vpshufb	%xmm5, %xmm15, %xmm1
1000051a2: c5 79 6f 5c 24 70           	vmovdqa	112(%rsp), %xmm11
1000051a8: c4 e2 21 00 d5              	vpshufb	%xmm5, %xmm11, %xmm2
1000051ad: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
1000051b1: c4 c2 39 00 d4              	vpshufb	%xmm12, %xmm8, %xmm2
1000051b6: c4 c2 41 00 e4              	vpshufb	%xmm12, %xmm7, %xmm4
1000051bb: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000051bf: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
1000051c5: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000051cb: c4 e3 6d 02 c9 80           	vpblendd	$128, %ymm1, %ymm2, %ymm1
1000051d1: c4 c2 29 00 d5              	vpshufb	%xmm13, %xmm10, %xmm2
1000051d6: c4 c2 31 00 e5              	vpshufb	%xmm13, %xmm9, %xmm4
1000051db: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000051df: c5 79 6f 64 24 40           	vmovdqa	64(%rsp), %xmm12
1000051e5: c4 c2 19 00 e6              	vpshufb	%xmm14, %xmm12, %xmm4
1000051ea: c5 79 6f 84 24 90 00 00 00  	vmovdqa	144(%rsp), %xmm8
1000051f3: c4 c2 39 00 ee              	vpshufb	%xmm14, %xmm8, %xmm5
1000051f8: c5 d1 61 e4                 	vpunpcklwd	%xmm4, %xmm5, %xmm4
1000051fc: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005202: c4 e3 7d 38 e4 01           	vinserti128	$1, %xmm4, %ymm0, %ymm4
100005208: c4 e3 5d 02 d2 20           	vpblendd	$32, %ymm2, %ymm4, %ymm2
10000520e: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
100005214: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
10000521a: c5 fd 7f 84 24 c0 01 00 00  	vmovdqa	%ymm0, 448(%rsp)
100005223: c5 f9 6f 05 b5 2e 00 00     	vmovdqa	11957(%rip), %xmm0
10000522b: c5 f9 6f e8                 	vmovdqa	%xmm0, %xmm5
10000522f: c5 f9 6f bc 24 00 01 00 00  	vmovdqa	256(%rsp), %xmm7
100005238: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
10000523d: c5 79 6f bc 24 e0 00 00 00  	vmovdqa	224(%rsp), %xmm15
100005246: c4 e2 01 00 cd              	vpshufb	%xmm5, %xmm15, %xmm1
10000524b: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
10000524f: c5 f9 6f 0d 99 2e 00 00     	vmovdqa	11929(%rip), %xmm1
100005257: c5 79 6f c9                 	vmovdqa	%xmm1, %xmm9
10000525b: c4 e2 61 00 c9              	vpshufb	%xmm1, %xmm3, %xmm1
100005260: c5 f9 6f 94 24 a0 00 00 00  	vmovdqa	160(%rsp), %xmm2
100005269: c4 c2 69 00 d1              	vpshufb	%xmm9, %xmm2, %xmm2
10000526e: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005272: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
100005278: c5 f9 6f 0d 80 2e 00 00     	vmovdqa	11904(%rip), %xmm1
100005280: c5 f9 6f d9                 	vmovdqa	%xmm1, %xmm3
100005284: c4 e2 49 00 c9              	vpshufb	%xmm1, %xmm6, %xmm1
100005289: c5 79 6f 74 24 30           	vmovdqa	48(%rsp), %xmm14
10000528f: c4 e2 09 00 d3              	vpshufb	%xmm3, %xmm14, %xmm2
100005294: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005298: c5 f9 6f 15 70 2e 00 00     	vmovdqa	11888(%rip), %xmm2
1000052a0: c5 f9 6f f2                 	vmovdqa	%xmm2, %xmm6
1000052a4: c5 f9 6f 54 24 10           	vmovdqa	16(%rsp), %xmm2
1000052aa: c4 e2 69 00 d6              	vpshufb	%xmm6, %xmm2, %xmm2
1000052af: c5 79 6f 6c 24 50           	vmovdqa	80(%rsp), %xmm13
1000052b5: c4 e2 11 00 e6              	vpshufb	%xmm6, %xmm13, %xmm4
1000052ba: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000052be: c4 e3 69 02 c9 02           	vpblendd	$2, %xmm1, %xmm2, %xmm1
1000052c4: c4 e3 71 02 c0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm0
1000052ca: c5 f9 6f 4c 24 20           	vmovdqa	32(%rsp), %xmm1
1000052d0: c4 e2 71 00 cd              	vpshufb	%xmm5, %xmm1, %xmm1
1000052d5: c4 e2 21 00 d5              	vpshufb	%xmm5, %xmm11, %xmm2
1000052da: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
1000052de: c5 f9 6f 94 24 80 00 00 00  	vmovdqa	128(%rsp), %xmm2
1000052e7: c4 c2 69 00 d1              	vpshufb	%xmm9, %xmm2, %xmm2
1000052ec: c5 79 6f 94 24 b0 00 00 00  	vmovdqa	176(%rsp), %xmm10
1000052f5: c4 c2 29 00 e1              	vpshufb	%xmm9, %xmm10, %xmm4
1000052fa: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000052fe: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005304: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
10000530a: c4 e3 6d 02 c9 80           	vpblendd	$128, %ymm1, %ymm2, %ymm1
100005310: c5 79 6f 8c 24 c0 00 00 00  	vmovdqa	192(%rsp), %xmm9
100005319: c5 f9 6f e3                 	vmovdqa	%xmm3, %xmm4
10000531d: c4 e2 31 00 d3              	vpshufb	%xmm3, %xmm9, %xmm2
100005322: c5 f9 6f 5c 24 60           	vmovdqa	96(%rsp), %xmm3
100005328: c4 e2 61 00 e4              	vpshufb	%xmm4, %xmm3, %xmm4
10000532d: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
100005331: c4 e2 19 00 e6              	vpshufb	%xmm6, %xmm12, %xmm4
100005336: c4 e2 39 00 ee              	vpshufb	%xmm6, %xmm8, %xmm5
10000533b: c5 d1 61 e4                 	vpunpcklwd	%xmm4, %xmm5, %xmm4
10000533f: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005345: c4 e3 7d 38 e4 01           	vinserti128	$1, %xmm4, %ymm0, %ymm4
10000534b: c4 e3 5d 02 d2 20           	vpblendd	$32, %ymm2, %ymm4, %ymm2
100005351: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
100005357: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
10000535d: c5 fd 7f 84 24 a0 01 00 00  	vmovdqa	%ymm0, 416(%rsp)
100005366: c5 f9 6f 05 b2 2d 00 00     	vmovdqa	11698(%rip), %xmm0
10000536e: c5 f9 6f e8                 	vmovdqa	%xmm0, %xmm5
100005372: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
100005377: c4 e2 01 00 cd              	vpshufb	%xmm5, %xmm15, %xmm1
10000537c: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
100005380: c5 f9 6f 0d a8 2d 00 00     	vmovdqa	11688(%rip), %xmm1
100005388: c5 79 6f f9                 	vmovdqa	%xmm1, %xmm15
10000538c: c5 f9 6f b4 24 20 01 00 00  	vmovdqa	288(%rsp), %xmm6
100005395: c4 e2 49 00 c9              	vpshufb	%xmm1, %xmm6, %xmm1
10000539a: c5 f9 6f 94 24 a0 00 00 00  	vmovdqa	160(%rsp), %xmm2
1000053a3: c4 c2 69 00 d7              	vpshufb	%xmm15, %xmm2, %xmm2
1000053a8: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
1000053ac: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
1000053b2: c5 79 6f 05 86 2d 00 00     	vmovdqa	11654(%rip), %xmm8
1000053ba: c5 f9 6f 0c 24              	vmovdqa	(%rsp), %xmm1
1000053bf: c4 c2 71 00 c8              	vpshufb	%xmm8, %xmm1, %xmm1
1000053c4: c4 c2 09 00 d0              	vpshufb	%xmm8, %xmm14, %xmm2
1000053c9: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
1000053cd: c5 f9 6f 15 7b 2d 00 00     	vmovdqa	11643(%rip), %xmm2
1000053d5: c5 79 6f f2                 	vmovdqa	%xmm2, %xmm14
1000053d9: c5 79 6f 5c 24 10           	vmovdqa	16(%rsp), %xmm11
1000053df: c4 e2 21 00 d2              	vpshufb	%xmm2, %xmm11, %xmm2
1000053e4: c4 c2 11 00 e6              	vpshufb	%xmm14, %xmm13, %xmm4
1000053e9: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000053ed: c4 e3 69 02 c9 02           	vpblendd	$2, %xmm1, %xmm2, %xmm1
1000053f3: c4 e3 71 02 c0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm0
1000053f9: c5 79 6f 64 24 20           	vmovdqa	32(%rsp), %xmm12
1000053ff: c4 e2 19 00 cd              	vpshufb	%xmm5, %xmm12, %xmm1
100005404: c5 f9 6f 54 24 70           	vmovdqa	112(%rsp), %xmm2
10000540a: c4 e2 69 00 d5              	vpshufb	%xmm5, %xmm2, %xmm2
10000540f: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005413: c5 f9 6f bc 24 80 00 00 00  	vmovdqa	128(%rsp), %xmm7
10000541c: c4 c2 41 00 d7              	vpshufb	%xmm15, %xmm7, %xmm2
100005421: c4 c2 29 00 e7              	vpshufb	%xmm15, %xmm10, %xmm4
100005426: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
10000542a: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005430: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005436: c4 e3 6d 02 c9 80           	vpblendd	$128, %ymm1, %ymm2, %ymm1
10000543c: c4 c2 31 00 d0              	vpshufb	%xmm8, %xmm9, %xmm2
100005441: c4 c2 61 00 e0              	vpshufb	%xmm8, %xmm3, %xmm4
100005446: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
10000544a: c5 79 6f 6c 24 40           	vmovdqa	64(%rsp), %xmm13
100005450: c4 c2 11 00 e6              	vpshufb	%xmm14, %xmm13, %xmm4
100005455: c5 f9 6f 9c 24 90 00 00 00  	vmovdqa	144(%rsp), %xmm3
10000545e: c4 c2 61 00 ee              	vpshufb	%xmm14, %xmm3, %xmm5
100005463: c5 d1 61 e4                 	vpunpcklwd	%xmm4, %xmm5, %xmm4
100005467: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
10000546d: c4 e3 7d 38 e4 01           	vinserti128	$1, %xmm4, %ymm0, %ymm4
100005473: c4 e3 5d 02 d2 20           	vpblendd	$32, %ymm2, %ymm4, %ymm2
100005479: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
10000547f: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
100005485: c5 fd 7f 84 24 80 01 00 00  	vmovdqa	%ymm0, 384(%rsp)
10000548e: c5 79 6f 35 ca 2c 00 00     	vmovdqa	11466(%rip), %xmm14
100005496: c5 f9 6f 84 24 00 01 00 00  	vmovdqa	256(%rsp), %xmm0
10000549f: c4 c2 79 00 c6              	vpshufb	%xmm14, %xmm0, %xmm0
1000054a4: c5 f9 6f 8c 24 e0 00 00 00  	vmovdqa	224(%rsp), %xmm1
1000054ad: c4 c2 71 00 ce              	vpshufb	%xmm14, %xmm1, %xmm1
1000054b2: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
1000054b6: c5 f9 6f 0d b2 2c 00 00     	vmovdqa	11442(%rip), %xmm1
1000054be: c5 f9 6f e9                 	vmovdqa	%xmm1, %xmm5
1000054c2: c4 e2 49 00 c9              	vpshufb	%xmm1, %xmm6, %xmm1
1000054c7: c5 f9 6f 9c 24 a0 00 00 00  	vmovdqa	160(%rsp), %xmm3
1000054d0: c4 e2 61 00 d5              	vpshufb	%xmm5, %xmm3, %xmm2
1000054d5: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
1000054d9: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
1000054df: c5 79 6f 15 99 2c 00 00     	vmovdqa	11417(%rip), %xmm10
1000054e7: c5 f9 6f 34 24              	vmovdqa	(%rsp), %xmm6
1000054ec: c4 c2 49 00 ca              	vpshufb	%xmm10, %xmm6, %xmm1
1000054f1: c5 79 6f 4c 24 30           	vmovdqa	48(%rsp), %xmm9
1000054f7: c4 c2 31 00 d2              	vpshufb	%xmm10, %xmm9, %xmm2
1000054fc: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005500: c5 79 6f 3d 88 2c 00 00     	vmovdqa	11400(%rip), %xmm15
100005508: c4 c2 21 00 d7              	vpshufb	%xmm15, %xmm11, %xmm2
10000550d: c5 f9 6f 64 24 50           	vmovdqa	80(%rsp), %xmm4
100005513: c4 c2 59 00 e7              	vpshufb	%xmm15, %xmm4, %xmm4
100005518: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
10000551c: c4 e3 69 02 c9 02           	vpblendd	$2, %xmm1, %xmm2, %xmm1
100005522: c4 e3 71 02 c0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm0
100005528: c4 c2 19 00 ce              	vpshufb	%xmm14, %xmm12, %xmm1
10000552d: c5 79 6f 44 24 70           	vmovdqa	112(%rsp), %xmm8
100005533: c4 c2 39 00 d6              	vpshufb	%xmm14, %xmm8, %xmm2
100005538: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
10000553c: c4 e2 41 00 d5              	vpshufb	%xmm5, %xmm7, %xmm2
100005541: c5 79 6f a4 24 b0 00 00 00  	vmovdqa	176(%rsp), %xmm12
10000554a: c4 e2 19 00 e5              	vpshufb	%xmm5, %xmm12, %xmm4
10000554f: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
100005553: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005559: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
10000555f: c4 e3 6d 02 c9 80           	vpblendd	$128, %ymm1, %ymm2, %ymm1
100005565: c5 f9 6f bc 24 c0 00 00 00  	vmovdqa	192(%rsp), %xmm7
10000556e: c4 c2 41 00 d2              	vpshufb	%xmm10, %xmm7, %xmm2
100005573: c5 f9 6f 64 24 60           	vmovdqa	96(%rsp), %xmm4
100005579: c4 c2 59 00 e2              	vpshufb	%xmm10, %xmm4, %xmm4
10000557e: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
100005582: c4 c2 11 00 e7              	vpshufb	%xmm15, %xmm13, %xmm4
100005587: c5 79 6f b4 24 90 00 00 00  	vmovdqa	144(%rsp), %xmm14
100005590: c4 c2 09 00 ef              	vpshufb	%xmm15, %xmm14, %xmm5
100005595: c5 d1 61 e4                 	vpunpcklwd	%xmm4, %xmm5, %xmm4
100005599: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
10000559f: c4 e3 7d 38 e4 01           	vinserti128	$1, %xmm4, %ymm0, %ymm4
1000055a5: c4 e3 5d 02 d2 20           	vpblendd	$32, %ymm2, %ymm4, %ymm2
1000055ab: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
1000055b1: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
1000055b7: c5 fd 7f 84 24 60 01 00 00  	vmovdqa	%ymm0, 352(%rsp)
1000055c0: c5 79 6f 1d d8 2b 00 00     	vmovdqa	11224(%rip), %xmm11
1000055c8: c5 79 6f ac 24 00 01 00 00  	vmovdqa	256(%rsp), %xmm13
1000055d1: c4 c2 11 00 c3              	vpshufb	%xmm11, %xmm13, %xmm0
1000055d6: c5 f9 6f 8c 24 e0 00 00 00  	vmovdqa	224(%rsp), %xmm1
1000055df: c4 c2 71 00 cb              	vpshufb	%xmm11, %xmm1, %xmm1
1000055e4: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
1000055e8: c5 f9 6f 0d c0 2b 00 00     	vmovdqa	11200(%rip), %xmm1
1000055f0: c5 f9 6f e9                 	vmovdqa	%xmm1, %xmm5
1000055f4: c5 f9 6f 8c 24 20 01 00 00  	vmovdqa	288(%rsp), %xmm1
1000055fd: c4 e2 71 00 cd              	vpshufb	%xmm5, %xmm1, %xmm1
100005602: c4 e2 61 00 d5              	vpshufb	%xmm5, %xmm3, %xmm2
100005607: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
10000560b: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
100005611: c5 f9 6f 0d a7 2b 00 00     	vmovdqa	11175(%rip), %xmm1
100005619: c5 f9 6f d9                 	vmovdqa	%xmm1, %xmm3
10000561d: c4 e2 49 00 c9              	vpshufb	%xmm1, %xmm6, %xmm1
100005622: c4 e2 31 00 d3              	vpshufb	%xmm3, %xmm9, %xmm2
100005627: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
10000562b: c5 f9 6f 15 9d 2b 00 00     	vmovdqa	11165(%rip), %xmm2
100005633: c5 79 6f d2                 	vmovdqa	%xmm2, %xmm10
100005637: c5 f9 6f 54 24 10           	vmovdqa	16(%rsp), %xmm2
10000563d: c4 c2 69 00 d2              	vpshufb	%xmm10, %xmm2, %xmm2
100005642: c5 79 6f 7c 24 50           	vmovdqa	80(%rsp), %xmm15
100005648: c4 c2 01 00 e2              	vpshufb	%xmm10, %xmm15, %xmm4
10000564d: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
100005651: c4 e3 69 02 c9 02           	vpblendd	$2, %xmm1, %xmm2, %xmm1
100005657: c4 e3 71 02 c0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm0
10000565d: c5 f9 6f 4c 24 20           	vmovdqa	32(%rsp), %xmm1
100005663: c4 c2 71 00 cb              	vpshufb	%xmm11, %xmm1, %xmm1
100005668: c4 c2 39 00 d3              	vpshufb	%xmm11, %xmm8, %xmm2
10000566d: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005671: c5 79 6f 8c 24 80 00 00 00  	vmovdqa	128(%rsp), %xmm9
10000567a: c4 e2 31 00 d5              	vpshufb	%xmm5, %xmm9, %xmm2
10000567f: c4 e2 19 00 e5              	vpshufb	%xmm5, %xmm12, %xmm4
100005684: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
100005688: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
10000568e: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005694: c4 e3 6d 02 c9 80           	vpblendd	$128, %ymm1, %ymm2, %ymm1
10000569a: c4 e2 41 00 d3              	vpshufb	%xmm3, %xmm7, %xmm2
10000569f: c5 f9 6f 74 24 60           	vmovdqa	96(%rsp), %xmm6
1000056a5: c4 e2 49 00 e3              	vpshufb	%xmm3, %xmm6, %xmm4
1000056aa: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000056ae: c5 79 6f 5c 24 40           	vmovdqa	64(%rsp), %xmm11
1000056b4: c4 c2 21 00 e2              	vpshufb	%xmm10, %xmm11, %xmm4
1000056b9: c4 c2 09 00 ea              	vpshufb	%xmm10, %xmm14, %xmm5
1000056be: c4 41 79 6f d6              	vmovdqa	%xmm14, %xmm10
1000056c3: c5 d1 61 e4                 	vpunpcklwd	%xmm4, %xmm5, %xmm4
1000056c7: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000056cd: c4 e3 7d 38 e4 01           	vinserti128	$1, %xmm4, %ymm0, %ymm4
1000056d3: c4 e3 5d 02 d2 20           	vpblendd	$32, %ymm2, %ymm4, %ymm2
1000056d9: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
1000056df: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
1000056e5: c5 fd 7f 84 24 40 01 00 00  	vmovdqa	%ymm0, 320(%rsp)
1000056ee: c5 f9 6f 05 ea 2a 00 00     	vmovdqa	10986(%rip), %xmm0
1000056f6: c5 f9 6f d8                 	vmovdqa	%xmm0, %xmm3
1000056fa: c4 e2 11 00 c0              	vpshufb	%xmm0, %xmm13, %xmm0
1000056ff: c5 f9 6f 8c 24 e0 00 00 00  	vmovdqa	224(%rsp), %xmm1
100005708: c4 e2 71 00 cb              	vpshufb	%xmm3, %xmm1, %xmm1
10000570d: c5 f1 61 c0                 	vpunpcklwd	%xmm0, %xmm1, %xmm0
100005711: c5 f9 6f 0d d7 2a 00 00     	vmovdqa	10967(%rip), %xmm1
100005719: c5 f9 6f e9                 	vmovdqa	%xmm1, %xmm5
10000571d: c5 f9 6f 8c 24 20 01 00 00  	vmovdqa	288(%rsp), %xmm1
100005726: c4 e2 71 00 cd              	vpshufb	%xmm5, %xmm1, %xmm1
10000572b: c5 f9 6f 94 24 a0 00 00 00  	vmovdqa	160(%rsp), %xmm2
100005734: c4 e2 69 00 d5              	vpshufb	%xmm5, %xmm2, %xmm2
100005739: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
10000573d: c4 e3 71 02 c0 08           	vpblendd	$8, %xmm0, %xmm1, %xmm0
100005743: c5 f9 6f 0d b5 2a 00 00     	vmovdqa	10933(%rip), %xmm1
10000574b: c5 79 6f c1                 	vmovdqa	%xmm1, %xmm8
10000574f: c5 f9 6f 0c 24              	vmovdqa	(%rsp), %xmm1
100005754: c4 c2 71 00 c8              	vpshufb	%xmm8, %xmm1, %xmm1
100005759: c5 f9 6f 54 24 30           	vmovdqa	48(%rsp), %xmm2
10000575f: c4 c2 69 00 d0              	vpshufb	%xmm8, %xmm2, %xmm2
100005764: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
100005768: c5 f9 6f 15 a0 2a 00 00     	vmovdqa	10912(%rip), %xmm2
100005770: c5 79 6f f2                 	vmovdqa	%xmm2, %xmm14
100005774: c5 f9 6f 54 24 10           	vmovdqa	16(%rsp), %xmm2
10000577a: c4 c2 69 00 d6              	vpshufb	%xmm14, %xmm2, %xmm2
10000577f: c4 c2 01 00 e6              	vpshufb	%xmm14, %xmm15, %xmm4
100005784: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
100005788: c4 e3 69 02 c9 02           	vpblendd	$2, %xmm1, %xmm2, %xmm1
10000578e: c4 e3 71 02 c0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm0
100005794: c5 f9 6f 4c 24 20           	vmovdqa	32(%rsp), %xmm1
10000579a: c4 e2 71 00 cb              	vpshufb	%xmm3, %xmm1, %xmm1
10000579f: c5 f9 6f 54 24 70           	vmovdqa	112(%rsp), %xmm2
1000057a5: c4 e2 69 00 d3              	vpshufb	%xmm3, %xmm2, %xmm2
1000057aa: c5 e9 61 c9                 	vpunpcklwd	%xmm1, %xmm2, %xmm1
1000057ae: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
1000057b4: c4 e2 31 00 d5              	vpshufb	%xmm5, %xmm9, %xmm2
1000057b9: c4 e2 19 00 e5              	vpshufb	%xmm5, %xmm12, %xmm4
1000057be: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000057c2: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000057c8: c4 e3 6d 02 c9 80           	vpblendd	$128, %ymm1, %ymm2, %ymm1
1000057ce: c4 c2 41 00 d0              	vpshufb	%xmm8, %xmm7, %xmm2
1000057d3: c4 c2 49 00 e0              	vpshufb	%xmm8, %xmm6, %xmm4
1000057d8: c5 d9 61 d2                 	vpunpcklwd	%xmm2, %xmm4, %xmm2
1000057dc: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000057e2: c4 c2 21 00 e6              	vpshufb	%xmm14, %xmm11, %xmm4
1000057e7: c4 c2 29 00 de              	vpshufb	%xmm14, %xmm10, %xmm3
1000057ec: c5 e1 61 dc                 	vpunpcklwd	%xmm4, %xmm3, %xmm3
1000057f0: c4 e3 7d 38 db 01           	vinserti128	$1, %xmm3, %ymm0, %ymm3
1000057f6: c4 e3 65 02 d2 20           	vpblendd	$32, %ymm2, %ymm3, %ymm2
1000057fc: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
100005802: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
100005808: c5 d9 ef e4                 	vpxor	%xmm4, %xmm4, %xmm4
10000580c: c4 e2 5d 3c ac 24 80 01 00 00       	vpmaxsb	384(%rsp), %ymm4, %ymm5
100005816: c4 62 5d 3c bc 24 60 01 00 00       	vpmaxsb	352(%rsp), %ymm4, %ymm15
100005820: c4 62 5d 3c 94 24 40 01 00 00       	vpmaxsb	320(%rsp), %ymm4, %ymm10
10000582a: c4 62 7d 3c c4              	vpmaxsb	%ymm4, %ymm0, %ymm8
10000582f: c4 63 7d 39 c0 01           	vextracti128	$1, %ymm8, %xmm0
100005835: c5 f9 7f 84 24 90 00 00 00  	vmovdqa	%xmm0, 144(%rsp)
10000583e: c4 63 7d 39 d1 01           	vextracti128	$1, %ymm10, %xmm1
100005844: c5 f9 7f 8c 24 80 00 00 00  	vmovdqa	%xmm1, 128(%rsp)
10000584d: c5 f1 68 d0                 	vpunpckhbw	%xmm0, %xmm1, %xmm2
100005851: c5 f9 7f 54 24 20           	vmovdqa	%xmm2, 32(%rsp)
100005857: c5 f9 6f 05 c1 29 00 00     	vmovdqa	10689(%rip), %xmm0
10000585f: c4 e2 69 00 c0              	vpshufb	%xmm0, %xmm2, %xmm0
100005864: c5 f9 6f 0d c4 29 00 00     	vmovdqa	10692(%rip), %xmm1
10000586c: c4 e2 69 00 c9              	vpshufb	%xmm1, %xmm2, %xmm1
100005871: c4 e3 75 38 c0 01           	vinserti128	$1, %xmm0, %ymm1, %ymm0
100005877: c4 63 7d 39 f9 01           	vextracti128	$1, %ymm15, %xmm1
10000587d: c5 f9 7f 4c 24 70           	vmovdqa	%xmm1, 112(%rsp)
100005883: c4 e3 7d 39 ea 01           	vextracti128	$1, %ymm5, %xmm2
100005889: c5 fd 6f fd                 	vmovdqa	%ymm5, %ymm7
10000588d: c5 fd 7f ac 24 c0 00 00 00  	vmovdqa	%ymm5, 192(%rsp)
100005896: c5 f9 7f 54 24 60           	vmovdqa	%xmm2, 96(%rsp)
10000589c: c5 e9 68 d9                 	vpunpckhbw	%xmm1, %xmm2, %xmm3
1000058a0: c5 f9 7f 5c 24 10           	vmovdqa	%xmm3, 16(%rsp)
1000058a6: c5 f9 6f 0d 92 29 00 00     	vmovdqa	10642(%rip), %xmm1
1000058ae: c4 e2 61 00 c9              	vpshufb	%xmm1, %xmm3, %xmm1
1000058b3: c5 f9 6f 15 95 29 00 00     	vmovdqa	10645(%rip), %xmm2
1000058bb: c4 e2 61 00 d2              	vpshufb	%xmm2, %xmm3, %xmm2
1000058c0: c4 e3 6d 38 c9 01           	vinserti128	$1, %xmm1, %ymm2, %ymm1
1000058c6: c4 62 5d 3c 8c 24 c0 01 00 00       	vpmaxsb	448(%rsp), %ymm4, %ymm9
1000058d0: c4 e2 5d 3c b4 24 a0 01 00 00       	vpmaxsb	416(%rsp), %ymm4, %ymm6
1000058da: c4 e3 75 0e d8 88           	vpblendw	$136, %ymm0, %ymm1, %ymm3
1000058e0: c4 e3 7d 39 f0 01           	vextracti128	$1, %ymm6, %xmm0
1000058e6: c5 f9 7f 44 24 50           	vmovdqa	%xmm0, 80(%rsp)
1000058ec: c4 63 7d 39 c9 01           	vextracti128	$1, %ymm9, %xmm1
1000058f2: c5 f9 7f 4c 24 40           	vmovdqa	%xmm1, 64(%rsp)
1000058f8: c5 f1 68 d0                 	vpunpckhbw	%xmm0, %xmm1, %xmm2
1000058fc: c5 f9 7f 14 24              	vmovdqa	%xmm2, (%rsp)
100005901: c5 f9 6f 05 57 29 00 00     	vmovdqa	10583(%rip), %xmm0
100005909: c4 e2 69 00 c8              	vpshufb	%xmm0, %xmm2, %xmm1
10000590e: c5 f9 6f 05 5a 29 00 00     	vmovdqa	10586(%rip), %xmm0
100005916: c4 e2 69 00 d0              	vpshufb	%xmm0, %xmm2, %xmm2
10000591b: c4 e3 6d 38 c9 01           	vinserti128	$1, %xmm1, %ymm2, %ymm1
100005921: c4 e2 5d 3c ac 24 00 02 00 00       	vpmaxsb	512(%rsp), %ymm4, %ymm5
10000592b: c4 e2 5d 3c a4 24 e0 01 00 00       	vpmaxsb	480(%rsp), %ymm4, %ymm4
100005935: c4 e3 7d 39 e0 01           	vextracti128	$1, %ymm4, %xmm0
10000593b: c5 f9 7f 44 24 30           	vmovdqa	%xmm0, 48(%rsp)
100005941: c4 e3 7d 39 ea 01           	vextracti128	$1, %ymm5, %xmm2
100005947: c5 f9 7f 94 24 b0 00 00 00  	vmovdqa	%xmm2, 176(%rsp)
100005950: c5 e9 68 d0                 	vpunpckhbw	%xmm0, %xmm2, %xmm2
100005954: c5 f9 7f 94 24 a0 00 00 00  	vmovdqa	%xmm2, 160(%rsp)
10000595d: c5 f9 6f 05 1b 29 00 00     	vmovdqa	10523(%rip), %xmm0
100005965: c4 e2 69 00 c0              	vpshufb	%xmm0, %xmm2, %xmm0
10000596a: c4 62 79 34 f2              	vpmovzxwq	%xmm2, %xmm14
10000596f: c4 e3 0d 38 c0 01           	vinserti128	$1, %xmm0, %ymm14, %ymm0
100005975: c4 e3 7d 0e c1 22           	vpblendw	$34, %ymm1, %ymm0, %ymm0
10000597b: c4 e3 7d 02 c3 aa           	vpblendd	$170, %ymm3, %ymm0, %ymm0
100005981: c5 fd 7f 84 24 e0 00 00 00  	vmovdqa	%ymm0, 224(%rsp)
10000598a: c4 c1 29 60 c0              	vpunpcklbw	%xmm8, %xmm10, %xmm0
10000598f: c5 f9 6f 0d f9 28 00 00     	vmovdqa	10489(%rip), %xmm1
100005997: c4 e2 79 00 c9              	vpshufb	%xmm1, %xmm0, %xmm1
10000599c: c5 f9 6f 15 fc 28 00 00     	vmovdqa	10492(%rip), %xmm2
1000059a4: c4 e2 79 00 da              	vpshufb	%xmm2, %xmm0, %xmm3
1000059a9: c4 63 65 38 f1 01           	vinserti128	$1, %xmm1, %ymm3, %ymm14
1000059af: c4 c1 41 60 df              	vpunpcklbw	%xmm15, %xmm7, %xmm3
1000059b4: c5 f9 6f 0d f4 28 00 00     	vmovdqa	10484(%rip), %xmm1
1000059bc: c4 e2 61 00 c9              	vpshufb	%xmm1, %xmm3, %xmm1
1000059c1: c5 f9 6f 15 f7 28 00 00     	vmovdqa	10487(%rip), %xmm2
1000059c9: c4 62 61 00 ea              	vpshufb	%xmm2, %xmm3, %xmm13
1000059ce: c4 e3 15 38 c9 01           	vinserti128	$1, %xmm1, %ymm13, %ymm1
1000059d4: c4 43 75 0e ee 88           	vpblendw	$136, %ymm14, %ymm1, %ymm13
1000059da: c5 b1 60 ce                 	vpunpcklbw	%xmm6, %xmm9, %xmm1
1000059de: c5 f9 6f 15 ea 28 00 00     	vmovdqa	10474(%rip), %xmm2
1000059e6: c4 62 71 00 f2              	vpshufb	%xmm2, %xmm1, %xmm14
1000059eb: c5 f9 6f 15 ed 28 00 00     	vmovdqa	10477(%rip), %xmm2
1000059f3: c4 62 71 00 e2              	vpshufb	%xmm2, %xmm1, %xmm12
1000059f8: c4 43 1d 38 e6 01           	vinserti128	$1, %xmm14, %ymm12, %ymm12
1000059fe: c5 51 60 f4                 	vpunpcklbw	%xmm4, %xmm5, %xmm14
100005a02: c5 f9 6f 15 e6 28 00 00     	vmovdqa	10470(%rip), %xmm2
100005a0a: c4 e2 09 00 d2              	vpshufb	%xmm2, %xmm14, %xmm2
100005a0f: c5 f9 6f 3d e9 28 00 00     	vmovdqa	10473(%rip), %xmm7
100005a17: c4 62 09 00 df              	vpshufb	%xmm7, %xmm14, %xmm11
100005a1c: c4 e3 25 38 d2 01           	vinserti128	$1, %xmm2, %ymm11, %ymm2
100005a22: c4 c3 6d 0e d4 22           	vpblendw	$34, %ymm12, %ymm2, %ymm2
100005a28: c4 c3 6d 02 d5 aa           	vpblendd	$170, %ymm13, %ymm2, %ymm2
100005a2e: c5 fd 7f 94 24 20 01 00 00  	vmovdqa	%ymm2, 288(%rsp)
100005a37: c5 79 6f 1d e1 27 00 00     	vmovdqa	10209(%rip), %xmm11
100005a3f: c4 c2 79 00 d3              	vpshufb	%xmm11, %xmm0, %xmm2
100005a44: c5 79 6f 25 e4 27 00 00     	vmovdqa	10212(%rip), %xmm12
100005a4c: c4 c2 79 00 c4              	vpshufb	%xmm12, %xmm0, %xmm0
100005a51: c4 e3 7d 38 c2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm0
100005a57: c5 79 6f 2d e1 27 00 00     	vmovdqa	10209(%rip), %xmm13
100005a5f: c4 c2 61 00 d5              	vpshufb	%xmm13, %xmm3, %xmm2
100005a64: c4 e2 61 00 1d e3 27 00 00  	vpshufb	10211(%rip), %xmm3, %xmm3
100005a6d: c4 e3 65 38 d2 01           	vinserti128	$1, %xmm2, %ymm3, %ymm2
100005a73: c4 e3 6d 0e c0 88           	vpblendw	$136, %ymm0, %ymm2, %ymm0
100005a79: c4 e2 71 00 15 de 27 00 00  	vpshufb	10206(%rip), %xmm1, %xmm2
100005a82: c5 f9 6f 1d e6 27 00 00     	vmovdqa	10214(%rip), %xmm3
100005a8a: c4 e2 71 00 cb              	vpshufb	%xmm3, %xmm1, %xmm1
100005a8f: c4 e3 75 38 ca 01           	vinserti128	$1, %xmm2, %ymm1, %ymm1
100005a95: c4 e2 09 00 15 e2 27 00 00  	vpshufb	10210(%rip), %xmm14, %xmm2
100005a9e: c4 c2 79 34 de              	vpmovzxwq	%xmm14, %xmm3
100005aa3: c4 e3 65 38 d2 01           	vinserti128	$1, %xmm2, %ymm3, %ymm2
100005aa9: c4 e3 6d 0e c9 22           	vpblendw	$34, %ymm1, %ymm2, %ymm1
100005aaf: c4 e3 75 02 c0 aa           	vpblendd	$170, %ymm0, %ymm1, %ymm0
100005ab5: c5 fd 7f 84 24 00 01 00 00  	vmovdqa	%ymm0, 256(%rsp)
100005abe: c4 c1 29 68 c8              	vpunpckhbw	%xmm8, %xmm10, %xmm1
100005ac3: c5 79 6f 15 c5 27 00 00     	vmovdqa	10181(%rip), %xmm10
100005acb: c4 c2 71 00 c2              	vpshufb	%xmm10, %xmm1, %xmm0
100005ad0: c5 79 6f 35 c8 27 00 00     	vmovdqa	10184(%rip), %xmm14
100005ad8: c4 c2 71 00 d6              	vpshufb	%xmm14, %xmm1, %xmm2
100005add: c4 e3 6d 38 c0 01           	vinserti128	$1, %xmm0, %ymm2, %ymm0
100005ae3: c5 fd 6f 94 24 c0 00 00 00  	vmovdqa	192(%rsp), %ymm2
100005aec: c4 c1 69 68 d7              	vpunpckhbw	%xmm15, %xmm2, %xmm2
100005af1: c4 e2 69 00 1d b6 27 00 00  	vpshufb	10166(%rip), %xmm2, %xmm3
100005afa: c4 62 69 00 05 bd 27 00 00  	vpshufb	10173(%rip), %xmm2, %xmm8
100005b03: c4 e3 3d 38 db 01           	vinserti128	$1, %xmm3, %ymm8, %ymm3
100005b09: c4 63 65 0e f8 88           	vpblendw	$136, %ymm0, %ymm3, %ymm15
100005b0f: c5 b1 68 de                 	vpunpckhbw	%xmm6, %xmm9, %xmm3
100005b13: c5 79 6f 0d b5 27 00 00     	vmovdqa	10165(%rip), %xmm9
100005b1b: c4 c2 61 00 f1              	vpshufb	%xmm9, %xmm3, %xmm6
100005b20: c5 f9 6f 05 b8 27 00 00     	vmovdqa	10168(%rip), %xmm0
100005b28: c4 e2 61 00 f8              	vpshufb	%xmm0, %xmm3, %xmm7
100005b2d: c4 e3 45 38 f6 01           	vinserti128	$1, %xmm6, %ymm7, %ymm6
100005b33: c5 d1 68 e4                 	vpunpckhbw	%xmm4, %xmm5, %xmm4
100005b37: c4 e2 59 00 2d b0 27 00 00  	vpshufb	10160(%rip), %xmm4, %xmm5
100005b40: c5 79 6f 05 b8 27 00 00     	vmovdqa	10168(%rip), %xmm8
100005b48: c4 c2 59 00 f8              	vpshufb	%xmm8, %xmm4, %xmm7
100005b4d: c4 e3 45 38 ed 01           	vinserti128	$1, %xmm5, %ymm7, %ymm5
100005b53: c4 e3 55 0e ee 22           	vpblendw	$34, %ymm6, %ymm5, %ymm5
100005b59: c4 c3 55 02 c7 aa           	vpblendd	$170, %ymm15, %ymm5, %ymm0
100005b5f: c5 fd 7f 84 24 c0 00 00 00  	vmovdqa	%ymm0, 192(%rsp)
100005b68: c4 c2 71 00 eb              	vpshufb	%xmm11, %xmm1, %xmm5
100005b6d: c4 c2 71 00 cc              	vpshufb	%xmm12, %xmm1, %xmm1
100005b72: c4 e3 75 38 cd 01           	vinserti128	$1, %xmm5, %ymm1, %ymm1
100005b78: c4 c2 69 00 ed              	vpshufb	%xmm13, %xmm2, %xmm5
100005b7d: c5 79 6f 1d cb 26 00 00     	vmovdqa	9931(%rip), %xmm11
100005b85: c4 c2 69 00 d3              	vpshufb	%xmm11, %xmm2, %xmm2
100005b8a: c4 e3 6d 38 d5 01           	vinserti128	$1, %xmm5, %ymm2, %ymm2
100005b90: c4 e3 6d 0e c9 88           	vpblendw	$136, %ymm1, %ymm2, %ymm1
100005b96: c5 79 6f 25 c2 26 00 00     	vmovdqa	9922(%rip), %xmm12
100005b9e: c4 c2 61 00 d4              	vpshufb	%xmm12, %xmm3, %xmm2
100005ba3: c4 e2 61 00 1d c4 26 00 00  	vpshufb	9924(%rip), %xmm3, %xmm3
100005bac: c4 e3 65 38 d2 01           	vinserti128	$1, %xmm2, %ymm3, %ymm2
100005bb2: c5 79 6f 2d c6 26 00 00     	vmovdqa	9926(%rip), %xmm13
100005bba: c4 c2 59 00 dd              	vpshufb	%xmm13, %xmm4, %xmm3
100005bbf: c4 e2 79 34 e4              	vpmovzxwq	%xmm4, %xmm4
100005bc4: c4 e3 5d 38 db 01           	vinserti128	$1, %xmm3, %ymm4, %ymm3
100005bca: c4 e3 65 0e d2 22           	vpblendw	$34, %ymm2, %ymm3, %ymm2
100005bd0: c4 63 6d 02 f9 aa           	vpblendd	$170, %ymm1, %ymm2, %ymm15
100005bd6: c5 f9 6f 84 24 80 00 00 00  	vmovdqa	128(%rsp), %xmm0
100005bdf: c5 f9 60 9c 24 90 00 00 00  	vpunpcklbw	144(%rsp), %xmm0, %xmm3
100005be8: c4 c2 61 00 d2              	vpshufb	%xmm10, %xmm3, %xmm2
100005bed: c4 c2 61 00 e6              	vpshufb	%xmm14, %xmm3, %xmm4
100005bf2: c4 e3 5d 38 d2 01           	vinserti128	$1, %xmm2, %ymm4, %ymm2
100005bf8: c5 f9 6f 44 24 60           	vmovdqa	96(%rsp), %xmm0
100005bfe: c5 f9 60 64 24 70           	vpunpcklbw	112(%rsp), %xmm0, %xmm4
100005c04: c5 f9 6f 0d a4 26 00 00     	vmovdqa	9892(%rip), %xmm1
100005c0c: c4 e2 59 00 e9              	vpshufb	%xmm1, %xmm4, %xmm5
100005c11: c5 79 6f 15 a7 26 00 00     	vmovdqa	9895(%rip), %xmm10
100005c19: c4 c2 59 00 f2              	vpshufb	%xmm10, %xmm4, %xmm6
100005c1e: c4 e3 4d 38 ed 01           	vinserti128	$1, %xmm5, %ymm6, %ymm5
100005c24: c4 e3 55 0e d2 88           	vpblendw	$136, %ymm2, %ymm5, %ymm2
100005c2a: c5 f9 6f 44 24 40           	vmovdqa	64(%rsp), %xmm0
100005c30: c5 f9 60 6c 24 50           	vpunpcklbw	80(%rsp), %xmm0, %xmm5
100005c36: c4 c2 51 00 f1              	vpshufb	%xmm9, %xmm5, %xmm6
100005c3b: c5 f9 6f 05 9d 26 00 00     	vmovdqa	9885(%rip), %xmm0
100005c43: c4 e2 51 00 f8              	vpshufb	%xmm0, %xmm5, %xmm7
100005c48: c4 e3 45 38 f6 01           	vinserti128	$1, %xmm6, %ymm7, %ymm6
100005c4e: c5 f9 6f 84 24 b0 00 00 00  	vmovdqa	176(%rsp), %xmm0
100005c57: c5 f9 60 7c 24 30           	vpunpcklbw	48(%rsp), %xmm0, %xmm7
100005c5d: c5 79 6f 35 8b 26 00 00     	vmovdqa	9867(%rip), %xmm14
100005c65: c4 c2 41 00 c6              	vpshufb	%xmm14, %xmm7, %xmm0
100005c6a: c4 42 41 00 c8              	vpshufb	%xmm8, %xmm7, %xmm9
100005c6f: c4 e3 35 38 c0 01           	vinserti128	$1, %xmm0, %ymm9, %ymm0
100005c75: c4 e3 7d 0e c6 22           	vpblendw	$34, %ymm6, %ymm0, %ymm0
100005c7b: c4 e3 7d 02 d2 aa           	vpblendd	$170, %ymm2, %ymm0, %ymm2
100005c81: c4 e2 61 00 05 96 25 00 00  	vpshufb	9622(%rip), %xmm3, %xmm0
100005c8a: c4 e2 61 00 1d 9d 25 00 00  	vpshufb	9629(%rip), %xmm3, %xmm3
100005c93: c4 e3 65 38 c0 01           	vinserti128	$1, %xmm0, %ymm3, %ymm0
100005c99: c4 e2 59 00 1d 9e 25 00 00  	vpshufb	9630(%rip), %xmm4, %xmm3
100005ca2: c4 c2 59 00 e3              	vpshufb	%xmm11, %xmm4, %xmm4
100005ca7: c4 e3 5d 38 db 01           	vinserti128	$1, %xmm3, %ymm4, %ymm3
100005cad: c4 e3 65 0e c0 88           	vpblendw	$136, %ymm0, %ymm3, %ymm0
100005cb3: c4 c2 51 00 dc              	vpshufb	%xmm12, %xmm5, %xmm3
100005cb8: c4 e2 51 00 25 af 25 00 00  	vpshufb	9647(%rip), %xmm5, %xmm4
100005cc1: c4 e3 5d 38 db 01           	vinserti128	$1, %xmm3, %ymm4, %ymm3
100005cc7: c4 c2 41 00 e5              	vpshufb	%xmm13, %xmm7, %xmm4
100005ccc: c4 e2 79 34 ef              	vpmovzxwq	%xmm7, %xmm5
100005cd1: c4 e3 55 38 e4 01           	vinserti128	$1, %xmm4, %ymm5, %ymm4
100005cd7: c4 e3 5d 0e db 22           	vpblendw	$34, %ymm3, %ymm4, %ymm3
100005cdd: c4 e3 65 02 c0 aa           	vpblendd	$170, %ymm0, %ymm3, %ymm0
100005ce3: c5 f9 6f 64 24 20           	vmovdqa	32(%rsp), %xmm4
100005ce9: c4 e2 59 00 1d 9e 25 00 00  	vpshufb	9630(%rip), %xmm4, %xmm3
100005cf2: c4 e2 59 00 25 a5 25 00 00  	vpshufb	9637(%rip), %xmm4, %xmm4
100005cfb: c4 e3 5d 38 db 01           	vinserti128	$1, %xmm3, %ymm4, %ymm3
100005d01: c5 f9 6f 6c 24 10           	vmovdqa	16(%rsp), %xmm5
100005d07: c4 e2 51 00 e1              	vpshufb	%xmm1, %xmm5, %xmm4
100005d0c: c4 c2 51 00 ea              	vpshufb	%xmm10, %xmm5, %xmm5
100005d11: c4 e3 55 38 e4 01           	vinserti128	$1, %xmm4, %ymm5, %ymm4
100005d17: c4 e3 5d 0e db 88           	vpblendw	$136, %ymm3, %ymm4, %ymm3
100005d1d: c5 f9 6f 2c 24              	vmovdqa	(%rsp), %xmm5
100005d22: c4 e2 51 00 25 a5 25 00 00  	vpshufb	9637(%rip), %xmm5, %xmm4
100005d2b: c4 e2 51 00 2d ac 25 00 00  	vpshufb	9644(%rip), %xmm5, %xmm5
100005d34: c4 e3 55 38 e4 01           	vinserti128	$1, %xmm4, %ymm5, %ymm4
100005d3a: c5 f9 6f b4 24 a0 00 00 00  	vmovdqa	160(%rsp), %xmm6
100005d43: c4 c2 49 00 ee              	vpshufb	%xmm14, %xmm6, %xmm5
100005d48: c4 c2 49 00 f0              	vpshufb	%xmm8, %xmm6, %xmm6
100005d4d: c4 e3 4d 38 ed 01           	vinserti128	$1, %xmm5, %ymm6, %ymm5
100005d53: c4 e3 55 0e e4 22           	vpblendw	$34, %ymm4, %ymm5, %ymm4
100005d59: c4 e3 5d 02 db aa           	vpblendd	$170, %ymm3, %ymm4, %ymm3
100005d5f: c4 a1 7e 7f 9c df e0 00 00 00       	vmovdqu	%ymm3, 224(%rdi,%r11,8)
100005d69: c4 a1 7e 7f 84 df 80 00 00 00       	vmovdqu	%ymm0, 128(%rdi,%r11,8)
100005d73: c4 a1 7e 7f 94 df a0 00 00 00       	vmovdqu	%ymm2, 160(%rdi,%r11,8)
100005d7d: c4 21 7e 7f 7c df 40        	vmovdqu	%ymm15, 64(%rdi,%r11,8)
100005d84: c5 fc 28 84 24 c0 00 00 00  	vmovaps	192(%rsp), %ymm0
100005d8d: c4 a1 7c 11 44 df 60        	vmovups	%ymm0, 96(%rdi,%r11,8)
100005d94: c5 fc 28 84 24 00 01 00 00  	vmovaps	256(%rsp), %ymm0
100005d9d: c4 a1 7c 11 04 df           	vmovups	%ymm0, (%rdi,%r11,8)
100005da3: c5 fc 28 84 24 20 01 00 00  	vmovaps	288(%rsp), %ymm0
100005dac: c4 a1 7c 11 44 df 20        	vmovups	%ymm0, 32(%rdi,%r11,8)
100005db3: c5 fd 6f 84 24 e0 00 00 00  	vmovdqa	224(%rsp), %ymm0
100005dbc: c4 a1 7e 7f 84 df c0 00 00 00       	vmovdqu	%ymm0, 192(%rdi,%r11,8)
100005dc6: 49 83 c3 20                 	addq	$32, %r11
100005dca: 4d 39 da                    	cmpq	%r11, %r10
100005dcd: 0f 85 ed ef ff ff           	jne	-4115 <__Z4ReLUPaS_j+0x320>
100005dd3: 4d 39 ca                    	cmpq	%r9, %r10
100005dd6: 0f 85 1c ed ff ff           	jne	-4836 <__Z4ReLUPaS_j+0x58>
100005ddc: e9 9f ed ff ff              	jmp	-4705 <__Z4ReLUPaS_j+0xe0>
100005de1: 31 c9                       	xorl	%ecx, %ecx
100005de3: 4d 85 c9                    	testq	%r9, %r9
100005de6: 0f 85 98 ee ff ff           	jne	-4456 <__Z4ReLUPaS_j+0x1e4>
100005dec: e9 c9 ee ff ff              	jmp	-4407 <__Z4ReLUPaS_j+0x21a>
100005df1: 90                          	nop
100005df2: 90                          	nop
100005df3: 90                          	nop
100005df4: 90                          	nop
100005df5: 90                          	nop
100005df6: 90                          	nop
100005df7: 90                          	nop
100005df8: 90                          	nop
100005df9: 90                          	nop
100005dfa: 90                          	nop
100005dfb: 90                          	nop
100005dfc: 90                          	nop
100005dfd: 90                          	nop
100005dfe: 90                          	nop
100005dff: 90                          	nop

0000000100005e00 __ZN11LineNetworkC2Ev:
100005e00: 55                          	pushq	%rbp
100005e01: 48 89 e5                    	movq	%rsp, %rbp
100005e04: 41 56                       	pushq	%r14
100005e06: 53                          	pushq	%rbx
100005e07: 48 89 fb                    	movq	%rdi, %rbx
100005e0a: e8 d1 e9 ff ff              	callq	-5679 <__ZN14ModelInterfaceC2Ev>
100005e0f: 48 8d 05 ea 42 00 00        	leaq	17130(%rip), %rax
100005e16: 48 89 03                    	movq	%rax, (%rbx)
100005e19: 48 89 df                    	movq	%rbx, %rdi
100005e1c: be 00 00 08 00              	movl	$524288, %esi
100005e21: e8 6a ea ff ff              	callq	-5526 <__ZN14ModelInterface11init_bufferEj>
100005e26: c5 f8 28 05 e2 24 00 00     	vmovaps	9442(%rip), %xmm0
100005e2e: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005e33: 48 b8 20 00 00 00 20 00 00 00       	movabsq	$137438953504, %rax
100005e3d: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005e41: 5b                          	popq	%rbx
100005e42: 41 5e                       	popq	%r14
100005e44: 5d                          	popq	%rbp
100005e45: c3                          	retq
100005e46: 49 89 c6                    	movq	%rax, %r14
100005e49: 48 89 df                    	movq	%rbx, %rdi
100005e4c: e8 cf e9 ff ff              	callq	-5681 <__ZN14ModelInterfaceD2Ev>
100005e51: 4c 89 f7                    	movq	%r14, %rdi
100005e54: e8 93 1f 00 00              	callq	8083 <dyld_stub_binder+0x100007dec>
100005e59: 0f 0b                       	ud2
100005e5b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005e60 __ZN11LineNetworkC1Ev:
100005e60: 55                          	pushq	%rbp
100005e61: 48 89 e5                    	movq	%rsp, %rbp
100005e64: 41 56                       	pushq	%r14
100005e66: 53                          	pushq	%rbx
100005e67: 48 89 fb                    	movq	%rdi, %rbx
100005e6a: e8 71 e9 ff ff              	callq	-5775 <__ZN14ModelInterfaceC2Ev>
100005e6f: 48 8d 05 8a 42 00 00        	leaq	17034(%rip), %rax
100005e76: 48 89 03                    	movq	%rax, (%rbx)
100005e79: 48 89 df                    	movq	%rbx, %rdi
100005e7c: be 00 00 08 00              	movl	$524288, %esi
100005e81: e8 0a ea ff ff              	callq	-5622 <__ZN14ModelInterface11init_bufferEj>
100005e86: c5 f8 28 05 82 24 00 00     	vmovaps	9346(%rip), %xmm0
100005e8e: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005e93: 48 b8 20 00 00 00 20 00 00 00       	movabsq	$137438953504, %rax
100005e9d: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005ea1: 5b                          	popq	%rbx
100005ea2: 41 5e                       	popq	%r14
100005ea4: 5d                          	popq	%rbp
100005ea5: c3                          	retq
100005ea6: 49 89 c6                    	movq	%rax, %r14
100005ea9: 48 89 df                    	movq	%rbx, %rdi
100005eac: e8 6f e9 ff ff              	callq	-5777 <__ZN14ModelInterfaceD2Ev>
100005eb1: 4c 89 f7                    	movq	%r14, %rdi
100005eb4: e8 33 1f 00 00              	callq	7987 <dyld_stub_binder+0x100007dec>
100005eb9: 0f 0b                       	ud2
100005ebb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005ec0 __ZN11LineNetwork7forwardEv:
100005ec0: 55                          	pushq	%rbp
100005ec1: 48 89 e5                    	movq	%rsp, %rbp
100005ec4: 41 56                       	pushq	%r14
100005ec6: 53                          	pushq	%rbx
100005ec7: 48 89 fb                    	movq	%rdi, %rbx
100005eca: e8 a1 e9 ff ff              	callq	-5727 <__ZN14ModelInterface13output_bufferEv>
100005ecf: 49 89 c6                    	movq	%rax, %r14
100005ed2: 48 89 df                    	movq	%rbx, %rdi
100005ed5: e8 86 e9 ff ff              	callq	-5754 <__ZN14ModelInterface12input_bufferEv>
100005eda: 48 83 ec 08                 	subq	$8, %rsp
100005ede: 48 8d 15 3b 24 00 00        	leaq	9275(%rip), %rdx
100005ee5: 48 8d 0d 44 24 00 00        	leaq	9284(%rip), %rcx
100005eec: 4c 89 f7                    	movq	%r14, %rdi
100005eef: 48 89 c6                    	movq	%rax, %rsi
100005ef2: 41 b8 37 00 00 00           	movl	$55, %r8d
100005ef8: 41 b9 08 00 00 00           	movl	$8, %r9d
100005efe: 6a 02                       	pushq	$2
100005f00: 6a 03                       	pushq	$3
100005f02: 68 00 02 00 00              	pushq	$512
100005f07: 68 00 02 00 00              	pushq	$512
100005f0c: 6a 01                       	pushq	$1
100005f0e: e8 dd c7 ff ff              	callq	-14371 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005f13: 48 83 c4 30                 	addq	$48, %rsp
100005f17: 48 89 df                    	movq	%rbx, %rdi
100005f1a: e8 01 eb ff ff              	callq	-5375 <__ZN14ModelInterface11swap_bufferEv>
100005f1f: 48 89 df                    	movq	%rbx, %rdi
100005f22: e8 49 e9 ff ff              	callq	-5815 <__ZN14ModelInterface13output_bufferEv>
100005f27: 49 89 c6                    	movq	%rax, %r14
100005f2a: 48 89 df                    	movq	%rbx, %rdi
100005f2d: e8 2e e9 ff ff              	callq	-5842 <__ZN14ModelInterface12input_bufferEv>
100005f32: 4c 89 f7                    	movq	%r14, %rdi
100005f35: 48 89 c6                    	movq	%rax, %rsi
100005f38: ba 00 00 08 00              	movl	$524288, %edx
100005f3d: e8 5e eb ff ff              	callq	-5282 <__Z4ReLUPaS_j>
100005f42: 48 89 df                    	movq	%rbx, %rdi
100005f45: e8 d6 ea ff ff              	callq	-5418 <__ZN14ModelInterface11swap_bufferEv>
100005f4a: 48 89 df                    	movq	%rbx, %rdi
100005f4d: e8 1e e9 ff ff              	callq	-5858 <__ZN14ModelInterface13output_bufferEv>
100005f52: 49 89 c6                    	movq	%rax, %r14
100005f55: 48 89 df                    	movq	%rbx, %rdi
100005f58: e8 03 e9 ff ff              	callq	-5885 <__ZN14ModelInterface12input_bufferEv>
100005f5d: 48 83 ec 08                 	subq	$8, %rsp
100005f61: 48 8d 15 10 24 00 00        	leaq	9232(%rip), %rdx
100005f68: 48 8d 0d 11 24 00 00        	leaq	9233(%rip), %rcx
100005f6f: 4c 89 f7                    	movq	%r14, %rdi
100005f72: 48 89 c6                    	movq	%rax, %rsi
100005f75: 41 b8 37 00 00 00           	movl	$55, %r8d
100005f7b: 41 b9 08 00 00 00           	movl	$8, %r9d
100005f81: 6a 02                       	pushq	$2
100005f83: 6a 03                       	pushq	$3
100005f85: 68 00 01 00 00              	pushq	$256
100005f8a: 68 00 01 00 00              	pushq	$256
100005f8f: 6a 08                       	pushq	$8
100005f91: e8 5a c7 ff ff              	callq	-14502 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005f96: 48 83 c4 30                 	addq	$48, %rsp
100005f9a: 48 89 df                    	movq	%rbx, %rdi
100005f9d: e8 7e ea ff ff              	callq	-5506 <__ZN14ModelInterface11swap_bufferEv>
100005fa2: 48 89 df                    	movq	%rbx, %rdi
100005fa5: e8 c6 e8 ff ff              	callq	-5946 <__ZN14ModelInterface13output_bufferEv>
100005faa: 49 89 c6                    	movq	%rax, %r14
100005fad: 48 89 df                    	movq	%rbx, %rdi
100005fb0: e8 ab e8 ff ff              	callq	-5973 <__ZN14ModelInterface12input_bufferEv>
100005fb5: 4c 89 f7                    	movq	%r14, %rdi
100005fb8: 48 89 c6                    	movq	%rax, %rsi
100005fbb: ba 00 00 02 00              	movl	$131072, %edx
100005fc0: e8 db ea ff ff              	callq	-5413 <__Z4ReLUPaS_j>
100005fc5: 48 89 df                    	movq	%rbx, %rdi
100005fc8: e8 53 ea ff ff              	callq	-5549 <__ZN14ModelInterface11swap_bufferEv>
100005fcd: 48 89 df                    	movq	%rbx, %rdi
100005fd0: e8 9b e8 ff ff              	callq	-5989 <__ZN14ModelInterface13output_bufferEv>
100005fd5: 49 89 c6                    	movq	%rax, %r14
100005fd8: 48 89 df                    	movq	%rbx, %rdi
100005fdb: e8 80 e8 ff ff              	callq	-6016 <__ZN14ModelInterface12input_bufferEv>
100005fe0: 48 83 ec 08                 	subq	$8, %rsp
100005fe4: 48 8d 15 d5 25 00 00        	leaq	9685(%rip), %rdx
100005feb: 48 8d 0d de 25 00 00        	leaq	9694(%rip), %rcx
100005ff2: 4c 89 f7                    	movq	%r14, %rdi
100005ff5: 48 89 c6                    	movq	%rax, %rsi
100005ff8: 41 b8 39 00 00 00           	movl	$57, %r8d
100005ffe: 41 b9 10 00 00 00           	movl	$16, %r9d
100006004: 6a 02                       	pushq	$2
100006006: 6a 03                       	pushq	$3
100006008: 68 80 00 00 00              	pushq	$128
10000600d: 68 80 00 00 00              	pushq	$128
100006012: 6a 08                       	pushq	$8
100006014: e8 d7 c6 ff ff              	callq	-14633 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100006019: 48 83 c4 30                 	addq	$48, %rsp
10000601d: 48 89 df                    	movq	%rbx, %rdi
100006020: e8 fb e9 ff ff              	callq	-5637 <__ZN14ModelInterface11swap_bufferEv>
100006025: 48 89 df                    	movq	%rbx, %rdi
100006028: e8 43 e8 ff ff              	callq	-6077 <__ZN14ModelInterface13output_bufferEv>
10000602d: 49 89 c6                    	movq	%rax, %r14
100006030: 48 89 df                    	movq	%rbx, %rdi
100006033: e8 28 e8 ff ff              	callq	-6104 <__ZN14ModelInterface12input_bufferEv>
100006038: 4c 89 f7                    	movq	%r14, %rdi
10000603b: 48 89 c6                    	movq	%rax, %rsi
10000603e: ba 00 00 01 00              	movl	$65536, %edx
100006043: e8 58 ea ff ff              	callq	-5544 <__Z4ReLUPaS_j>
100006048: 48 89 df                    	movq	%rbx, %rdi
10000604b: e8 d0 e9 ff ff              	callq	-5680 <__ZN14ModelInterface11swap_bufferEv>
100006050: 48 89 df                    	movq	%rbx, %rdi
100006053: e8 18 e8 ff ff              	callq	-6120 <__ZN14ModelInterface13output_bufferEv>
100006058: 49 89 c6                    	movq	%rax, %r14
10000605b: 48 89 df                    	movq	%rbx, %rdi
10000605e: e8 fd e7 ff ff              	callq	-6147 <__ZN14ModelInterface12input_bufferEv>
100006063: 48 83 ec 08                 	subq	$8, %rsp
100006067: 48 8d 15 e2 29 00 00        	leaq	10722(%rip), %rdx
10000606e: 48 8d 0d fb 29 00 00        	leaq	10747(%rip), %rcx
100006075: 4c 89 f7                    	movq	%r14, %rdi
100006078: 48 89 c6                    	movq	%rax, %rsi
10000607b: 41 b8 30 00 00 00           	movl	$48, %r8d
100006081: 41 b9 20 00 00 00           	movl	$32, %r9d
100006087: 6a 02                       	pushq	$2
100006089: 6a 03                       	pushq	$3
10000608b: 6a 40                       	pushq	$64
10000608d: 6a 40                       	pushq	$64
10000608f: 6a 10                       	pushq	$16
100006091: e8 5a c6 ff ff              	callq	-14758 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100006096: 48 83 c4 30                 	addq	$48, %rsp
10000609a: 48 89 df                    	movq	%rbx, %rdi
10000609d: e8 7e e9 ff ff              	callq	-5762 <__ZN14ModelInterface11swap_bufferEv>
1000060a2: 48 89 df                    	movq	%rbx, %rdi
1000060a5: e8 c6 e7 ff ff              	callq	-6202 <__ZN14ModelInterface13output_bufferEv>
1000060aa: 49 89 c6                    	movq	%rax, %r14
1000060ad: 48 89 df                    	movq	%rbx, %rdi
1000060b0: e8 ab e7 ff ff              	callq	-6229 <__ZN14ModelInterface12input_bufferEv>
1000060b5: 4c 89 f7                    	movq	%r14, %rdi
1000060b8: 48 89 c6                    	movq	%rax, %rsi
1000060bb: ba 00 80 00 00              	movl	$32768, %edx
1000060c0: e8 db e9 ff ff              	callq	-5669 <__Z4ReLUPaS_j>
1000060c5: 48 89 df                    	movq	%rbx, %rdi
1000060c8: e8 53 e9 ff ff              	callq	-5805 <__ZN14ModelInterface11swap_bufferEv>
1000060cd: 48 89 df                    	movq	%rbx, %rdi
1000060d0: e8 9b e7 ff ff              	callq	-6245 <__ZN14ModelInterface13output_bufferEv>
1000060d5: 49 89 c6                    	movq	%rax, %r14
1000060d8: 48 89 df                    	movq	%rbx, %rdi
1000060db: e8 80 e7 ff ff              	callq	-6272 <__ZN14ModelInterface12input_bufferEv>
1000060e0: 48 83 ec 08                 	subq	$8, %rsp
1000060e4: 48 8d 15 85 3b 00 00        	leaq	15237(%rip), %rdx
1000060eb: 48 8d 0d 8e 3b 00 00        	leaq	15246(%rip), %rcx
1000060f2: 4c 89 f7                    	movq	%r14, %rdi
1000060f5: 48 89 c6                    	movq	%rax, %rsi
1000060f8: 41 b8 20 00 00 00           	movl	$32, %r8d
1000060fe: 41 b9 01 00 00 00           	movl	$1, %r9d
100006104: 6a 01                       	pushq	$1
100006106: 6a 01                       	pushq	$1
100006108: 6a 20                       	pushq	$32
10000610a: 6a 20                       	pushq	$32
10000610c: 6a 20                       	pushq	$32
10000610e: e8 dd c5 ff ff              	callq	-14883 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100006113: 48 83 c4 30                 	addq	$48, %rsp
100006117: 48 89 df                    	movq	%rbx, %rdi
10000611a: e8 01 e9 ff ff              	callq	-5887 <__ZN14ModelInterface11swap_bufferEv>
10000611f: 48 89 df                    	movq	%rbx, %rdi
100006122: 5b                          	popq	%rbx
100006123: 41 5e                       	popq	%r14
100006125: 5d                          	popq	%rbp
100006126: e9 f5 e8 ff ff              	jmp	-5899 <__ZN14ModelInterface11swap_bufferEv>
10000612b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006130 __ZN11LineNetworkD1Ev:
100006130: 55                          	pushq	%rbp
100006131: 48 89 e5                    	movq	%rsp, %rbp
100006134: 5d                          	popq	%rbp
100006135: e9 e6 e6 ff ff              	jmp	-6426 <__ZN14ModelInterfaceD2Ev>
10000613a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100006140 __ZN11LineNetworkD0Ev:
100006140: 55                          	pushq	%rbp
100006141: 48 89 e5                    	movq	%rsp, %rbp
100006144: 53                          	pushq	%rbx
100006145: 50                          	pushq	%rax
100006146: 48 89 fb                    	movq	%rdi, %rbx
100006149: e8 d2 e6 ff ff              	callq	-6446 <__ZN14ModelInterfaceD2Ev>
10000614e: 48 89 df                    	movq	%rbx, %rdi
100006151: 48 83 c4 08                 	addq	$8, %rsp
100006155: 5b                          	popq	%rbx
100006156: 5d                          	popq	%rbp
100006157: e9 2c 1d 00 00              	jmp	7468 <dyld_stub_binder+0x100007e88>
10000615c: 90                          	nop
10000615d: 90                          	nop
10000615e: 90                          	nop
10000615f: 90                          	nop

0000000100006160 __Z8get_timev:
100006160: 55                          	pushq	%rbp
100006161: 48 89 e5                    	movq	%rsp, %rbp
100006164: e8 fb 1c 00 00              	callq	7419 <dyld_stub_binder+0x100007e64>
100006169: c4 e1 fb 2a c0              	vcvtsi2sd	%rax, %xmm0, %xmm0
10000616e: c5 fb 5e 05 3a 3b 00 00     	vdivsd	15162(%rip), %xmm0, %xmm0
100006176: 5d                          	popq	%rbp
100006177: c3                          	retq
100006178: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100006180 __Z14get_predictionRN2cv3MatER14ModelInterfacef:
100006180: 55                          	pushq	%rbp
100006181: 48 89 e5                    	movq	%rsp, %rbp
100006184: 41 57                       	pushq	%r15
100006186: 41 56                       	pushq	%r14
100006188: 41 55                       	pushq	%r13
10000618a: 41 54                       	pushq	%r12
10000618c: 53                          	pushq	%rbx
10000618d: 48 81 ec 28 01 00 00        	subq	$296, %rsp
100006194: c5 fa 11 45 b4              	vmovss	%xmm0, -76(%rbp)
100006199: 49 89 d6                    	movq	%rdx, %r14
10000619c: 49 89 f4                    	movq	%rsi, %r12
10000619f: 48 89 fb                    	movq	%rdi, %rbx
1000061a2: 48 8b 05 b7 3e 00 00        	movq	16055(%rip), %rax
1000061a9: 48 8b 00                    	movq	(%rax), %rax
1000061ac: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000061b0: 8b 46 08                    	movl	8(%rsi), %eax
1000061b3: 8b 4e 0c                    	movl	12(%rsi), %ecx
1000061b6: c7 85 e0 fe ff ff 00 00 ff 42       	movl	$1124007936, -288(%rbp)
1000061c0: 48 8d 95 e8 fe ff ff        	leaq	-280(%rbp), %rdx
1000061c7: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000061cb: c5 fc 11 85 e4 fe ff ff     	vmovups	%ymm0, -284(%rbp)
1000061d3: c5 fc 11 85 00 ff ff ff     	vmovups	%ymm0, -256(%rbp)
1000061db: 48 89 95 20 ff ff ff        	movq	%rdx, -224(%rbp)
1000061e2: 48 8d 95 30 ff ff ff        	leaq	-208(%rbp), %rdx
1000061e9: 48 89 95 28 ff ff ff        	movq	%rdx, -216(%rbp)
1000061f0: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000061f4: c5 f8 11 85 30 ff ff ff     	vmovups	%xmm0, -208(%rbp)
1000061fc: 89 4d b8                    	movl	%ecx, -72(%rbp)
1000061ff: 89 45 bc                    	movl	%eax, -68(%rbp)
100006202: 4c 8d bd e0 fe ff ff        	leaq	-288(%rbp), %r15
100006209: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
10000620d: 4c 89 ff                    	movq	%r15, %rdi
100006210: be 02 00 00 00              	movl	$2, %esi
100006215: 31 c9                       	xorl	%ecx, %ecx
100006217: c5 f8 77                    	vzeroupper
10000621a: e8 eb 1b 00 00              	callq	7147 <dyld_stub_binder+0x100007e0a>
10000621f: 48 c7 85 50 ff ff ff 00 00 00 00    	movq	$0, -176(%rbp)
10000622a: c7 85 40 ff ff ff 00 00 01 01       	movl	$16842752, -192(%rbp)
100006234: 4c 89 a5 48 ff ff ff        	movq	%r12, -184(%rbp)
10000623b: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100006243: c7 45 b8 00 00 01 02        	movl	$33619968, -72(%rbp)
10000624a: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
10000624e: 48 8d bd 40 ff ff ff        	leaq	-192(%rbp), %rdi
100006255: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
100006259: ba 06 00 00 00              	movl	$6, %edx
10000625e: 31 c9                       	xorl	%ecx, %ecx
100006260: e8 cf 1b 00 00              	callq	7119 <dyld_stub_binder+0x100007e34>
100006265: 41 8b 44 24 08              	movl	8(%r12), %eax
10000626a: 41 8b 4c 24 0c              	movl	12(%r12), %ecx
10000626f: c7 85 40 ff ff ff 00 00 ff 42       	movl	$1124007936, -192(%rbp)
100006279: 48 8d 95 48 ff ff ff        	leaq	-184(%rbp), %rdx
100006280: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100006284: c5 fc 11 85 44 ff ff ff     	vmovups	%ymm0, -188(%rbp)
10000628c: c5 fc 11 85 60 ff ff ff     	vmovups	%ymm0, -160(%rbp)
100006294: 48 89 55 80                 	movq	%rdx, -128(%rbp)
100006298: 48 8d 55 90                 	leaq	-112(%rbp), %rdx
10000629c: 48 89 55 88                 	movq	%rdx, -120(%rbp)
1000062a0: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000062a4: c5 f8 11 45 90              	vmovups	%xmm0, -112(%rbp)
1000062a9: 89 4d b8                    	movl	%ecx, -72(%rbp)
1000062ac: 89 45 bc                    	movl	%eax, -68(%rbp)
1000062af: 4c 8d a5 40 ff ff ff        	leaq	-192(%rbp), %r12
1000062b6: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
1000062ba: 4c 89 e7                    	movq	%r12, %rdi
1000062bd: be 02 00 00 00              	movl	$2, %esi
1000062c2: 31 c9                       	xorl	%ecx, %ecx
1000062c4: c5 f8 77                    	vzeroupper
1000062c7: e8 3e 1b 00 00              	callq	6974 <dyld_stub_binder+0x100007e0a>
1000062cc: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
1000062d4: c7 45 b8 00 00 01 01        	movl	$16842752, -72(%rbp)
1000062db: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
1000062df: 48 c7 85 c0 fe ff ff 00 00 00 00    	movq	$0, -320(%rbp)
1000062ea: c7 85 b0 fe ff ff 00 00 01 02       	movl	$33619968, -336(%rbp)
1000062f4: 4c 89 a5 b8 fe ff ff        	movq	%r12, -328(%rbp)
1000062fb: 41 8b 46 0c                 	movl	12(%r14), %eax
1000062ff: 41 8b 4e 10                 	movl	16(%r14), %ecx
100006303: 89 4d a0                    	movl	%ecx, -96(%rbp)
100006306: 89 45 a4                    	movl	%eax, -92(%rbp)
100006309: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
10000630d: 48 8d b5 b0 fe ff ff        	leaq	-336(%rbp), %rsi
100006314: 48 8d 55 a0                 	leaq	-96(%rbp), %rdx
100006318: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000631c: c5 f0 57 c9                 	vxorps	%xmm1, %xmm1, %xmm1
100006320: b9 03 00 00 00              	movl	$3, %ecx
100006325: e8 f8 1a 00 00              	callq	6904 <dyld_stub_binder+0x100007e22>
10000632a: 41 8b 46 0c                 	movl	12(%r14), %eax
10000632e: 85 c0                       	testl	%eax, %eax
100006330: 48 89 5d a8                 	movq	%rbx, -88(%rbp)
100006334: 0f 84 7f 00 00 00           	je	127 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x239>
10000633a: 41 8b 4e 10                 	movl	16(%r14), %ecx
10000633e: 31 d2                       	xorl	%edx, %edx
100006340: 45 31 e4                    	xorl	%r12d, %r12d
100006343: 85 c9                       	testl	%ecx, %ecx
100006345: 75 15                       	jne	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1dc>
100006347: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006350: 31 c9                       	xorl	%ecx, %ecx
100006352: ff c2                       	incl	%edx
100006354: 39 c2                       	cmpl	%eax, %edx
100006356: 73 61                       	jae	97 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x239>
100006358: 85 c9                       	testl	%ecx, %ecx
10000635a: 74 f4                       	je	-12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d0>
10000635c: 89 55 b0                    	movl	%edx, -80(%rbp)
10000635f: 4c 63 ea                    	movslq	%edx, %r13
100006362: 31 db                       	xorl	%ebx, %ebx
100006364: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000636e: 66 90                       	nop
100006370: 48 8b 45 88                 	movq	-120(%rbp), %rax
100006374: 48 8b 00                    	movq	(%rax), %rax
100006377: 49 0f af c5                 	imulq	%r13, %rax
10000637b: 48 03 85 50 ff ff ff        	addq	-176(%rbp), %rax
100006382: 48 63 cb                    	movslq	%ebx, %rcx
100006385: 44 0f b6 3c 01              	movzbl	(%rcx,%rax), %r15d
10000638a: 4c 89 f7                    	movq	%r14, %rdi
10000638d: e8 ce e4 ff ff              	callq	-6962 <__ZN14ModelInterface12input_bufferEv>
100006392: 41 8d 0c 1c                 	leal	(%r12,%rbx), %ecx
100006396: 41 d0 ef                    	shrb	%r15b
100006399: 89 c9                       	movl	%ecx, %ecx
10000639b: 44 88 3c 08                 	movb	%r15b, (%rax,%rcx)
10000639f: ff c3                       	incl	%ebx
1000063a1: 41 8b 4e 10                 	movl	16(%r14), %ecx
1000063a5: 39 cb                       	cmpl	%ecx, %ebx
1000063a7: 72 c7                       	jb	-57 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1f0>
1000063a9: 41 8b 46 0c                 	movl	12(%r14), %eax
1000063ad: 41 01 dc                    	addl	%ebx, %r12d
1000063b0: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
1000063b4: 8b 55 b0                    	movl	-80(%rbp), %edx
1000063b7: eb 99                       	jmp	-103 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d2>
1000063b9: 49 8b 06                    	movq	(%r14), %rax
1000063bc: 4c 89 f7                    	movq	%r14, %rdi
1000063bf: ff 50 10                    	callq	*16(%rax)
1000063c2: 41 8b 46 18                 	movl	24(%r14), %eax
1000063c6: 41 8b 4e 1c                 	movl	28(%r14), %ecx
1000063ca: c7 03 00 00 ff 42           	movl	$1124007936, (%rbx)
1000063d0: 48 8d 53 08                 	leaq	8(%rbx), %rdx
1000063d4: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000063d8: c5 fc 11 43 04              	vmovups	%ymm0, 4(%rbx)
1000063dd: c5 fc 11 43 20              	vmovups	%ymm0, 32(%rbx)
1000063e2: 48 89 53 40                 	movq	%rdx, 64(%rbx)
1000063e6: 48 8d 53 50                 	leaq	80(%rbx), %rdx
1000063ea: 48 89 95 c8 fe ff ff        	movq	%rdx, -312(%rbp)
1000063f1: 48 89 53 48                 	movq	%rdx, 72(%rbx)
1000063f5: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000063f9: c5 f8 11 43 50              	vmovups	%xmm0, 80(%rbx)
1000063fe: 89 4d b8                    	movl	%ecx, -72(%rbp)
100006401: 89 45 bc                    	movl	%eax, -68(%rbp)
100006404: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
100006408: 48 89 df                    	movq	%rbx, %rdi
10000640b: be 02 00 00 00              	movl	$2, %esi
100006410: 31 c9                       	xorl	%ecx, %ecx
100006412: c5 f8 77                    	vzeroupper
100006415: e8 f0 19 00 00              	callq	6640 <dyld_stub_binder+0x100007e0a>
10000641a: 41 8b 46 18                 	movl	24(%r14), %eax
10000641e: 85 c0                       	testl	%eax, %eax
100006420: 0f 84 a8 00 00 00           	je	168 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x34e>
100006426: 48 8d 4b 04                 	leaq	4(%rbx), %rcx
10000642a: 48 89 8d d0 fe ff ff        	movq	%rcx, -304(%rbp)
100006431: c5 fa 10 45 b4              	vmovss	-76(%rbp), %xmm0
100006436: c5 fa 59 05 aa 38 00 00     	vmulss	14506(%rip), %xmm0, %xmm0
10000643e: c5 fa 11 45 b0              	vmovss	%xmm0, -80(%rbp)
100006443: 48 8d 4b 10                 	leaq	16(%rbx), %rcx
100006447: 48 89 8d d8 fe ff ff        	movq	%rcx, -296(%rbp)
10000644e: 41 8b 4e 1c                 	movl	28(%r14), %ecx
100006452: 31 d2                       	xorl	%edx, %edx
100006454: 45 31 ed                    	xorl	%r13d, %r13d
100006457: 85 c9                       	testl	%ecx, %ecx
100006459: 75 11                       	jne	17 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2ec>
10000645b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006460: 31 c9                       	xorl	%ecx, %ecx
100006462: ff c2                       	incl	%edx
100006464: 39 c2                       	cmpl	%eax, %edx
100006466: 73 66                       	jae	102 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x34e>
100006468: 85 c9                       	testl	%ecx, %ecx
10000646a: 74 f4                       	je	-12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2e0>
10000646c: 89 55 b4                    	movl	%edx, -76(%rbp)
10000646f: 4c 63 e2                    	movslq	%edx, %r12
100006472: 45 31 ff                    	xorl	%r15d, %r15d
100006475: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000647f: 90                          	nop
100006480: 4c 89 f7                    	movq	%r14, %rdi
100006483: e8 e8 e3 ff ff              	callq	-7192 <__ZN14ModelInterface13output_bufferEv>
100006488: 43 8d 0c 2f                 	leal	(%r15,%r13), %ecx
10000648c: 89 c9                       	movl	%ecx, %ecx
10000648e: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006492: c5 ea 2a c0                 	vcvtsi2ss	%eax, %xmm2, %xmm0
100006496: c5 f8 2e 45 b0              	vucomiss	-80(%rbp), %xmm0
10000649b: 0f 97 c0                    	seta	%al
10000649e: 48 8b 4b 48                 	movq	72(%rbx), %rcx
1000064a2: 48 8b 09                    	movq	(%rcx), %rcx
1000064a5: 49 0f af cc                 	imulq	%r12, %rcx
1000064a9: 48 03 4b 10                 	addq	16(%rbx), %rcx
1000064ad: 4d 63 ff                    	movslq	%r15d, %r15
1000064b0: f6 d8                       	negb	%al
1000064b2: 41 88 04 0f                 	movb	%al, (%r15,%rcx)
1000064b6: 41 ff c7                    	incl	%r15d
1000064b9: 41 8b 4e 1c                 	movl	28(%r14), %ecx
1000064bd: 41 39 cf                    	cmpl	%ecx, %r15d
1000064c0: 72 be                       	jb	-66 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x300>
1000064c2: 41 8b 46 18                 	movl	24(%r14), %eax
1000064c6: 45 01 fd                    	addl	%r15d, %r13d
1000064c9: 8b 55 b4                    	movl	-76(%rbp), %edx
1000064cc: eb 94                       	jmp	-108 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2e2>
1000064ce: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
1000064d5: 48 85 c0                    	testq	%rax, %rax
1000064d8: 74 12                       	je	18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x36c>
1000064da: f0                          	lock
1000064db: ff 48 14                    	decl	20(%rax)
1000064de: 75 0c                       	jne	12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x36c>
1000064e0: 48 8d bd 40 ff ff ff        	leaq	-192(%rbp), %rdi
1000064e7: e8 18 19 00 00              	callq	6424 <dyld_stub_binder+0x100007e04>
1000064ec: 48 c7 85 78 ff ff ff 00 00 00 00    	movq	$0, -136(%rbp)
1000064f7: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000064fb: c5 fc 11 85 50 ff ff ff     	vmovups	%ymm0, -176(%rbp)
100006503: 83 bd 44 ff ff ff 00        	cmpl	$0, -188(%rbp)
10000650a: 7e 2a                       	jle	42 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3b6>
10000650c: 48 8b 45 80                 	movq	-128(%rbp), %rax
100006510: 31 c9                       	xorl	%ecx, %ecx
100006512: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000651c: 0f 1f 40 00                 	nopl	(%rax)
100006520: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006527: 48 ff c1                    	incq	%rcx
10000652a: 48 63 95 44 ff ff ff        	movslq	-188(%rbp), %rdx
100006531: 48 39 d1                    	cmpq	%rdx, %rcx
100006534: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3a0>
100006536: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
10000653a: 48 8d 45 90                 	leaq	-112(%rbp), %rax
10000653e: 48 39 c7                    	cmpq	%rax, %rdi
100006541: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3cb>
100006543: c5 f8 77                    	vzeroupper
100006546: e8 ef 18 00 00              	callq	6383 <dyld_stub_binder+0x100007e3a>
10000654b: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
100006552: 48 85 c0                    	testq	%rax, %rax
100006555: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3ec>
100006557: f0                          	lock
100006558: ff 48 14                    	decl	20(%rax)
10000655b: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3ec>
10000655d: 48 8d bd e0 fe ff ff        	leaq	-288(%rbp), %rdi
100006564: c5 f8 77                    	vzeroupper
100006567: e8 98 18 00 00              	callq	6296 <dyld_stub_binder+0x100007e04>
10000656c: 48 c7 85 18 ff ff ff 00 00 00 00    	movq	$0, -232(%rbp)
100006577: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000657b: c5 fc 11 85 f0 fe ff ff     	vmovups	%ymm0, -272(%rbp)
100006583: 83 bd e4 fe ff ff 00        	cmpl	$0, -284(%rbp)
10000658a: 7e 2a                       	jle	42 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x436>
10000658c: 48 8b 85 20 ff ff ff        	movq	-224(%rbp), %rax
100006593: 31 c9                       	xorl	%ecx, %ecx
100006595: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000659f: 90                          	nop
1000065a0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000065a7: 48 ff c1                    	incq	%rcx
1000065aa: 48 63 95 e4 fe ff ff        	movslq	-284(%rbp), %rdx
1000065b1: 48 39 d1                    	cmpq	%rdx, %rcx
1000065b4: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x420>
1000065b6: 48 8b bd 28 ff ff ff        	movq	-216(%rbp), %rdi
1000065bd: 48 8d 85 30 ff ff ff        	leaq	-208(%rbp), %rax
1000065c4: 48 39 c7                    	cmpq	%rax, %rdi
1000065c7: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x451>
1000065c9: c5 f8 77                    	vzeroupper
1000065cc: e8 69 18 00 00              	callq	6249 <dyld_stub_binder+0x100007e3a>
1000065d1: 48 8b 05 88 3a 00 00        	movq	14984(%rip), %rax
1000065d8: 48 8b 00                    	movq	(%rax), %rax
1000065db: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
1000065df: 75 18                       	jne	24 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x479>
1000065e1: 48 89 d8                    	movq	%rbx, %rax
1000065e4: 48 81 c4 28 01 00 00        	addq	$296, %rsp
1000065eb: 5b                          	popq	%rbx
1000065ec: 41 5c                       	popq	%r12
1000065ee: 41 5d                       	popq	%r13
1000065f0: 41 5e                       	popq	%r14
1000065f2: 41 5f                       	popq	%r15
1000065f4: 5d                          	popq	%rbp
1000065f5: c5 f8 77                    	vzeroupper
1000065f8: c3                          	retq
1000065f9: c5 f8 77                    	vzeroupper
1000065fc: e8 a5 18 00 00              	callq	6309 <dyld_stub_binder+0x100007ea6>
100006601: 48 89 c7                    	movq	%rax, %rdi
100006604: e8 e7 13 00 00              	callq	5095 <___clang_call_terminate>
100006609: 48 89 c7                    	movq	%rax, %rdi
10000660c: e8 df 13 00 00              	callq	5087 <___clang_call_terminate>
100006611: e9 94 00 00 00              	jmp	148 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52a>
100006616: eb 00                       	jmp	0 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x498>
100006618: 48 89 c3                    	movq	%rax, %rbx
10000661b: e9 ff 00 00 00              	jmp	255 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x59f>
100006620: e9 85 00 00 00              	jmp	133 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52a>
100006625: 48 89 d9                    	movq	%rbx, %rcx
100006628: 48 89 c3                    	movq	%rax, %rbx
10000662b: 48 8b 41 38                 	movq	56(%rcx), %rax
10000662f: 48 85 c0                    	testq	%rax, %rax
100006632: 74 0f                       	je	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4c3>
100006634: f0                          	lock
100006635: ff 48 14                    	decl	20(%rax)
100006638: 75 09                       	jne	9 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4c3>
10000663a: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
10000663e: e8 c1 17 00 00              	callq	6081 <dyld_stub_binder+0x100007e04>
100006643: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100006647: 48 c7 40 38 00 00 00 00     	movq	$0, 56(%rax)
10000664f: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100006653: 48 8b 8d d8 fe ff ff        	movq	-296(%rbp), %rcx
10000665a: c5 fc 11 01                 	vmovups	%ymm0, (%rcx)
10000665e: 83 78 04 00                 	cmpl	$0, 4(%rax)
100006662: 48 8b b5 d0 fe ff ff        	movq	-304(%rbp), %rsi
100006669: 7e 1c                       	jle	28 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x507>
10000666b: 48 8b 45 a8                 	movq	-88(%rbp), %rax
10000666f: 48 8b 40 40                 	movq	64(%rax), %rax
100006673: 31 c9                       	xorl	%ecx, %ecx
100006675: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
10000667c: 48 ff c1                    	incq	%rcx
10000667f: 48 63 16                    	movslq	(%rsi), %rdx
100006682: 48 39 d1                    	cmpq	%rdx, %rcx
100006685: 7c ee                       	jl	-18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4f5>
100006687: 48 8b 45 a8                 	movq	-88(%rbp), %rax
10000668b: 48 8b 78 48                 	movq	72(%rax), %rdi
10000668f: 48 3b bd c8 fe ff ff        	cmpq	-312(%rbp), %rdi
100006696: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52d>
100006698: c5 f8 77                    	vzeroupper
10000669b: e8 9a 17 00 00              	callq	6042 <dyld_stub_binder+0x100007e3a>
1000066a0: eb 0b                       	jmp	11 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52d>
1000066a2: 48 89 c7                    	movq	%rax, %rdi
1000066a5: e8 46 13 00 00              	callq	4934 <___clang_call_terminate>
1000066aa: 48 89 c3                    	movq	%rax, %rbx
1000066ad: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
1000066b4: 48 85 c0                    	testq	%rax, %rax
1000066b7: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x54e>
1000066b9: f0                          	lock
1000066ba: ff 48 14                    	decl	20(%rax)
1000066bd: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x54e>
1000066bf: 48 8d bd 40 ff ff ff        	leaq	-192(%rbp), %rdi
1000066c6: c5 f8 77                    	vzeroupper
1000066c9: e8 36 17 00 00              	callq	5942 <dyld_stub_binder+0x100007e04>
1000066ce: 48 c7 85 78 ff ff ff 00 00 00 00    	movq	$0, -136(%rbp)
1000066d9: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000066dd: c5 fc 11 85 50 ff ff ff     	vmovups	%ymm0, -176(%rbp)
1000066e5: 83 bd 44 ff ff ff 00        	cmpl	$0, -188(%rbp)
1000066ec: 7e 1c                       	jle	28 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x58a>
1000066ee: 48 8b 45 80                 	movq	-128(%rbp), %rax
1000066f2: 31 c9                       	xorl	%ecx, %ecx
1000066f4: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000066fb: 48 ff c1                    	incq	%rcx
1000066fe: 48 63 95 44 ff ff ff        	movslq	-188(%rbp), %rdx
100006705: 48 39 d1                    	cmpq	%rdx, %rcx
100006708: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x574>
10000670a: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
10000670e: 48 8d 45 90                 	leaq	-112(%rbp), %rax
100006712: 48 39 c7                    	cmpq	%rax, %rdi
100006715: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x59f>
100006717: c5 f8 77                    	vzeroupper
10000671a: e8 1b 17 00 00              	callq	5915 <dyld_stub_binder+0x100007e3a>
10000671f: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
100006726: 48 85 c0                    	testq	%rax, %rax
100006729: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5c0>
10000672b: f0                          	lock
10000672c: ff 48 14                    	decl	20(%rax)
10000672f: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5c0>
100006731: 48 8d bd e0 fe ff ff        	leaq	-288(%rbp), %rdi
100006738: c5 f8 77                    	vzeroupper
10000673b: e8 c4 16 00 00              	callq	5828 <dyld_stub_binder+0x100007e04>
100006740: 48 c7 85 18 ff ff ff 00 00 00 00    	movq	$0, -232(%rbp)
10000674b: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000674f: c5 fc 11 85 f0 fe ff ff     	vmovups	%ymm0, -272(%rbp)
100006757: 83 bd e4 fe ff ff 00        	cmpl	$0, -284(%rbp)
10000675e: 7e 26                       	jle	38 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x606>
100006760: 48 8b 85 20 ff ff ff        	movq	-224(%rbp), %rax
100006767: 31 c9                       	xorl	%ecx, %ecx
100006769: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100006770: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006777: 48 ff c1                    	incq	%rcx
10000677a: 48 63 95 e4 fe ff ff        	movslq	-284(%rbp), %rdx
100006781: 48 39 d1                    	cmpq	%rdx, %rcx
100006784: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5f0>
100006786: 48 8b bd 28 ff ff ff        	movq	-216(%rbp), %rdi
10000678d: 48 8d 85 30 ff ff ff        	leaq	-208(%rbp), %rax
100006794: 48 39 c7                    	cmpq	%rax, %rdi
100006797: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x621>
100006799: c5 f8 77                    	vzeroupper
10000679c: e8 99 16 00 00              	callq	5785 <dyld_stub_binder+0x100007e3a>
1000067a1: 48 89 df                    	movq	%rbx, %rdi
1000067a4: c5 f8 77                    	vzeroupper
1000067a7: e8 40 16 00 00              	callq	5696 <dyld_stub_binder+0x100007dec>
1000067ac: 0f 0b                       	ud2
1000067ae: 48 89 c7                    	movq	%rax, %rdi
1000067b1: e8 3a 12 00 00              	callq	4666 <___clang_call_terminate>
1000067b6: 48 89 c7                    	movq	%rax, %rdi
1000067b9: e8 32 12 00 00              	callq	4658 <___clang_call_terminate>
1000067be: 66 90                       	nop

00000001000067c0 _main:
1000067c0: 55                          	pushq	%rbp
1000067c1: 48 89 e5                    	movq	%rsp, %rbp
1000067c4: 41 57                       	pushq	%r15
1000067c6: 41 56                       	pushq	%r14
1000067c8: 41 55                       	pushq	%r13
1000067ca: 41 54                       	pushq	%r12
1000067cc: 53                          	pushq	%rbx
1000067cd: 48 83 e4 e0                 	andq	$-32, %rsp
1000067d1: 48 81 ec e0 02 00 00        	subq	$736, %rsp
1000067d8: 48 8b 05 81 38 00 00        	movq	14465(%rip), %rax
1000067df: 48 8b 00                    	movq	(%rax), %rax
1000067e2: 48 89 84 24 c0 02 00 00     	movq	%rax, 704(%rsp)
1000067ea: 48 8d bc 24 28 02 00 00     	leaq	552(%rsp), %rdi
1000067f2: e8 69 f6 ff ff              	callq	-2455 <__ZN11LineNetworkC1Ev>
1000067f7: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000067fb: c5 f9 7f 44 24 20           	vmovdqa	%xmm0, 32(%rsp)
100006801: 48 c7 44 24 30 00 00 00 00  	movq	$0, 48(%rsp)
10000680a: bf 30 00 00 00              	movl	$48, %edi
10000680f: e8 80 16 00 00              	callq	5760 <dyld_stub_binder+0x100007e94>
100006814: 48 89 44 24 30              	movq	%rax, 48(%rsp)
100006819: c5 f8 28 05 ef 34 00 00     	vmovaps	13551(%rip), %xmm0
100006821: c5 f8 29 44 24 20           	vmovaps	%xmm0, 32(%rsp)
100006827: c5 fe 6f 05 b1 36 00 00     	vmovdqu	14001(%rip), %ymm0
10000682f: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100006833: 48 b9 69 64 65 6f 2e 6d 70 34       	movabsq	$3778640133568685161, %rcx
10000683d: 48 89 48 20                 	movq	%rcx, 32(%rax)
100006841: c6 40 28 00                 	movb	$0, 40(%rax)
100006845: 48 8d bc 24 f8 01 00 00     	leaq	504(%rsp), %rdi
10000684d: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
100006852: 31 d2                       	xorl	%edx, %edx
100006854: c5 f8 77                    	vzeroupper
100006857: e8 96 15 00 00              	callq	5526 <dyld_stub_binder+0x100007df2>
10000685c: f6 44 24 20 01              	testb	$1, 32(%rsp)
100006861: 74 0a                       	je	10 <_main+0xad>
100006863: 48 8b 7c 24 30              	movq	48(%rsp), %rdi
100006868: e8 1b 16 00 00              	callq	5659 <dyld_stub_binder+0x100007e88>
10000686d: 4c 8d 7c 24 28              	leaq	40(%rsp), %r15
100006872: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006876: c5 f9 d6 84 24 00 01 00 00  	vmovq	%xmm0, 256(%rsp)
10000687f: 4c 8d b4 24 f8 01 00 00     	leaq	504(%rsp), %r14
100006887: c4 e2 7d 59 05 28 34 00 00  	vpbroadcastq	13352(%rip), %ymm0
100006890: c5 fd 7f 84 24 60 02 00 00  	vmovdqa	%ymm0, 608(%rsp)
100006899: 4c 8d 6c 24 20              	leaq	32(%rsp), %r13
10000689e: eb 09                       	jmp	9 <_main+0xe9>
1000068a0: 45 85 e4                    	testl	%r12d, %r12d
1000068a3: 0f 85 db 0d 00 00           	jne	3547 <_main+0xec4>
1000068a9: 4c 89 f7                    	movq	%r14, %rdi
1000068ac: c5 f8 77                    	vzeroupper
1000068af: e8 8c 15 00 00              	callq	5516 <dyld_stub_binder+0x100007e40>
1000068b4: 84 c0                       	testb	%al, %al
1000068b6: 0f 84 c8 0d 00 00           	je	3528 <_main+0xec4>
1000068bc: c7 44 24 20 00 00 ff 42     	movl	$1124007936, 32(%rsp)
1000068c4: 48 8d 44 24 24              	leaq	36(%rsp), %rax
1000068c9: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000068cd: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
1000068d2: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
1000068d6: 4c 89 7c 24 60              	movq	%r15, 96(%rsp)
1000068db: 48 8d 44 24 70              	leaq	112(%rsp), %rax
1000068e0: 48 89 44 24 68              	movq	%rax, 104(%rsp)
1000068e5: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000068e9: c5 fa 7f 00                 	vmovdqu	%xmm0, (%rax)
1000068ed: 4c 89 f7                    	movq	%r14, %rdi
1000068f0: 4c 89 ee                    	movq	%r13, %rsi
1000068f3: c5 f8 77                    	vzeroupper
1000068f6: e8 03 15 00 00              	callq	5379 <dyld_stub_binder+0x100007dfe>
1000068fb: 41 bc 03 00 00 00           	movl	$3, %r12d
100006901: 48 83 7c 24 30 00           	cmpq	$0, 48(%rsp)
100006907: 0f 84 03 0d 00 00           	je	3331 <_main+0xe50>
10000690d: 8b 44 24 24                 	movl	36(%rsp), %eax
100006911: 83 f8 03                    	cmpl	$3, %eax
100006914: 0f 8d 46 03 00 00           	jge	838 <_main+0x4a0>
10000691a: 48 63 4c 24 28              	movslq	40(%rsp), %rcx
10000691f: 48 63 74 24 2c              	movslq	44(%rsp), %rsi
100006924: 48 0f af f1                 	imulq	%rcx, %rsi
100006928: 85 c0                       	testl	%eax, %eax
10000692a: 0f 84 e0 0c 00 00           	je	3296 <_main+0xe50>
100006930: 48 85 f6                    	testq	%rsi, %rsi
100006933: 0f 84 d7 0c 00 00           	je	3287 <_main+0xe50>
100006939: bf 19 00 00 00              	movl	$25, %edi
10000693e: c5 f8 77                    	vzeroupper
100006941: e8 e8 14 00 00              	callq	5352 <dyld_stub_binder+0x100007e2e>
100006946: 3c 1b                       	cmpb	$27, %al
100006948: 0f 84 c2 0c 00 00           	je	3266 <_main+0xe50>
10000694e: e8 11 15 00 00              	callq	5393 <dyld_stub_binder+0x100007e64>
100006953: 49 89 c4                    	movq	%rax, %r12
100006956: 48 8d bc 24 98 01 00 00     	leaq	408(%rsp), %rdi
10000695e: 4d 89 ee                    	movq	%r13, %r14
100006961: 4c 89 ee                    	movq	%r13, %rsi
100006964: 48 8d 94 24 28 02 00 00     	leaq	552(%rsp), %rdx
10000696c: c5 f9 6e 05 78 33 00 00     	vmovd	13176(%rip), %xmm0
100006974: e8 07 f8 ff ff              	callq	-2041 <__Z14get_predictionRN2cv3MatER14ModelInterfacef>
100006979: e8 e6 14 00 00              	callq	5350 <dyld_stub_binder+0x100007e64>
10000697e: 49 89 c5                    	movq	%rax, %r13
100006981: c7 84 24 30 01 00 00 00 00 ff 42    	movl	$1124007936, 304(%rsp)
10000698c: 48 8d 84 24 34 01 00 00     	leaq	308(%rsp), %rax
100006994: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006998: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
10000699c: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
1000069a1: 48 8b 44 24 28              	movq	40(%rsp), %rax
1000069a6: 48 8d 8c 24 38 01 00 00     	leaq	312(%rsp), %rcx
1000069ae: 48 89 8c 24 70 01 00 00     	movq	%rcx, 368(%rsp)
1000069b6: 48 8d 8c 24 80 01 00 00     	leaq	384(%rsp), %rcx
1000069be: 48 89 8c 24 78 01 00 00     	movq	%rcx, 376(%rsp)
1000069c6: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000069ca: c5 fa 7f 01                 	vmovdqu	%xmm0, (%rcx)
1000069ce: 48 89 84 24 a8 02 00 00     	movq	%rax, 680(%rsp)
1000069d6: 48 8d 9c 24 30 01 00 00     	leaq	304(%rsp), %rbx
1000069de: 48 89 df                    	movq	%rbx, %rdi
1000069e1: be 02 00 00 00              	movl	$2, %esi
1000069e6: 48 8d 94 24 a8 02 00 00     	leaq	680(%rsp), %rdx
1000069ee: 31 c9                       	xorl	%ecx, %ecx
1000069f0: c5 f8 77                    	vzeroupper
1000069f3: e8 12 14 00 00              	callq	5138 <dyld_stub_binder+0x100007e0a>
1000069f8: 48 c7 84 24 b0 00 00 00 00 00 00 00 	movq	$0, 176(%rsp)
100006a04: c7 84 24 a0 00 00 00 00 00 01 01    	movl	$16842752, 160(%rsp)
100006a0f: 48 8d 84 24 98 01 00 00     	leaq	408(%rsp), %rax
100006a17: 48 89 84 24 a8 00 00 00     	movq	%rax, 168(%rsp)
100006a1f: 48 c7 84 24 90 00 00 00 00 00 00 00 	movq	$0, 144(%rsp)
100006a2b: c7 84 24 80 00 00 00 00 00 01 02    	movl	$33619968, 128(%rsp)
100006a36: 48 89 9c 24 88 00 00 00     	movq	%rbx, 136(%rsp)
100006a3e: 8b 44 24 28                 	movl	40(%rsp), %eax
100006a42: 8b 4c 24 2c                 	movl	44(%rsp), %ecx
100006a46: 89 8c 24 08 01 00 00        	movl	%ecx, 264(%rsp)
100006a4d: 89 84 24 0c 01 00 00        	movl	%eax, 268(%rsp)
100006a54: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006a58: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100006a5c: 48 8d 9c 24 a0 00 00 00     	leaq	160(%rsp), %rbx
100006a64: 48 89 df                    	movq	%rbx, %rdi
100006a67: 48 8d b4 24 80 00 00 00     	leaq	128(%rsp), %rsi
100006a6f: 48 8d 94 24 08 01 00 00     	leaq	264(%rsp), %rdx
100006a77: b9 02 00 00 00              	movl	$2, %ecx
100006a7c: e8 a1 13 00 00              	callq	5025 <dyld_stub_binder+0x100007e22>
100006a81: c4 c1 cb 2a c4              	vcvtsi2sd	%r12, %xmm6, %xmm0
100006a86: c5 fb 10 0d 22 32 00 00     	vmovsd	12834(%rip), %xmm1
100006a8e: c5 f9 28 d1                 	vmovapd	%xmm1, %xmm2
100006a92: c5 fb 5e c1                 	vdivsd	%xmm1, %xmm0, %xmm0
100006a96: c4 c1 cb 2a cd              	vcvtsi2sd	%r13, %xmm6, %xmm1
100006a9b: c5 f3 5e ca                 	vdivsd	%xmm2, %xmm1, %xmm1
100006a9f: c5 f3 5c c0                 	vsubsd	%xmm0, %xmm1, %xmm0
100006aa3: c5 fb 58 05 1d 32 00 00     	vaddsd	12829(%rip), %xmm0, %xmm0
100006aab: c5 fb 10 0d 1d 32 00 00     	vmovsd	12829(%rip), %xmm1
100006ab3: c5 f3 5e c0                 	vdivsd	%xmm0, %xmm1, %xmm0
100006ab7: c5 fb 10 0d 01 32 00 00     	vmovsd	12801(%rip), %xmm1
100006abf: c5 f3 59 8c 24 00 01 00 00  	vmulsd	256(%rsp), %xmm1, %xmm1
100006ac8: c5 f3 58 c0                 	vaddsd	%xmm0, %xmm1, %xmm0
100006acc: c5 fb 11 84 24 00 01 00 00  	vmovsd	%xmm0, 256(%rsp)
100006ad5: e8 d8 13 00 00              	callq	5080 <dyld_stub_binder+0x100007eb2>
100006ada: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100006ade: 48 89 df                    	movq	%rbx, %rdi
100006ae1: e8 96 13 00 00              	callq	5014 <dyld_stub_binder+0x100007e7c>
100006ae6: 48 89 df                    	movq	%rbx, %rdi
100006ae9: 31 f6                       	xorl	%esi, %esi
100006aeb: 48 8d 15 17 34 00 00        	leaq	13335(%rip), %rdx
100006af2: e8 5b 13 00 00              	callq	4955 <dyld_stub_binder+0x100007e52>
100006af7: 4c 8d a4 24 f0 00 00 00     	leaq	240(%rsp), %r12
100006aff: 4d 89 f5                    	movq	%r14, %r13
100006b02: 48 8b 48 10                 	movq	16(%rax), %rcx
100006b06: 48 89 8c 24 20 01 00 00     	movq	%rcx, 288(%rsp)
100006b0e: c5 f9 10 00                 	vmovupd	(%rax), %xmm0
100006b12: c5 f9 29 84 24 10 01 00 00  	vmovapd	%xmm0, 272(%rsp)
100006b1b: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100006b1f: c5 f9 11 00                 	vmovupd	%xmm0, (%rax)
100006b23: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100006b2b: f6 84 24 a0 00 00 00 01     	testb	$1, 160(%rsp)
100006b33: 74 0d                       	je	13 <_main+0x382>
100006b35: 48 8b bc 24 b0 00 00 00     	movq	176(%rsp), %rdi
100006b3d: e8 46 13 00 00              	callq	4934 <dyld_stub_binder+0x100007e88>
100006b42: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100006b46: c5 fd 29 84 24 80 00 00 00  	vmovapd	%ymm0, 128(%rsp)
100006b4f: c7 84 24 a0 00 00 00 00 00 ff 42    	movl	$1124007936, 160(%rsp)
100006b5a: 48 8d 84 24 a4 00 00 00     	leaq	164(%rsp), %rax
100006b62: c5 fd 11 40 1c              	vmovupd	%ymm0, 28(%rax)
100006b67: c5 fd 11 00                 	vmovupd	%ymm0, (%rax)
100006b6b: 48 8b 44 24 28              	movq	40(%rsp), %rax
100006b70: 48 8d 8c 24 a8 00 00 00     	leaq	168(%rsp), %rcx
100006b78: 48 89 8c 24 e0 00 00 00     	movq	%rcx, 224(%rsp)
100006b80: 4c 89 a4 24 e8 00 00 00     	movq	%r12, 232(%rsp)
100006b88: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100006b8c: c4 c1 79 11 04 24           	vmovupd	%xmm0, (%r12)
100006b92: 48 89 84 24 a8 02 00 00     	movq	%rax, 680(%rsp)
100006b9a: 4c 8d b4 24 a0 00 00 00     	leaq	160(%rsp), %r14
100006ba2: 4c 89 f7                    	movq	%r14, %rdi
100006ba5: be 02 00 00 00              	movl	$2, %esi
100006baa: 48 8d 94 24 a8 02 00 00     	leaq	680(%rsp), %rdx
100006bb2: b9 10 00 00 00              	movl	$16, %ecx
100006bb7: c5 f8 77                    	vzeroupper
100006bba: e8 4b 12 00 00              	callq	4683 <dyld_stub_binder+0x100007e0a>
100006bbf: 4c 89 f7                    	movq	%r14, %rdi
100006bc2: 48 8d b4 24 80 00 00 00     	leaq	128(%rsp), %rsi
100006bca: e8 47 12 00 00              	callq	4679 <dyld_stub_binder+0x100007e16>
100006bcf: 48 8b 44 24 58              	movq	88(%rsp), %rax
100006bd4: 48 85 c0                    	testq	%rax, %rax
100006bd7: 74 04                       	je	4 <_main+0x41d>
100006bd9: f0                          	lock
100006bda: ff 40 14                    	incl	20(%rax)
100006bdd: 48 8b 84 24 d8 00 00 00     	movq	216(%rsp), %rax
100006be5: 48 85 c0                    	testq	%rax, %rax
100006be8: 74 0e                       	je	14 <_main+0x438>
100006bea: f0                          	lock
100006beb: ff 48 14                    	decl	20(%rax)
100006bee: 75 08                       	jne	8 <_main+0x438>
100006bf0: 4c 89 f7                    	movq	%r14, %rdi
100006bf3: e8 0c 12 00 00              	callq	4620 <dyld_stub_binder+0x100007e04>
100006bf8: 48 c7 84 24 d8 00 00 00 00 00 00 00 	movq	$0, 216(%rsp)
100006c04: 48 8d 84 24 a4 00 00 00     	leaq	164(%rsp), %rax
100006c0c: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100006c10: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100006c15: 83 bc 24 a4 00 00 00 00     	cmpl	$0, 164(%rsp)
100006c1d: 0f 8e 4a 05 00 00           	jle	1354 <_main+0x9ad>
100006c23: 48 8b 84 24 e0 00 00 00     	movq	224(%rsp), %rax
100006c2b: 31 c9                       	xorl	%ecx, %ecx
100006c2d: 0f 1f 00                    	nopl	(%rax)
100006c30: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006c37: 48 ff c1                    	incq	%rcx
100006c3a: 48 63 94 24 a4 00 00 00     	movslq	164(%rsp), %rdx
100006c42: 48 39 d1                    	cmpq	%rdx, %rcx
100006c45: 7c e9                       	jl	-23 <_main+0x470>
100006c47: 8b 44 24 20                 	movl	32(%rsp), %eax
100006c4b: 89 84 24 a0 00 00 00        	movl	%eax, 160(%rsp)
100006c52: 83 fa 02                    	cmpl	$2, %edx
100006c55: 0f 8e 1d 05 00 00           	jle	1309 <_main+0x9b8>
100006c5b: e9 5b 05 00 00              	jmp	1371 <_main+0x9fb>
100006c60: 48 8b 4c 24 60              	movq	96(%rsp), %rcx
100006c65: 83 f8 0f                    	cmpl	$15, %eax
100006c68: 77 0c                       	ja	12 <_main+0x4b6>
100006c6a: be 01 00 00 00              	movl	$1, %esi
100006c6f: 31 d2                       	xorl	%edx, %edx
100006c71: e9 da 04 00 00              	jmp	1242 <_main+0x990>
100006c76: 89 c2                       	movl	%eax, %edx
100006c78: 83 e2 f0                    	andl	$-16, %edx
100006c7b: 48 8d 72 f0                 	leaq	-16(%rdx), %rsi
100006c7f: 48 89 f7                    	movq	%rsi, %rdi
100006c82: 48 c1 ef 04                 	shrq	$4, %rdi
100006c86: 48 ff c7                    	incq	%rdi
100006c89: 89 fb                       	movl	%edi, %ebx
100006c8b: 83 e3 03                    	andl	$3, %ebx
100006c8e: 48 83 fe 30                 	cmpq	$48, %rsi
100006c92: 73 25                       	jae	37 <_main+0x4f9>
100006c94: 31 ff                       	xorl	%edi, %edi
100006c96: c5 fd 6f 84 24 60 02 00 00  	vmovdqa	608(%rsp), %ymm0
100006c9f: c5 fd 6f c8                 	vmovdqa	%ymm0, %ymm1
100006ca3: c5 fd 6f d8                 	vmovdqa	%ymm0, %ymm3
100006ca7: c5 fd 6f d0                 	vmovdqa	%ymm0, %ymm2
100006cab: 48 85 db                    	testq	%rbx, %rbx
100006cae: 0f 85 0e 03 00 00           	jne	782 <_main+0x802>
100006cb4: e9 d0 03 00 00              	jmp	976 <_main+0x8c9>
100006cb9: 48 89 de                    	movq	%rbx, %rsi
100006cbc: 48 29 fe                    	subq	%rdi, %rsi
100006cbf: c4 e2 7d 59 0d f0 2f 00 00  	vpbroadcastq	12272(%rip), %ymm1
100006cc8: 31 ff                       	xorl	%edi, %edi
100006cca: c5 fd 6f d9                 	vmovdqa	%ymm1, %ymm3
100006cce: c5 fd 6f d1                 	vmovdqa	%ymm1, %ymm2
100006cd2: c5 fd 6f c1                 	vmovdqa	%ymm1, %ymm0
100006cd6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006ce0: c4 e2 7d 25 24 b9           	vpmovsxdq	(%rcx,%rdi,4), %ymm4
100006ce6: c4 e2 7d 25 6c b9 10        	vpmovsxdq	16(%rcx,%rdi,4), %ymm5
100006ced: c4 e2 7d 25 74 b9 20        	vpmovsxdq	32(%rcx,%rdi,4), %ymm6
100006cf4: c4 e2 7d 25 7c b9 30        	vpmovsxdq	48(%rcx,%rdi,4), %ymm7
100006cfb: c5 bd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm8
100006d00: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
100006d04: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
100006d09: c4 41 75 f4 c9              	vpmuludq	%ymm9, %ymm1, %ymm9
100006d0e: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
100006d13: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006d19: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006d1d: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006d22: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100006d27: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
100006d2b: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
100006d30: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
100006d35: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
100006d39: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006d3e: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006d42: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006d46: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
100006d4b: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
100006d4f: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100006d54: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100006d58: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006d5c: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006d61: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006d65: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006d69: c5 dd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm4
100006d6e: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100006d72: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100006d77: c5 fd f4 ed                 	vpmuludq	%ymm5, %ymm0, %ymm5
100006d7b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006d7f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006d84: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006d88: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006d8c: c4 e2 7d 25 64 b9 40        	vpmovsxdq	64(%rcx,%rdi,4), %ymm4
100006d93: c4 e2 7d 25 6c b9 50        	vpmovsxdq	80(%rcx,%rdi,4), %ymm5
100006d9a: c4 e2 7d 25 74 b9 60        	vpmovsxdq	96(%rcx,%rdi,4), %ymm6
100006da1: c4 e2 7d 25 7c b9 70        	vpmovsxdq	112(%rcx,%rdi,4), %ymm7
100006da8: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006dad: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
100006db2: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100006db7: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006dbb: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006dc0: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006dc6: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006dca: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006dcf: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006dd4: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006dd8: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006ddd: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006de1: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006de6: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006deb: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006def: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006df3: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006df8: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006dfc: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006e01: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006e05: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006e09: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006e0e: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006e12: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006e16: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006e1b: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006e1f: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006e24: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006e28: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006e2c: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006e31: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006e35: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006e39: c4 e2 7d 25 a4 b9 80 00 00 00       	vpmovsxdq	128(%rcx,%rdi,4), %ymm4
100006e43: c4 e2 7d 25 ac b9 90 00 00 00       	vpmovsxdq	144(%rcx,%rdi,4), %ymm5
100006e4d: c4 e2 7d 25 b4 b9 a0 00 00 00       	vpmovsxdq	160(%rcx,%rdi,4), %ymm6
100006e57: c4 e2 7d 25 bc b9 b0 00 00 00       	vpmovsxdq	176(%rcx,%rdi,4), %ymm7
100006e61: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006e66: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
100006e6b: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100006e70: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006e74: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006e79: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006e7f: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006e83: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006e88: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006e8d: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006e91: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006e96: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006e9a: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006e9f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006ea4: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006ea8: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006eac: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006eb1: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006eb5: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006eba: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006ebe: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006ec2: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006ec7: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006ecb: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006ecf: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006ed4: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006ed8: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006edd: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006ee1: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006ee5: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006eea: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006eee: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006ef2: c4 e2 7d 25 a4 b9 c0 00 00 00       	vpmovsxdq	192(%rcx,%rdi,4), %ymm4
100006efc: c4 e2 7d 25 ac b9 d0 00 00 00       	vpmovsxdq	208(%rcx,%rdi,4), %ymm5
100006f06: c4 e2 7d 25 b4 b9 e0 00 00 00       	vpmovsxdq	224(%rcx,%rdi,4), %ymm6
100006f10: c4 e2 7d 25 bc b9 f0 00 00 00       	vpmovsxdq	240(%rcx,%rdi,4), %ymm7
100006f1a: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006f1f: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
100006f24: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100006f29: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006f2d: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006f32: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006f38: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006f3c: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006f41: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006f46: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006f4a: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006f4f: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006f53: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006f58: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006f5d: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006f61: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006f65: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006f6a: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006f6e: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006f73: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006f77: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006f7b: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006f80: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006f84: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006f88: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006f8d: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006f91: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006f96: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006f9a: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006f9e: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006fa3: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006fa7: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006fab: 48 83 c7 40                 	addq	$64, %rdi
100006faf: 48 83 c6 04                 	addq	$4, %rsi
100006fb3: 0f 85 27 fd ff ff           	jne	-729 <_main+0x520>
100006fb9: 48 85 db                    	testq	%rbx, %rbx
100006fbc: 0f 84 c7 00 00 00           	je	199 <_main+0x8c9>
100006fc2: 48 8d 34 b9                 	leaq	(%rcx,%rdi,4), %rsi
100006fc6: 48 83 c6 30                 	addq	$48, %rsi
100006fca: 48 c1 e3 06                 	shlq	$6, %rbx
100006fce: 31 ff                       	xorl	%edi, %edi
100006fd0: c4 e2 7d 25 64 3e d0        	vpmovsxdq	-48(%rsi,%rdi), %ymm4
100006fd7: c4 e2 7d 25 6c 3e e0        	vpmovsxdq	-32(%rsi,%rdi), %ymm5
100006fde: c4 e2 7d 25 74 3e f0        	vpmovsxdq	-16(%rsi,%rdi), %ymm6
100006fe5: c4 e2 7d 25 3c 3e           	vpmovsxdq	(%rsi,%rdi), %ymm7
100006feb: c5 bd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm8
100006ff0: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
100006ff4: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
100006ff9: c4 41 75 f4 c9              	vpmuludq	%ymm9, %ymm1, %ymm9
100006ffe: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
100007003: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100007009: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
10000700d: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100007012: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100007017: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
10000701b: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
100007020: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
100007025: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
100007029: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
10000702e: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100007032: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100007036: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
10000703b: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
10000703f: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100007044: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100007048: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
10000704c: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100007051: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100007055: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100007059: c5 dd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm4
10000705e: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100007062: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100007067: c5 fd f4 ed                 	vpmuludq	%ymm5, %ymm0, %ymm5
10000706b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
10000706f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100007074: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100007078: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
10000707c: 48 83 c7 40                 	addq	$64, %rdi
100007080: 48 39 fb                    	cmpq	%rdi, %rbx
100007083: 0f 85 47 ff ff ff           	jne	-185 <_main+0x810>
100007089: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
10000708e: c5 dd f4 e1                 	vpmuludq	%ymm1, %ymm4, %ymm4
100007092: c5 d5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm5
100007097: c5 e5 f4 ed                 	vpmuludq	%ymm5, %ymm3, %ymm5
10000709b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
10000709f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
1000070a4: c5 e5 f4 c9                 	vpmuludq	%ymm1, %ymm3, %ymm1
1000070a8: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
1000070ac: c5 e5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm3
1000070b1: c5 e5 f4 d9                 	vpmuludq	%ymm1, %ymm3, %ymm3
1000070b5: c5 dd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm4
1000070ba: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
1000070be: c5 dd d4 db                 	vpaddq	%ymm3, %ymm4, %ymm3
1000070c2: c5 e5 73 f3 20              	vpsllq	$32, %ymm3, %ymm3
1000070c7: c5 ed f4 c9                 	vpmuludq	%ymm1, %ymm2, %ymm1
1000070cb: c5 f5 d4 cb                 	vpaddq	%ymm3, %ymm1, %ymm1
1000070cf: c5 ed 73 d0 20              	vpsrlq	$32, %ymm0, %ymm2
1000070d4: c5 ed f4 d1                 	vpmuludq	%ymm1, %ymm2, %ymm2
1000070d8: c5 e5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm3
1000070dd: c5 fd f4 db                 	vpmuludq	%ymm3, %ymm0, %ymm3
1000070e1: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
1000070e5: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
1000070ea: c5 fd f4 c1                 	vpmuludq	%ymm1, %ymm0, %ymm0
1000070ee: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
1000070f2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000070f8: c5 ed 73 d0 20              	vpsrlq	$32, %ymm0, %ymm2
1000070fd: c5 ed f4 d1                 	vpmuludq	%ymm1, %ymm2, %ymm2
100007101: c5 e5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm3
100007106: c5 fd f4 db                 	vpmuludq	%ymm3, %ymm0, %ymm3
10000710a: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
10000710e: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
100007113: c5 fd f4 c1                 	vpmuludq	%ymm1, %ymm0, %ymm0
100007117: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
10000711b: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100007120: c5 e9 73 d0 20              	vpsrlq	$32, %xmm0, %xmm2
100007125: c5 e9 f4 d1                 	vpmuludq	%xmm1, %xmm2, %xmm2
100007129: c5 e1 73 d8 0c              	vpsrldq	$12, %xmm0, %xmm3
10000712e: c5 f9 f4 db                 	vpmuludq	%xmm3, %xmm0, %xmm3
100007132: c5 e1 d4 d2                 	vpaddq	%xmm2, %xmm3, %xmm2
100007136: c5 e9 73 f2 20              	vpsllq	$32, %xmm2, %xmm2
10000713b: c5 f9 f4 c1                 	vpmuludq	%xmm1, %xmm0, %xmm0
10000713f: c5 f9 d4 c2                 	vpaddq	%xmm2, %xmm0, %xmm0
100007143: c4 e1 f9 7e c6              	vmovq	%xmm0, %rsi
100007148: 48 39 c2                    	cmpq	%rax, %rdx
10000714b: 74 13                       	je	19 <_main+0x9a0>
10000714d: 0f 1f 00                    	nopl	(%rax)
100007150: 48 63 3c 91                 	movslq	(%rcx,%rdx,4), %rdi
100007154: 48 0f af f7                 	imulq	%rdi, %rsi
100007158: 48 ff c2                    	incq	%rdx
10000715b: 48 39 d0                    	cmpq	%rdx, %rax
10000715e: 75 f0                       	jne	-16 <_main+0x990>
100007160: 85 c0                       	testl	%eax, %eax
100007162: 0f 85 c8 f7 ff ff           	jne	-2104 <_main+0x170>
100007168: e9 a3 04 00 00              	jmp	1187 <_main+0xe50>
10000716d: 8b 44 24 20                 	movl	32(%rsp), %eax
100007171: 89 84 24 a0 00 00 00        	movl	%eax, 160(%rsp)
100007178: 8b 44 24 24                 	movl	36(%rsp), %eax
10000717c: 83 f8 02                    	cmpl	$2, %eax
10000717f: 7f 3a                       	jg	58 <_main+0x9fb>
100007181: 89 84 24 a4 00 00 00        	movl	%eax, 164(%rsp)
100007188: 8b 44 24 28                 	movl	40(%rsp), %eax
10000718c: 8b 4c 24 2c                 	movl	44(%rsp), %ecx
100007190: 89 84 24 a8 00 00 00        	movl	%eax, 168(%rsp)
100007197: 89 8c 24 ac 00 00 00        	movl	%ecx, 172(%rsp)
10000719e: 48 8b 4c 24 68              	movq	104(%rsp), %rcx
1000071a3: 48 8b 11                    	movq	(%rcx), %rdx
1000071a6: 48 8b b4 24 e8 00 00 00     	movq	232(%rsp), %rsi
1000071ae: 48 89 16                    	movq	%rdx, (%rsi)
1000071b1: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000071b5: 48 89 4e 08                 	movq	%rcx, 8(%rsi)
1000071b9: eb 12                       	jmp	18 <_main+0xa0d>
1000071bb: 4c 89 f7                    	movq	%r14, %rdi
1000071be: 4c 89 ee                    	movq	%r13, %rsi
1000071c1: c5 f8 77                    	vzeroupper
1000071c4: e8 47 0c 00 00              	callq	3143 <dyld_stub_binder+0x100007e10>
1000071c9: 8b 44 24 28                 	movl	40(%rsp), %eax
1000071cd: c5 fc 10 44 24 30           	vmovups	48(%rsp), %ymm0
1000071d3: c5 fc 11 84 24 b0 00 00 00  	vmovups	%ymm0, 176(%rsp)
1000071dc: c5 f9 10 44 24 50           	vmovupd	80(%rsp), %xmm0
1000071e2: c5 f9 11 84 24 d0 00 00 00  	vmovupd	%xmm0, 208(%rsp)
1000071eb: 85 c0                       	testl	%eax, %eax
1000071ed: 0f 84 3e 01 00 00           	je	318 <_main+0xb71>
1000071f3: 31 c9                       	xorl	%ecx, %ecx
1000071f5: 8b 74 24 2c                 	movl	44(%rsp), %esi
1000071f9: eb 0f                       	jmp	15 <_main+0xa4a>
1000071fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100007200: ff c1                       	incl	%ecx
100007202: 39 c1                       	cmpl	%eax, %ecx
100007204: 0f 83 27 01 00 00           	jae	295 <_main+0xb71>
10000720a: 85 f6                       	testl	%esi, %esi
10000720c: be 00 00 00 00              	movl	$0, %esi
100007211: 74 ed                       	je	-19 <_main+0xa40>
100007213: 48 63 c1                    	movslq	%ecx, %rax
100007216: 31 d2                       	xorl	%edx, %edx
100007218: c5 fb 10 15 b8 2a 00 00     	vmovsd	10936(%rip), %xmm2
100007220: c5 fa 10 1d c8 2a 00 00     	vmovss	10952(%rip), %xmm3
100007228: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100007230: 48 8b 74 24 68              	movq	104(%rsp), %rsi
100007235: 48 8b 3e                    	movq	(%rsi), %rdi
100007238: 48 0f af f8                 	imulq	%rax, %rdi
10000723c: 48 03 7c 24 30              	addq	48(%rsp), %rdi
100007241: 48 63 d2                    	movslq	%edx, %rdx
100007244: 48 8d 34 52                 	leaq	(%rdx,%rdx,2), %rsi
100007248: 0f b6 3c 37                 	movzbl	(%rdi,%rsi), %edi
10000724c: c5 db 2a c7                 	vcvtsi2sd	%edi, %xmm4, %xmm0
100007250: c5 fb 59 c2                 	vmulsd	%xmm2, %xmm0, %xmm0
100007254: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
100007258: 48 8b 9c 24 e8 00 00 00     	movq	232(%rsp), %rbx
100007260: 48 8b 1b                    	movq	(%rbx), %rbx
100007263: 48 0f af d8                 	imulq	%rax, %rbx
100007267: 48 03 9c 24 b0 00 00 00     	addq	176(%rsp), %rbx
10000726f: 40 88 3c 33                 	movb	%dil, (%rbx,%rsi)
100007273: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100007278: 48 8b 3f                    	movq	(%rdi), %rdi
10000727b: 48 0f af f8                 	imulq	%rax, %rdi
10000727f: 48 03 7c 24 30              	addq	48(%rsp), %rdi
100007284: 0f b6 7c 37 01              	movzbl	1(%rdi,%rsi), %edi
100007289: c5 db 2a c7                 	vcvtsi2sd	%edi, %xmm4, %xmm0
10000728d: 48 8b bc 24 78 01 00 00     	movq	376(%rsp), %rdi
100007295: 48 8b 3f                    	movq	(%rdi), %rdi
100007298: 48 0f af f8                 	imulq	%rax, %rdi
10000729c: 48 03 bc 24 40 01 00 00     	addq	320(%rsp), %rdi
1000072a4: 0f b6 3c 3a                 	movzbl	(%rdx,%rdi), %edi
1000072a8: c5 da 2a cf                 	vcvtsi2ss	%edi, %xmm4, %xmm1
1000072ac: c5 f2 59 cb                 	vmulss	%xmm3, %xmm1, %xmm1
1000072b0: c5 f2 5a c9                 	vcvtss2sd	%xmm1, %xmm1, %xmm1
1000072b4: c5 fb 59 c2                 	vmulsd	%xmm2, %xmm0, %xmm0
1000072b8: c5 fb 58 c1                 	vaddsd	%xmm1, %xmm0, %xmm0
1000072bc: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
1000072c0: 48 8b 9c 24 e8 00 00 00     	movq	232(%rsp), %rbx
1000072c8: 48 8b 1b                    	movq	(%rbx), %rbx
1000072cb: 48 0f af d8                 	imulq	%rax, %rbx
1000072cf: 48 03 9c 24 b0 00 00 00     	addq	176(%rsp), %rbx
1000072d7: 40 88 7c 33 01              	movb	%dil, 1(%rbx,%rsi)
1000072dc: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
1000072e1: 48 8b 3f                    	movq	(%rdi), %rdi
1000072e4: 48 0f af f8                 	imulq	%rax, %rdi
1000072e8: 48 03 7c 24 30              	addq	48(%rsp), %rdi
1000072ed: 0f b6 7c 37 02              	movzbl	2(%rdi,%rsi), %edi
1000072f2: c5 db 2a c7                 	vcvtsi2sd	%edi, %xmm4, %xmm0
1000072f6: c5 fb 59 c2                 	vmulsd	%xmm2, %xmm0, %xmm0
1000072fa: c5 fb 2c f8                 	vcvttsd2si	%xmm0, %edi
1000072fe: 48 8b 9c 24 e8 00 00 00     	movq	232(%rsp), %rbx
100007306: 48 8b 1b                    	movq	(%rbx), %rbx
100007309: 48 0f af d8                 	imulq	%rax, %rbx
10000730d: 48 03 9c 24 b0 00 00 00     	addq	176(%rsp), %rbx
100007315: 40 88 7c 33 02              	movb	%dil, 2(%rbx,%rsi)
10000731a: ff c2                       	incl	%edx
10000731c: 8b 74 24 2c                 	movl	44(%rsp), %esi
100007320: 39 f2                       	cmpl	%esi, %edx
100007322: 0f 82 08 ff ff ff           	jb	-248 <_main+0xa70>
100007328: 8b 44 24 28                 	movl	40(%rsp), %eax
10000732c: e9 cf fe ff ff              	jmp	-305 <_main+0xa40>
100007331: 48 c7 84 24 90 00 00 00 00 00 00 00 	movq	$0, 144(%rsp)
10000733d: c7 84 24 80 00 00 00 00 00 01 03    	movl	$50397184, 128(%rsp)
100007348: 4c 89 b4 24 88 00 00 00     	movq	%r14, 136(%rsp)
100007350: 48 b8 1e 00 00 00 1e 00 00 00       	movabsq	$128849018910, %rax
10000735a: 48 89 84 24 90 01 00 00     	movq	%rax, 400(%rsp)
100007362: c5 fc 28 05 b6 29 00 00     	vmovaps	10678(%rip), %ymm0
10000736a: c5 fc 29 84 24 80 02 00 00  	vmovaps	%ymm0, 640(%rsp)
100007373: c7 44 24 08 00 00 00 00     	movl	$0, 8(%rsp)
10000737b: c7 04 24 10 00 00 00        	movl	$16, (%rsp)
100007382: 48 8d 9c 24 80 00 00 00     	leaq	128(%rsp), %rbx
10000738a: 48 89 df                    	movq	%rbx, %rdi
10000738d: 48 8d b4 24 10 01 00 00     	leaq	272(%rsp), %rsi
100007395: 48 8d 94 24 90 01 00 00     	leaq	400(%rsp), %rdx
10000739d: 31 c9                       	xorl	%ecx, %ecx
10000739f: c5 fb 10 05 39 29 00 00     	vmovsd	10553(%rip), %xmm0
1000073a7: 4c 8d 84 24 80 02 00 00     	leaq	640(%rsp), %r8
1000073af: 41 b9 02 00 00 00           	movl	$2, %r9d
1000073b5: c5 f8 77                    	vzeroupper
1000073b8: e8 6b 0a 00 00              	callq	2667 <dyld_stub_binder+0x100007e28>
1000073bd: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
1000073c1: c5 f9 29 84 24 80 00 00 00  	vmovapd	%xmm0, 128(%rsp)
1000073ca: 48 c7 84 24 90 00 00 00 00 00 00 00 	movq	$0, 144(%rsp)
1000073d6: c6 84 24 80 00 00 00 0a     	movb	$10, 128(%rsp)
1000073de: 48 8d 84 24 81 00 00 00     	leaq	129(%rsp), %rax
1000073e6: c6 40 04 65                 	movb	$101, 4(%rax)
1000073ea: c7 00 66 72 61 6d           	movl	$1835102822, (%rax)
1000073f0: c6 84 24 86 00 00 00 00     	movb	$0, 134(%rsp)
1000073f8: 48 c7 84 24 b8 02 00 00 00 00 00 00 	movq	$0, 696(%rsp)
100007404: c7 84 24 a8 02 00 00 00 00 01 01    	movl	$16842752, 680(%rsp)
10000740f: 4c 89 b4 24 b0 02 00 00     	movq	%r14, 688(%rsp)
100007417: 48 89 df                    	movq	%rbx, %rdi
10000741a: 48 8d b4 24 a8 02 00 00     	leaq	680(%rsp), %rsi
100007422: e8 f5 09 00 00              	callq	2549 <dyld_stub_binder+0x100007e1c>
100007427: f6 84 24 80 00 00 00 01     	testb	$1, 128(%rsp)
10000742f: 74 0d                       	je	13 <_main+0xc7e>
100007431: 48 8b bc 24 90 00 00 00     	movq	144(%rsp), %rdi
100007439: e8 4a 0a 00 00              	callq	2634 <dyld_stub_binder+0x100007e88>
10000743e: 48 8b 84 24 d8 00 00 00     	movq	216(%rsp), %rax
100007446: 48 85 c0                    	testq	%rax, %rax
100007449: 4c 8d b4 24 f8 01 00 00     	leaq	504(%rsp), %r14
100007451: 74 13                       	je	19 <_main+0xca6>
100007453: f0                          	lock
100007454: ff 48 14                    	decl	20(%rax)
100007457: 75 0d                       	jne	13 <_main+0xca6>
100007459: 48 8d bc 24 a0 00 00 00     	leaq	160(%rsp), %rdi
100007461: e8 9e 09 00 00              	callq	2462 <dyld_stub_binder+0x100007e04>
100007466: 48 c7 84 24 d8 00 00 00 00 00 00 00 	movq	$0, 216(%rsp)
100007472: 48 8d 84 24 a4 00 00 00     	leaq	164(%rsp), %rax
10000747a: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
10000747e: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100007483: 83 bc 24 a4 00 00 00 00     	cmpl	$0, 164(%rsp)
10000748b: 7e 2a                       	jle	42 <_main+0xcf7>
10000748d: 48 8b 84 24 e0 00 00 00     	movq	224(%rsp), %rax
100007495: 31 c9                       	xorl	%ecx, %ecx
100007497: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000074a0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000074a7: 48 ff c1                    	incq	%rcx
1000074aa: 48 63 94 24 a4 00 00 00     	movslq	164(%rsp), %rdx
1000074b2: 48 39 d1                    	cmpq	%rdx, %rcx
1000074b5: 7c e9                       	jl	-23 <_main+0xce0>
1000074b7: 48 8b bc 24 e8 00 00 00     	movq	232(%rsp), %rdi
1000074bf: 4c 39 e7                    	cmpq	%r12, %rdi
1000074c2: 74 08                       	je	8 <_main+0xd0c>
1000074c4: c5 f8 77                    	vzeroupper
1000074c7: e8 6e 09 00 00              	callq	2414 <dyld_stub_binder+0x100007e3a>
1000074cc: f6 84 24 10 01 00 00 01     	testb	$1, 272(%rsp)
1000074d4: 74 10                       	je	16 <_main+0xd26>
1000074d6: 48 8b bc 24 20 01 00 00     	movq	288(%rsp), %rdi
1000074de: c5 f8 77                    	vzeroupper
1000074e1: e8 a2 09 00 00              	callq	2466 <dyld_stub_binder+0x100007e88>
1000074e6: 48 8b 84 24 68 01 00 00     	movq	360(%rsp), %rax
1000074ee: 48 85 c0                    	testq	%rax, %rax
1000074f1: 74 16                       	je	22 <_main+0xd49>
1000074f3: f0                          	lock
1000074f4: ff 48 14                    	decl	20(%rax)
1000074f7: 75 10                       	jne	16 <_main+0xd49>
1000074f9: 48 8d bc 24 30 01 00 00     	leaq	304(%rsp), %rdi
100007501: c5 f8 77                    	vzeroupper
100007504: e8 fb 08 00 00              	callq	2299 <dyld_stub_binder+0x100007e04>
100007509: 48 c7 84 24 68 01 00 00 00 00 00 00 	movq	$0, 360(%rsp)
100007515: 48 8d 84 24 34 01 00 00     	leaq	308(%rsp), %rax
10000751d: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007521: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100007526: 83 bc 24 34 01 00 00 00     	cmpl	$0, 308(%rsp)
10000752e: 7e 27                       	jle	39 <_main+0xd97>
100007530: 48 8b 84 24 70 01 00 00     	movq	368(%rsp), %rax
100007538: 31 c9                       	xorl	%ecx, %ecx
10000753a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100007540: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007547: 48 ff c1                    	incq	%rcx
10000754a: 48 63 94 24 34 01 00 00     	movslq	308(%rsp), %rdx
100007552: 48 39 d1                    	cmpq	%rdx, %rcx
100007555: 7c e9                       	jl	-23 <_main+0xd80>
100007557: 48 8b bc 24 78 01 00 00     	movq	376(%rsp), %rdi
10000755f: 48 8d 84 24 80 01 00 00     	leaq	384(%rsp), %rax
100007567: 48 39 c7                    	cmpq	%rax, %rdi
10000756a: 74 08                       	je	8 <_main+0xdb4>
10000756c: c5 f8 77                    	vzeroupper
10000756f: e8 c6 08 00 00              	callq	2246 <dyld_stub_binder+0x100007e3a>
100007574: 48 8b 84 24 d0 01 00 00     	movq	464(%rsp), %rax
10000757c: 48 85 c0                    	testq	%rax, %rax
10000757f: 74 16                       	je	22 <_main+0xdd7>
100007581: f0                          	lock
100007582: ff 48 14                    	decl	20(%rax)
100007585: 75 10                       	jne	16 <_main+0xdd7>
100007587: 48 8d bc 24 98 01 00 00     	leaq	408(%rsp), %rdi
10000758f: c5 f8 77                    	vzeroupper
100007592: e8 6d 08 00 00              	callq	2157 <dyld_stub_binder+0x100007e04>
100007597: 48 c7 84 24 d0 01 00 00 00 00 00 00 	movq	$0, 464(%rsp)
1000075a3: 48 8d 84 24 a8 01 00 00     	leaq	424(%rsp), %rax
1000075ab: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
1000075af: c5 fd 11 00                 	vmovupd	%ymm0, (%rax)
1000075b3: 83 bc 24 9c 01 00 00 00     	cmpl	$0, 412(%rsp)
1000075bb: 7e 2a                       	jle	42 <_main+0xe27>
1000075bd: 48 8b 84 24 d8 01 00 00     	movq	472(%rsp), %rax
1000075c5: 31 c9                       	xorl	%ecx, %ecx
1000075c7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000075d0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000075d7: 48 ff c1                    	incq	%rcx
1000075da: 48 63 94 24 9c 01 00 00     	movslq	412(%rsp), %rdx
1000075e2: 48 39 d1                    	cmpq	%rdx, %rcx
1000075e5: 7c e9                       	jl	-23 <_main+0xe10>
1000075e7: 48 8b bc 24 e0 01 00 00     	movq	480(%rsp), %rdi
1000075ef: 48 8d 84 24 e8 01 00 00     	leaq	488(%rsp), %rax
1000075f7: 48 39 c7                    	cmpq	%rax, %rdi
1000075fa: 74 08                       	je	8 <_main+0xe44>
1000075fc: c5 f8 77                    	vzeroupper
1000075ff: e8 36 08 00 00              	callq	2102 <dyld_stub_binder+0x100007e3a>
100007604: 45 31 e4                    	xorl	%r12d, %r12d
100007607: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100007610: 48 8b 44 24 58              	movq	88(%rsp), %rax
100007615: 48 85 c0                    	testq	%rax, %rax
100007618: 74 11                       	je	17 <_main+0xe6b>
10000761a: f0                          	lock
10000761b: ff 48 14                    	decl	20(%rax)
10000761e: 75 0b                       	jne	11 <_main+0xe6b>
100007620: 4c 89 ef                    	movq	%r13, %rdi
100007623: c5 f8 77                    	vzeroupper
100007626: e8 d9 07 00 00              	callq	2009 <dyld_stub_binder+0x100007e04>
10000762b: 48 c7 44 24 58 00 00 00 00  	movq	$0, 88(%rsp)
100007634: 48 8d 44 24 24              	leaq	36(%rsp), %rax
100007639: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
10000763d: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100007642: 83 7c 24 24 00              	cmpl	$0, 36(%rsp)
100007647: 7e 1b                       	jle	27 <_main+0xea4>
100007649: 48 8b 44 24 60              	movq	96(%rsp), %rax
10000764e: 31 c9                       	xorl	%ecx, %ecx
100007650: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007657: 48 ff c1                    	incq	%rcx
10000765a: 48 63 54 24 24              	movslq	36(%rsp), %rdx
10000765f: 48 39 d1                    	cmpq	%rdx, %rcx
100007662: 7c ec                       	jl	-20 <_main+0xe90>
100007664: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100007669: 48 8d 44 24 70              	leaq	112(%rsp), %rax
10000766e: 48 39 c7                    	cmpq	%rax, %rdi
100007671: 0f 84 29 f2 ff ff           	je	-3543 <_main+0xe0>
100007677: c5 f8 77                    	vzeroupper
10000767a: e8 bb 07 00 00              	callq	1979 <dyld_stub_binder+0x100007e3a>
10000767f: e9 1c f2 ff ff              	jmp	-3556 <_main+0xe0>
100007684: 48 8b 3d bd 29 00 00        	movq	10685(%rip), %rdi
10000768b: 48 8d 35 84 28 00 00        	leaq	10372(%rip), %rsi
100007692: ba 0d 00 00 00              	movl	$13, %edx
100007697: c5 f8 77                    	vzeroupper
10000769a: e8 61 03 00 00              	callq	865 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000769f: 48 8d bc 24 f8 01 00 00     	leaq	504(%rsp), %rdi
1000076a7: e8 4c 07 00 00              	callq	1868 <dyld_stub_binder+0x100007df8>
1000076ac: 48 8d bc 24 28 02 00 00     	leaq	552(%rsp), %rdi
1000076b4: e8 67 d1 ff ff              	callq	-11929 <__ZN14ModelInterfaceD2Ev>
1000076b9: 48 8b 05 a0 29 00 00        	movq	10656(%rip), %rax
1000076c0: 48 8b 00                    	movq	(%rax), %rax
1000076c3: 48 3b 84 24 c0 02 00 00     	cmpq	704(%rsp), %rax
1000076cb: 75 11                       	jne	17 <_main+0xf1e>
1000076cd: 31 c0                       	xorl	%eax, %eax
1000076cf: 48 8d 65 d8                 	leaq	-40(%rbp), %rsp
1000076d3: 5b                          	popq	%rbx
1000076d4: 41 5c                       	popq	%r12
1000076d6: 41 5d                       	popq	%r13
1000076d8: 41 5e                       	popq	%r14
1000076da: 41 5f                       	popq	%r15
1000076dc: 5d                          	popq	%rbp
1000076dd: c3                          	retq
1000076de: e8 c3 07 00 00              	callq	1987 <dyld_stub_binder+0x100007ea6>
1000076e3: e9 dd 02 00 00              	jmp	733 <_main+0x1205>
1000076e8: 48 89 c3                    	movq	%rax, %rbx
1000076eb: f6 44 24 20 01              	testb	$1, 32(%rsp)
1000076f0: 0f 84 e2 02 00 00           	je	738 <_main+0x1218>
1000076f6: 48 8b 7c 24 30              	movq	48(%rsp), %rdi
1000076fb: e8 88 07 00 00              	callq	1928 <dyld_stub_binder+0x100007e88>
100007700: e9 d3 02 00 00              	jmp	723 <_main+0x1218>
100007705: 48 89 c3                    	movq	%rax, %rbx
100007708: e9 cb 02 00 00              	jmp	715 <_main+0x1218>
10000770d: 48 89 c7                    	movq	%rax, %rdi
100007710: e8 db 02 00 00              	callq	731 <___clang_call_terminate>
100007715: 48 89 c7                    	movq	%rax, %rdi
100007718: e8 d3 02 00 00              	callq	723 <___clang_call_terminate>
10000771d: 48 89 c7                    	movq	%rax, %rdi
100007720: e8 cb 02 00 00              	callq	715 <___clang_call_terminate>
100007725: eb 1c                       	jmp	28 <_main+0xf83>
100007727: 48 89 c3                    	movq	%rax, %rbx
10000772a: f6 84 24 80 00 00 00 01     	testb	$1, 128(%rsp)
100007732: 74 12                       	je	18 <_main+0xf86>
100007734: 48 8b bc 24 90 00 00 00     	movq	144(%rsp), %rdi
10000773c: e8 47 07 00 00              	callq	1863 <dyld_stub_binder+0x100007e88>
100007741: eb 03                       	jmp	3 <_main+0xf86>
100007743: 48 89 c3                    	movq	%rax, %rbx
100007746: 48 8b 84 24 d8 00 00 00     	movq	216(%rsp), %rax
10000774e: 48 85 c0                    	testq	%rax, %rax
100007751: 74 13                       	je	19 <_main+0xfa6>
100007753: f0                          	lock
100007754: ff 48 14                    	decl	20(%rax)
100007757: 75 0d                       	jne	13 <_main+0xfa6>
100007759: 48 8d bc 24 a0 00 00 00     	leaq	160(%rsp), %rdi
100007761: e8 9e 06 00 00              	callq	1694 <dyld_stub_binder+0x100007e04>
100007766: 48 c7 84 24 d8 00 00 00 00 00 00 00 	movq	$0, 216(%rsp)
100007772: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007776: 48 8d 84 24 a4 00 00 00     	leaq	164(%rsp), %rax
10000777e: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100007783: 83 bc 24 a4 00 00 00 00     	cmpl	$0, 164(%rsp)
10000778b: 7e 21                       	jle	33 <_main+0xfee>
10000778d: 48 8b 84 24 e0 00 00 00     	movq	224(%rsp), %rax
100007795: 31 c9                       	xorl	%ecx, %ecx
100007797: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
10000779e: 48 ff c1                    	incq	%rcx
1000077a1: 48 63 94 24 a4 00 00 00     	movslq	164(%rsp), %rdx
1000077a9: 48 39 d1                    	cmpq	%rdx, %rcx
1000077ac: 7c e9                       	jl	-23 <_main+0xfd7>
1000077ae: 48 8b bc 24 e8 00 00 00     	movq	232(%rsp), %rdi
1000077b6: 48 8d 84 24 f0 00 00 00     	leaq	240(%rsp), %rax
1000077be: 48 39 c7                    	cmpq	%rax, %rdi
1000077c1: 74 43                       	je	67 <_main+0x1046>
1000077c3: c5 f8 77                    	vzeroupper
1000077c6: e8 6f 06 00 00              	callq	1647 <dyld_stub_binder+0x100007e3a>
1000077cb: eb 39                       	jmp	57 <_main+0x1046>
1000077cd: 48 89 c7                    	movq	%rax, %rdi
1000077d0: e8 1b 02 00 00              	callq	539 <___clang_call_terminate>
1000077d5: 48 89 c3                    	movq	%rax, %rbx
1000077d8: f6 84 24 a0 00 00 00 01     	testb	$1, 160(%rsp)
1000077e0: 74 3e                       	je	62 <_main+0x1060>
1000077e2: 48 8b bc 24 b0 00 00 00     	movq	176(%rsp), %rdi
1000077ea: eb 2c                       	jmp	44 <_main+0x1058>
1000077ec: 48 89 c3                    	movq	%rax, %rbx
1000077ef: eb 2f                       	jmp	47 <_main+0x1060>
1000077f1: 48 89 c3                    	movq	%rax, %rbx
1000077f4: eb 2a                       	jmp	42 <_main+0x1060>
1000077f6: 48 89 c3                    	movq	%rax, %rbx
1000077f9: e9 aa 00 00 00              	jmp	170 <_main+0x10e8>
1000077fe: e9 48 01 00 00              	jmp	328 <_main+0x118b>
100007803: 48 89 c3                    	movq	%rax, %rbx
100007806: f6 84 24 10 01 00 00 01     	testb	$1, 272(%rsp)
10000780e: 74 10                       	je	16 <_main+0x1060>
100007810: 48 8b bc 24 20 01 00 00     	movq	288(%rsp), %rdi
100007818: c5 f8 77                    	vzeroupper
10000781b: e8 68 06 00 00              	callq	1640 <dyld_stub_binder+0x100007e88>
100007820: 48 8b 84 24 68 01 00 00     	movq	360(%rsp), %rax
100007828: 48 85 c0                    	testq	%rax, %rax
10000782b: 74 16                       	je	22 <_main+0x1083>
10000782d: f0                          	lock
10000782e: ff 48 14                    	decl	20(%rax)
100007831: 75 10                       	jne	16 <_main+0x1083>
100007833: 48 8d bc 24 30 01 00 00     	leaq	304(%rsp), %rdi
10000783b: c5 f8 77                    	vzeroupper
10000783e: e8 c1 05 00 00              	callq	1473 <dyld_stub_binder+0x100007e04>
100007843: 48 c7 84 24 68 01 00 00 00 00 00 00 	movq	$0, 360(%rsp)
10000784f: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100007853: 48 8d 84 24 34 01 00 00     	leaq	308(%rsp), %rax
10000785b: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100007860: 83 bc 24 34 01 00 00 00     	cmpl	$0, 308(%rsp)
100007868: 7e 21                       	jle	33 <_main+0x10cb>
10000786a: 48 8b 84 24 70 01 00 00     	movq	368(%rsp), %rax
100007872: 31 c9                       	xorl	%ecx, %ecx
100007874: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
10000787b: 48 ff c1                    	incq	%rcx
10000787e: 48 63 94 24 34 01 00 00     	movslq	308(%rsp), %rdx
100007886: 48 39 d1                    	cmpq	%rdx, %rcx
100007889: 7c e9                       	jl	-23 <_main+0x10b4>
10000788b: 48 8b bc 24 78 01 00 00     	movq	376(%rsp), %rdi
100007893: 48 8d 84 24 80 01 00 00     	leaq	384(%rsp), %rax
10000789b: 48 39 c7                    	cmpq	%rax, %rdi
10000789e: 74 08                       	je	8 <_main+0x10e8>
1000078a0: c5 f8 77                    	vzeroupper
1000078a3: e8 92 05 00 00              	callq	1426 <dyld_stub_binder+0x100007e3a>
1000078a8: 48 8b 84 24 d0 01 00 00     	movq	464(%rsp), %rax
1000078b0: 48 85 c0                    	testq	%rax, %rax
1000078b3: 74 16                       	je	22 <_main+0x110b>
1000078b5: f0                          	lock
1000078b6: ff 48 14                    	decl	20(%rax)
1000078b9: 75 10                       	jne	16 <_main+0x110b>
1000078bb: 48 8d bc 24 98 01 00 00     	leaq	408(%rsp), %rdi
1000078c3: c5 f8 77                    	vzeroupper
1000078c6: e8 39 05 00 00              	callq	1337 <dyld_stub_binder+0x100007e04>
1000078cb: 48 c7 84 24 d0 01 00 00 00 00 00 00 	movq	$0, 464(%rsp)
1000078d7: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000078db: 48 8d 84 24 a8 01 00 00     	leaq	424(%rsp), %rax
1000078e3: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
1000078e7: 83 bc 24 9c 01 00 00 00     	cmpl	$0, 412(%rsp)
1000078ef: 7e 21                       	jle	33 <_main+0x1152>
1000078f1: 48 8b 84 24 d8 01 00 00     	movq	472(%rsp), %rax
1000078f9: 31 c9                       	xorl	%ecx, %ecx
1000078fb: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007902: 48 ff c1                    	incq	%rcx
100007905: 48 63 94 24 9c 01 00 00     	movslq	412(%rsp), %rdx
10000790d: 48 39 d1                    	cmpq	%rdx, %rcx
100007910: 7c e9                       	jl	-23 <_main+0x113b>
100007912: 48 8b bc 24 e0 01 00 00     	movq	480(%rsp), %rdi
10000791a: 48 8d 84 24 e8 01 00 00     	leaq	488(%rsp), %rax
100007922: 48 39 c7                    	cmpq	%rax, %rdi
100007925: 74 27                       	je	39 <_main+0x118e>
100007927: c5 f8 77                    	vzeroupper
10000792a: e8 0b 05 00 00              	callq	1291 <dyld_stub_binder+0x100007e3a>
10000792f: eb 1d                       	jmp	29 <_main+0x118e>
100007931: 48 89 c7                    	movq	%rax, %rdi
100007934: e8 b7 00 00 00              	callq	183 <___clang_call_terminate>
100007939: 48 89 c7                    	movq	%rax, %rdi
10000793c: e8 af 00 00 00              	callq	175 <___clang_call_terminate>
100007941: eb 08                       	jmp	8 <_main+0x118b>
100007943: 48 89 c7                    	movq	%rax, %rdi
100007946: e8 a5 00 00 00              	callq	165 <___clang_call_terminate>
10000794b: 48 89 c3                    	movq	%rax, %rbx
10000794e: 48 8b 44 24 58              	movq	88(%rsp), %rax
100007953: 48 85 c0                    	testq	%rax, %rax
100007956: 74 13                       	je	19 <_main+0x11ab>
100007958: f0                          	lock
100007959: ff 48 14                    	decl	20(%rax)
10000795c: 75 0d                       	jne	13 <_main+0x11ab>
10000795e: 48 8d 7c 24 20              	leaq	32(%rsp), %rdi
100007963: c5 f8 77                    	vzeroupper
100007966: e8 99 04 00 00              	callq	1177 <dyld_stub_binder+0x100007e04>
10000796b: 48 c7 44 24 58 00 00 00 00  	movq	$0, 88(%rsp)
100007974: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100007978: 48 8d 44 24 24              	leaq	36(%rsp), %rax
10000797d: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100007982: 83 7c 24 24 00              	cmpl	$0, 36(%rsp)
100007987: 7e 1b                       	jle	27 <_main+0x11e4>
100007989: 48 8b 44 24 60              	movq	96(%rsp), %rax
10000798e: 31 c9                       	xorl	%ecx, %ecx
100007990: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007997: 48 ff c1                    	incq	%rcx
10000799a: 48 63 54 24 24              	movslq	36(%rsp), %rdx
10000799f: 48 39 d1                    	cmpq	%rdx, %rcx
1000079a2: 7c ec                       	jl	-20 <_main+0x11d0>
1000079a4: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
1000079a9: 48 8d 44 24 70              	leaq	112(%rsp), %rax
1000079ae: 48 39 c7                    	cmpq	%rax, %rdi
1000079b1: 74 15                       	je	21 <_main+0x1208>
1000079b3: c5 f8 77                    	vzeroupper
1000079b6: e8 7f 04 00 00              	callq	1151 <dyld_stub_binder+0x100007e3a>
1000079bb: eb 0b                       	jmp	11 <_main+0x1208>
1000079bd: 48 89 c7                    	movq	%rax, %rdi
1000079c0: e8 2b 00 00 00              	callq	43 <___clang_call_terminate>
1000079c5: 48 89 c3                    	movq	%rax, %rbx
1000079c8: 48 8d bc 24 f8 01 00 00     	leaq	504(%rsp), %rdi
1000079d0: c5 f8 77                    	vzeroupper
1000079d3: e8 20 04 00 00              	callq	1056 <dyld_stub_binder+0x100007df8>
1000079d8: 48 8d bc 24 28 02 00 00     	leaq	552(%rsp), %rdi
1000079e0: e8 3b ce ff ff              	callq	-12741 <__ZN14ModelInterfaceD2Ev>
1000079e5: 48 89 df                    	movq	%rbx, %rdi
1000079e8: e8 ff 03 00 00              	callq	1023 <dyld_stub_binder+0x100007dec>
1000079ed: 0f 0b                       	ud2
1000079ef: 90                          	nop

00000001000079f0 ___clang_call_terminate:
1000079f0: 50                          	pushq	%rax
1000079f1: e8 a4 04 00 00              	callq	1188 <dyld_stub_binder+0x100007e9a>
1000079f6: e8 87 04 00 00              	callq	1159 <dyld_stub_binder+0x100007e82>
1000079fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007a00 __ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:
100007a00: 55                          	pushq	%rbp
100007a01: 48 89 e5                    	movq	%rsp, %rbp
100007a04: 41 57                       	pushq	%r15
100007a06: 41 56                       	pushq	%r14
100007a08: 41 55                       	pushq	%r13
100007a0a: 41 54                       	pushq	%r12
100007a0c: 53                          	pushq	%rbx
100007a0d: 48 83 ec 28                 	subq	$40, %rsp
100007a11: 49 89 d6                    	movq	%rdx, %r14
100007a14: 49 89 f7                    	movq	%rsi, %r15
100007a17: 48 89 fb                    	movq	%rdi, %rbx
100007a1a: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007a1e: 48 89 de                    	movq	%rbx, %rsi
100007a21: e8 32 04 00 00              	callq	1074 <dyld_stub_binder+0x100007e58>
100007a26: 80 7d b0 00                 	cmpb	$0, -80(%rbp)
100007a2a: 0f 84 ae 00 00 00           	je	174 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007a30: 48 8b 03                    	movq	(%rbx), %rax
100007a33: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007a37: 4c 8d 24 03                 	leaq	(%rbx,%rax), %r12
100007a3b: 48 8b 7c 03 28              	movq	40(%rbx,%rax), %rdi
100007a40: 44 8b 6c 03 08              	movl	8(%rbx,%rax), %r13d
100007a45: 8b 84 03 90 00 00 00        	movl	144(%rbx,%rax), %eax
100007a4c: 83 f8 ff                    	cmpl	$-1, %eax
100007a4f: 75 4a                       	jne	74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9b>
100007a51: 48 89 7d c0                 	movq	%rdi, -64(%rbp)
100007a55: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007a59: 4c 89 e6                    	movq	%r12, %rsi
100007a5c: e8 eb 03 00 00              	callq	1003 <dyld_stub_binder+0x100007e4c>
100007a61: 48 8b 35 e8 25 00 00        	movq	9704(%rip), %rsi
100007a68: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007a6c: e8 d5 03 00 00              	callq	981 <dyld_stub_binder+0x100007e46>
100007a71: 48 8b 08                    	movq	(%rax), %rcx
100007a74: 48 89 c7                    	movq	%rax, %rdi
100007a77: be 20 00 00 00              	movl	$32, %esi
100007a7c: ff 51 38                    	callq	*56(%rcx)
100007a7f: 88 45 d7                    	movb	%al, -41(%rbp)
100007a82: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007a86: e8 df 03 00 00              	callq	991 <dyld_stub_binder+0x100007e6a>
100007a8b: 0f be 45 d7                 	movsbl	-41(%rbp), %eax
100007a8f: 41 89 84 24 90 00 00 00     	movl	%eax, 144(%r12)
100007a97: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100007a9b: 4d 01 fe                    	addq	%r15, %r14
100007a9e: 41 81 e5 b0 00 00 00        	andl	$176, %r13d
100007aa5: 41 83 fd 20                 	cmpl	$32, %r13d
100007aa9: 4c 89 fa                    	movq	%r15, %rdx
100007aac: 49 0f 44 d6                 	cmoveq	%r14, %rdx
100007ab0: 44 0f be c8                 	movsbl	%al, %r9d
100007ab4: 4c 89 fe                    	movq	%r15, %rsi
100007ab7: 4c 89 f1                    	movq	%r14, %rcx
100007aba: 4d 89 e0                    	movq	%r12, %r8
100007abd: e8 9e 00 00 00              	callq	158 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100007ac2: 48 85 c0                    	testq	%rax, %rax
100007ac5: 75 17                       	jne	23 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007ac7: 48 8b 03                    	movq	(%rbx), %rax
100007aca: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007ace: 48 8d 3c 03                 	leaq	(%rbx,%rax), %rdi
100007ad2: 8b 74 03 20                 	movl	32(%rbx,%rax), %esi
100007ad6: 83 ce 05                    	orl	$5, %esi
100007ad9: e8 98 03 00 00              	callq	920 <dyld_stub_binder+0x100007e76>
100007ade: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007ae2: e8 77 03 00 00              	callq	887 <dyld_stub_binder+0x100007e5e>
100007ae7: 48 89 d8                    	movq	%rbx, %rax
100007aea: 48 83 c4 28                 	addq	$40, %rsp
100007aee: 5b                          	popq	%rbx
100007aef: 41 5c                       	popq	%r12
100007af1: 41 5d                       	popq	%r13
100007af3: 41 5e                       	popq	%r14
100007af5: 41 5f                       	popq	%r15
100007af7: 5d                          	popq	%rbp
100007af8: c3                          	retq
100007af9: eb 0e                       	jmp	14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x109>
100007afb: 49 89 c6                    	movq	%rax, %r14
100007afe: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007b02: e8 63 03 00 00              	callq	867 <dyld_stub_binder+0x100007e6a>
100007b07: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x10c>
100007b09: 49 89 c6                    	movq	%rax, %r14
100007b0c: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007b10: e8 49 03 00 00              	callq	841 <dyld_stub_binder+0x100007e5e>
100007b15: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11a>
100007b17: 49 89 c6                    	movq	%rax, %r14
100007b1a: 4c 89 f7                    	movq	%r14, %rdi
100007b1d: e8 78 03 00 00              	callq	888 <dyld_stub_binder+0x100007e9a>
100007b22: 48 8b 03                    	movq	(%rbx), %rax
100007b25: 48 8b 78 e8                 	movq	-24(%rax), %rdi
100007b29: 48 01 df                    	addq	%rbx, %rdi
100007b2c: e8 3f 03 00 00              	callq	831 <dyld_stub_binder+0x100007e70>
100007b31: e8 6a 03 00 00              	callq	874 <dyld_stub_binder+0x100007ea0>
100007b36: eb af                       	jmp	-81 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe7>
100007b38: 48 89 c3                    	movq	%rax, %rbx
100007b3b: e8 60 03 00 00              	callq	864 <dyld_stub_binder+0x100007ea0>
100007b40: 48 89 df                    	movq	%rbx, %rdi
100007b43: e8 a4 02 00 00              	callq	676 <dyld_stub_binder+0x100007dec>
100007b48: 0f 0b                       	ud2
100007b4a: 48 89 c7                    	movq	%rax, %rdi
100007b4d: e8 9e fe ff ff              	callq	-354 <___clang_call_terminate>
100007b52: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007b5c: 0f 1f 40 00                 	nopl	(%rax)

0000000100007b60 __ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:
100007b60: 55                          	pushq	%rbp
100007b61: 48 89 e5                    	movq	%rsp, %rbp
100007b64: 41 57                       	pushq	%r15
100007b66: 41 56                       	pushq	%r14
100007b68: 41 55                       	pushq	%r13
100007b6a: 41 54                       	pushq	%r12
100007b6c: 53                          	pushq	%rbx
100007b6d: 48 83 ec 38                 	subq	$56, %rsp
100007b71: 48 85 ff                    	testq	%rdi, %rdi
100007b74: 0f 84 17 01 00 00           	je	279 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007b7a: 4d 89 c4                    	movq	%r8, %r12
100007b7d: 49 89 cf                    	movq	%rcx, %r15
100007b80: 49 89 fe                    	movq	%rdi, %r14
100007b83: 44 89 4d bc                 	movl	%r9d, -68(%rbp)
100007b87: 48 89 c8                    	movq	%rcx, %rax
100007b8a: 48 29 f0                    	subq	%rsi, %rax
100007b8d: 49 8b 48 18                 	movq	24(%r8), %rcx
100007b91: 45 31 ed                    	xorl	%r13d, %r13d
100007b94: 48 29 c1                    	subq	%rax, %rcx
100007b97: 4c 0f 4f e9                 	cmovgq	%rcx, %r13
100007b9b: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100007b9f: 48 89 d3                    	movq	%rdx, %rbx
100007ba2: 48 29 f3                    	subq	%rsi, %rbx
100007ba5: 48 85 db                    	testq	%rbx, %rbx
100007ba8: 7e 15                       	jle	21 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x5f>
100007baa: 49 8b 06                    	movq	(%r14), %rax
100007bad: 4c 89 f7                    	movq	%r14, %rdi
100007bb0: 48 89 da                    	movq	%rbx, %rdx
100007bb3: ff 50 60                    	callq	*96(%rax)
100007bb6: 48 39 d8                    	cmpq	%rbx, %rax
100007bb9: 0f 85 d2 00 00 00           	jne	210 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007bbf: 4d 85 ed                    	testq	%r13, %r13
100007bc2: 0f 8e a1 00 00 00           	jle	161 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x109>
100007bc8: 4c 89 65 b0                 	movq	%r12, -80(%rbp)
100007bcc: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007bd0: c5 f8 29 45 c0              	vmovaps	%xmm0, -64(%rbp)
100007bd5: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100007bdd: 49 83 fd 17                 	cmpq	$23, %r13
100007be1: 73 12                       	jae	18 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x95>
100007be3: 43 8d 44 2d 00              	leal	(%r13,%r13), %eax
100007be8: 88 45 c0                    	movb	%al, -64(%rbp)
100007beb: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007bef: 4c 8d 65 c1                 	leaq	-63(%rbp), %r12
100007bf3: eb 27                       	jmp	39 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xbc>
100007bf5: 49 8d 5d 10                 	leaq	16(%r13), %rbx
100007bf9: 48 83 e3 f0                 	andq	$-16, %rbx
100007bfd: 48 89 df                    	movq	%rbx, %rdi
100007c00: e8 8f 02 00 00              	callq	655 <dyld_stub_binder+0x100007e94>
100007c05: 49 89 c4                    	movq	%rax, %r12
100007c08: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100007c0c: 48 83 cb 01                 	orq	$1, %rbx
100007c10: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
100007c14: 4c 89 6d c8                 	movq	%r13, -56(%rbp)
100007c18: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007c1c: 0f b6 75 bc                 	movzbl	-68(%rbp), %esi
100007c20: 4c 89 e7                    	movq	%r12, %rdi
100007c23: 4c 89 ea                    	movq	%r13, %rdx
100007c26: e8 81 02 00 00              	callq	641 <dyld_stub_binder+0x100007eac>
100007c2b: 43 c6 04 2c 00              	movb	$0, (%r12,%r13)
100007c30: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007c34: 74 06                       	je	6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100007c36: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
100007c3a: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdf>
100007c3c: 48 ff c3                    	incq	%rbx
100007c3f: 4c 8b 65 b0                 	movq	-80(%rbp), %r12
100007c43: 49 8b 06                    	movq	(%r14), %rax
100007c46: 4c 89 f7                    	movq	%r14, %rdi
100007c49: 48 89 de                    	movq	%rbx, %rsi
100007c4c: 4c 89 ea                    	movq	%r13, %rdx
100007c4f: ff 50 60                    	callq	*96(%rax)
100007c52: 48 89 c3                    	movq	%rax, %rbx
100007c55: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007c59: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x104>
100007c5b: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007c5f: e8 24 02 00 00              	callq	548 <dyld_stub_binder+0x100007e88>
100007c64: 4c 39 eb                    	cmpq	%r13, %rbx
100007c67: 75 28                       	jne	40 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007c69: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
100007c6d: 49 29 f7                    	subq	%rsi, %r15
100007c70: 4d 85 ff                    	testq	%r15, %r15
100007c73: 7e 11                       	jle	17 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x126>
100007c75: 49 8b 06                    	movq	(%r14), %rax
100007c78: 4c 89 f7                    	movq	%r14, %rdi
100007c7b: 4c 89 fa                    	movq	%r15, %rdx
100007c7e: ff 50 60                    	callq	*96(%rax)
100007c81: 4c 39 f8                    	cmpq	%r15, %rax
100007c84: 75 0b                       	jne	11 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007c86: 49 c7 44 24 18 00 00 00 00  	movq	$0, 24(%r12)
100007c8f: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x134>
100007c91: 45 31 f6                    	xorl	%r14d, %r14d
100007c94: 4c 89 f0                    	movq	%r14, %rax
100007c97: 48 83 c4 38                 	addq	$56, %rsp
100007c9b: 5b                          	popq	%rbx
100007c9c: 41 5c                       	popq	%r12
100007c9e: 41 5d                       	popq	%r13
100007ca0: 41 5e                       	popq	%r14
100007ca2: 41 5f                       	popq	%r15
100007ca4: 5d                          	popq	%rbp
100007ca5: c3                          	retq
100007ca6: 48 89 c3                    	movq	%rax, %rbx
100007ca9: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007cad: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x158>
100007caf: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007cb3: e8 d0 01 00 00              	callq	464 <dyld_stub_binder+0x100007e88>
100007cb8: 48 89 df                    	movq	%rbx, %rdi
100007cbb: e8 2c 01 00 00              	callq	300 <dyld_stub_binder+0x100007dec>
100007cc0: 0f 0b                       	ud2
100007cc2: 90                          	nop
100007cc3: 90                          	nop
100007cc4: 90                          	nop
100007cc5: 90                          	nop
100007cc6: 90                          	nop
100007cc7: 90                          	nop
100007cc8: 90                          	nop
100007cc9: 90                          	nop
100007cca: 90                          	nop
100007ccb: 90                          	nop
100007ccc: 90                          	nop
100007ccd: 90                          	nop
100007cce: 90                          	nop
100007ccf: 90                          	nop

0000000100007cd0 ___cxx_global_var_init:
100007cd0: 55                          	pushq	%rbp
100007cd1: 48 89 e5                    	movq	%rsp, %rbp
100007cd4: 48 8b 05 25 23 00 00        	movq	8997(%rip), %rax
100007cdb: 80 38 00                    	cmpb	$0, (%rax)
100007cde: 74 02                       	je	2 <___cxx_global_var_init+0x12>
100007ce0: 5d                          	popq	%rbp
100007ce1: c3                          	retq
100007ce2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007ce9: 5d                          	popq	%rbp
100007cea: c3                          	retq
100007ceb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007cf0 ___cxx_global_var_init.4:
100007cf0: 55                          	pushq	%rbp
100007cf1: 48 89 e5                    	movq	%rsp, %rbp
100007cf4: 48 8b 05 25 23 00 00        	movq	8997(%rip), %rax
100007cfb: 80 38 00                    	cmpb	$0, (%rax)
100007cfe: 74 02                       	je	2 <___cxx_global_var_init.4+0x12>
100007d00: 5d                          	popq	%rbp
100007d01: c3                          	retq
100007d02: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007d09: 5d                          	popq	%rbp
100007d0a: c3                          	retq
100007d0b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007d10 ___cxx_global_var_init.5:
100007d10: 55                          	pushq	%rbp
100007d11: 48 89 e5                    	movq	%rsp, %rbp
100007d14: 48 8b 05 1d 23 00 00        	movq	8989(%rip), %rax
100007d1b: 80 38 00                    	cmpb	$0, (%rax)
100007d1e: 74 02                       	je	2 <___cxx_global_var_init.5+0x12>
100007d20: 5d                          	popq	%rbp
100007d21: c3                          	retq
100007d22: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007d29: 5d                          	popq	%rbp
100007d2a: c3                          	retq
100007d2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007d30 ___cxx_global_var_init.6:
100007d30: 55                          	pushq	%rbp
100007d31: 48 89 e5                    	movq	%rsp, %rbp
100007d34: 48 8b 05 f5 22 00 00        	movq	8949(%rip), %rax
100007d3b: 80 38 00                    	cmpb	$0, (%rax)
100007d3e: 74 02                       	je	2 <___cxx_global_var_init.6+0x12>
100007d40: 5d                          	popq	%rbp
100007d41: c3                          	retq
100007d42: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007d49: 5d                          	popq	%rbp
100007d4a: c3                          	retq
100007d4b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007d50 ___cxx_global_var_init.7:
100007d50: 55                          	pushq	%rbp
100007d51: 48 89 e5                    	movq	%rsp, %rbp
100007d54: 48 8b 05 cd 22 00 00        	movq	8909(%rip), %rax
100007d5b: 80 38 00                    	cmpb	$0, (%rax)
100007d5e: 74 02                       	je	2 <___cxx_global_var_init.7+0x12>
100007d60: 5d                          	popq	%rbp
100007d61: c3                          	retq
100007d62: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007d69: 5d                          	popq	%rbp
100007d6a: c3                          	retq
100007d6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007d70 ___cxx_global_var_init.8:
100007d70: 55                          	pushq	%rbp
100007d71: 48 89 e5                    	movq	%rsp, %rbp
100007d74: 48 8b 05 8d 22 00 00        	movq	8845(%rip), %rax
100007d7b: 80 38 00                    	cmpb	$0, (%rax)
100007d7e: 74 02                       	je	2 <___cxx_global_var_init.8+0x12>
100007d80: 5d                          	popq	%rbp
100007d81: c3                          	retq
100007d82: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007d89: 5d                          	popq	%rbp
100007d8a: c3                          	retq
100007d8b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007d90 ___cxx_global_var_init.9:
100007d90: 55                          	pushq	%rbp
100007d91: 48 89 e5                    	movq	%rsp, %rbp
100007d94: 48 8b 05 75 22 00 00        	movq	8821(%rip), %rax
100007d9b: 80 38 00                    	cmpb	$0, (%rax)
100007d9e: 74 02                       	je	2 <___cxx_global_var_init.9+0x12>
100007da0: 5d                          	popq	%rbp
100007da1: c3                          	retq
100007da2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007da9: 5d                          	popq	%rbp
100007daa: c3                          	retq
100007dab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007db0 ___cxx_global_var_init.10:
100007db0: 55                          	pushq	%rbp
100007db1: 48 89 e5                    	movq	%rsp, %rbp
100007db4: 48 8b 05 85 22 00 00        	movq	8837(%rip), %rax
100007dbb: 80 38 00                    	cmpb	$0, (%rax)
100007dbe: 74 02                       	je	2 <___cxx_global_var_init.10+0x12>
100007dc0: 5d                          	popq	%rbp
100007dc1: c3                          	retq
100007dc2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007dc9: 5d                          	popq	%rbp
100007dca: c3                          	retq
100007dcb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007dd0 ___cxx_global_var_init.11:
100007dd0: 55                          	pushq	%rbp
100007dd1: 48 89 e5                    	movq	%rsp, %rbp
100007dd4: 48 8b 05 3d 22 00 00        	movq	8765(%rip), %rax
100007ddb: 80 38 00                    	cmpb	$0, (%rax)
100007dde: 74 02                       	je	2 <___cxx_global_var_init.11+0x12>
100007de0: 5d                          	popq	%rbp
100007de1: c3                          	retq
100007de2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007de9: 5d                          	popq	%rbp
100007dea: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100007dec __stubs:
100007dec: ff 25 0e 32 00 00           	jmpq	*12814(%rip)
100007df2: ff 25 10 32 00 00           	jmpq	*12816(%rip)
100007df8: ff 25 12 32 00 00           	jmpq	*12818(%rip)
100007dfe: ff 25 14 32 00 00           	jmpq	*12820(%rip)
100007e04: ff 25 16 32 00 00           	jmpq	*12822(%rip)
100007e0a: ff 25 18 32 00 00           	jmpq	*12824(%rip)
100007e10: ff 25 1a 32 00 00           	jmpq	*12826(%rip)
100007e16: ff 25 1c 32 00 00           	jmpq	*12828(%rip)
100007e1c: ff 25 1e 32 00 00           	jmpq	*12830(%rip)
100007e22: ff 25 20 32 00 00           	jmpq	*12832(%rip)
100007e28: ff 25 22 32 00 00           	jmpq	*12834(%rip)
100007e2e: ff 25 24 32 00 00           	jmpq	*12836(%rip)
100007e34: ff 25 26 32 00 00           	jmpq	*12838(%rip)
100007e3a: ff 25 28 32 00 00           	jmpq	*12840(%rip)
100007e40: ff 25 2a 32 00 00           	jmpq	*12842(%rip)
100007e46: ff 25 2c 32 00 00           	jmpq	*12844(%rip)
100007e4c: ff 25 2e 32 00 00           	jmpq	*12846(%rip)
100007e52: ff 25 30 32 00 00           	jmpq	*12848(%rip)
100007e58: ff 25 32 32 00 00           	jmpq	*12850(%rip)
100007e5e: ff 25 34 32 00 00           	jmpq	*12852(%rip)
100007e64: ff 25 36 32 00 00           	jmpq	*12854(%rip)
100007e6a: ff 25 38 32 00 00           	jmpq	*12856(%rip)
100007e70: ff 25 3a 32 00 00           	jmpq	*12858(%rip)
100007e76: ff 25 3c 32 00 00           	jmpq	*12860(%rip)
100007e7c: ff 25 3e 32 00 00           	jmpq	*12862(%rip)
100007e82: ff 25 40 32 00 00           	jmpq	*12864(%rip)
100007e88: ff 25 42 32 00 00           	jmpq	*12866(%rip)
100007e8e: ff 25 44 32 00 00           	jmpq	*12868(%rip)
100007e94: ff 25 46 32 00 00           	jmpq	*12870(%rip)
100007e9a: ff 25 48 32 00 00           	jmpq	*12872(%rip)
100007ea0: ff 25 4a 32 00 00           	jmpq	*12874(%rip)
100007ea6: ff 25 4c 32 00 00           	jmpq	*12876(%rip)
100007eac: ff 25 4e 32 00 00           	jmpq	*12878(%rip)
100007eb2: ff 25 50 32 00 00           	jmpq	*12880(%rip)

Disassembly of section __TEXT,__stub_helper:

0000000100007eb8 __stub_helper:
100007eb8: 4c 8d 1d 51 32 00 00        	leaq	12881(%rip), %r11
100007ebf: 41 53                       	pushq	%r11
100007ec1: ff 25 a1 21 00 00           	jmpq	*8609(%rip)
100007ec7: 90                          	nop
100007ec8: 68 4e 01 00 00              	pushq	$334
100007ecd: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>
100007ed2: 68 9c 02 00 00              	pushq	$668
100007ed7: e9 dc ff ff ff              	jmp	-36 <__stub_helper>
100007edc: 68 17 00 00 00              	pushq	$23
100007ee1: e9 d2 ff ff ff              	jmp	-46 <__stub_helper>
100007ee6: 68 7a 00 00 00              	pushq	$122
100007eeb: e9 c8 ff ff ff              	jmp	-56 <__stub_helper>
100007ef0: 68 9b 00 00 00              	pushq	$155
100007ef5: e9 be ff ff ff              	jmp	-66 <__stub_helper>
100007efa: 68 11 03 00 00              	pushq	$785
100007eff: e9 b4 ff ff ff              	jmp	-76 <__stub_helper>
100007f04: 68 b9 01 00 00              	pushq	$441
100007f09: e9 aa ff ff ff              	jmp	-86 <__stub_helper>
100007f0e: 68 07 02 00 00              	pushq	$519
100007f13: e9 a0 ff ff ff              	jmp	-96 <__stub_helper>
100007f18: 68 b4 02 00 00              	pushq	$692
100007f1d: e9 96 ff ff ff              	jmp	-106 <__stub_helper>
100007f22: 68 c4 00 00 00              	pushq	$196
100007f27: e9 8c ff ff ff              	jmp	-116 <__stub_helper>
100007f2c: 68 e5 00 00 00              	pushq	$229
100007f31: e9 82 ff ff ff              	jmp	-126 <__stub_helper>
100007f36: 68 05 01 00 00              	pushq	$261
100007f3b: e9 78 ff ff ff              	jmp	-136 <__stub_helper>
100007f40: 68 27 01 00 00              	pushq	$295
100007f45: e9 6e ff ff ff              	jmp	-146 <__stub_helper>
100007f4a: 68 f6 02 00 00              	pushq	$758
100007f4f: e9 64 ff ff ff              	jmp	-156 <__stub_helper>
100007f54: 68 3a 03 00 00              	pushq	$826
100007f59: e9 5a ff ff ff              	jmp	-166 <__stub_helper>
100007f5e: 68 68 03 00 00              	pushq	$872
100007f63: e9 50 ff ff ff              	jmp	-176 <__stub_helper>
100007f68: 68 8e 03 00 00              	pushq	$910
100007f6d: e9 46 ff ff ff              	jmp	-186 <__stub_helper>
100007f72: 68 e3 03 00 00              	pushq	$995
100007f77: e9 3c ff ff ff              	jmp	-196 <__stub_helper>
100007f7c: 68 2a 04 00 00              	pushq	$1066
100007f81: e9 32 ff ff ff              	jmp	-206 <__stub_helper>
100007f86: 68 6e 04 00 00              	pushq	$1134
100007f8b: e9 28 ff ff ff              	jmp	-216 <__stub_helper>
100007f90: 68 9c 04 00 00              	pushq	$1180
100007f95: e9 1e ff ff ff              	jmp	-226 <__stub_helper>
100007f9a: 68 ba 04 00 00              	pushq	$1210
100007f9f: e9 14 ff ff ff              	jmp	-236 <__stub_helper>
100007fa4: 68 fb 04 00 00              	pushq	$1275
100007fa9: e9 0a ff ff ff              	jmp	-246 <__stub_helper>
100007fae: 68 1f 05 00 00              	pushq	$1311
100007fb3: e9 00 ff ff ff              	jmp	-256 <__stub_helper>
100007fb8: 68 3e 05 00 00              	pushq	$1342
100007fbd: e9 f6 fe ff ff              	jmp	-266 <__stub_helper>
100007fc2: 68 57 05 00 00              	pushq	$1367
100007fc7: e9 ec fe ff ff              	jmp	-276 <__stub_helper>
100007fcc: 68 72 05 00 00              	pushq	$1394
100007fd1: e9 e2 fe ff ff              	jmp	-286 <__stub_helper>
100007fd6: 68 00 00 00 00              	pushq	$0
100007fdb: e9 d8 fe ff ff              	jmp	-296 <__stub_helper>
100007fe0: 68 8b 05 00 00              	pushq	$1419
100007fe5: e9 ce fe ff ff              	jmp	-306 <__stub_helper>
100007fea: 68 a5 05 00 00              	pushq	$1445
100007fef: e9 c4 fe ff ff              	jmp	-316 <__stub_helper>
100007ff4: 68 b5 05 00 00              	pushq	$1461
100007ff9: e9 ba fe ff ff              	jmp	-326 <__stub_helper>
