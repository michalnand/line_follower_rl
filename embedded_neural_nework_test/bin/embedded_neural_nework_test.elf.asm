
bin/embedded_neural_nework_test.elf:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

00000001000021b0 __Z10dot_kernelPKaS0_j:
1000021b0: 55                          	pushq	%rbp
1000021b1: 48 89 e5                    	movq	%rsp, %rbp
1000021b4: 41 56                       	pushq	%r14
1000021b6: 53                          	pushq	%rbx
1000021b7: 31 c0                       	xorl	%eax, %eax
1000021b9: 83 fa 20                    	cmpl	$32, %edx
1000021bc: 0f 82 36 01 00 00           	jb	310 <__Z10dot_kernelPKaS0_j+0x148>
1000021c2: 83 c2 e0                    	addl	$-32, %edx
1000021c5: 89 d0                       	movl	%edx, %eax
1000021c7: c1 e8 05                    	shrl	$5, %eax
1000021ca: 44 8d 48 01                 	leal	1(%rax), %r9d
1000021ce: 45 89 c8                    	movl	%r9d, %r8d
1000021d1: 41 83 e0 01                 	andl	$1, %r8d
1000021d5: 85 c0                       	testl	%eax, %eax
1000021d7: 0f 84 f0 03 00 00           	je	1008 <__Z10dot_kernelPKaS0_j+0x41d>
1000021dd: 45 29 c1                    	subl	%r8d, %r9d
1000021e0: 31 c9                       	xorl	%ecx, %ecx
1000021e2: 31 c0                       	xorl	%eax, %eax
1000021e4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000021ee: 66 90                       	nop
1000021f0: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
1000021f7: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
1000021fe: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100002204: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
10000220b: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
100002212: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100002217: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
10000221e: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100002223: c4 e2 7d 21 24 0e           	vpmovsxbd	(%rsi,%rcx), %ymm4
100002229: c4 e2 5d 40 d2              	vpmulld	%ymm2, %ymm4, %ymm2
10000222e: c4 e2 7d 21 64 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm4
100002235: c4 e2 5d 40 db              	vpmulld	%ymm3, %ymm4, %ymm3
10000223a: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
10000223e: c5 ed fe cb                 	vpaddd	%ymm3, %ymm2, %ymm1
100002242: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002246: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000224c: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002250: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002255: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002259: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000225e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002262: c4 c1 79 7e c2              	vmovd	%xmm0, %r10d
100002267: c4 e2 7d 21 44 0f 28        	vpmovsxbd	40(%rdi,%rcx), %ymm0
10000226e: c4 e2 7d 21 4c 0f 38        	vpmovsxbd	56(%rdi,%rcx), %ymm1
100002275: c4 e2 7d 21 54 0f 20        	vpmovsxbd	32(%rdi,%rcx), %ymm2
10000227c: c4 e2 7d 21 5c 0f 30        	vpmovsxbd	48(%rdi,%rcx), %ymm3
100002283: c4 e2 7d 21 64 0e 28        	vpmovsxbd	40(%rsi,%rcx), %ymm4
10000228a: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
10000228f: c4 e2 7d 21 64 0e 38        	vpmovsxbd	56(%rsi,%rcx), %ymm4
100002296: 41 01 c2                    	addl	%eax, %r10d
100002299: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
10000229e: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
1000022a2: c4 e2 7d 21 4c 0e 20        	vpmovsxbd	32(%rsi,%rcx), %ymm1
1000022a9: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
1000022ae: c4 e2 7d 21 54 0e 30        	vpmovsxbd	48(%rsi,%rcx), %ymm2
1000022b5: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
1000022ba: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
1000022be: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
1000022c2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000022c8: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000022cc: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000022d1: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000022d5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000022da: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000022de: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000022e2: 44 01 d0                    	addl	%r10d, %eax
1000022e5: 48 83 c1 40                 	addq	$64, %rcx
1000022e9: 41 83 c1 fe                 	addl	$-2, %r9d
1000022ed: 0f 85 fd fe ff ff           	jne	-259 <__Z10dot_kernelPKaS0_j+0x40>
1000022f3: e9 d9 02 00 00              	jmp	729 <__Z10dot_kernelPKaS0_j+0x421>
1000022f8: 45 31 db                    	xorl	%r11d, %r11d
1000022fb: 83 fa 10                    	cmpl	$16, %edx
1000022fe: 0f 83 61 03 00 00           	jae	865 <__Z10dot_kernelPKaS0_j+0x4b5>
100002304: 45 89 d9                    	movl	%r11d, %r9d
100002307: 83 fa 08                    	cmpl	$8, %edx
10000230a: 0f 83 e8 04 00 00           	jae	1256 <__Z10dot_kernelPKaS0_j+0x648>
100002310: 45 89 c8                    	movl	%r9d, %r8d
100002313: 85 d2                       	testl	%edx, %edx
100002315: 0f 84 bc 05 00 00           	je	1468 <__Z10dot_kernelPKaS0_j+0x727>
10000231b: 83 fa 1f                    	cmpl	$31, %edx
10000231e: 0f 86 ad 01 00 00           	jbe	429 <__Z10dot_kernelPKaS0_j+0x321>
100002324: 8d 4a ff                    	leal	-1(%rdx), %ecx
100002327: 44 89 c3                    	movl	%r8d, %ebx
10000232a: f7 d3                       	notl	%ebx
10000232c: 39 d9                       	cmpl	%ebx, %ecx
10000232e: 0f 87 9d 01 00 00           	ja	413 <__Z10dot_kernelPKaS0_j+0x321>
100002334: 41 89 d1                    	movl	%edx, %r9d
100002337: 41 83 e1 e0                 	andl	$-32, %r9d
10000233b: c5 79 6e c0                 	vmovd	%eax, %xmm8
10000233f: 41 8d 41 e0                 	leal	-32(%r9), %eax
100002343: 89 c1                       	movl	%eax, %ecx
100002345: c1 e9 05                    	shrl	$5, %ecx
100002348: ff c1                       	incl	%ecx
10000234a: 41 89 ca                    	movl	%ecx, %r10d
10000234d: 41 83 e2 01                 	andl	$1, %r10d
100002351: 85 c0                       	testl	%eax, %eax
100002353: 0f 84 86 05 00 00           	je	1414 <__Z10dot_kernelPKaS0_j+0x72f>
100002359: 44 29 d1                    	subl	%r10d, %ecx
10000235c: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100002360: 45 31 db                    	xorl	%r11d, %r11d
100002363: 44 89 c0                    	movl	%r8d, %eax
100002366: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
10000236a: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
10000236f: 90                          	nop
100002370: 89 c3                       	movl	%eax, %ebx
100002372: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
100002378: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
10000237f: c4 e2 79 20 74 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm6
100002386: c4 e2 79 20 7c 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm7
10000238d: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
100002393: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
100002397: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
10000239e: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
1000023a2: c4 e2 79 20 6c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm5
1000023a9: c5 d1 f5 ee                 	vpmaddwd	%xmm6, %xmm5, %xmm5
1000023ad: c4 e2 79 20 74 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm6
1000023b4: c5 c9 f5 f7                 	vpmaddwd	%xmm7, %xmm6, %xmm6
1000023b8: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
1000023bd: c5 5d fe d1                 	vpaddd	%ymm1, %ymm4, %ymm10
1000023c1: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
1000023c5: 8d 58 20                    	leal	32(%rax), %ebx
1000023c8: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
1000023ce: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
1000023d5: c4 e2 79 20 7c 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm7
1000023dc: c4 e2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm2
1000023e3: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
1000023e9: c4 c1 4d fe f1              	vpaddd	%ymm9, %ymm6, %ymm6
1000023ee: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
1000023f2: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
1000023f9: c4 e2 79 20 4c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm1
100002400: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
100002404: c5 f1 f5 ef                 	vpmaddwd	%xmm7, %xmm1, %xmm5
100002408: c4 e2 79 20 4c 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm1
10000240f: c5 f1 f5 d2                 	vpmaddwd	%xmm2, %xmm1, %xmm2
100002413: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
100002418: c4 c1 5d fe ca              	vpaddd	%ymm10, %ymm4, %ymm1
10000241d: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
100002421: c5 6d fe ce                 	vpaddd	%ymm6, %ymm2, %ymm9
100002425: 41 83 c3 40                 	addl	$64, %r11d
100002429: 83 c0 40                    	addl	$64, %eax
10000242c: 83 c1 fe                    	addl	$-2, %ecx
10000242f: 0f 85 3b ff ff ff           	jne	-197 <__Z10dot_kernelPKaS0_j+0x1c0>
100002435: 45 85 d2                    	testl	%r10d, %r10d
100002438: 74 5b                       	je	91 <__Z10dot_kernelPKaS0_j+0x2e5>
10000243a: 45 01 c3                    	addl	%r8d, %r11d
10000243d: c4 a2 79 20 44 1e 18        	vpmovsxbw	24(%rsi,%r11), %xmm0
100002444: c4 a2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%r11), %xmm2
10000244b: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
10000244f: c4 41 7d fe c9              	vpaddd	%ymm9, %ymm0, %ymm9
100002454: c4 a2 79 20 44 1e 10        	vpmovsxbw	16(%rsi,%r11), %xmm0
10000245b: c4 a2 79 20 54 1f 10        	vpmovsxbw	16(%rdi,%r11), %xmm2
100002462: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
100002466: c5 fd fe db                 	vpaddd	%ymm3, %ymm0, %ymm3
10000246a: c4 a2 79 20 44 1e 08        	vpmovsxbw	8(%rsi,%r11), %xmm0
100002471: c4 a2 79 20 54 1f 08        	vpmovsxbw	8(%rdi,%r11), %xmm2
100002478: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
10000247c: c5 fd fe c9                 	vpaddd	%ymm1, %ymm0, %ymm1
100002480: c4 a2 79 20 04 1e           	vpmovsxbw	(%rsi,%r11), %xmm0
100002486: c4 a2 79 20 14 1f           	vpmovsxbw	(%rdi,%r11), %xmm2
10000248c: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
100002490: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
100002495: c4 c1 75 fe c1              	vpaddd	%ymm9, %ymm1, %ymm0
10000249a: c5 bd fe cb                 	vpaddd	%ymm3, %ymm8, %ymm1
10000249e: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
1000024a2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000024a8: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000024ac: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000024b1: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000024b5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000024ba: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000024be: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000024c2: 44 39 ca                    	cmpl	%r9d, %edx
1000024c5: 0f 84 0c 04 00 00           	je	1036 <__Z10dot_kernelPKaS0_j+0x727>
1000024cb: 45 01 c8                    	addl	%r9d, %r8d
1000024ce: 44 29 ca                    	subl	%r9d, %edx
1000024d1: 44 8d 4a ff                 	leal	-1(%rdx), %r9d
1000024d5: 41 89 d2                    	movl	%edx, %r10d
1000024d8: 41 83 e2 07                 	andl	$7, %r10d
1000024dc: 74 21                       	je	33 <__Z10dot_kernelPKaS0_j+0x34f>
1000024de: 31 c9                       	xorl	%ecx, %ecx
1000024e0: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000024e4: 44 0f be 1c 1f              	movsbl	(%rdi,%rbx), %r11d
1000024e9: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000024ed: 41 0f af db                 	imull	%r11d, %ebx
1000024f1: 01 d8                       	addl	%ebx, %eax
1000024f3: ff c1                       	incl	%ecx
1000024f5: 41 39 ca                    	cmpl	%ecx, %r10d
1000024f8: 75 e6                       	jne	-26 <__Z10dot_kernelPKaS0_j+0x330>
1000024fa: 41 01 c8                    	addl	%ecx, %r8d
1000024fd: 29 ca                       	subl	%ecx, %edx
1000024ff: 41 83 f9 07                 	cmpl	$7, %r9d
100002503: 0f 82 ce 03 00 00           	jb	974 <__Z10dot_kernelPKaS0_j+0x727>
100002509: 31 c9                       	xorl	%ecx, %ecx
10000250b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002510: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002514: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002519: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000251d: 41 0f af d9                 	imull	%r9d, %ebx
100002521: 01 c3                       	addl	%eax, %ebx
100002523: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
100002527: 83 c0 01                    	addl	$1, %eax
10000252a: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
10000252f: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002533: 41 0f af c1                 	imull	%r9d, %eax
100002537: 01 d8                       	addl	%ebx, %eax
100002539: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
10000253d: 83 c3 02                    	addl	$2, %ebx
100002540: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002545: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002549: 41 0f af d9                 	imull	%r9d, %ebx
10000254d: 01 c3                       	addl	%eax, %ebx
10000254f: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
100002553: 83 c0 03                    	addl	$3, %eax
100002556: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
10000255b: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000255f: 41 0f af c1                 	imull	%r9d, %eax
100002563: 01 d8                       	addl	%ebx, %eax
100002565: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002569: 83 c3 04                    	addl	$4, %ebx
10000256c: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002571: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002575: 41 0f af d9                 	imull	%r9d, %ebx
100002579: 01 c3                       	addl	%eax, %ebx
10000257b: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
10000257f: 83 c0 05                    	addl	$5, %eax
100002582: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
100002587: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000258b: 41 0f af c1                 	imull	%r9d, %eax
10000258f: 01 d8                       	addl	%ebx, %eax
100002591: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002595: 83 c3 06                    	addl	$6, %ebx
100002598: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
10000259d: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000025a1: 41 0f af d9                 	imull	%r9d, %ebx
1000025a5: 01 c3                       	addl	%eax, %ebx
1000025a7: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
1000025ab: 83 c0 07                    	addl	$7, %eax
1000025ae: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
1000025b3: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000025b7: 41 0f af c1                 	imull	%r9d, %eax
1000025bb: 01 d8                       	addl	%ebx, %eax
1000025bd: 83 c1 08                    	addl	$8, %ecx
1000025c0: 39 ca                       	cmpl	%ecx, %edx
1000025c2: 0f 85 48 ff ff ff           	jne	-184 <__Z10dot_kernelPKaS0_j+0x360>
1000025c8: e9 0a 03 00 00              	jmp	778 <__Z10dot_kernelPKaS0_j+0x727>
1000025cd: 31 c9                       	xorl	%ecx, %ecx
1000025cf: 31 c0                       	xorl	%eax, %eax
1000025d1: 41 89 d3                    	movl	%edx, %r11d
1000025d4: 41 83 e3 e0                 	andl	$-32, %r11d
1000025d8: 45 85 c0                    	testl	%r8d, %r8d
1000025db: 74 78                       	je	120 <__Z10dot_kernelPKaS0_j+0x4a5>
1000025dd: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
1000025e4: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
1000025eb: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
1000025f1: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
1000025f8: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
1000025ff: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100002604: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
10000260b: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100002610: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100002614: c4 e2 7d 21 0c 0e           	vpmovsxbd	(%rsi,%rcx), %ymm1
10000261a: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
10000261f: c4 e2 7d 21 54 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm2
100002626: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
10000262b: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
10000262f: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002633: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002639: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000263d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002642: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002646: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000264b: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000264f: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100002653: 01 c8                       	addl	%ecx, %eax
100002655: 44 29 da                    	subl	%r11d, %edx
100002658: 41 83 c3 20                 	addl	$32, %r11d
10000265c: 83 fa 10                    	cmpl	$16, %edx
10000265f: 0f 82 9f fc ff ff           	jb	-865 <__Z10dot_kernelPKaS0_j+0x154>
100002665: 44 8d 42 f0                 	leal	-16(%rdx), %r8d
100002669: 45 89 c2                    	movl	%r8d, %r10d
10000266c: 41 83 e2 f0                 	andl	$-16, %r10d
100002670: 47 8d 0c 13                 	leal	(%r11,%r10), %r9d
100002674: 41 83 c1 10                 	addl	$16, %r9d
100002678: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002680: 44 89 d9                    	movl	%r11d, %ecx
100002683: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
100002688: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
10000268c: 41 0f af de                 	imull	%r14d, %ebx
100002690: 01 c3                       	addl	%eax, %ebx
100002692: 48 89 c8                    	movq	%rcx, %rax
100002695: 48 83 c8 01                 	orq	$1, %rax
100002699: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000269e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000026a2: 41 0f af c6                 	imull	%r14d, %eax
1000026a6: 01 d8                       	addl	%ebx, %eax
1000026a8: 48 89 cb                    	movq	%rcx, %rbx
1000026ab: 48 83 cb 02                 	orq	$2, %rbx
1000026af: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000026b4: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000026b8: 41 0f af de                 	imull	%r14d, %ebx
1000026bc: 01 c3                       	addl	%eax, %ebx
1000026be: 48 89 c8                    	movq	%rcx, %rax
1000026c1: 48 83 c8 03                 	orq	$3, %rax
1000026c5: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000026ca: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000026ce: 41 0f af c6                 	imull	%r14d, %eax
1000026d2: 01 d8                       	addl	%ebx, %eax
1000026d4: 48 89 cb                    	movq	%rcx, %rbx
1000026d7: 48 83 cb 04                 	orq	$4, %rbx
1000026db: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000026e0: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000026e4: 41 0f af de                 	imull	%r14d, %ebx
1000026e8: 01 c3                       	addl	%eax, %ebx
1000026ea: 48 89 c8                    	movq	%rcx, %rax
1000026ed: 48 83 c8 05                 	orq	$5, %rax
1000026f1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000026f6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000026fa: 41 0f af c6                 	imull	%r14d, %eax
1000026fe: 01 d8                       	addl	%ebx, %eax
100002700: 48 89 cb                    	movq	%rcx, %rbx
100002703: 48 83 cb 06                 	orq	$6, %rbx
100002707: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000270c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002710: 41 0f af de                 	imull	%r14d, %ebx
100002714: 01 c3                       	addl	%eax, %ebx
100002716: 48 89 c8                    	movq	%rcx, %rax
100002719: 48 83 c8 07                 	orq	$7, %rax
10000271d: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002722: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002726: 41 0f af c6                 	imull	%r14d, %eax
10000272a: 01 d8                       	addl	%ebx, %eax
10000272c: 48 89 cb                    	movq	%rcx, %rbx
10000272f: 48 83 cb 08                 	orq	$8, %rbx
100002733: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002738: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000273c: 41 0f af de                 	imull	%r14d, %ebx
100002740: 01 c3                       	addl	%eax, %ebx
100002742: 48 89 c8                    	movq	%rcx, %rax
100002745: 48 83 c8 09                 	orq	$9, %rax
100002749: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000274e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002752: 41 0f af c6                 	imull	%r14d, %eax
100002756: 01 d8                       	addl	%ebx, %eax
100002758: 48 89 cb                    	movq	%rcx, %rbx
10000275b: 48 83 cb 0a                 	orq	$10, %rbx
10000275f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002764: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002768: 41 0f af de                 	imull	%r14d, %ebx
10000276c: 01 c3                       	addl	%eax, %ebx
10000276e: 48 89 c8                    	movq	%rcx, %rax
100002771: 48 83 c8 0b                 	orq	$11, %rax
100002775: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000277a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000277e: 41 0f af c6                 	imull	%r14d, %eax
100002782: 01 d8                       	addl	%ebx, %eax
100002784: 48 89 cb                    	movq	%rcx, %rbx
100002787: 48 83 cb 0c                 	orq	$12, %rbx
10000278b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002790: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002794: 41 0f af de                 	imull	%r14d, %ebx
100002798: 01 c3                       	addl	%eax, %ebx
10000279a: 48 89 c8                    	movq	%rcx, %rax
10000279d: 48 83 c8 0d                 	orq	$13, %rax
1000027a1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000027a6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000027aa: 41 0f af c6                 	imull	%r14d, %eax
1000027ae: 01 d8                       	addl	%ebx, %eax
1000027b0: 48 89 cb                    	movq	%rcx, %rbx
1000027b3: 48 83 cb 0e                 	orq	$14, %rbx
1000027b7: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000027bc: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000027c0: 41 0f af de                 	imull	%r14d, %ebx
1000027c4: 01 c3                       	addl	%eax, %ebx
1000027c6: 48 83 c9 0f                 	orq	$15, %rcx
1000027ca: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000027cf: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
1000027d3: 41 0f af c6                 	imull	%r14d, %eax
1000027d7: 01 d8                       	addl	%ebx, %eax
1000027d9: 41 83 c3 10                 	addl	$16, %r11d
1000027dd: 83 c2 f0                    	addl	$-16, %edx
1000027e0: 83 fa 0f                    	cmpl	$15, %edx
1000027e3: 0f 87 97 fe ff ff           	ja	-361 <__Z10dot_kernelPKaS0_j+0x4d0>
1000027e9: 45 29 d0                    	subl	%r10d, %r8d
1000027ec: 44 89 c2                    	movl	%r8d, %edx
1000027ef: 83 fa 08                    	cmpl	$8, %edx
1000027f2: 0f 82 18 fb ff ff           	jb	-1256 <__Z10dot_kernelPKaS0_j+0x160>
1000027f8: 44 8d 52 f8                 	leal	-8(%rdx), %r10d
1000027fc: 45 89 d3                    	movl	%r10d, %r11d
1000027ff: 41 83 e3 f8                 	andl	$-8, %r11d
100002803: 47 8d 04 19                 	leal	(%r9,%r11), %r8d
100002807: 41 83 c0 08                 	addl	$8, %r8d
10000280b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002810: 44 89 c9                    	movl	%r9d, %ecx
100002813: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
100002818: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
10000281c: 41 0f af de                 	imull	%r14d, %ebx
100002820: 01 c3                       	addl	%eax, %ebx
100002822: 48 89 c8                    	movq	%rcx, %rax
100002825: 48 83 c8 01                 	orq	$1, %rax
100002829: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000282e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002832: 41 0f af c6                 	imull	%r14d, %eax
100002836: 01 d8                       	addl	%ebx, %eax
100002838: 48 89 cb                    	movq	%rcx, %rbx
10000283b: 48 83 cb 02                 	orq	$2, %rbx
10000283f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002844: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002848: 41 0f af de                 	imull	%r14d, %ebx
10000284c: 01 c3                       	addl	%eax, %ebx
10000284e: 48 89 c8                    	movq	%rcx, %rax
100002851: 48 83 c8 03                 	orq	$3, %rax
100002855: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000285a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000285e: 41 0f af c6                 	imull	%r14d, %eax
100002862: 01 d8                       	addl	%ebx, %eax
100002864: 48 89 cb                    	movq	%rcx, %rbx
100002867: 48 83 cb 04                 	orq	$4, %rbx
10000286b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002870: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002874: 41 0f af de                 	imull	%r14d, %ebx
100002878: 01 c3                       	addl	%eax, %ebx
10000287a: 48 89 c8                    	movq	%rcx, %rax
10000287d: 48 83 c8 05                 	orq	$5, %rax
100002881: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002886: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000288a: 41 0f af c6                 	imull	%r14d, %eax
10000288e: 01 d8                       	addl	%ebx, %eax
100002890: 48 89 cb                    	movq	%rcx, %rbx
100002893: 48 83 cb 06                 	orq	$6, %rbx
100002897: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000289c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000028a0: 41 0f af de                 	imull	%r14d, %ebx
1000028a4: 01 c3                       	addl	%eax, %ebx
1000028a6: 48 83 c9 07                 	orq	$7, %rcx
1000028aa: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000028af: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
1000028b3: 41 0f af c6                 	imull	%r14d, %eax
1000028b7: 01 d8                       	addl	%ebx, %eax
1000028b9: 41 83 c1 08                 	addl	$8, %r9d
1000028bd: 83 c2 f8                    	addl	$-8, %edx
1000028c0: 83 fa 07                    	cmpl	$7, %edx
1000028c3: 0f 87 47 ff ff ff           	ja	-185 <__Z10dot_kernelPKaS0_j+0x660>
1000028c9: 45 29 da                    	subl	%r11d, %r10d
1000028cc: 44 89 d2                    	movl	%r10d, %edx
1000028cf: 85 d2                       	testl	%edx, %edx
1000028d1: 0f 85 44 fa ff ff           	jne	-1468 <__Z10dot_kernelPKaS0_j+0x16b>
1000028d7: 5b                          	popq	%rbx
1000028d8: 41 5e                       	popq	%r14
1000028da: 5d                          	popq	%rbp
1000028db: c5 f8 77                    	vzeroupper
1000028de: c3                          	retq
1000028df: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
1000028e3: 45 31 db                    	xorl	%r11d, %r11d
1000028e6: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
1000028ea: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
1000028ef: 45 85 d2                    	testl	%r10d, %r10d
1000028f2: 0f 85 42 fb ff ff           	jne	-1214 <__Z10dot_kernelPKaS0_j+0x28a>
1000028f8: e9 98 fb ff ff              	jmp	-1128 <__Z10dot_kernelPKaS0_j+0x2e5>
1000028fd: 0f 1f 00                    	nopl	(%rax)

0000000100002900 __Z6LinearPaS_PKaS1_ajj:
100002900: 55                          	pushq	%rbp
100002901: 48 89 e5                    	movq	%rsp, %rbp
100002904: 41 57                       	pushq	%r15
100002906: 41 56                       	pushq	%r14
100002908: 41 55                       	pushq	%r13
10000290a: 41 54                       	pushq	%r12
10000290c: 53                          	pushq	%rbx
10000290d: 48 83 ec 28                 	subq	$40, %rsp
100002911: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002915: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100002919: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000291d: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100002921: 8b 45 10                    	movl	16(%rbp), %eax
100002924: 85 c0                       	testl	%eax, %eax
100002926: 74 71                       	je	113 <__Z6LinearPaS_PKaS1_ajj+0x99>
100002928: 44 89 cb                    	movl	%r9d, %ebx
10000292b: 45 0f be f0                 	movsbl	%r8b, %r14d
10000292f: 41 89 c7                    	movl	%eax, %r15d
100002932: 45 31 e4                    	xorl	%r12d, %r12d
100002935: 45 31 ed                    	xorl	%r13d, %r13d
100002938: eb 19                       	jmp	25 <__Z6LinearPaS_PKaS1_ajj+0x53>
10000293a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100002940: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100002944: 42 88 04 29                 	movb	%al, (%rcx,%r13)
100002948: 49 ff c5                    	incq	%r13
10000294b: 41 01 dc                    	addl	%ebx, %r12d
10000294e: 4d 39 ef                    	cmpq	%r13, %r15
100002951: 74 46                       	je	70 <__Z6LinearPaS_PKaS1_ajj+0x99>
100002953: 44 89 e6                    	movl	%r12d, %esi
100002956: 48 03 75 b8                 	addq	-72(%rbp), %rsi
10000295a: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
10000295e: 89 da                       	movl	%ebx, %edx
100002960: e8 4b f8 ff ff              	callq	-1973 <__Z10dot_kernelPKaS0_j>
100002965: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100002969: 42 0f be 0c 29              	movsbl	(%rcx,%r13), %ecx
10000296e: 01 c1                       	addl	%eax, %ecx
100002970: 41 0f af ce                 	imull	%r14d, %ecx
100002974: 89 c8                       	movl	%ecx, %eax
100002976: c1 f8 1f                    	sarl	$31, %eax
100002979: c1 e8 12                    	shrl	$18, %eax
10000297c: 01 c8                       	addl	%ecx, %eax
10000297e: c1 f8 0e                    	sarl	$14, %eax
100002981: 3d 80 00 00 00              	cmpl	$128, %eax
100002986: 7c 05                       	jl	5 <__Z6LinearPaS_PKaS1_ajj+0x8d>
100002988: b8 7f 00 00 00              	movl	$127, %eax
10000298d: 83 f8 81                    	cmpl	$-127, %eax
100002990: 7f ae                       	jg	-82 <__Z6LinearPaS_PKaS1_ajj+0x40>
100002992: b8 81 00 00 00              	movl	$129, %eax
100002997: eb a7                       	jmp	-89 <__Z6LinearPaS_PKaS1_ajj+0x40>
100002999: 48 83 c4 28                 	addq	$40, %rsp
10000299d: 5b                          	popq	%rbx
10000299e: 41 5c                       	popq	%r12
1000029a0: 41 5d                       	popq	%r13
1000029a2: 41 5e                       	popq	%r14
1000029a4: 41 5f                       	popq	%r15
1000029a6: 5d                          	popq	%rbp
1000029a7: c3                          	retq
1000029a8: 90                          	nop
1000029a9: 90                          	nop
1000029aa: 90                          	nop
1000029ab: 90                          	nop
1000029ac: 90                          	nop
1000029ad: 90                          	nop
1000029ae: 90                          	nop
1000029af: 90                          	nop

00000001000029b0 __Z6Conv2dPaS_PKaS1_ijjjjjj:
1000029b0: 55                          	pushq	%rbp
1000029b1: 48 89 e5                    	movq	%rsp, %rbp
1000029b4: 41 57                       	pushq	%r15
1000029b6: 41 56                       	pushq	%r14
1000029b8: 41 55                       	pushq	%r13
1000029ba: 41 54                       	pushq	%r12
1000029bc: 53                          	pushq	%rbx
1000029bd: 48 83 ec 78                 	subq	$120, %rsp
1000029c1: 44 89 4d d4                 	movl	%r9d, -44(%rbp)
1000029c5: 44 89 45 cc                 	movl	%r8d, -52(%rbp)
1000029c9: 48 89 4d a8                 	movq	%rcx, -88(%rbp)
1000029cd: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
1000029d1: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
1000029d5: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
1000029d9: 8b 4d 28                    	movl	40(%rbp), %ecx
1000029dc: 8b 45 18                    	movl	24(%rbp), %eax
1000029df: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000029e3: 8b 45 10                    	movl	16(%rbp), %eax
1000029e6: 83 f9 03                    	cmpl	$3, %ecx
1000029e9: 0f 84 44 01 00 00           	je	324 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x183>
1000029ef: 83 f9 01                    	cmpl	$1, %ecx
1000029f2: 0f 85 8a 08 00 00           	jne	2186 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
1000029f8: 8d 48 ff                    	leal	-1(%rax), %ecx
1000029fb: 83 f9 1f                    	cmpl	$31, %ecx
1000029fe: 0f 87 7d 01 00 00           	ja	381 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x1d1>
100002a04: 48 8d 05 d5 09 00 00        	leaq	2517(%rip), %rax
100002a0b: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002a0f: 48 01 c1                    	addq	%rax, %rcx
100002a12: ff e1                       	jmpq	*%rcx
100002a14: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002a18: 0f 84 64 08 00 00           	je	2148 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002a1e: 8b 45 30                    	movl	48(%rbp), %eax
100002a21: 48 89 c1                    	movq	%rax, %rcx
100002a24: 89 ca                       	movl	%ecx, %edx
100002a26: d1 ea                       	shrl	%edx
100002a28: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100002a2c: 29 d0                       	subl	%edx, %eax
100002a2e: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100002a32: 8b 45 20                    	movl	32(%rbp), %eax
100002a35: 41 89 c2                    	movl	%eax, %r10d
100002a38: 89 55 d0                    	movl	%edx, -48(%rbp)
100002a3b: 41 29 d2                    	subl	%edx, %r10d
100002a3e: 8b 55 d4                    	movl	-44(%rbp), %edx
100002a41: 48 89 55 88                 	movq	%rdx, -120(%rbp)
100002a45: 0f af c8                    	imull	%eax, %ecx
100002a48: 89 4d 80                    	movl	%ecx, -128(%rbp)
100002a4b: 31 c9                       	xorl	%ecx, %ecx
100002a4d: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100002a51: 4c 8b 5d a8                 	movq	-88(%rbp), %r11
100002a55: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100002a59: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100002a5d: 4c 8b 6d 98                 	movq	-104(%rbp), %r13
100002a61: 83 7d c0 00                 	cmpl	$0, -64(%rbp)
100002a65: 75 1c                       	jne	28 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xd3>
100002a67: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002a70: 48 ff c1                    	incq	%rcx
100002a73: 48 3b 4d 88                 	cmpq	-120(%rbp), %rcx
100002a77: 0f 84 05 08 00 00           	je	2053 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002a7d: 83 7d c0 00                 	cmpl	$0, -64(%rbp)
100002a81: 74 ed                       	je	-19 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xc0>
100002a83: 45 31 e4                    	xorl	%r12d, %r12d
100002a86: c7 45 b8 00 00 00 00        	movl	$0, -72(%rbp)
100002a8d: eb 13                       	jmp	19 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xf2>
100002a8f: 90                          	nop
100002a90: 8b 45 b8                    	movl	-72(%rbp), %eax
100002a93: 44 01 c8                    	addl	%r9d, %eax
100002a96: 44 03 65 80                 	addl	-128(%rbp), %r12d
100002a9a: 89 45 b8                    	movl	%eax, -72(%rbp)
100002a9d: 3b 45 c0                    	cmpl	-64(%rbp), %eax
100002aa0: 73 ce                       	jae	-50 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xc0>
100002aa2: 45 85 d2                    	testl	%r10d, %r10d
100002aa5: 44 8b 4d 30                 	movl	48(%rbp), %r9d
100002aa9: 74 e5                       	je	-27 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
100002aab: 8b 45 b8                    	movl	-72(%rbp), %eax
100002aae: 31 d2                       	xorl	%edx, %edx
100002ab0: 41 f7 f1                    	divl	%r9d
100002ab3: 89 c7                       	movl	%eax, %edi
100002ab5: 8b 45 20                    	movl	32(%rbp), %eax
100002ab8: 31 d2                       	xorl	%edx, %edx
100002aba: 41 f7 f1                    	divl	%r9d
100002abd: 89 c6                       	movl	%eax, %esi
100002abf: 8b 45 d0                    	movl	-48(%rbp), %eax
100002ac2: 29 c7                       	subl	%eax, %edi
100002ac4: 0f af f7                    	imull	%edi, %esi
100002ac7: 29 c6                       	subl	%eax, %esi
100002ac9: 31 ff                       	xorl	%edi, %edi
100002acb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002ad0: 41 8d 04 3c                 	leal	(%r12,%rdi), %eax
100002ad4: 41 0f be 14 0b              	movsbl	(%r11,%rcx), %edx
100002ad9: 41 0f be 04 07              	movsbl	(%r15,%rax), %eax
100002ade: 0f af c2                    	imull	%edx, %eax
100002ae1: 41 0f be 14 0e              	movsbl	(%r14,%rcx), %edx
100002ae6: 01 c2                       	addl	%eax, %edx
100002ae8: 41 0f af d0                 	imull	%r8d, %edx
100002aec: 89 d3                       	movl	%edx, %ebx
100002aee: c1 fb 1f                    	sarl	$31, %ebx
100002af1: c1 eb 12                    	shrl	$18, %ebx
100002af4: 01 d3                       	addl	%edx, %ebx
100002af6: c1 fb 0e                    	sarl	$14, %ebx
100002af9: 81 fb 80 00 00 00           	cmpl	$128, %ebx
100002aff: b8 7f 00 00 00              	movl	$127, %eax
100002b04: 0f 4d d8                    	cmovgel	%eax, %ebx
100002b07: 89 f8                       	movl	%edi, %eax
100002b09: 31 d2                       	xorl	%edx, %edx
100002b0b: 41 f7 f1                    	divl	%r9d
100002b0e: ba 81 00 00 00              	movl	$129, %edx
100002b13: 01 f0                       	addl	%esi, %eax
100002b15: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002b19: 01 c8                       	addl	%ecx, %eax
100002b1b: 83 fb 81                    	cmpl	$-127, %ebx
100002b1e: 0f 4e da                    	cmovlel	%edx, %ebx
100002b21: 41 88 5c 05 00              	movb	%bl, (%r13,%rax)
100002b26: 44 01 cf                    	addl	%r9d, %edi
100002b29: 44 39 d7                    	cmpl	%r10d, %edi
100002b2c: 72 a2                       	jb	-94 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x120>
100002b2e: e9 5d ff ff ff              	jmp	-163 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
100002b33: 8d 48 ff                    	leal	-1(%rax), %ecx
100002b36: 83 f9 1f                    	cmpl	$31, %ecx
100002b39: 0f 87 cc 01 00 00           	ja	460 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x35b>
100002b3f: 48 8d 05 1a 08 00 00        	leaq	2074(%rip), %rax
100002b46: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002b4a: 48 01 c1                    	addq	%rax, %rcx
100002b4d: ff e1                       	jmpq	*%rcx
100002b4f: 48 83 ec 08                 	subq	$8, %rsp
100002b53: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002b57: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002b5b: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002b5f: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100002b63: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100002b67: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002b6b: 8b 45 30                    	movl	48(%rbp), %eax
100002b6e: 50                          	pushq	%rax
100002b6f: 8b 45 20                    	movl	32(%rbp), %eax
100002b72: 50                          	pushq	%rax
100002b73: 8b 45 18                    	movl	24(%rbp), %eax
100002b76: 50                          	pushq	%rax
100002b77: e8 a4 0a 00 00              	callq	2724 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj>
100002b7c: e9 c7 07 00 00              	jmp	1991 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
100002b81: 83 f8 40                    	cmpl	$64, %eax
100002b84: 0f 85 f8 06 00 00           	jne	1784 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002b8a: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002b8e: 0f 84 ee 06 00 00           	je	1774 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002b94: 8b 45 30                    	movl	48(%rbp), %eax
100002b97: 48 89 c1                    	movq	%rax, %rcx
100002b9a: 41 89 c9                    	movl	%ecx, %r9d
100002b9d: 41 d1 e9                    	shrl	%r9d
100002ba0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100002ba4: 44 29 c8                    	subl	%r9d, %eax
100002ba7: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100002bab: 8b 45 20                    	movl	32(%rbp), %eax
100002bae: 41 89 c2                    	movl	%eax, %r10d
100002bb1: 45 29 ca                    	subl	%r9d, %r10d
100002bb4: 8b 75 d4                    	movl	-44(%rbp), %esi
100002bb7: 48 89 b5 70 ff ff ff        	movq	%rsi, -144(%rbp)
100002bbe: 89 ce                       	movl	%ecx, %esi
100002bc0: 0f af f0                    	imull	%eax, %esi
100002bc3: c1 e6 06                    	shll	$6, %esi
100002bc6: 89 b5 78 ff ff ff           	movl	%esi, -136(%rbp)
100002bcc: c1 e1 06                    	shll	$6, %ecx
100002bcf: 31 db                       	xorl	%ebx, %ebx
100002bd1: 89 4d d0                    	movl	%ecx, -48(%rbp)
100002bd4: 44 89 55 88                 	movl	%r10d, -120(%rbp)
100002bd8: eb 16                       	jmp	22 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x240>
100002bda: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100002be0: 48 ff c3                    	incq	%rbx
100002be3: 48 3b 9d 70 ff ff ff        	cmpq	-144(%rbp), %rbx
100002bea: 0f 84 92 06 00 00           	je	1682 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002bf0: 83 7d c0 00                 	cmpl	$0, -64(%rbp)
100002bf4: 44 8b 45 30                 	movl	48(%rbp), %r8d
100002bf8: 74 e6                       	je	-26 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x230>
100002bfa: 41 89 db                    	movl	%ebx, %r11d
100002bfd: 41 c1 e3 06                 	shll	$6, %r11d
100002c01: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100002c05: 4a 8d 34 18                 	leaq	(%rax,%r11), %rsi
100002c09: c7 45 90 00 00 00 00        	movl	$0, -112(%rbp)
100002c10: 45 31 f6                    	xorl	%r14d, %r14d
100002c13: 48 89 5d 80                 	movq	%rbx, -128(%rbp)
100002c17: eb 1c                       	jmp	28 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x285>
100002c19: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002c20: 45 01 c6                    	addl	%r8d, %r14d
100002c23: 8b 45 90                    	movl	-112(%rbp), %eax
100002c26: 03 85 78 ff ff ff           	addl	-136(%rbp), %eax
100002c2c: 89 45 90                    	movl	%eax, -112(%rbp)
100002c2f: 44 3b 75 c0                 	cmpl	-64(%rbp), %r14d
100002c33: 73 ab                       	jae	-85 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x230>
100002c35: 45 85 d2                    	testl	%r10d, %r10d
100002c38: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002c3c: 74 e2                       	je	-30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x270>
100002c3e: 45 31 ff                    	xorl	%r15d, %r15d
100002c41: 44 8b 65 90                 	movl	-112(%rbp), %r12d
100002c45: 44 89 75 b8                 	movl	%r14d, -72(%rbp)
100002c49: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002c50: 44 89 e7                    	movl	%r12d, %edi
100002c53: 48 01 c7                    	addq	%rax, %rdi
100002c56: 45 89 cd                    	movl	%r9d, %r13d
100002c59: 48 89 f3                    	movq	%rsi, %rbx
100002c5c: 4d 89 de                    	movq	%r11, %r14
100002c5f: e8 ac 17 00 00              	callq	6060 <__Z11microkernelILj1ELj64EasET2_PKT1_S3_>
100002c64: 4d 89 f3                    	movq	%r14, %r11
100002c67: 44 8b 75 b8                 	movl	-72(%rbp), %r14d
100002c6b: 48 89 de                    	movq	%rbx, %rsi
100002c6e: ba 7f 00 00 00              	movl	$127, %edx
100002c73: 45 89 e9                    	movl	%r13d, %r9d
100002c76: 44 8b 6d 20                 	movl	32(%rbp), %r13d
100002c7a: 44 8b 45 30                 	movl	48(%rbp), %r8d
100002c7e: 98                          	cwtl
100002c7f: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002c83: 42 0f be 0c 19              	movsbl	(%rcx,%r11), %ecx
100002c88: 01 c1                       	addl	%eax, %ecx
100002c8a: 0f af 4d cc                 	imull	-52(%rbp), %ecx
100002c8e: 89 cf                       	movl	%ecx, %edi
100002c90: c1 ff 1f                    	sarl	$31, %edi
100002c93: c1 ef 12                    	shrl	$18, %edi
100002c96: 01 cf                       	addl	%ecx, %edi
100002c98: c1 ff 0e                    	sarl	$14, %edi
100002c9b: 81 ff 80 00 00 00           	cmpl	$128, %edi
100002ca1: 0f 4d fa                    	cmovgel	%edx, %edi
100002ca4: 44 89 f8                    	movl	%r15d, %eax
100002ca7: 31 d2                       	xorl	%edx, %edx
100002ca9: 41 f7 f0                    	divl	%r8d
100002cac: 89 c1                       	movl	%eax, %ecx
100002cae: 44 89 f0                    	movl	%r14d, %eax
100002cb1: 31 d2                       	xorl	%edx, %edx
100002cb3: 41 f7 f0                    	divl	%r8d
100002cb6: 89 c3                       	movl	%eax, %ebx
100002cb8: 44 89 e8                    	movl	%r13d, %eax
100002cbb: 44 8b 6d d4                 	movl	-44(%rbp), %r13d
100002cbf: 31 d2                       	xorl	%edx, %edx
100002cc1: 41 f7 f0                    	divl	%r8d
100002cc4: 44 8b 55 88                 	movl	-120(%rbp), %r10d
100002cc8: 44 29 cb                    	subl	%r9d, %ebx
100002ccb: 0f af c3                    	imull	%ebx, %eax
100002cce: 48 8b 5d 80                 	movq	-128(%rbp), %rbx
100002cd2: 44 29 c9                    	subl	%r9d, %ecx
100002cd5: 01 c8                       	addl	%ecx, %eax
100002cd7: 8b 4d d0                    	movl	-48(%rbp), %ecx
100002cda: 41 0f af c5                 	imull	%r13d, %eax
100002cde: 01 d8                       	addl	%ebx, %eax
100002ce0: 83 ff 81                    	cmpl	$-127, %edi
100002ce3: ba 81 00 00 00              	movl	$129, %edx
100002ce8: 0f 4e fa                    	cmovlel	%edx, %edi
100002ceb: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002cef: 40 88 3c 02                 	movb	%dil, (%rdx,%rax)
100002cf3: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002cf7: 45 01 c7                    	addl	%r8d, %r15d
100002cfa: 41 01 cc                    	addl	%ecx, %r12d
100002cfd: 45 39 d7                    	cmpl	%r10d, %r15d
100002d00: 0f 82 4a ff ff ff           	jb	-182 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x2a0>
100002d06: e9 15 ff ff ff              	jmp	-235 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x270>
100002d0b: 83 f8 40                    	cmpl	$64, %eax
100002d0e: 0f 85 6e 05 00 00           	jne	1390 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002d14: 48 83 ec 08                 	subq	$8, %rsp
100002d18: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002d1c: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002d20: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002d24: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100002d28: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100002d2c: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002d30: 8b 45 30                    	movl	48(%rbp), %eax
100002d33: 50                          	pushq	%rax
100002d34: 8b 45 20                    	movl	32(%rbp), %eax
100002d37: 50                          	pushq	%rax
100002d38: 8b 45 18                    	movl	24(%rbp), %eax
100002d3b: 50                          	pushq	%rax
100002d3c: e8 2f 14 00 00              	callq	5167 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj>
100002d41: e9 02 06 00 00              	jmp	1538 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
100002d46: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002d4a: 0f 84 32 05 00 00           	je	1330 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002d50: 8b 45 30                    	movl	48(%rbp), %eax
100002d53: 48 89 c1                    	movq	%rax, %rcx
100002d56: 89 ca                       	movl	%ecx, %edx
100002d58: d1 ea                       	shrl	%edx
100002d5a: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100002d5e: 29 d0                       	subl	%edx, %eax
100002d60: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100002d64: 8b 45 20                    	movl	32(%rbp), %eax
100002d67: 89 c6                       	movl	%eax, %esi
100002d69: 89 55 90                    	movl	%edx, -112(%rbp)
100002d6c: 29 d6                       	subl	%edx, %esi
100002d6e: 8b 55 d4                    	movl	-44(%rbp), %edx
100002d71: 48 89 95 78 ff ff ff        	movq	%rdx, -136(%rbp)
100002d78: 89 ca                       	movl	%ecx, %edx
100002d7a: 0f af d0                    	imull	%eax, %edx
100002d7d: c1 e2 02                    	shll	$2, %edx
100002d80: 89 55 88                    	movl	%edx, -120(%rbp)
100002d83: 8d 1c 8d 00 00 00 00        	leal	(,%rcx,4), %ebx
100002d8a: 31 c0                       	xorl	%eax, %eax
100002d8c: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100002d90: eb 22                       	jmp	34 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x404>
100002d92: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002d9c: 0f 1f 40 00                 	nopl	(%rax)
100002da0: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100002da4: 48 ff c0                    	incq	%rax
100002da7: 48 3b 85 78 ff ff ff        	cmpq	-136(%rbp), %rax
100002dae: 0f 84 ce 04 00 00           	je	1230 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002db4: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100002db8: 83 7d c0 00                 	cmpl	$0, -64(%rbp)
100002dbc: 74 e2                       	je	-30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3f0>
100002dbe: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100002dc2: 44 8d 0c 85 00 00 00 00     	leal	(,%rax,4), %r9d
100002dca: c7 45 80 00 00 00 00        	movl	$0, -128(%rbp)
100002dd1: c7 45 d0 00 00 00 00        	movl	$0, -48(%rbp)
100002dd8: eb 1f                       	jmp	31 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x449>
100002dda: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100002de0: 8b 4d d0                    	movl	-48(%rbp), %ecx
100002de3: 8b 45 30                    	movl	48(%rbp), %eax
100002de6: 01 c1                       	addl	%eax, %ecx
100002de8: 8b 45 80                    	movl	-128(%rbp), %eax
100002deb: 03 45 88                    	addl	-120(%rbp), %eax
100002dee: 89 45 80                    	movl	%eax, -128(%rbp)
100002df1: 89 4d d0                    	movl	%ecx, -48(%rbp)
100002df4: 3b 4d c0                    	cmpl	-64(%rbp), %ecx
100002df7: 73 a7                       	jae	-89 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3f0>
100002df9: 85 f6                       	testl	%esi, %esi
100002dfb: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100002dff: 4c 8b 75 a8                 	movq	-88(%rbp), %r14
100002e03: 4c 8b 65 a0                 	movq	-96(%rbp), %r12
100002e07: 41 bd 7f 00 00 00           	movl	$127, %r13d
100002e0d: 74 d1                       	je	-47 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x430>
100002e0f: 8b 45 d0                    	movl	-48(%rbp), %eax
100002e12: 31 d2                       	xorl	%edx, %edx
100002e14: 8b 4d 30                    	movl	48(%rbp), %ecx
100002e17: f7 f1                       	divl	%ecx
100002e19: 89 c7                       	movl	%eax, %edi
100002e1b: 8b 45 20                    	movl	32(%rbp), %eax
100002e1e: 31 d2                       	xorl	%edx, %edx
100002e20: f7 f1                       	divl	%ecx
100002e22: 41 89 c2                    	movl	%eax, %r10d
100002e25: 8b 45 90                    	movl	-112(%rbp), %eax
100002e28: 29 c7                       	subl	%eax, %edi
100002e2a: 44 0f af d7                 	imull	%edi, %r10d
100002e2e: 41 29 c2                    	subl	%eax, %r10d
100002e31: 31 ff                       	xorl	%edi, %edi
100002e33: 8b 4d 80                    	movl	-128(%rbp), %ecx
100002e36: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002e40: 89 c8                       	movl	%ecx, %eax
100002e42: c4 82 79 21 04 0e           	vpmovsxbd	(%r14,%r9), %xmm0
100002e48: c4 c2 79 21 0c 07           	vpmovsxbd	(%r15,%rax), %xmm1
100002e4e: c4 e2 71 40 c0              	vpmulld	%xmm0, %xmm1, %xmm0
100002e53: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002e58: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002e5c: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002e61: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002e65: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002e69: 98                          	cwtl
100002e6a: 43 0f be 14 0c              	movsbl	(%r12,%r9), %edx
100002e6f: 01 c2                       	addl	%eax, %edx
100002e71: 41 0f af d0                 	imull	%r8d, %edx
100002e75: 4d 89 e3                    	movq	%r12, %r11
100002e78: 4d 89 f4                    	movq	%r14, %r12
100002e7b: 45 89 c6                    	movl	%r8d, %r14d
100002e7e: 41 89 d0                    	movl	%edx, %r8d
100002e81: 41 c1 f8 1f                 	sarl	$31, %r8d
100002e85: 41 c1 e8 12                 	shrl	$18, %r8d
100002e89: 41 01 d0                    	addl	%edx, %r8d
100002e8c: 41 c1 f8 0e                 	sarl	$14, %r8d
100002e90: 41 81 f8 80 00 00 00        	cmpl	$128, %r8d
100002e97: 45 0f 4d c5                 	cmovgel	%r13d, %r8d
100002e9b: 89 f8                       	movl	%edi, %eax
100002e9d: 31 d2                       	xorl	%edx, %edx
100002e9f: 44 8b 6d 30                 	movl	48(%rbp), %r13d
100002ea3: 41 f7 f5                    	divl	%r13d
100002ea6: ba 81 00 00 00              	movl	$129, %edx
100002eab: 44 01 d0                    	addl	%r10d, %eax
100002eae: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002eb2: 03 45 b8                    	addl	-72(%rbp), %eax
100002eb5: 41 83 f8 81                 	cmpl	$-127, %r8d
100002eb9: 44 0f 4e c2                 	cmovlel	%edx, %r8d
100002ebd: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002ec1: 44 88 04 02                 	movb	%r8b, (%rdx,%rax)
100002ec5: 45 89 f0                    	movl	%r14d, %r8d
100002ec8: 4d 89 e6                    	movq	%r12, %r14
100002ecb: 4d 89 dc                    	movq	%r11, %r12
100002ece: 44 01 ef                    	addl	%r13d, %edi
100002ed1: 41 bd 7f 00 00 00           	movl	$127, %r13d
100002ed7: 01 d9                       	addl	%ebx, %ecx
100002ed9: 39 f7                       	cmpl	%esi, %edi
100002edb: 0f 82 5f ff ff ff           	jb	-161 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x490>
100002ee1: e9 fa fe ff ff              	jmp	-262 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x430>
100002ee6: 48 83 ec 08                 	subq	$8, %rsp
100002eea: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002eee: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002ef2: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002ef6: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100002efa: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100002efe: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002f02: 8b 45 30                    	movl	48(%rbp), %eax
100002f05: 50                          	pushq	%rax
100002f06: 8b 45 20                    	movl	32(%rbp), %eax
100002f09: 50                          	pushq	%rax
100002f0a: 8b 45 18                    	movl	24(%rbp), %eax
100002f0d: 50                          	pushq	%rax
100002f0e: e8 4d 05 00 00              	callq	1357 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
100002f13: e9 30 04 00 00              	jmp	1072 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
100002f18: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002f1c: 0f 84 60 03 00 00           	je	864 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002f22: 8b 45 30                    	movl	48(%rbp), %eax
100002f25: 48 89 c1                    	movq	%rax, %rcx
100002f28: 89 ca                       	movl	%ecx, %edx
100002f2a: d1 ea                       	shrl	%edx
100002f2c: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100002f30: 29 d0                       	subl	%edx, %eax
100002f32: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100002f36: 8b 45 20                    	movl	32(%rbp), %eax
100002f39: 48 89 c6                    	movq	%rax, %rsi
100002f3c: 89 55 b8                    	movl	%edx, -72(%rbp)
100002f3f: 29 d0                       	subl	%edx, %eax
100002f41: 8b 7d d4                    	movl	-44(%rbp), %edi
100002f44: 48 89 bd 70 ff ff ff        	movq	%rdi, -144(%rbp)
100002f4b: 89 cf                       	movl	%ecx, %edi
100002f4d: 0f af fe                    	imull	%esi, %edi
100002f50: c1 e7 04                    	shll	$4, %edi
100002f53: 89 bd 78 ff ff ff           	movl	%edi, -136(%rbp)
100002f59: 89 ce                       	movl	%ecx, %esi
100002f5b: c1 e6 04                    	shll	$4, %esi
100002f5e: 31 c9                       	xorl	%ecx, %ecx
100002f60: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
100002f64: eb 1e                       	jmp	30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5d4>
100002f66: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002f70: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100002f74: 48 ff c1                    	incq	%rcx
100002f77: 48 3b 8d 70 ff ff ff        	cmpq	-144(%rbp), %rcx
100002f7e: 0f 84 fe 02 00 00           	je	766 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100002f84: 48 89 4d 90                 	movq	%rcx, -112(%rbp)
100002f88: 83 7d c0 00                 	cmpl	$0, -64(%rbp)
100002f8c: 74 e2                       	je	-30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002f8e: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100002f92: 41 89 cc                    	movl	%ecx, %r12d
100002f95: 41 c1 e4 04                 	shll	$4, %r12d
100002f99: c7 45 d0 00 00 00 00        	movl	$0, -48(%rbp)
100002fa0: c7 45 88 00 00 00 00        	movl	$0, -120(%rbp)
100002fa7: eb 25                       	jmp	37 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x61e>
100002fa9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002fb0: 8b 7d 88                    	movl	-120(%rbp), %edi
100002fb3: 8b 45 30                    	movl	48(%rbp), %eax
100002fb6: 01 c7                       	addl	%eax, %edi
100002fb8: 8b 45 d0                    	movl	-48(%rbp), %eax
100002fbb: 03 85 78 ff ff ff           	addl	-136(%rbp), %eax
100002fc1: 89 45 d0                    	movl	%eax, -48(%rbp)
100002fc4: 89 7d 88                    	movl	%edi, -120(%rbp)
100002fc7: 3b 7d c0                    	cmpl	-64(%rbp), %edi
100002fca: 89 c8                       	movl	%ecx, %eax
100002fcc: 73 a2                       	jae	-94 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002fce: 85 c0                       	testl	%eax, %eax
100002fd0: 44 8b 4d cc                 	movl	-52(%rbp), %r9d
100002fd4: 4c 8b 45 a0                 	movq	-96(%rbp), %r8
100002fd8: 4c 8b 55 98                 	movq	-104(%rbp), %r10
100002fdc: 89 c1                       	movl	%eax, %ecx
100002fde: 4c 8b 6d 90                 	movq	-112(%rbp), %r13
100002fe2: 41 bf 7f 00 00 00           	movl	$127, %r15d
100002fe8: 74 c6                       	je	-58 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x600>
100002fea: 8b 45 88                    	movl	-120(%rbp), %eax
100002fed: 31 d2                       	xorl	%edx, %edx
100002fef: 8b 7d 30                    	movl	48(%rbp), %edi
100002ff2: 49 89 fb                    	movq	%rdi, %r11
100002ff5: 41 f7 f3                    	divl	%r11d
100002ff8: 89 c7                       	movl	%eax, %edi
100002ffa: 8b 45 20                    	movl	32(%rbp), %eax
100002ffd: 31 d2                       	xorl	%edx, %edx
100002fff: 41 f7 f3                    	divl	%r11d
100003002: 2b 7d b8                    	subl	-72(%rbp), %edi
100003005: 0f af c7                    	imull	%edi, %eax
100003008: 89 45 80                    	movl	%eax, -128(%rbp)
10000300b: 31 ff                       	xorl	%edi, %edi
10000300d: 44 8b 75 d0                 	movl	-48(%rbp), %r14d
100003011: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000301b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003020: 44 89 f0                    	movl	%r14d, %eax
100003023: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100003027: c4 a2 7d 21 04 22           	vpmovsxbd	(%rdx,%r12), %ymm0
10000302d: c4 a2 7d 21 4c 22 08        	vpmovsxbd	8(%rdx,%r12), %ymm1
100003034: c4 e2 7d 21 14 03           	vpmovsxbd	(%rbx,%rax), %ymm2
10000303a: c4 e2 6d 40 c0              	vpmulld	%ymm0, %ymm2, %ymm0
10000303f: c4 e2 7d 21 54 03 08        	vpmovsxbd	8(%rbx,%rax), %ymm2
100003046: c4 e2 6d 40 c9              	vpmulld	%ymm1, %ymm2, %ymm1
10000304b: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
10000304f: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100003055: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003059: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
10000305e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003062: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100003067: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000306b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000306f: 98                          	cwtl
100003070: 43 0f be 14 20              	movsbl	(%r8,%r12), %edx
100003075: 01 c2                       	addl	%eax, %edx
100003077: 41 0f af d1                 	imull	%r9d, %edx
10000307b: 4d 89 d3                    	movq	%r10, %r11
10000307e: 41 89 d2                    	movl	%edx, %r10d
100003081: 41 c1 fa 1f                 	sarl	$31, %r10d
100003085: 41 c1 ea 12                 	shrl	$18, %r10d
100003089: 41 01 d2                    	addl	%edx, %r10d
10000308c: 41 c1 fa 0e                 	sarl	$14, %r10d
100003090: 41 81 fa 80 00 00 00        	cmpl	$128, %r10d
100003097: 45 0f 4d d7                 	cmovgel	%r15d, %r10d
10000309b: 89 f8                       	movl	%edi, %eax
10000309d: 31 d2                       	xorl	%edx, %edx
10000309f: 4d 89 c7                    	movq	%r8, %r15
1000030a2: 45 89 c8                    	movl	%r9d, %r8d
1000030a5: 44 8b 4d 30                 	movl	48(%rbp), %r9d
1000030a9: 41 f7 f1                    	divl	%r9d
1000030ac: 2b 45 b8                    	subl	-72(%rbp), %eax
1000030af: 03 45 80                    	addl	-128(%rbp), %eax
1000030b2: 0f af 45 d4                 	imull	-44(%rbp), %eax
1000030b6: 44 01 e8                    	addl	%r13d, %eax
1000030b9: 41 83 fa 81                 	cmpl	$-127, %r10d
1000030bd: 4c 89 e2                    	movq	%r12, %rdx
1000030c0: 4d 89 ec                    	movq	%r13, %r12
1000030c3: 41 bd 81 00 00 00           	movl	$129, %r13d
1000030c9: 45 0f 4e d5                 	cmovlel	%r13d, %r10d
1000030cd: 4d 89 e5                    	movq	%r12, %r13
1000030d0: 49 89 d4                    	movq	%rdx, %r12
1000030d3: 45 88 14 03                 	movb	%r10b, (%r11,%rax)
1000030d7: 4d 89 da                    	movq	%r11, %r10
1000030da: 44 01 cf                    	addl	%r9d, %edi
1000030dd: 45 89 c1                    	movl	%r8d, %r9d
1000030e0: 4d 89 f8                    	movq	%r15, %r8
1000030e3: 41 bf 7f 00 00 00           	movl	$127, %r15d
1000030e9: 41 01 f6                    	addl	%esi, %r14d
1000030ec: 39 cf                       	cmpl	%ecx, %edi
1000030ee: 0f 82 2c ff ff ff           	jb	-212 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x670>
1000030f4: e9 b7 fe ff ff              	jmp	-329 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x600>
1000030f9: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000030fd: 0f 84 7f 01 00 00           	je	383 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100003103: 8b 45 30                    	movl	48(%rbp), %eax
100003106: 48 89 c1                    	movq	%rax, %rcx
100003109: 89 ca                       	movl	%ecx, %edx
10000310b: d1 ea                       	shrl	%edx
10000310d: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003111: 29 d0                       	subl	%edx, %eax
100003113: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003117: 8b 45 20                    	movl	32(%rbp), %eax
10000311a: 41 89 c7                    	movl	%eax, %r15d
10000311d: 41 29 d7                    	subl	%edx, %r15d
100003120: 8b 75 d4                    	movl	-44(%rbp), %esi
100003123: 48 89 b5 68 ff ff ff        	movq	%rsi, -152(%rbp)
10000312a: 89 ce                       	movl	%ecx, %esi
10000312c: 0f af f0                    	imull	%eax, %esi
10000312f: c1 e6 05                    	shll	$5, %esi
100003132: 89 b5 70 ff ff ff           	movl	%esi, -144(%rbp)
100003138: 41 89 c8                    	movl	%ecx, %r8d
10000313b: 41 c1 e0 05                 	shll	$5, %r8d
10000313f: 45 31 d2                    	xorl	%r10d, %r10d
100003142: 44 89 45 d0                 	movl	%r8d, -48(%rbp)
100003146: 89 55 88                    	movl	%edx, -120(%rbp)
100003149: 44 89 7d 90                 	movl	%r15d, -112(%rbp)
10000314d: eb 11                       	jmp	17 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7b0>
10000314f: 90                          	nop
100003150: 49 ff c2                    	incq	%r10
100003153: 4c 3b 95 68 ff ff ff        	cmpq	-152(%rbp), %r10
10000315a: 0f 84 22 01 00 00           	je	290 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8d2>
100003160: 83 7d c0 00                 	cmpl	$0, -64(%rbp)
100003164: 8b 5d 30                    	movl	48(%rbp), %ebx
100003167: 74 e7                       	je	-25 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7a0>
100003169: 45 89 d1                    	movl	%r10d, %r9d
10000316c: 41 c1 e1 05                 	shll	$5, %r9d
100003170: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100003174: 4a 8d 34 08                 	leaq	(%rax,%r9), %rsi
100003178: c7 85 78 ff ff ff 00 00 00 00       	movl	$0, -136(%rbp)
100003182: 45 31 db                    	xorl	%r11d, %r11d
100003185: 4c 89 55 b8                 	movq	%r10, -72(%rbp)
100003189: 48 89 75 80                 	movq	%rsi, -128(%rbp)
10000318d: eb 1c                       	jmp	28 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7fb>
10000318f: 90                          	nop
100003190: 41 01 db                    	addl	%ebx, %r11d
100003193: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100003199: 03 85 70 ff ff ff           	addl	-144(%rbp), %eax
10000319f: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
1000031a5: 44 3b 5d c0                 	cmpl	-64(%rbp), %r11d
1000031a9: 73 a5                       	jae	-91 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7a0>
1000031ab: 45 85 ff                    	testl	%r15d, %r15d
1000031ae: 44 8b 75 20                 	movl	32(%rbp), %r14d
1000031b2: 48 8b 45 b0                 	movq	-80(%rbp), %rax
1000031b6: 74 d8                       	je	-40 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7e0>
1000031b8: 45 31 ed                    	xorl	%r13d, %r13d
1000031bb: 44 8b a5 78 ff ff ff        	movl	-136(%rbp), %r12d
1000031c2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000031cc: 0f 1f 40 00                 	nopl	(%rax)
1000031d0: 44 89 e7                    	movl	%r12d, %edi
1000031d3: 48 01 c7                    	addq	%rax, %rdi
1000031d6: 4c 89 cb                    	movq	%r9, %rbx
1000031d9: 4d 89 f7                    	movq	%r14, %r15
1000031dc: 45 89 de                    	movl	%r11d, %r14d
1000031df: e8 cc 11 00 00              	callq	4556 <__Z11microkernelILj1ELj32EasET2_PKT1_S3_>
1000031e4: 45 89 f3                    	movl	%r14d, %r11d
1000031e7: 4d 89 fe                    	movq	%r15, %r14
1000031ea: 49 89 d9                    	movq	%rbx, %r9
1000031ed: ba 7f 00 00 00              	movl	$127, %edx
1000031f2: 8b 5d 30                    	movl	48(%rbp), %ebx
1000031f5: 98                          	cwtl
1000031f6: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
1000031fa: 42 0f be 0c 09              	movsbl	(%rcx,%r9), %ecx
1000031ff: 01 c1                       	addl	%eax, %ecx
100003201: 0f af 4d cc                 	imull	-52(%rbp), %ecx
100003205: 89 cf                       	movl	%ecx, %edi
100003207: c1 ff 1f                    	sarl	$31, %edi
10000320a: c1 ef 12                    	shrl	$18, %edi
10000320d: 01 cf                       	addl	%ecx, %edi
10000320f: c1 ff 0e                    	sarl	$14, %edi
100003212: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003218: 0f 4d fa                    	cmovgel	%edx, %edi
10000321b: 44 89 e8                    	movl	%r13d, %eax
10000321e: 31 d2                       	xorl	%edx, %edx
100003220: f7 f3                       	divl	%ebx
100003222: 89 c1                       	movl	%eax, %ecx
100003224: 44 89 d8                    	movl	%r11d, %eax
100003227: 31 d2                       	xorl	%edx, %edx
100003229: f7 f3                       	divl	%ebx
10000322b: 89 c6                       	movl	%eax, %esi
10000322d: 44 89 f0                    	movl	%r14d, %eax
100003230: 31 d2                       	xorl	%edx, %edx
100003232: f7 f3                       	divl	%ebx
100003234: 44 8b 7d 90                 	movl	-112(%rbp), %r15d
100003238: 8b 55 88                    	movl	-120(%rbp), %edx
10000323b: 29 d6                       	subl	%edx, %esi
10000323d: 0f af c6                    	imull	%esi, %eax
100003240: 4c 8b 55 b8                 	movq	-72(%rbp), %r10
100003244: 29 d1                       	subl	%edx, %ecx
100003246: 01 c8                       	addl	%ecx, %eax
100003248: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000324c: 0f af 45 d4                 	imull	-44(%rbp), %eax
100003250: 44 01 d0                    	addl	%r10d, %eax
100003253: 83 ff 81                    	cmpl	$-127, %edi
100003256: b9 81 00 00 00              	movl	$129, %ecx
10000325b: 0f 4e f9                    	cmovlel	%ecx, %edi
10000325e: 48 8b 75 80                 	movq	-128(%rbp), %rsi
100003262: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100003266: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
10000326a: 48 8b 45 b0                 	movq	-80(%rbp), %rax
10000326e: 41 01 dd                    	addl	%ebx, %r13d
100003271: 45 01 c4                    	addl	%r8d, %r12d
100003274: 45 39 fd                    	cmpl	%r15d, %r13d
100003277: 0f 82 53 ff ff ff           	jb	-173 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x820>
10000327d: e9 0e ff ff ff              	jmp	-242 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7e0>
100003282: 48 83 c4 78                 	addq	$120, %rsp
100003286: e9 c4 00 00 00              	jmp	196 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x99f>
10000328b: 48 83 ec 08                 	subq	$8, %rsp
10000328f: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003293: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100003297: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000329b: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
10000329f: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
1000032a3: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
1000032a7: 8b 45 30                    	movl	48(%rbp), %eax
1000032aa: 50                          	pushq	%rax
1000032ab: 8b 45 20                    	movl	32(%rbp), %eax
1000032ae: 50                          	pushq	%rax
1000032af: 8b 45 18                    	movl	24(%rbp), %eax
1000032b2: 50                          	pushq	%rax
1000032b3: e8 b8 05 00 00              	callq	1464 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj>
1000032b8: e9 8b 00 00 00              	jmp	139 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
1000032bd: 48 83 ec 08                 	subq	$8, %rsp
1000032c1: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000032c5: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
1000032c9: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000032cd: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
1000032d1: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
1000032d5: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
1000032d9: 8b 45 30                    	movl	48(%rbp), %eax
1000032dc: 50                          	pushq	%rax
1000032dd: 8b 45 20                    	movl	32(%rbp), %eax
1000032e0: 50                          	pushq	%rax
1000032e1: 8b 45 18                    	movl	24(%rbp), %eax
1000032e4: 50                          	pushq	%rax
1000032e5: e8 c6 07 00 00              	callq	1990 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
1000032ea: eb 5c                       	jmp	92 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
1000032ec: 48 83 ec 08                 	subq	$8, %rsp
1000032f0: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000032f4: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
1000032f8: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000032fc: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100003300: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100003304: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100003308: 8b 45 30                    	movl	48(%rbp), %eax
10000330b: 50                          	pushq	%rax
10000330c: 8b 45 20                    	movl	32(%rbp), %eax
10000330f: 50                          	pushq	%rax
100003310: 8b 45 18                    	movl	24(%rbp), %eax
100003313: 50                          	pushq	%rax
100003314: e8 d7 09 00 00              	callq	2519 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj>
100003319: eb 2d                       	jmp	45 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
10000331b: 48 83 ec 08                 	subq	$8, %rsp
10000331f: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003323: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100003327: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000332b: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
10000332f: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100003333: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100003337: 8b 45 30                    	movl	48(%rbp), %eax
10000333a: 50                          	pushq	%rax
10000333b: 8b 45 20                    	movl	32(%rbp), %eax
10000333e: 50                          	pushq	%rax
10000333f: 8b 45 18                    	movl	24(%rbp), %eax
100003342: 50                          	pushq	%rax
100003343: e8 e8 0b 00 00              	callq	3048 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj>
100003348: 48 81 c4 98 00 00 00        	addq	$152, %rsp
10000334f: 5b                          	popq	%rbx
100003350: 41 5c                       	popq	%r12
100003352: 41 5d                       	popq	%r13
100003354: 41 5e                       	popq	%r14
100003356: 41 5f                       	popq	%r15
100003358: 5d                          	popq	%rbp
100003359: c5 f8 77                    	vzeroupper
10000335c: c3                          	retq
10000335d: 0f 1f 00                    	nopl	(%rax)
100003360: ef                          	outl	%eax, %dx
100003361: f7 ff                       	idivl	%edi
100003363: ff 22                       	jmpq	*(%rdx)
100003365: ff ff                       	<unknown>
100003367: ff 22                       	jmpq	*(%rdx)
100003369: ff ff                       	<unknown>
10000336b: ff 2b                       	ljmpl	*(%rbx)
10000336d: ff ff                       	<unknown>
10000336f: ff 22                       	jmpq	*(%rdx)
100003371: ff ff                       	<unknown>
100003373: ff 22                       	jmpq	*(%rdx)
100003375: ff ff                       	<unknown>
100003377: ff 22                       	jmpq	*(%rdx)
100003379: ff ff                       	<unknown>
10000337b: ff 5d ff                    	lcalll	*-1(%rbp)
10000337e: ff ff                       	<unknown>
100003380: 22 ff                       	andb	%bh, %bh
100003382: ff ff                       	<unknown>
100003384: 22 ff                       	andb	%bh, %bh
100003386: ff ff                       	<unknown>
100003388: 22 ff                       	andb	%bh, %bh
10000338a: ff ff                       	<unknown>
10000338c: 22 ff                       	andb	%bh, %bh
10000338e: ff ff                       	<unknown>
100003390: 22 ff                       	andb	%bh, %bh
100003392: ff ff                       	<unknown>
100003394: 22 ff                       	andb	%bh, %bh
100003396: ff ff                       	<unknown>
100003398: 22 ff                       	andb	%bh, %bh
10000339a: ff ff                       	<unknown>
10000339c: 8c ff                       	<unknown>
10000339e: ff ff                       	<unknown>
1000033a0: 22 ff                       	andb	%bh, %bh
1000033a2: ff ff                       	<unknown>
1000033a4: 22 ff                       	andb	%bh, %bh
1000033a6: ff ff                       	<unknown>
1000033a8: 22 ff                       	andb	%bh, %bh
1000033aa: ff ff                       	<unknown>
1000033ac: 22 ff                       	andb	%bh, %bh
1000033ae: ff ff                       	<unknown>
1000033b0: 22 ff                       	andb	%bh, %bh
1000033b2: ff ff                       	<unknown>
1000033b4: 22 ff                       	andb	%bh, %bh
1000033b6: ff ff                       	<unknown>
1000033b8: 22 ff                       	andb	%bh, %bh
1000033ba: ff ff                       	<unknown>
1000033bc: 22 ff                       	andb	%bh, %bh
1000033be: ff ff                       	<unknown>
1000033c0: 22 ff                       	andb	%bh, %bh
1000033c2: ff ff                       	<unknown>
1000033c4: 22 ff                       	andb	%bh, %bh
1000033c6: ff ff                       	<unknown>
1000033c8: 22 ff                       	andb	%bh, %bh
1000033ca: ff ff                       	<unknown>
1000033cc: 22 ff                       	andb	%bh, %bh
1000033ce: ff ff                       	<unknown>
1000033d0: 22 ff                       	andb	%bh, %bh
1000033d2: ff ff                       	<unknown>
1000033d4: 22 ff                       	andb	%bh, %bh
1000033d6: ff ff                       	<unknown>
1000033d8: 22 ff                       	andb	%bh, %bh
1000033da: ff ff                       	<unknown>
1000033dc: bb ff ff ff 34              	movl	$889192447, %ebx
1000033e1: f6 ff                       	idivb	%bh
1000033e3: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
1000033e9: fe ff                       	<unknown>
1000033eb: ff 66 f9                    	jmpq	*-7(%rsi)
1000033ee: ff ff                       	<unknown>
1000033f0: a2 fe ff ff a2 fe ff ff a2  	movabsb	%al, -6701356251382546434
1000033f9: fe ff                       	<unknown>
1000033fb: ff 06                       	incl	(%rsi)
1000033fd: fb                          	sti
1000033fe: ff ff                       	<unknown>
100003400: a2 fe ff ff a2 fe ff ff a2  	movabsb	%al, -6701356251382546434
100003409: fe ff                       	<unknown>
10000340b: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003411: fe ff                       	<unknown>
100003413: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003419: fe ff                       	<unknown>
10000341b: ff 38                       	<unknown>
10000341d: fb                          	sti
10000341e: ff ff                       	<unknown>
100003420: a2 fe ff ff a2 fe ff ff a2  	movabsb	%al, -6701356251382546434
100003429: fe ff                       	<unknown>
10000342b: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003431: fe ff                       	<unknown>
100003433: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003439: fe ff                       	<unknown>
10000343b: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003441: fe ff                       	<unknown>
100003443: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003449: fe ff                       	<unknown>
10000344b: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003451: fe ff                       	<unknown>
100003453: ff a2 fe ff ff a2           	jmpq	*-1560281090(%rdx)
100003459: fe ff                       	<unknown>
10000345b: ff 19                       	lcalll	*(%rcx)
10000345d: fd                          	std
10000345e: ff ff                       	<unknown>

0000000100003460 __Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003460: 55                          	pushq	%rbp
100003461: 48 89 e5                    	movq	%rsp, %rbp
100003464: 41 57                       	pushq	%r15
100003466: 41 56                       	pushq	%r14
100003468: 41 55                       	pushq	%r13
10000346a: 41 54                       	pushq	%r12
10000346c: 53                          	pushq	%rbx
10000346d: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003471: 48 89 4d 90                 	movq	%rcx, -112(%rbp)
100003475: 48 89 55 98                 	movq	%rdx, -104(%rbp)
100003479: 48 89 75 a0                 	movq	%rsi, -96(%rbp)
10000347d: 45 85 c9                    	testl	%r9d, %r9d
100003480: 0f 84 85 01 00 00           	je	389 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1ab>
100003486: 44 89 ca                    	movl	%r9d, %edx
100003489: 44 8b 75 20                 	movl	32(%rbp), %r14d
10000348d: 8b 45 18                    	movl	24(%rbp), %eax
100003490: 8b 4d 10                    	movl	16(%rbp), %ecx
100003493: 44 89 f6                    	movl	%r14d, %esi
100003496: d1 ee                       	shrl	%esi
100003498: 29 f1                       	subl	%esi, %ecx
10000349a: 89 4d cc                    	movl	%ecx, -52(%rbp)
10000349d: 89 c1                       	movl	%eax, %ecx
10000349f: 89 75 b8                    	movl	%esi, -72(%rbp)
1000034a2: 29 f1                       	subl	%esi, %ecx
1000034a4: 44 89 ce                    	movl	%r9d, %esi
1000034a7: 48 89 75 a8                 	movq	%rsi, -88(%rbp)
1000034ab: 44 89 f6                    	movl	%r14d, %esi
1000034ae: 0f af f0                    	imull	%eax, %esi
1000034b1: c1 e6 03                    	shll	$3, %esi
1000034b4: 89 75 bc                    	movl	%esi, -68(%rbp)
1000034b7: 42 8d 04 f5 00 00 00 00     	leal	(,%r14,8), %eax
1000034bf: 31 f6                       	xorl	%esi, %esi
1000034c1: 89 4d c8                    	movl	%ecx, -56(%rbp)
1000034c4: 89 45 b4                    	movl	%eax, -76(%rbp)
1000034c7: 44 8b 55 b8                 	movl	-72(%rbp), %r10d
1000034cb: 41 bc 81 00 00 00           	movl	$129, %r12d
1000034d1: eb 1e                       	jmp	30 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x91>
1000034d3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000034dd: 0f 1f 00                    	nopl	(%rax)
1000034e0: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
1000034e4: 48 ff c6                    	incq	%rsi
1000034e7: 48 3b 75 a8                 	cmpq	-88(%rbp), %rsi
1000034eb: 0f 84 1a 01 00 00           	je	282 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1ab>
1000034f1: 48 89 75 c0                 	movq	%rsi, -64(%rbp)
1000034f5: 83 7d cc 00                 	cmpl	$0, -52(%rbp)
1000034f9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x80>
1000034fb: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
1000034ff: 44 8d 0c f5 00 00 00 00     	leal	(,%rsi,8), %r9d
100003507: c7 45 d0 00 00 00 00        	movl	$0, -48(%rbp)
10000350e: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003515: eb 23                       	jmp	35 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xda>
100003517: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100003520: 8b 75 d4                    	movl	-44(%rbp), %esi
100003523: 44 01 f6                    	addl	%r14d, %esi
100003526: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003529: 03 4d bc                    	addl	-68(%rbp), %ecx
10000352c: 89 4d d0                    	movl	%ecx, -48(%rbp)
10000352f: 89 75 d4                    	movl	%esi, -44(%rbp)
100003532: 3b 75 cc                    	cmpl	-52(%rbp), %esi
100003535: 8b 4d c8                    	movl	-56(%rbp), %ecx
100003538: 73 a6                       	jae	-90 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x80>
10000353a: 85 c9                       	testl	%ecx, %ecx
10000353c: 48 8b 75 a0                 	movq	-96(%rbp), %rsi
100003540: 4c 8b 6d c0                 	movq	-64(%rbp), %r13
100003544: 74 da                       	je	-38 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xc0>
100003546: 8b 45 d4                    	movl	-44(%rbp), %eax
100003549: 41 89 d3                    	movl	%edx, %r11d
10000354c: 31 d2                       	xorl	%edx, %edx
10000354e: 41 f7 f6                    	divl	%r14d
100003551: 89 c3                       	movl	%eax, %ebx
100003553: 8b 45 18                    	movl	24(%rbp), %eax
100003556: 31 d2                       	xorl	%edx, %edx
100003558: 41 f7 f6                    	divl	%r14d
10000355b: 41 89 c7                    	movl	%eax, %r15d
10000355e: 44 29 d3                    	subl	%r10d, %ebx
100003561: 44 0f af fb                 	imull	%ebx, %r15d
100003565: 31 db                       	xorl	%ebx, %ebx
100003567: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000356b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003570: 44 89 c0                    	movl	%r8d, %eax
100003573: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100003577: c4 a2 7d 21 04 09           	vpmovsxbd	(%rcx,%r9), %ymm0
10000357d: c4 e2 7d 21 0c 06           	vpmovsxbd	(%rsi,%rax), %ymm1
100003583: c4 e2 75 40 c0              	vpmulld	%ymm0, %ymm1, %ymm0
100003588: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000358e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003592: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100003597: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000359b: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000035a0: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000035a4: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000035a8: 98                          	cwtl
1000035a9: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
1000035ad: 42 0f be 14 09              	movsbl	(%rcx,%r9), %edx
1000035b2: 01 c2                       	addl	%eax, %edx
1000035b4: 0f af 55 b0                 	imull	-80(%rbp), %edx
1000035b8: 89 d1                       	movl	%edx, %ecx
1000035ba: c1 f9 1f                    	sarl	$31, %ecx
1000035bd: c1 e9 12                    	shrl	$18, %ecx
1000035c0: 01 d1                       	addl	%edx, %ecx
1000035c2: c1 f9 0e                    	sarl	$14, %ecx
1000035c5: 81 f9 80 00 00 00           	cmpl	$128, %ecx
1000035cb: b8 7f 00 00 00              	movl	$127, %eax
1000035d0: 0f 4d c8                    	cmovgel	%eax, %ecx
1000035d3: 89 d8                       	movl	%ebx, %eax
1000035d5: 31 d2                       	xorl	%edx, %edx
1000035d7: 41 f7 f6                    	divl	%r14d
1000035da: 44 89 da                    	movl	%r11d, %edx
1000035dd: 44 29 d0                    	subl	%r10d, %eax
1000035e0: 44 01 f8                    	addl	%r15d, %eax
1000035e3: 41 0f af c3                 	imull	%r11d, %eax
1000035e7: 44 01 e8                    	addl	%r13d, %eax
1000035ea: 83 f9 81                    	cmpl	$-127, %ecx
1000035ed: 41 0f 4e cc                 	cmovlel	%r12d, %ecx
1000035f1: 88 0c 07                    	movb	%cl, (%rdi,%rax)
1000035f4: 8b 45 b4                    	movl	-76(%rbp), %eax
1000035f7: 44 01 f3                    	addl	%r14d, %ebx
1000035fa: 41 01 c0                    	addl	%eax, %r8d
1000035fd: 3b 5d c8                    	cmpl	-56(%rbp), %ebx
100003600: 0f 82 6a ff ff ff           	jb	-150 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003606: e9 15 ff ff ff              	jmp	-235 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xc0>
10000360b: 5b                          	popq	%rbx
10000360c: 41 5c                       	popq	%r12
10000360e: 41 5d                       	popq	%r13
100003610: 41 5e                       	popq	%r14
100003612: 41 5f                       	popq	%r15
100003614: 5d                          	popq	%rbp
100003615: c5 f8 77                    	vzeroupper
100003618: c3                          	retq
100003619: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100003620 __Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj:
100003620: 55                          	pushq	%rbp
100003621: 48 89 e5                    	movq	%rsp, %rbp
100003624: 41 57                       	pushq	%r15
100003626: 41 56                       	pushq	%r14
100003628: 41 55                       	pushq	%r13
10000362a: 41 54                       	pushq	%r12
10000362c: 53                          	pushq	%rbx
10000362d: 45 85 c9                    	testl	%r9d, %r9d
100003630: 0f 84 29 02 00 00           	je	553 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0x23f>
100003636: 49 89 d3                    	movq	%rdx, %r11
100003639: 8b 55 20                    	movl	32(%rbp), %edx
10000363c: 44 8b 55 18                 	movl	24(%rbp), %r10d
100003640: 8b 5d 10                    	movl	16(%rbp), %ebx
100003643: 89 d0                       	movl	%edx, %eax
100003645: d1 e8                       	shrl	%eax
100003647: 29 c3                       	subl	%eax, %ebx
100003649: 83 c3 fe                    	addl	$-2, %ebx
10000364c: 89 5d d0                    	movl	%ebx, -48(%rbp)
10000364f: 44 89 d3                    	movl	%r10d, %ebx
100003652: 29 c3                       	subl	%eax, %ebx
100003654: 83 c3 fe                    	addl	$-2, %ebx
100003657: 41 bc 01 00 00 00           	movl	$1, %r12d
10000365d: 41 29 c4                    	subl	%eax, %r12d
100003660: 44 89 c8                    	movl	%r9d, %eax
100003663: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100003667: 43 8d 04 12                 	leal	(%r10,%r10), %eax
10000366b: 89 45 bc                    	movl	%eax, -68(%rbp)
10000366e: 89 d0                       	movl	%edx, %eax
100003670: 41 0f af c2                 	imull	%r10d, %eax
100003674: 89 45 b8                    	movl	%eax, -72(%rbp)
100003677: 31 c0                       	xorl	%eax, %eax
100003679: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
10000367d: eb 12                       	jmp	18 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0x71>
10000367f: 90                          	nop
100003680: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003684: 48 ff c0                    	incq	%rax
100003687: 48 3b 45 a0                 	cmpq	-96(%rbp), %rax
10000368b: 0f 84 ce 01 00 00           	je	462 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0x23f>
100003691: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003695: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003699: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0x60>
10000369b: 48 8b 45 c8                 	movq	-56(%rbp), %rax
10000369f: 44 8d 14 c0                 	leal	(%rax,%rax,8), %r10d
1000036a3: 31 c0                       	xorl	%eax, %eax
1000036a5: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000036a9: 8b 45 18                    	movl	24(%rbp), %eax
1000036ac: 89 c2                       	movl	%eax, %edx
1000036ae: 8b 45 bc                    	movl	-68(%rbp), %eax
1000036b1: 41 89 c6                    	movl	%eax, %r14d
1000036b4: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
1000036bb: eb 32                       	jmp	50 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0xcf>
1000036bd: 0f 1f 00                    	nopl	(%rax)
1000036c0: 8b 5d d4                    	movl	-44(%rbp), %ebx
1000036c3: 8b 45 20                    	movl	32(%rbp), %eax
1000036c6: 89 c2                       	movl	%eax, %edx
1000036c8: 01 c3                       	addl	%eax, %ebx
1000036ca: 8b 45 b8                    	movl	-72(%rbp), %eax
1000036cd: 4c 8b 75 a8                 	movq	-88(%rbp), %r14
1000036d1: 41 01 c6                    	addl	%eax, %r14d
1000036d4: 41 01 c5                    	addl	%eax, %r13d
1000036d7: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
1000036db: 01 c2                       	addl	%eax, %edx
1000036dd: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
1000036e1: 89 5d d4                    	movl	%ebx, -44(%rbp)
1000036e4: 3b 5d d0                    	cmpl	-48(%rbp), %ebx
1000036e7: 44 89 fb                    	movl	%r15d, %ebx
1000036ea: 4c 89 ea                    	movq	%r13, %rdx
1000036ed: 73 91                       	jae	-111 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0x60>
1000036ef: 4c 89 75 a8                 	movq	%r14, -88(%rbp)
1000036f3: 85 db                       	testl	%ebx, %ebx
1000036f5: 41 89 df                    	movl	%ebx, %r15d
1000036f8: 49 89 d5                    	movq	%rdx, %r13
1000036fb: 74 c3                       	je	-61 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
1000036fd: 8b 45 d4                    	movl	-44(%rbp), %eax
100003700: 31 d2                       	xorl	%edx, %edx
100003702: 8b 5d 20                    	movl	32(%rbp), %ebx
100003705: 41 89 de                    	movl	%ebx, %r14d
100003708: f7 f3                       	divl	%ebx
10000370a: 89 c3                       	movl	%eax, %ebx
10000370c: 8b 45 18                    	movl	24(%rbp), %eax
10000370f: 31 d2                       	xorl	%edx, %edx
100003711: 41 f7 f6                    	divl	%r14d
100003714: 44 01 e3                    	addl	%r12d, %ebx
100003717: 0f af c3                    	imull	%ebx, %eax
10000371a: 89 45 b4                    	movl	%eax, -76(%rbp)
10000371d: 45 31 f6                    	xorl	%r14d, %r14d
100003720: 4c 89 6d 90                 	movq	%r13, -112(%rbp)
100003724: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000372e: 66 90                       	nop
100003730: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003734: 44 01 f0                    	addl	%r14d, %eax
100003737: 42 0f be 14 11              	movsbl	(%rcx,%r10), %edx
10000373c: 0f be 3c 06                 	movsbl	(%rsi,%rax), %edi
100003740: 0f af fa                    	imull	%edx, %edi
100003743: 42 0f be 54 11 01           	movsbl	1(%rcx,%r10), %edx
100003749: 44 89 fb                    	movl	%r15d, %ebx
10000374c: 45 89 e7                    	movl	%r12d, %r15d
10000374f: 4d 89 dc                    	movq	%r11, %r12
100003752: 44 0f be 5c 06 01           	movsbl	1(%rsi,%rax), %r11d
100003758: 44 0f af da                 	imull	%edx, %r11d
10000375c: 41 01 fb                    	addl	%edi, %r11d
10000375f: 42 0f be 54 11 02           	movsbl	2(%rcx,%r10), %edx
100003765: 0f be 44 06 02              	movsbl	2(%rsi,%rax), %eax
10000376a: 0f af c2                    	imull	%edx, %eax
10000376d: 44 01 d8                    	addl	%r11d, %eax
100003770: 44 0f bf d8                 	movswl	%ax, %r11d
100003774: 43 8d 14 2e                 	leal	(%r14,%r13), %edx
100003778: 42 0f be 7c 11 03           	movsbl	3(%rcx,%r10), %edi
10000377e: 0f be 04 16                 	movsbl	(%rsi,%rdx), %eax
100003782: 0f af c7                    	imull	%edi, %eax
100003785: 42 0f be 7c 11 04           	movsbl	4(%rcx,%r10), %edi
10000378b: 44 0f be 6c 16 01           	movsbl	1(%rsi,%rdx), %r13d
100003791: 44 0f af ef                 	imull	%edi, %r13d
100003795: 41 01 c5                    	addl	%eax, %r13d
100003798: 42 0f be 44 11 05           	movsbl	5(%rcx,%r10), %eax
10000379e: 0f be 54 16 02              	movsbl	2(%rsi,%rdx), %edx
1000037a3: 0f af d0                    	imull	%eax, %edx
1000037a6: 44 01 ea                    	addl	%r13d, %edx
1000037a9: 44 0f bf ea                 	movswl	%dx, %r13d
1000037ad: 45 01 dd                    	addl	%r11d, %r13d
1000037b0: 48 8b 45 a8                 	movq	-88(%rbp), %rax
1000037b4: 42 8d 14 30                 	leal	(%rax,%r14), %edx
1000037b8: 46 0f be 5c 11 06           	movsbl	6(%rcx,%r10), %r11d
1000037be: 0f be 3c 16                 	movsbl	(%rsi,%rdx), %edi
1000037c2: 41 0f af fb                 	imull	%r11d, %edi
1000037c6: 46 0f be 5c 11 07           	movsbl	7(%rcx,%r10), %r11d
1000037cc: 0f be 44 16 01              	movsbl	1(%rsi,%rdx), %eax
1000037d1: 41 0f af c3                 	imull	%r11d, %eax
1000037d5: 4d 89 e3                    	movq	%r12, %r11
1000037d8: 45 89 fc                    	movl	%r15d, %r12d
1000037db: 01 f8                       	addl	%edi, %eax
1000037dd: 42 0f be 7c 11 08           	movsbl	8(%rcx,%r10), %edi
1000037e3: 0f be 54 16 02              	movsbl	2(%rsi,%rdx), %edx
1000037e8: 0f af d7                    	imull	%edi, %edx
1000037eb: 01 c2                       	addl	%eax, %edx
1000037ed: 0f bf c2                    	movswl	%dx, %eax
1000037f0: 44 01 e8                    	addl	%r13d, %eax
1000037f3: 41 bd 81 00 00 00           	movl	$129, %r13d
1000037f9: 41 bf 7f 00 00 00           	movl	$127, %r15d
1000037ff: 43 0f be 14 13              	movsbl	(%r11,%r10), %edx
100003804: 01 c2                       	addl	%eax, %edx
100003806: 41 0f af d0                 	imull	%r8d, %edx
10000380a: 89 d7                       	movl	%edx, %edi
10000380c: c1 ff 1f                    	sarl	$31, %edi
10000380f: c1 ef 12                    	shrl	$18, %edi
100003812: 01 d7                       	addl	%edx, %edi
100003814: c1 ff 0e                    	sarl	$14, %edi
100003817: 81 ff 80 00 00 00           	cmpl	$128, %edi
10000381d: 41 0f 4d ff                 	cmovgel	%r15d, %edi
100003821: 41 89 df                    	movl	%ebx, %r15d
100003824: 44 89 f0                    	movl	%r14d, %eax
100003827: 31 d2                       	xorl	%edx, %edx
100003829: 8b 5d 20                    	movl	32(%rbp), %ebx
10000382c: f7 f3                       	divl	%ebx
10000382e: 44 01 e0                    	addl	%r12d, %eax
100003831: 03 45 b4                    	addl	-76(%rbp), %eax
100003834: 41 0f af c1                 	imull	%r9d, %eax
100003838: 03 45 c8                    	addl	-56(%rbp), %eax
10000383b: 83 ff 81                    	cmpl	$-127, %edi
10000383e: 41 0f 4e fd                 	cmovlel	%r13d, %edi
100003842: 4c 8b 6d 90                 	movq	-112(%rbp), %r13
100003846: 48 8b 55 98                 	movq	-104(%rbp), %rdx
10000384a: 40 88 3c 02                 	movb	%dil, (%rdx,%rax)
10000384e: 41 01 de                    	addl	%ebx, %r14d
100003851: 45 39 fe                    	cmpl	%r15d, %r14d
100003854: 0f 82 d6 fe ff ff           	jb	-298 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000385a: e9 61 fe ff ff              	jmp	-415 <__Z13Conv2d_kernelILj3ELj1EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000385f: 5b                          	popq	%rbx
100003860: 41 5c                       	popq	%r12
100003862: 41 5d                       	popq	%r13
100003864: 41 5e                       	popq	%r14
100003866: 41 5f                       	popq	%r15
100003868: 5d                          	popq	%rbp
100003869: c3                          	retq
10000386a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100003870 __Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj:
100003870: 55                          	pushq	%rbp
100003871: 48 89 e5                    	movq	%rsp, %rbp
100003874: 41 57                       	pushq	%r15
100003876: 41 56                       	pushq	%r14
100003878: 41 55                       	pushq	%r13
10000387a: 41 54                       	pushq	%r12
10000387c: 53                          	pushq	%rbx
10000387d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003884: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003888: 45 85 c9                    	testl	%r9d, %r9d
10000388b: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003891: 49 89 d2                    	movq	%rdx, %r10
100003894: 49 89 f4                    	movq	%rsi, %r12
100003897: 44 8b 5d 20                 	movl	32(%rbp), %r11d
10000389b: 8b 45 18                    	movl	24(%rbp), %eax
10000389e: 8b 55 10                    	movl	16(%rbp), %edx
1000038a1: 44 89 d9                    	movl	%r11d, %ecx
1000038a4: d1 e9                       	shrl	%ecx
1000038a6: 29 ca                       	subl	%ecx, %edx
1000038a8: 83 c2 fe                    	addl	$-2, %edx
1000038ab: 89 55 d0                    	movl	%edx, -48(%rbp)
1000038ae: 89 c2                       	movl	%eax, %edx
1000038b0: 29 ca                       	subl	%ecx, %edx
1000038b2: 83 c2 fe                    	addl	$-2, %edx
1000038b5: bb 01 00 00 00              	movl	$1, %ebx
1000038ba: 29 cb                       	subl	%ecx, %ebx
1000038bc: 44 89 c9                    	movl	%r9d, %ecx
1000038bf: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000038c3: 8d 0c c5 00 00 00 00        	leal	(,%rax,8), %ecx
1000038ca: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000038ce: 44 89 d9                    	movl	%r11d, %ecx
1000038d1: 0f af c8                    	imull	%eax, %ecx
1000038d4: c1 e1 02                    	shll	$2, %ecx
1000038d7: 89 4d bc                    	movl	%ecx, -68(%rbp)
1000038da: 46 8d 2c 9d 00 00 00 00     	leal	(,%r11,4), %r13d
1000038e2: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
1000038e9: 48 89 45 90                 	movq	%rax, -112(%rbp)
1000038ed: 31 c0                       	xorl	%eax, %eax
1000038ef: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
1000038f3: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
1000038f7: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
1000038fe: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003902: 89 55 b0                    	movl	%edx, -80(%rbp)
100003905: 89 5d b4                    	movl	%ebx, -76(%rbp)
100003908: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
10000390c: eb 13                       	jmp	19 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
10000390e: 66 90                       	nop
100003910: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003914: 48 ff c0                    	incq	%rax
100003917: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
10000391b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003921: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003925: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003929: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000392b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000392f: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
100003936: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003939: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
10000393d: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003941: 49 8d 44 0e 0c              	leaq	12(%r14,%rcx), %rax
100003946: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000394d: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003954: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003958: 48 83 c0 18                 	addq	$24, %rax
10000395c: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003963: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000396a: 31 c0                       	xorl	%eax, %eax
10000396c: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003973: eb 25                       	jmp	37 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100003975: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000397f: 90                          	nop
100003980: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003983: 44 01 d9                    	addl	%r11d, %ecx
100003986: 8b 45 d4                    	movl	-44(%rbp), %eax
100003989: 03 45 bc                    	addl	-68(%rbp), %eax
10000398c: 89 45 d4                    	movl	%eax, -44(%rbp)
10000398f: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003992: 89 c8                       	movl	%ecx, %eax
100003994: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000399a: 89 45 cc                    	movl	%eax, -52(%rbp)
10000399d: 85 d2                       	testl	%edx, %edx
10000399f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
1000039a1: 45 31 f6                    	xorl	%r14d, %r14d
1000039a4: 8b 45 d4                    	movl	-44(%rbp), %eax
1000039a7: 41 89 c7                    	movl	%eax, %r15d
1000039aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000039b0: 44 89 ff                    	movl	%r15d, %edi
1000039b3: 4c 01 e7                    	addq	%r12, %rdi
1000039b6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
1000039bd: e8 fe 0a 00 00              	callq	2814 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000039c2: 0f bf d8                    	movswl	%ax, %ebx
1000039c5: 48 8b 45 90                 	movq	-112(%rbp), %rax
1000039c9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000039cd: 4c 01 e7                    	addq	%r12, %rdi
1000039d0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
1000039d7: e8 e4 0a 00 00              	callq	2788 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000039dc: 44 0f bf e8                 	movswl	%ax, %r13d
1000039e0: 41 01 dd                    	addl	%ebx, %r13d
1000039e3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000039e7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000039eb: 4c 01 e7                    	addq	%r12, %rdi
1000039ee: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000039f5: e8 c6 0a 00 00              	callq	2758 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000039fa: 44 8b 5d 20                 	movl	32(%rbp), %r11d
1000039fe: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003a05: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
100003a09: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
100003a0d: 98                          	cwtl
100003a0e: 44 01 e8                    	addl	%r13d, %eax
100003a11: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100003a15: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003a1c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003a21: 01 c1                       	addl	%eax, %ecx
100003a23: 41 0f af c8                 	imull	%r8d, %ecx
100003a27: 89 cf                       	movl	%ecx, %edi
100003a29: c1 ff 1f                    	sarl	$31, %edi
100003a2c: c1 ef 12                    	shrl	$18, %edi
100003a2f: 01 cf                       	addl	%ecx, %edi
100003a31: c1 ff 0e                    	sarl	$14, %edi
100003a34: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003a3a: b8 7f 00 00 00              	movl	$127, %eax
100003a3f: 0f 4d f8                    	cmovgel	%eax, %edi
100003a42: 44 89 f0                    	movl	%r14d, %eax
100003a45: 31 d2                       	xorl	%edx, %edx
100003a47: 41 f7 f3                    	divl	%r11d
100003a4a: 89 c1                       	movl	%eax, %ecx
100003a4c: 8b 45 cc                    	movl	-52(%rbp), %eax
100003a4f: 31 d2                       	xorl	%edx, %edx
100003a51: 41 f7 f3                    	divl	%r11d
100003a54: 89 c6                       	movl	%eax, %esi
100003a56: 8b 45 18                    	movl	24(%rbp), %eax
100003a59: 8b 5d b4                    	movl	-76(%rbp), %ebx
100003a5c: 31 d2                       	xorl	%edx, %edx
100003a5e: 41 f7 f3                    	divl	%r11d
100003a61: 8b 55 b0                    	movl	-80(%rbp), %edx
100003a64: 01 de                       	addl	%ebx, %esi
100003a66: 0f af c6                    	imull	%esi, %eax
100003a69: be 81 00 00 00              	movl	$129, %esi
100003a6e: 01 d9                       	addl	%ebx, %ecx
100003a70: 01 c1                       	addl	%eax, %ecx
100003a72: 41 0f af c9                 	imull	%r9d, %ecx
100003a76: 03 4d c0                    	addl	-64(%rbp), %ecx
100003a79: 83 ff 81                    	cmpl	$-127, %edi
100003a7c: 0f 4e fe                    	cmovlel	%esi, %edi
100003a7f: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003a83: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003a87: 45 01 de                    	addl	%r11d, %r14d
100003a8a: 45 01 ef                    	addl	%r13d, %r15d
100003a8d: 41 39 d6                    	cmpl	%edx, %r14d
100003a90: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100003a96: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003a9b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003aa2: 5b                          	popq	%rbx
100003aa3: 41 5c                       	popq	%r12
100003aa5: 41 5d                       	popq	%r13
100003aa7: 41 5e                       	popq	%r14
100003aa9: 41 5f                       	popq	%r15
100003aab: 5d                          	popq	%rbp
100003aac: c3                          	retq
100003aad: 0f 1f 00                    	nopl	(%rax)

0000000100003ab0 __Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003ab0: 55                          	pushq	%rbp
100003ab1: 48 89 e5                    	movq	%rsp, %rbp
100003ab4: 41 57                       	pushq	%r15
100003ab6: 41 56                       	pushq	%r14
100003ab8: 41 55                       	pushq	%r13
100003aba: 41 54                       	pushq	%r12
100003abc: 53                          	pushq	%rbx
100003abd: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003ac4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003ac8: 45 85 c9                    	testl	%r9d, %r9d
100003acb: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003ad1: 49 89 d2                    	movq	%rdx, %r10
100003ad4: 49 89 f4                    	movq	%rsi, %r12
100003ad7: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003adb: 8b 45 18                    	movl	24(%rbp), %eax
100003ade: 8b 55 10                    	movl	16(%rbp), %edx
100003ae1: 44 89 d9                    	movl	%r11d, %ecx
100003ae4: d1 e9                       	shrl	%ecx
100003ae6: 29 ca                       	subl	%ecx, %edx
100003ae8: 83 c2 fe                    	addl	$-2, %edx
100003aeb: 89 55 d0                    	movl	%edx, -48(%rbp)
100003aee: 89 c2                       	movl	%eax, %edx
100003af0: 29 ca                       	subl	%ecx, %edx
100003af2: 83 c2 fe                    	addl	$-2, %edx
100003af5: bb 01 00 00 00              	movl	$1, %ebx
100003afa: 29 cb                       	subl	%ecx, %ebx
100003afc: 44 89 c9                    	movl	%r9d, %ecx
100003aff: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003b03: 89 c1                       	movl	%eax, %ecx
100003b05: c1 e1 04                    	shll	$4, %ecx
100003b08: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003b0c: 44 89 d9                    	movl	%r11d, %ecx
100003b0f: 0f af c8                    	imull	%eax, %ecx
100003b12: c1 e1 03                    	shll	$3, %ecx
100003b15: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003b18: 46 8d 2c dd 00 00 00 00     	leal	(,%r11,8), %r13d
100003b20: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003b27: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003b2b: 31 c0                       	xorl	%eax, %eax
100003b2d: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
100003b31: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003b35: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003b3c: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003b40: 89 55 b0                    	movl	%edx, -80(%rbp)
100003b43: 89 5d b4                    	movl	%ebx, -76(%rbp)
100003b46: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
100003b4a: eb 15                       	jmp	21 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
100003b4c: 0f 1f 40 00                 	nopl	(%rax)
100003b50: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003b54: 48 ff c0                    	incq	%rax
100003b57: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003b5b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003b61: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003b65: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003b69: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003b6b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003b6f: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003b76: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003b79: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003b7d: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003b81: 49 8d 44 0e 18              	leaq	24(%r14,%rcx), %rax
100003b86: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003b8d: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003b94: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003b98: 48 83 c0 30                 	addq	$48, %rax
100003b9c: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003ba3: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003baa: 31 c0                       	xorl	%eax, %eax
100003bac: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003bb3: eb 25                       	jmp	37 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100003bb5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003bbf: 90                          	nop
100003bc0: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003bc3: 44 01 d9                    	addl	%r11d, %ecx
100003bc6: 8b 45 d4                    	movl	-44(%rbp), %eax
100003bc9: 03 45 bc                    	addl	-68(%rbp), %eax
100003bcc: 89 45 d4                    	movl	%eax, -44(%rbp)
100003bcf: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003bd2: 89 c8                       	movl	%ecx, %eax
100003bd4: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003bda: 89 45 cc                    	movl	%eax, -52(%rbp)
100003bdd: 85 d2                       	testl	%edx, %edx
100003bdf: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003be1: 45 31 f6                    	xorl	%r14d, %r14d
100003be4: 8b 45 d4                    	movl	-44(%rbp), %eax
100003be7: 41 89 c7                    	movl	%eax, %r15d
100003bea: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100003bf0: 44 89 ff                    	movl	%r15d, %edi
100003bf3: 4c 01 e7                    	addq	%r12, %rdi
100003bf6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003bfd: e8 2e 09 00 00              	callq	2350 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003c02: 0f bf d8                    	movswl	%ax, %ebx
100003c05: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003c09: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003c0d: 4c 01 e7                    	addq	%r12, %rdi
100003c10: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003c17: e8 14 09 00 00              	callq	2324 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003c1c: 44 0f bf e8                 	movswl	%ax, %r13d
100003c20: 41 01 dd                    	addl	%ebx, %r13d
100003c23: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003c27: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003c2b: 4c 01 e7                    	addq	%r12, %rdi
100003c2e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003c35: e8 f6 08 00 00              	callq	2294 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003c3a: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003c3e: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003c45: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
100003c49: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
100003c4d: 98                          	cwtl
100003c4e: 44 01 e8                    	addl	%r13d, %eax
100003c51: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100003c55: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003c5c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003c61: 01 c1                       	addl	%eax, %ecx
100003c63: 41 0f af c8                 	imull	%r8d, %ecx
100003c67: 89 cf                       	movl	%ecx, %edi
100003c69: c1 ff 1f                    	sarl	$31, %edi
100003c6c: c1 ef 12                    	shrl	$18, %edi
100003c6f: 01 cf                       	addl	%ecx, %edi
100003c71: c1 ff 0e                    	sarl	$14, %edi
100003c74: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003c7a: b8 7f 00 00 00              	movl	$127, %eax
100003c7f: 0f 4d f8                    	cmovgel	%eax, %edi
100003c82: 44 89 f0                    	movl	%r14d, %eax
100003c85: 31 d2                       	xorl	%edx, %edx
100003c87: 41 f7 f3                    	divl	%r11d
100003c8a: 89 c1                       	movl	%eax, %ecx
100003c8c: 8b 45 cc                    	movl	-52(%rbp), %eax
100003c8f: 31 d2                       	xorl	%edx, %edx
100003c91: 41 f7 f3                    	divl	%r11d
100003c94: 89 c6                       	movl	%eax, %esi
100003c96: 8b 45 18                    	movl	24(%rbp), %eax
100003c99: 8b 5d b4                    	movl	-76(%rbp), %ebx
100003c9c: 31 d2                       	xorl	%edx, %edx
100003c9e: 41 f7 f3                    	divl	%r11d
100003ca1: 8b 55 b0                    	movl	-80(%rbp), %edx
100003ca4: 01 de                       	addl	%ebx, %esi
100003ca6: 0f af c6                    	imull	%esi, %eax
100003ca9: be 81 00 00 00              	movl	$129, %esi
100003cae: 01 d9                       	addl	%ebx, %ecx
100003cb0: 01 c1                       	addl	%eax, %ecx
100003cb2: 41 0f af c9                 	imull	%r9d, %ecx
100003cb6: 03 4d c0                    	addl	-64(%rbp), %ecx
100003cb9: 83 ff 81                    	cmpl	$-127, %edi
100003cbc: 0f 4e fe                    	cmovlel	%esi, %edi
100003cbf: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003cc3: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003cc7: 45 01 de                    	addl	%r11d, %r14d
100003cca: 45 01 ef                    	addl	%r13d, %r15d
100003ccd: 41 39 d6                    	cmpl	%edx, %r14d
100003cd0: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100003cd6: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003cdb: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003ce2: 5b                          	popq	%rbx
100003ce3: 41 5c                       	popq	%r12
100003ce5: 41 5d                       	popq	%r13
100003ce7: 41 5e                       	popq	%r14
100003ce9: 41 5f                       	popq	%r15
100003ceb: 5d                          	popq	%rbp
100003cec: c3                          	retq
100003ced: 0f 1f 00                    	nopl	(%rax)

0000000100003cf0 __Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj:
100003cf0: 55                          	pushq	%rbp
100003cf1: 48 89 e5                    	movq	%rsp, %rbp
100003cf4: 41 57                       	pushq	%r15
100003cf6: 41 56                       	pushq	%r14
100003cf8: 41 55                       	pushq	%r13
100003cfa: 41 54                       	pushq	%r12
100003cfc: 53                          	pushq	%rbx
100003cfd: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003d04: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003d08: 45 85 c9                    	testl	%r9d, %r9d
100003d0b: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003d11: 49 89 d2                    	movq	%rdx, %r10
100003d14: 49 89 f4                    	movq	%rsi, %r12
100003d17: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003d1b: 8b 45 18                    	movl	24(%rbp), %eax
100003d1e: 8b 55 10                    	movl	16(%rbp), %edx
100003d21: 44 89 d9                    	movl	%r11d, %ecx
100003d24: d1 e9                       	shrl	%ecx
100003d26: 29 ca                       	subl	%ecx, %edx
100003d28: 83 c2 fe                    	addl	$-2, %edx
100003d2b: 89 55 d0                    	movl	%edx, -48(%rbp)
100003d2e: 89 c2                       	movl	%eax, %edx
100003d30: 29 ca                       	subl	%ecx, %edx
100003d32: 83 c2 fe                    	addl	$-2, %edx
100003d35: bb 01 00 00 00              	movl	$1, %ebx
100003d3a: 29 cb                       	subl	%ecx, %ebx
100003d3c: 44 89 c9                    	movl	%r9d, %ecx
100003d3f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003d43: 89 c1                       	movl	%eax, %ecx
100003d45: c1 e1 05                    	shll	$5, %ecx
100003d48: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003d4c: 44 89 d9                    	movl	%r11d, %ecx
100003d4f: 0f af c8                    	imull	%eax, %ecx
100003d52: c1 e1 04                    	shll	$4, %ecx
100003d55: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003d58: 45 89 dd                    	movl	%r11d, %r13d
100003d5b: 41 c1 e5 04                 	shll	$4, %r13d
100003d5f: c1 e0 04                    	shll	$4, %eax
100003d62: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003d66: 31 c0                       	xorl	%eax, %eax
100003d68: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
100003d6c: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003d70: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003d77: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003d7b: 89 55 b0                    	movl	%edx, -80(%rbp)
100003d7e: 89 5d b4                    	movl	%ebx, -76(%rbp)
100003d81: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
100003d85: eb 1a                       	jmp	26 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
100003d87: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100003d90: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003d94: 48 ff c0                    	incq	%rax
100003d97: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003d9b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003da1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003da5: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003da9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003dab: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003daf: c1 e0 04                    	shll	$4, %eax
100003db2: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003db5: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003db9: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003dbd: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003dc1: 48 83 c0 30                 	addq	$48, %rax
100003dc5: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003dcc: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003dd3: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003dd7: 48 83 c0 60                 	addq	$96, %rax
100003ddb: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003de2: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003de9: 31 c0                       	xorl	%eax, %eax
100003deb: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003df2: eb 26                       	jmp	38 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100003df4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003dfe: 66 90                       	nop
100003e00: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003e03: 44 01 d9                    	addl	%r11d, %ecx
100003e06: 8b 45 d4                    	movl	-44(%rbp), %eax
100003e09: 03 45 bc                    	addl	-68(%rbp), %eax
100003e0c: 89 45 d4                    	movl	%eax, -44(%rbp)
100003e0f: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003e12: 89 c8                       	movl	%ecx, %eax
100003e14: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003e1a: 89 45 cc                    	movl	%eax, -52(%rbp)
100003e1d: 85 d2                       	testl	%edx, %edx
100003e1f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003e21: 45 31 f6                    	xorl	%r14d, %r14d
100003e24: 8b 45 d4                    	movl	-44(%rbp), %eax
100003e27: 41 89 c7                    	movl	%eax, %r15d
100003e2a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100003e30: 44 89 ff                    	movl	%r15d, %edi
100003e33: 4c 01 e7                    	addq	%r12, %rdi
100003e36: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003e3d: e8 9e 07 00 00              	callq	1950 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003e42: 0f bf d8                    	movswl	%ax, %ebx
100003e45: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003e49: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003e4d: 4c 01 e7                    	addq	%r12, %rdi
100003e50: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003e57: e8 84 07 00 00              	callq	1924 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003e5c: 44 0f bf e8                 	movswl	%ax, %r13d
100003e60: 41 01 dd                    	addl	%ebx, %r13d
100003e63: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003e67: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003e6b: 4c 01 e7                    	addq	%r12, %rdi
100003e6e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003e75: e8 66 07 00 00              	callq	1894 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003e7a: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003e7e: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003e85: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
100003e89: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
100003e8d: 98                          	cwtl
100003e8e: 44 01 e8                    	addl	%r13d, %eax
100003e91: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100003e95: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003e9c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003ea1: 01 c1                       	addl	%eax, %ecx
100003ea3: 41 0f af c8                 	imull	%r8d, %ecx
100003ea7: 89 cf                       	movl	%ecx, %edi
100003ea9: c1 ff 1f                    	sarl	$31, %edi
100003eac: c1 ef 12                    	shrl	$18, %edi
100003eaf: 01 cf                       	addl	%ecx, %edi
100003eb1: c1 ff 0e                    	sarl	$14, %edi
100003eb4: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003eba: b8 7f 00 00 00              	movl	$127, %eax
100003ebf: 0f 4d f8                    	cmovgel	%eax, %edi
100003ec2: 44 89 f0                    	movl	%r14d, %eax
100003ec5: 31 d2                       	xorl	%edx, %edx
100003ec7: 41 f7 f3                    	divl	%r11d
100003eca: 89 c1                       	movl	%eax, %ecx
100003ecc: 8b 45 cc                    	movl	-52(%rbp), %eax
100003ecf: 31 d2                       	xorl	%edx, %edx
100003ed1: 41 f7 f3                    	divl	%r11d
100003ed4: 89 c6                       	movl	%eax, %esi
100003ed6: 8b 45 18                    	movl	24(%rbp), %eax
100003ed9: 8b 5d b4                    	movl	-76(%rbp), %ebx
100003edc: 31 d2                       	xorl	%edx, %edx
100003ede: 41 f7 f3                    	divl	%r11d
100003ee1: 8b 55 b0                    	movl	-80(%rbp), %edx
100003ee4: 01 de                       	addl	%ebx, %esi
100003ee6: 0f af c6                    	imull	%esi, %eax
100003ee9: be 81 00 00 00              	movl	$129, %esi
100003eee: 01 d9                       	addl	%ebx, %ecx
100003ef0: 01 c1                       	addl	%eax, %ecx
100003ef2: 41 0f af c9                 	imull	%r9d, %ecx
100003ef6: 03 4d c0                    	addl	-64(%rbp), %ecx
100003ef9: 83 ff 81                    	cmpl	$-127, %edi
100003efc: 0f 4e fe                    	cmovlel	%esi, %edi
100003eff: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003f03: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003f07: 45 01 de                    	addl	%r11d, %r14d
100003f0a: 45 01 ef                    	addl	%r13d, %r15d
100003f0d: 41 39 d6                    	cmpl	%edx, %r14d
100003f10: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100003f16: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003f1b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003f22: 5b                          	popq	%rbx
100003f23: 41 5c                       	popq	%r12
100003f25: 41 5d                       	popq	%r13
100003f27: 41 5e                       	popq	%r14
100003f29: 41 5f                       	popq	%r15
100003f2b: 5d                          	popq	%rbp
100003f2c: c3                          	retq
100003f2d: 0f 1f 00                    	nopl	(%rax)

0000000100003f30 __Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj:
100003f30: 55                          	pushq	%rbp
100003f31: 48 89 e5                    	movq	%rsp, %rbp
100003f34: 41 57                       	pushq	%r15
100003f36: 41 56                       	pushq	%r14
100003f38: 41 55                       	pushq	%r13
100003f3a: 41 54                       	pushq	%r12
100003f3c: 53                          	pushq	%rbx
100003f3d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003f44: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003f48: 45 85 c9                    	testl	%r9d, %r9d
100003f4b: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003f51: 49 89 d2                    	movq	%rdx, %r10
100003f54: 49 89 f4                    	movq	%rsi, %r12
100003f57: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003f5b: 8b 45 18                    	movl	24(%rbp), %eax
100003f5e: 8b 55 10                    	movl	16(%rbp), %edx
100003f61: 44 89 d9                    	movl	%r11d, %ecx
100003f64: d1 e9                       	shrl	%ecx
100003f66: 29 ca                       	subl	%ecx, %edx
100003f68: 83 c2 fe                    	addl	$-2, %edx
100003f6b: 89 55 d0                    	movl	%edx, -48(%rbp)
100003f6e: 89 c2                       	movl	%eax, %edx
100003f70: 29 ca                       	subl	%ecx, %edx
100003f72: 83 c2 fe                    	addl	$-2, %edx
100003f75: bb 01 00 00 00              	movl	$1, %ebx
100003f7a: 29 cb                       	subl	%ecx, %ebx
100003f7c: 44 89 c9                    	movl	%r9d, %ecx
100003f7f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003f83: 89 c1                       	movl	%eax, %ecx
100003f85: c1 e1 06                    	shll	$6, %ecx
100003f88: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003f8c: 44 89 d9                    	movl	%r11d, %ecx
100003f8f: 0f af c8                    	imull	%eax, %ecx
100003f92: c1 e1 05                    	shll	$5, %ecx
100003f95: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003f98: 45 89 dd                    	movl	%r11d, %r13d
100003f9b: 41 c1 e5 05                 	shll	$5, %r13d
100003f9f: c1 e0 05                    	shll	$5, %eax
100003fa2: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003fa6: 31 c0                       	xorl	%eax, %eax
100003fa8: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
100003fac: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003fb0: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003fb7: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003fbb: 89 55 b0                    	movl	%edx, -80(%rbp)
100003fbe: 89 5d b4                    	movl	%ebx, -76(%rbp)
100003fc1: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
100003fc5: eb 1a                       	jmp	26 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
100003fc7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100003fd0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003fd4: 48 ff c0                    	incq	%rax
100003fd7: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003fdb: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003fe1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003fe5: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003fe9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003feb: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003fef: c1 e0 05                    	shll	$5, %eax
100003ff2: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003ff5: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003ff9: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003ffd: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100004001: 48 83 c0 60                 	addq	$96, %rax
100004005: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000400c: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100004013: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100004017: 48 05 c0 00 00 00           	addq	$192, %rax
10000401d: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100004024: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000402b: 31 c0                       	xorl	%eax, %eax
10000402d: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100004034: eb 24                       	jmp	36 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100004036: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004040: 8b 4d cc                    	movl	-52(%rbp), %ecx
100004043: 44 01 d9                    	addl	%r11d, %ecx
100004046: 8b 45 d4                    	movl	-44(%rbp), %eax
100004049: 03 45 bc                    	addl	-68(%rbp), %eax
10000404c: 89 45 d4                    	movl	%eax, -44(%rbp)
10000404f: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100004052: 89 c8                       	movl	%ecx, %eax
100004054: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000405a: 89 45 cc                    	movl	%eax, -52(%rbp)
10000405d: 85 d2                       	testl	%edx, %edx
10000405f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100004061: 45 31 f6                    	xorl	%r14d, %r14d
100004064: 8b 45 d4                    	movl	-44(%rbp), %eax
100004067: 41 89 c7                    	movl	%eax, %r15d
10000406a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100004070: 44 89 ff                    	movl	%r15d, %edi
100004073: 4c 01 e7                    	addq	%r12, %rdi
100004076: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
10000407d: e8 de 07 00 00              	callq	2014 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100004082: 0f bf d8                    	movswl	%ax, %ebx
100004085: 48 8b 45 90                 	movq	-112(%rbp), %rax
100004089: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000408d: 4c 01 e7                    	addq	%r12, %rdi
100004090: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100004097: e8 c4 07 00 00              	callq	1988 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
10000409c: 44 0f bf e8                 	movswl	%ax, %r13d
1000040a0: 41 01 dd                    	addl	%ebx, %r13d
1000040a3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000040a7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000040ab: 4c 01 e7                    	addq	%r12, %rdi
1000040ae: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000040b5: e8 a6 07 00 00              	callq	1958 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
1000040ba: 44 8b 5d 20                 	movl	32(%rbp), %r11d
1000040be: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
1000040c5: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
1000040c9: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
1000040cd: 98                          	cwtl
1000040ce: 44 01 e8                    	addl	%r13d, %eax
1000040d1: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
1000040d5: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
1000040dc: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
1000040e1: 01 c1                       	addl	%eax, %ecx
1000040e3: 41 0f af c8                 	imull	%r8d, %ecx
1000040e7: 89 cf                       	movl	%ecx, %edi
1000040e9: c1 ff 1f                    	sarl	$31, %edi
1000040ec: c1 ef 12                    	shrl	$18, %edi
1000040ef: 01 cf                       	addl	%ecx, %edi
1000040f1: c1 ff 0e                    	sarl	$14, %edi
1000040f4: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000040fa: b8 7f 00 00 00              	movl	$127, %eax
1000040ff: 0f 4d f8                    	cmovgel	%eax, %edi
100004102: 44 89 f0                    	movl	%r14d, %eax
100004105: 31 d2                       	xorl	%edx, %edx
100004107: 41 f7 f3                    	divl	%r11d
10000410a: 89 c1                       	movl	%eax, %ecx
10000410c: 8b 45 cc                    	movl	-52(%rbp), %eax
10000410f: 31 d2                       	xorl	%edx, %edx
100004111: 41 f7 f3                    	divl	%r11d
100004114: 89 c6                       	movl	%eax, %esi
100004116: 8b 45 18                    	movl	24(%rbp), %eax
100004119: 8b 5d b4                    	movl	-76(%rbp), %ebx
10000411c: 31 d2                       	xorl	%edx, %edx
10000411e: 41 f7 f3                    	divl	%r11d
100004121: 8b 55 b0                    	movl	-80(%rbp), %edx
100004124: 01 de                       	addl	%ebx, %esi
100004126: 0f af c6                    	imull	%esi, %eax
100004129: be 81 00 00 00              	movl	$129, %esi
10000412e: 01 d9                       	addl	%ebx, %ecx
100004130: 01 c1                       	addl	%eax, %ecx
100004132: 41 0f af c9                 	imull	%r9d, %ecx
100004136: 03 4d c0                    	addl	-64(%rbp), %ecx
100004139: 83 ff 81                    	cmpl	$-127, %edi
10000413c: 0f 4e fe                    	cmovlel	%esi, %edi
10000413f: 48 8b 45 80                 	movq	-128(%rbp), %rax
100004143: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100004147: 45 01 de                    	addl	%r11d, %r14d
10000414a: 45 01 ef                    	addl	%r13d, %r15d
10000414d: 41 39 d6                    	cmpl	%edx, %r14d
100004150: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100004156: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000415b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100004162: 5b                          	popq	%rbx
100004163: 41 5c                       	popq	%r12
100004165: 41 5d                       	popq	%r13
100004167: 41 5e                       	popq	%r14
100004169: 41 5f                       	popq	%r15
10000416b: 5d                          	popq	%rbp
10000416c: c3                          	retq
10000416d: 0f 1f 00                    	nopl	(%rax)

0000000100004170 __Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj:
100004170: 55                          	pushq	%rbp
100004171: 48 89 e5                    	movq	%rsp, %rbp
100004174: 41 57                       	pushq	%r15
100004176: 41 56                       	pushq	%r14
100004178: 41 55                       	pushq	%r13
10000417a: 41 54                       	pushq	%r12
10000417c: 53                          	pushq	%rbx
10000417d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100004184: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100004188: 45 85 c9                    	testl	%r9d, %r9d
10000418b: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100004191: 49 89 d2                    	movq	%rdx, %r10
100004194: 49 89 f4                    	movq	%rsi, %r12
100004197: 44 8b 5d 20                 	movl	32(%rbp), %r11d
10000419b: 8b 45 18                    	movl	24(%rbp), %eax
10000419e: 8b 55 10                    	movl	16(%rbp), %edx
1000041a1: 44 89 d9                    	movl	%r11d, %ecx
1000041a4: d1 e9                       	shrl	%ecx
1000041a6: 29 ca                       	subl	%ecx, %edx
1000041a8: 83 c2 fe                    	addl	$-2, %edx
1000041ab: 89 55 d0                    	movl	%edx, -48(%rbp)
1000041ae: 89 c2                       	movl	%eax, %edx
1000041b0: 29 ca                       	subl	%ecx, %edx
1000041b2: 83 c2 fe                    	addl	$-2, %edx
1000041b5: bb 01 00 00 00              	movl	$1, %ebx
1000041ba: 29 cb                       	subl	%ecx, %ebx
1000041bc: 44 89 c9                    	movl	%r9d, %ecx
1000041bf: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000041c3: 89 c1                       	movl	%eax, %ecx
1000041c5: c1 e1 07                    	shll	$7, %ecx
1000041c8: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000041cc: 44 89 d9                    	movl	%r11d, %ecx
1000041cf: 0f af c8                    	imull	%eax, %ecx
1000041d2: c1 e1 06                    	shll	$6, %ecx
1000041d5: 89 4d bc                    	movl	%ecx, -68(%rbp)
1000041d8: 45 89 dd                    	movl	%r11d, %r13d
1000041db: 41 c1 e5 06                 	shll	$6, %r13d
1000041df: c1 e0 06                    	shll	$6, %eax
1000041e2: 48 89 45 90                 	movq	%rax, -112(%rbp)
1000041e6: 31 c0                       	xorl	%eax, %eax
1000041e8: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
1000041ec: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
1000041f0: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
1000041f7: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
1000041fb: 89 55 b0                    	movl	%edx, -80(%rbp)
1000041fe: 89 5d b4                    	movl	%ebx, -76(%rbp)
100004201: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
100004205: eb 1a                       	jmp	26 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
100004207: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100004210: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004214: 48 ff c0                    	incq	%rax
100004217: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
10000421b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100004221: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004225: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100004229: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000422b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000422f: c1 e0 06                    	shll	$6, %eax
100004232: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100004235: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100004239: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
10000423d: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100004241: 48 05 c0 00 00 00           	addq	$192, %rax
100004247: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000424e: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100004255: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100004259: 48 05 80 01 00 00           	addq	$384, %rax
10000425f: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100004266: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000426d: 31 c0                       	xorl	%eax, %eax
10000426f: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100004276: eb 22                       	jmp	34 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100004278: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100004280: 8b 4d cc                    	movl	-52(%rbp), %ecx
100004283: 44 01 d9                    	addl	%r11d, %ecx
100004286: 8b 45 d4                    	movl	-44(%rbp), %eax
100004289: 03 45 bc                    	addl	-68(%rbp), %eax
10000428c: 89 45 d4                    	movl	%eax, -44(%rbp)
10000428f: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100004292: 89 c8                       	movl	%ecx, %eax
100004294: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000429a: 89 45 cc                    	movl	%eax, -52(%rbp)
10000429d: 85 d2                       	testl	%edx, %edx
10000429f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
1000042a1: 45 31 f6                    	xorl	%r14d, %r14d
1000042a4: 8b 45 d4                    	movl	-44(%rbp), %eax
1000042a7: 41 89 c7                    	movl	%eax, %r15d
1000042aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000042b0: 44 89 ff                    	movl	%r15d, %edi
1000042b3: 4c 01 e7                    	addq	%r12, %rdi
1000042b6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
1000042bd: e8 9e 06 00 00              	callq	1694 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
1000042c2: 0f bf d8                    	movswl	%ax, %ebx
1000042c5: 48 8b 45 90                 	movq	-112(%rbp), %rax
1000042c9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000042cd: 4c 01 e7                    	addq	%r12, %rdi
1000042d0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
1000042d7: e8 84 06 00 00              	callq	1668 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
1000042dc: 44 0f bf e8                 	movswl	%ax, %r13d
1000042e0: 41 01 dd                    	addl	%ebx, %r13d
1000042e3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000042e7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000042eb: 4c 01 e7                    	addq	%r12, %rdi
1000042ee: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000042f5: e8 66 06 00 00              	callq	1638 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
1000042fa: 44 8b 5d 20                 	movl	32(%rbp), %r11d
1000042fe: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100004305: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
100004309: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
10000430d: 98                          	cwtl
10000430e: 44 01 e8                    	addl	%r13d, %eax
100004311: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100004315: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000431c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100004321: 01 c1                       	addl	%eax, %ecx
100004323: 41 0f af c8                 	imull	%r8d, %ecx
100004327: 89 cf                       	movl	%ecx, %edi
100004329: c1 ff 1f                    	sarl	$31, %edi
10000432c: c1 ef 12                    	shrl	$18, %edi
10000432f: 01 cf                       	addl	%ecx, %edi
100004331: c1 ff 0e                    	sarl	$14, %edi
100004334: 81 ff 80 00 00 00           	cmpl	$128, %edi
10000433a: b8 7f 00 00 00              	movl	$127, %eax
10000433f: 0f 4d f8                    	cmovgel	%eax, %edi
100004342: 44 89 f0                    	movl	%r14d, %eax
100004345: 31 d2                       	xorl	%edx, %edx
100004347: 41 f7 f3                    	divl	%r11d
10000434a: 89 c1                       	movl	%eax, %ecx
10000434c: 8b 45 cc                    	movl	-52(%rbp), %eax
10000434f: 31 d2                       	xorl	%edx, %edx
100004351: 41 f7 f3                    	divl	%r11d
100004354: 89 c6                       	movl	%eax, %esi
100004356: 8b 45 18                    	movl	24(%rbp), %eax
100004359: 8b 5d b4                    	movl	-76(%rbp), %ebx
10000435c: 31 d2                       	xorl	%edx, %edx
10000435e: 41 f7 f3                    	divl	%r11d
100004361: 8b 55 b0                    	movl	-80(%rbp), %edx
100004364: 01 de                       	addl	%ebx, %esi
100004366: 0f af c6                    	imull	%esi, %eax
100004369: be 81 00 00 00              	movl	$129, %esi
10000436e: 01 d9                       	addl	%ebx, %ecx
100004370: 01 c1                       	addl	%eax, %ecx
100004372: 41 0f af c9                 	imull	%r9d, %ecx
100004376: 03 4d c0                    	addl	-64(%rbp), %ecx
100004379: 83 ff 81                    	cmpl	$-127, %edi
10000437c: 0f 4e fe                    	cmovlel	%esi, %edi
10000437f: 48 8b 45 80                 	movq	-128(%rbp), %rax
100004383: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100004387: 45 01 de                    	addl	%r11d, %r14d
10000438a: 45 01 ef                    	addl	%r13d, %r15d
10000438d: 41 39 d6                    	cmpl	%edx, %r14d
100004390: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100004396: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000439b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
1000043a2: 5b                          	popq	%rbx
1000043a3: 41 5c                       	popq	%r12
1000043a5: 41 5d                       	popq	%r13
1000043a7: 41 5e                       	popq	%r14
1000043a9: 41 5f                       	popq	%r15
1000043ab: 5d                          	popq	%rbp
1000043ac: c3                          	retq
1000043ad: 0f 1f 00                    	nopl	(%rax)

00000001000043b0 __Z11microkernelILj1ELj32EasET2_PKT1_S3_:
1000043b0: 55                          	pushq	%rbp
1000043b1: 48 89 e5                    	movq	%rsp, %rbp
1000043b4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
1000043b9: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
1000043bf: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
1000043c4: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000043c8: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
1000043ce: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000043d2: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000043d6: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000043dc: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043e0: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000043e5: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043e9: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000043ee: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043f2: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000043f7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043fb: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000043ff: 98                          	cwtl
100004400: 5d                          	popq	%rbp
100004401: c5 f8 77                    	vzeroupper
100004404: c3                          	retq
100004405: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000440f: 90                          	nop

0000000100004410 __Z11microkernelILj1ELj64EasET2_PKT1_S3_:
100004410: 55                          	pushq	%rbp
100004411: 48 89 e5                    	movq	%rsp, %rbp
100004414: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004419: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000441f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004424: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004428: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000442e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004432: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004436: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000443c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004440: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004445: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004449: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000444e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004452: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004457: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000445b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000445f: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
100004465: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
10000446b: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004471: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004475: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
10000447b: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
10000447f: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004483: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004489: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000448d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004492: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004496: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000449b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000449f: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000044a4: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044a8: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000044ac: 01 c1                       	addl	%eax, %ecx
1000044ae: 0f bf c1                    	movswl	%cx, %eax
1000044b1: 5d                          	popq	%rbp
1000044b2: c5 f8 77                    	vzeroupper
1000044b5: c3                          	retq
1000044b6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000044c0 __Z11microkernelILj3ELj4EasET2_PKT1_S3_:
1000044c0: 55                          	pushq	%rbp
1000044c1: 48 89 e5                    	movq	%rsp, %rbp
1000044c4: c4 e2 79 20 06              	vpmovsxbw	(%rsi), %xmm0
1000044c9: c4 e2 79 20 0f              	vpmovsxbw	(%rdi), %xmm1
1000044ce: c5 f1 d5 c0                 	vpmullw	%xmm0, %xmm1, %xmm0
1000044d2: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000044d7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044db: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000044e0: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044e4: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000044e9: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044ed: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000044f1: 0f be 4e 08                 	movsbl	8(%rsi), %ecx
1000044f5: 0f be 57 08                 	movsbl	8(%rdi), %edx
1000044f9: 0f af d1                    	imull	%ecx, %edx
1000044fc: 01 c2                       	addl	%eax, %edx
1000044fe: 0f be 46 09                 	movsbl	9(%rsi), %eax
100004502: 0f be 4f 09                 	movsbl	9(%rdi), %ecx
100004506: 0f af c8                    	imull	%eax, %ecx
100004509: 01 d1                       	addl	%edx, %ecx
10000450b: 0f be 46 0a                 	movsbl	10(%rsi), %eax
10000450f: 0f be 57 0a                 	movsbl	10(%rdi), %edx
100004513: 0f af d0                    	imull	%eax, %edx
100004516: 01 ca                       	addl	%ecx, %edx
100004518: 0f be 46 0b                 	movsbl	11(%rsi), %eax
10000451c: 0f be 4f 0b                 	movsbl	11(%rdi), %ecx
100004520: 0f af c8                    	imull	%eax, %ecx
100004523: 01 d1                       	addl	%edx, %ecx
100004525: 0f bf c1                    	movswl	%cx, %eax
100004528: 5d                          	popq	%rbp
100004529: c3                          	retq
10000452a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100004530 __Z11microkernelILj3ELj8EasET2_PKT1_S3_:
100004530: 55                          	pushq	%rbp
100004531: 48 89 e5                    	movq	%rsp, %rbp
100004534: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004539: c4 e2 7d 20 0f              	vpmovsxbw	(%rdi), %ymm1
10000453e: c5 f5 d5 c0                 	vpmullw	%ymm0, %ymm1, %ymm0
100004542: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004548: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000454c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004551: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004555: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000455a: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000455e: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004563: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004567: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000456b: 0f be 4e 10                 	movsbl	16(%rsi), %ecx
10000456f: 0f be 57 10                 	movsbl	16(%rdi), %edx
100004573: 0f af d1                    	imull	%ecx, %edx
100004576: 01 c2                       	addl	%eax, %edx
100004578: 0f be 46 11                 	movsbl	17(%rsi), %eax
10000457c: 0f be 4f 11                 	movsbl	17(%rdi), %ecx
100004580: 0f af c8                    	imull	%eax, %ecx
100004583: 01 d1                       	addl	%edx, %ecx
100004585: 0f be 46 12                 	movsbl	18(%rsi), %eax
100004589: 0f be 57 12                 	movsbl	18(%rdi), %edx
10000458d: 0f af d0                    	imull	%eax, %edx
100004590: 01 ca                       	addl	%ecx, %edx
100004592: 0f be 46 13                 	movsbl	19(%rsi), %eax
100004596: 0f be 4f 13                 	movsbl	19(%rdi), %ecx
10000459a: 0f af c8                    	imull	%eax, %ecx
10000459d: 01 d1                       	addl	%edx, %ecx
10000459f: 0f be 46 14                 	movsbl	20(%rsi), %eax
1000045a3: 0f be 57 14                 	movsbl	20(%rdi), %edx
1000045a7: 0f af d0                    	imull	%eax, %edx
1000045aa: 01 ca                       	addl	%ecx, %edx
1000045ac: 0f be 46 15                 	movsbl	21(%rsi), %eax
1000045b0: 0f be 4f 15                 	movsbl	21(%rdi), %ecx
1000045b4: 0f af c8                    	imull	%eax, %ecx
1000045b7: 01 d1                       	addl	%edx, %ecx
1000045b9: 0f be 46 16                 	movsbl	22(%rsi), %eax
1000045bd: 0f be 57 16                 	movsbl	22(%rdi), %edx
1000045c1: 0f af d0                    	imull	%eax, %edx
1000045c4: 01 ca                       	addl	%ecx, %edx
1000045c6: 0f be 46 17                 	movsbl	23(%rsi), %eax
1000045ca: 0f be 4f 17                 	movsbl	23(%rdi), %ecx
1000045ce: 0f af c8                    	imull	%eax, %ecx
1000045d1: 01 d1                       	addl	%edx, %ecx
1000045d3: 0f bf c1                    	movswl	%cx, %eax
1000045d6: 5d                          	popq	%rbp
1000045d7: c5 f8 77                    	vzeroupper
1000045da: c3                          	retq
1000045db: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000045e0 __Z11microkernelILj3ELj16EasET2_PKT1_S3_:
1000045e0: 55                          	pushq	%rbp
1000045e1: 48 89 e5                    	movq	%rsp, %rbp
1000045e4: 0f be 06                    	movsbl	(%rsi), %eax
1000045e7: 0f be 0f                    	movsbl	(%rdi), %ecx
1000045ea: 0f af c8                    	imull	%eax, %ecx
1000045ed: 0f be 46 01                 	movsbl	1(%rsi), %eax
1000045f1: 0f be 57 01                 	movsbl	1(%rdi), %edx
1000045f5: 0f af d0                    	imull	%eax, %edx
1000045f8: 01 ca                       	addl	%ecx, %edx
1000045fa: 0f be 46 02                 	movsbl	2(%rsi), %eax
1000045fe: 0f be 4f 02                 	movsbl	2(%rdi), %ecx
100004602: 0f af c8                    	imull	%eax, %ecx
100004605: 01 d1                       	addl	%edx, %ecx
100004607: 0f be 46 03                 	movsbl	3(%rsi), %eax
10000460b: 0f be 57 03                 	movsbl	3(%rdi), %edx
10000460f: 0f af d0                    	imull	%eax, %edx
100004612: 01 ca                       	addl	%ecx, %edx
100004614: 0f be 46 04                 	movsbl	4(%rsi), %eax
100004618: 0f be 4f 04                 	movsbl	4(%rdi), %ecx
10000461c: 0f af c8                    	imull	%eax, %ecx
10000461f: 01 d1                       	addl	%edx, %ecx
100004621: 0f be 46 05                 	movsbl	5(%rsi), %eax
100004625: 0f be 57 05                 	movsbl	5(%rdi), %edx
100004629: 0f af d0                    	imull	%eax, %edx
10000462c: 01 ca                       	addl	%ecx, %edx
10000462e: 0f be 46 06                 	movsbl	6(%rsi), %eax
100004632: 0f be 4f 06                 	movsbl	6(%rdi), %ecx
100004636: 0f af c8                    	imull	%eax, %ecx
100004639: 01 d1                       	addl	%edx, %ecx
10000463b: 0f be 46 07                 	movsbl	7(%rsi), %eax
10000463f: 0f be 57 07                 	movsbl	7(%rdi), %edx
100004643: 0f af d0                    	imull	%eax, %edx
100004646: 01 ca                       	addl	%ecx, %edx
100004648: 0f be 46 08                 	movsbl	8(%rsi), %eax
10000464c: 0f be 4f 08                 	movsbl	8(%rdi), %ecx
100004650: 0f af c8                    	imull	%eax, %ecx
100004653: 01 d1                       	addl	%edx, %ecx
100004655: 0f be 46 09                 	movsbl	9(%rsi), %eax
100004659: 0f be 57 09                 	movsbl	9(%rdi), %edx
10000465d: 0f af d0                    	imull	%eax, %edx
100004660: 01 ca                       	addl	%ecx, %edx
100004662: 0f be 46 0a                 	movsbl	10(%rsi), %eax
100004666: 0f be 4f 0a                 	movsbl	10(%rdi), %ecx
10000466a: 0f af c8                    	imull	%eax, %ecx
10000466d: 01 d1                       	addl	%edx, %ecx
10000466f: 0f be 46 0b                 	movsbl	11(%rsi), %eax
100004673: 0f be 57 0b                 	movsbl	11(%rdi), %edx
100004677: 0f af d0                    	imull	%eax, %edx
10000467a: 01 ca                       	addl	%ecx, %edx
10000467c: 0f be 46 0c                 	movsbl	12(%rsi), %eax
100004680: 0f be 4f 0c                 	movsbl	12(%rdi), %ecx
100004684: 0f af c8                    	imull	%eax, %ecx
100004687: 01 d1                       	addl	%edx, %ecx
100004689: 0f be 46 0d                 	movsbl	13(%rsi), %eax
10000468d: 0f be 57 0d                 	movsbl	13(%rdi), %edx
100004691: 0f af d0                    	imull	%eax, %edx
100004694: 01 ca                       	addl	%ecx, %edx
100004696: 0f be 46 0e                 	movsbl	14(%rsi), %eax
10000469a: 0f be 4f 0e                 	movsbl	14(%rdi), %ecx
10000469e: 0f af c8                    	imull	%eax, %ecx
1000046a1: 01 d1                       	addl	%edx, %ecx
1000046a3: 0f be 46 0f                 	movsbl	15(%rsi), %eax
1000046a7: 0f be 57 0f                 	movsbl	15(%rdi), %edx
1000046ab: 0f af d0                    	imull	%eax, %edx
1000046ae: 01 ca                       	addl	%ecx, %edx
1000046b0: 0f be 46 10                 	movsbl	16(%rsi), %eax
1000046b4: 0f be 4f 10                 	movsbl	16(%rdi), %ecx
1000046b8: 0f af c8                    	imull	%eax, %ecx
1000046bb: 01 d1                       	addl	%edx, %ecx
1000046bd: 0f be 46 11                 	movsbl	17(%rsi), %eax
1000046c1: 0f be 57 11                 	movsbl	17(%rdi), %edx
1000046c5: 0f af d0                    	imull	%eax, %edx
1000046c8: 01 ca                       	addl	%ecx, %edx
1000046ca: 0f be 46 12                 	movsbl	18(%rsi), %eax
1000046ce: 0f be 4f 12                 	movsbl	18(%rdi), %ecx
1000046d2: 0f af c8                    	imull	%eax, %ecx
1000046d5: 01 d1                       	addl	%edx, %ecx
1000046d7: 0f be 46 13                 	movsbl	19(%rsi), %eax
1000046db: 0f be 57 13                 	movsbl	19(%rdi), %edx
1000046df: 0f af d0                    	imull	%eax, %edx
1000046e2: 01 ca                       	addl	%ecx, %edx
1000046e4: 0f be 46 14                 	movsbl	20(%rsi), %eax
1000046e8: 0f be 4f 14                 	movsbl	20(%rdi), %ecx
1000046ec: 0f af c8                    	imull	%eax, %ecx
1000046ef: 01 d1                       	addl	%edx, %ecx
1000046f1: 0f be 46 15                 	movsbl	21(%rsi), %eax
1000046f5: 0f be 57 15                 	movsbl	21(%rdi), %edx
1000046f9: 0f af d0                    	imull	%eax, %edx
1000046fc: 01 ca                       	addl	%ecx, %edx
1000046fe: 0f be 46 16                 	movsbl	22(%rsi), %eax
100004702: 0f be 4f 16                 	movsbl	22(%rdi), %ecx
100004706: 0f af c8                    	imull	%eax, %ecx
100004709: 01 d1                       	addl	%edx, %ecx
10000470b: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000470f: 0f be 57 17                 	movsbl	23(%rdi), %edx
100004713: 0f af d0                    	imull	%eax, %edx
100004716: 01 ca                       	addl	%ecx, %edx
100004718: 0f be 46 18                 	movsbl	24(%rsi), %eax
10000471c: 0f be 4f 18                 	movsbl	24(%rdi), %ecx
100004720: 0f af c8                    	imull	%eax, %ecx
100004723: 01 d1                       	addl	%edx, %ecx
100004725: 0f be 46 19                 	movsbl	25(%rsi), %eax
100004729: 0f be 57 19                 	movsbl	25(%rdi), %edx
10000472d: 0f af d0                    	imull	%eax, %edx
100004730: 01 ca                       	addl	%ecx, %edx
100004732: 0f be 46 1a                 	movsbl	26(%rsi), %eax
100004736: 0f be 4f 1a                 	movsbl	26(%rdi), %ecx
10000473a: 0f af c8                    	imull	%eax, %ecx
10000473d: 01 d1                       	addl	%edx, %ecx
10000473f: 0f be 46 1b                 	movsbl	27(%rsi), %eax
100004743: 0f be 57 1b                 	movsbl	27(%rdi), %edx
100004747: 0f af d0                    	imull	%eax, %edx
10000474a: 01 ca                       	addl	%ecx, %edx
10000474c: 0f be 46 1c                 	movsbl	28(%rsi), %eax
100004750: 0f be 4f 1c                 	movsbl	28(%rdi), %ecx
100004754: 0f af c8                    	imull	%eax, %ecx
100004757: 01 d1                       	addl	%edx, %ecx
100004759: 0f be 46 1d                 	movsbl	29(%rsi), %eax
10000475d: 0f be 57 1d                 	movsbl	29(%rdi), %edx
100004761: 0f af d0                    	imull	%eax, %edx
100004764: 01 ca                       	addl	%ecx, %edx
100004766: 0f be 46 1e                 	movsbl	30(%rsi), %eax
10000476a: 0f be 4f 1e                 	movsbl	30(%rdi), %ecx
10000476e: 0f af c8                    	imull	%eax, %ecx
100004771: 01 d1                       	addl	%edx, %ecx
100004773: 0f be 46 1f                 	movsbl	31(%rsi), %eax
100004777: 0f be 57 1f                 	movsbl	31(%rdi), %edx
10000477b: 0f af d0                    	imull	%eax, %edx
10000477e: 01 ca                       	addl	%ecx, %edx
100004780: 0f be 46 20                 	movsbl	32(%rsi), %eax
100004784: 0f be 4f 20                 	movsbl	32(%rdi), %ecx
100004788: 0f af c8                    	imull	%eax, %ecx
10000478b: 01 d1                       	addl	%edx, %ecx
10000478d: 0f be 46 21                 	movsbl	33(%rsi), %eax
100004791: 0f be 57 21                 	movsbl	33(%rdi), %edx
100004795: 0f af d0                    	imull	%eax, %edx
100004798: 01 ca                       	addl	%ecx, %edx
10000479a: 0f be 46 22                 	movsbl	34(%rsi), %eax
10000479e: 0f be 4f 22                 	movsbl	34(%rdi), %ecx
1000047a2: 0f af c8                    	imull	%eax, %ecx
1000047a5: 01 d1                       	addl	%edx, %ecx
1000047a7: 0f be 46 23                 	movsbl	35(%rsi), %eax
1000047ab: 0f be 57 23                 	movsbl	35(%rdi), %edx
1000047af: 0f af d0                    	imull	%eax, %edx
1000047b2: 01 ca                       	addl	%ecx, %edx
1000047b4: 0f be 46 24                 	movsbl	36(%rsi), %eax
1000047b8: 0f be 4f 24                 	movsbl	36(%rdi), %ecx
1000047bc: 0f af c8                    	imull	%eax, %ecx
1000047bf: 01 d1                       	addl	%edx, %ecx
1000047c1: 0f be 46 25                 	movsbl	37(%rsi), %eax
1000047c5: 0f be 57 25                 	movsbl	37(%rdi), %edx
1000047c9: 0f af d0                    	imull	%eax, %edx
1000047cc: 01 ca                       	addl	%ecx, %edx
1000047ce: 0f be 46 26                 	movsbl	38(%rsi), %eax
1000047d2: 0f be 4f 26                 	movsbl	38(%rdi), %ecx
1000047d6: 0f af c8                    	imull	%eax, %ecx
1000047d9: 01 d1                       	addl	%edx, %ecx
1000047db: 0f be 46 27                 	movsbl	39(%rsi), %eax
1000047df: 0f be 57 27                 	movsbl	39(%rdi), %edx
1000047e3: 0f af d0                    	imull	%eax, %edx
1000047e6: 01 ca                       	addl	%ecx, %edx
1000047e8: 0f be 46 28                 	movsbl	40(%rsi), %eax
1000047ec: 0f be 4f 28                 	movsbl	40(%rdi), %ecx
1000047f0: 0f af c8                    	imull	%eax, %ecx
1000047f3: 01 d1                       	addl	%edx, %ecx
1000047f5: 0f be 46 29                 	movsbl	41(%rsi), %eax
1000047f9: 0f be 57 29                 	movsbl	41(%rdi), %edx
1000047fd: 0f af d0                    	imull	%eax, %edx
100004800: 01 ca                       	addl	%ecx, %edx
100004802: 0f be 46 2a                 	movsbl	42(%rsi), %eax
100004806: 0f be 4f 2a                 	movsbl	42(%rdi), %ecx
10000480a: 0f af c8                    	imull	%eax, %ecx
10000480d: 01 d1                       	addl	%edx, %ecx
10000480f: 0f be 46 2b                 	movsbl	43(%rsi), %eax
100004813: 0f be 57 2b                 	movsbl	43(%rdi), %edx
100004817: 0f af d0                    	imull	%eax, %edx
10000481a: 01 ca                       	addl	%ecx, %edx
10000481c: 0f be 46 2c                 	movsbl	44(%rsi), %eax
100004820: 0f be 4f 2c                 	movsbl	44(%rdi), %ecx
100004824: 0f af c8                    	imull	%eax, %ecx
100004827: 01 d1                       	addl	%edx, %ecx
100004829: 0f be 46 2d                 	movsbl	45(%rsi), %eax
10000482d: 0f be 57 2d                 	movsbl	45(%rdi), %edx
100004831: 0f af d0                    	imull	%eax, %edx
100004834: 01 ca                       	addl	%ecx, %edx
100004836: 0f be 46 2e                 	movsbl	46(%rsi), %eax
10000483a: 0f be 4f 2e                 	movsbl	46(%rdi), %ecx
10000483e: 0f af c8                    	imull	%eax, %ecx
100004841: 01 d1                       	addl	%edx, %ecx
100004843: 0f be 46 2f                 	movsbl	47(%rsi), %eax
100004847: 0f be 57 2f                 	movsbl	47(%rdi), %edx
10000484b: 0f af d0                    	imull	%eax, %edx
10000484e: 01 ca                       	addl	%ecx, %edx
100004850: 0f bf c2                    	movswl	%dx, %eax
100004853: 5d                          	popq	%rbp
100004854: c3                          	retq
100004855: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000485f: 90                          	nop

0000000100004860 __Z11microkernelILj3ELj32EasET2_PKT1_S3_:
100004860: 55                          	pushq	%rbp
100004861: 48 89 e5                    	movq	%rsp, %rbp
100004864: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004869: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000486f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004874: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004878: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000487e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004882: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004886: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000488c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004890: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004895: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004899: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000489e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048a2: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000048a7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048ab: c4 e2 7d 20 4e 20           	vpmovsxbw	32(%rsi), %ymm1
1000048b1: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000048b5: c4 e2 7d 20 46 30           	vpmovsxbw	48(%rsi), %ymm0
1000048bb: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
1000048c1: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000048c5: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
1000048cb: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000048cf: c5 f5 fd c0                 	vpaddw	%ymm0, %ymm1, %ymm0
1000048d3: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000048d9: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048dd: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000048e2: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048e6: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000048eb: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048ef: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000048f4: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048f8: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000048fc: 01 c1                       	addl	%eax, %ecx
1000048fe: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
100004904: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
10000490a: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004910: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004914: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
10000491a: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
10000491e: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004922: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004928: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000492c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004931: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004935: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000493a: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000493e: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004943: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004947: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000494b: 01 c8                       	addl	%ecx, %eax
10000494d: 98                          	cwtl
10000494e: 5d                          	popq	%rbp
10000494f: c5 f8 77                    	vzeroupper
100004952: c3                          	retq
100004953: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000495d: 0f 1f 00                    	nopl	(%rax)

0000000100004960 __Z11microkernelILj3ELj64EasET2_PKT1_S3_:
100004960: 55                          	pushq	%rbp
100004961: 48 89 e5                    	movq	%rsp, %rbp
100004964: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004969: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000496f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004974: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004978: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000497e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004982: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004986: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000498c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004990: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004995: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004999: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000499e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049a2: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000049a7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049ab: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000049af: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
1000049b5: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
1000049bb: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
1000049c1: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000049c5: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
1000049cb: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000049cf: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000049d3: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000049d9: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049dd: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000049e2: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049e6: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000049eb: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049ef: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000049f4: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049f8: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000049fc: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
100004a02: 01 c1                       	addl	%eax, %ecx
100004a04: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
100004a0a: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004a10: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004a14: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
100004a1a: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004a1e: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004a22: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004a28: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a2c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004a31: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a35: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004a3a: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a3e: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004a43: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a47: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004a4b: 01 c8                       	addl	%ecx, %eax
100004a4d: c4 e2 7d 20 46 60           	vpmovsxbw	96(%rsi), %ymm0
100004a53: c4 e2 7d 20 4e 70           	vpmovsxbw	112(%rsi), %ymm1
100004a59: c4 e2 7d 20 57 60           	vpmovsxbw	96(%rdi), %ymm2
100004a5f: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004a63: c4 e2 7d 20 57 70           	vpmovsxbw	112(%rdi), %ymm2
100004a69: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004a6d: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004a71: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004a77: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a7b: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004a80: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a84: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004a89: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a8d: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004a92: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a96: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004a9a: c4 e2 7d 20 86 80 00 00 00  	vpmovsxbw	128(%rsi), %ymm0
100004aa3: 01 c1                       	addl	%eax, %ecx
100004aa5: c4 e2 7d 20 8e 90 00 00 00  	vpmovsxbw	144(%rsi), %ymm1
100004aae: c4 e2 7d 20 97 80 00 00 00  	vpmovsxbw	128(%rdi), %ymm2
100004ab7: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004abb: c4 e2 7d 20 97 90 00 00 00  	vpmovsxbw	144(%rdi), %ymm2
100004ac4: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004ac8: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004acc: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004ad2: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ad6: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004adb: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004adf: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004ae4: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ae8: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004aed: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004af1: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004af5: 01 c8                       	addl	%ecx, %eax
100004af7: c4 e2 7d 20 86 a0 00 00 00  	vpmovsxbw	160(%rsi), %ymm0
100004b00: c4 e2 7d 20 8e b0 00 00 00  	vpmovsxbw	176(%rsi), %ymm1
100004b09: c4 e2 7d 20 97 a0 00 00 00  	vpmovsxbw	160(%rdi), %ymm2
100004b12: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004b16: c4 e2 7d 20 97 b0 00 00 00  	vpmovsxbw	176(%rdi), %ymm2
100004b1f: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004b23: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004b27: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004b2d: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b31: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004b36: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b3a: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004b3f: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b43: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004b48: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b4c: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004b50: 01 c1                       	addl	%eax, %ecx
100004b52: 0f bf c1                    	movswl	%cx, %eax
100004b55: 5d                          	popq	%rbp
100004b56: c5 f8 77                    	vzeroupper
100004b59: c3                          	retq
100004b5a: 90                          	nop
100004b5b: 90                          	nop
100004b5c: 90                          	nop
100004b5d: 90                          	nop
100004b5e: 90                          	nop
100004b5f: 90                          	nop

0000000100004b60 __ZN14ModelInterfaceC2Ev:
100004b60: 55                          	pushq	%rbp
100004b61: 48 89 e5                    	movq	%rsp, %rbp
100004b64: 48 8d 05 5d 45 00 00        	leaq	17757(%rip), %rax
100004b6b: 48 89 07                    	movq	%rax, (%rdi)
100004b6e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004b72: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004b77: 5d                          	popq	%rbp
100004b78: c3                          	retq
100004b79: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004b80 __ZN14ModelInterfaceC1Ev:
100004b80: 55                          	pushq	%rbp
100004b81: 48 89 e5                    	movq	%rsp, %rbp
100004b84: 48 8d 05 3d 45 00 00        	leaq	17725(%rip), %rax
100004b8b: 48 89 07                    	movq	%rax, (%rdi)
100004b8e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004b92: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004b97: 5d                          	popq	%rbp
100004b98: c3                          	retq
100004b99: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004ba0 __ZN14ModelInterfaceD2Ev:
100004ba0: 55                          	pushq	%rbp
100004ba1: 48 89 e5                    	movq	%rsp, %rbp
100004ba4: 53                          	pushq	%rbx
100004ba5: 50                          	pushq	%rax
100004ba6: 48 89 fb                    	movq	%rdi, %rbx
100004ba9: 48 8d 05 18 45 00 00        	leaq	17688(%rip), %rax
100004bb0: 48 89 07                    	movq	%rax, (%rdi)
100004bb3: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004bb7: 48 85 ff                    	testq	%rdi, %rdi
100004bba: 74 05                       	je	5 <__ZN14ModelInterfaceD2Ev+0x21>
100004bbc: e8 87 25 00 00              	callq	9607 <dyld_stub_binder+0x100007148>
100004bc1: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004bc5: 48 83 c4 08                 	addq	$8, %rsp
100004bc9: 48 85 ff                    	testq	%rdi, %rdi
100004bcc: 74 07                       	je	7 <__ZN14ModelInterfaceD2Ev+0x35>
100004bce: 5b                          	popq	%rbx
100004bcf: 5d                          	popq	%rbp
100004bd0: e9 73 25 00 00              	jmp	9587 <dyld_stub_binder+0x100007148>
100004bd5: 5b                          	popq	%rbx
100004bd6: 5d                          	popq	%rbp
100004bd7: c3                          	retq
100004bd8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004be0 __ZN14ModelInterfaceD1Ev:
100004be0: 55                          	pushq	%rbp
100004be1: 48 89 e5                    	movq	%rsp, %rbp
100004be4: 53                          	pushq	%rbx
100004be5: 50                          	pushq	%rax
100004be6: 48 89 fb                    	movq	%rdi, %rbx
100004be9: 48 8d 05 d8 44 00 00        	leaq	17624(%rip), %rax
100004bf0: 48 89 07                    	movq	%rax, (%rdi)
100004bf3: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004bf7: 48 85 ff                    	testq	%rdi, %rdi
100004bfa: 74 05                       	je	5 <__ZN14ModelInterfaceD1Ev+0x21>
100004bfc: e8 47 25 00 00              	callq	9543 <dyld_stub_binder+0x100007148>
100004c01: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004c05: 48 83 c4 08                 	addq	$8, %rsp
100004c09: 48 85 ff                    	testq	%rdi, %rdi
100004c0c: 74 07                       	je	7 <__ZN14ModelInterfaceD1Ev+0x35>
100004c0e: 5b                          	popq	%rbx
100004c0f: 5d                          	popq	%rbp
100004c10: e9 33 25 00 00              	jmp	9523 <dyld_stub_binder+0x100007148>
100004c15: 5b                          	popq	%rbx
100004c16: 5d                          	popq	%rbp
100004c17: c3                          	retq
100004c18: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004c20 __ZN14ModelInterfaceD0Ev:
100004c20: 55                          	pushq	%rbp
100004c21: 48 89 e5                    	movq	%rsp, %rbp
100004c24: 53                          	pushq	%rbx
100004c25: 50                          	pushq	%rax
100004c26: 48 89 fb                    	movq	%rdi, %rbx
100004c29: 48 8d 05 98 44 00 00        	leaq	17560(%rip), %rax
100004c30: 48 89 07                    	movq	%rax, (%rdi)
100004c33: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004c37: 48 85 ff                    	testq	%rdi, %rdi
100004c3a: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x21>
100004c3c: e8 07 25 00 00              	callq	9479 <dyld_stub_binder+0x100007148>
100004c41: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004c45: 48 85 ff                    	testq	%rdi, %rdi
100004c48: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x2f>
100004c4a: e8 f9 24 00 00              	callq	9465 <dyld_stub_binder+0x100007148>
100004c4f: 48 89 df                    	movq	%rbx, %rdi
100004c52: 48 83 c4 08                 	addq	$8, %rsp
100004c56: 5b                          	popq	%rbx
100004c57: 5d                          	popq	%rbp
100004c58: e9 eb 24 00 00              	jmp	9451 <dyld_stub_binder+0x100007148>
100004c5d: 0f 1f 00                    	nopl	(%rax)

0000000100004c60 __ZN14ModelInterface7forwardEv:
100004c60: 55                          	pushq	%rbp
100004c61: 48 89 e5                    	movq	%rsp, %rbp
100004c64: 5d                          	popq	%rbp
100004c65: c3                          	retq
100004c66: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004c70 __ZN14ModelInterface12input_bufferEv:
100004c70: 55                          	pushq	%rbp
100004c71: 48 89 e5                    	movq	%rsp, %rbp
100004c74: 0f b6 47 20                 	movzbl	32(%rdi), %eax
100004c78: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100004c7d: 5d                          	popq	%rbp
100004c7e: c3                          	retq
100004c7f: 90                          	nop

0000000100004c80 __ZN14ModelInterface13output_bufferEv:
100004c80: 55                          	pushq	%rbp
100004c81: 48 89 e5                    	movq	%rsp, %rbp
100004c84: 31 c0                       	xorl	%eax, %eax
100004c86: 80 7f 20 00                 	cmpb	$0, 32(%rdi)
100004c8a: 0f 94 c0                    	sete	%al
100004c8d: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100004c92: 5d                          	popq	%rbp
100004c93: c3                          	retq
100004c94: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004c9e: 66 90                       	nop

0000000100004ca0 __ZN14ModelInterface11init_bufferEj:
100004ca0: 55                          	pushq	%rbp
100004ca1: 48 89 e5                    	movq	%rsp, %rbp
100004ca4: 41 57                       	pushq	%r15
100004ca6: 41 56                       	pushq	%r14
100004ca8: 41 54                       	pushq	%r12
100004caa: 53                          	pushq	%rbx
100004cab: 41 89 f7                    	movl	%esi, %r15d
100004cae: 48 89 fb                    	movq	%rdi, %rbx
100004cb1: c6 47 20 00                 	movb	$0, 32(%rdi)
100004cb5: 41 89 f6                    	movl	%esi, %r14d
100004cb8: 4c 89 f7                    	movq	%r14, %rdi
100004cbb: e8 8e 24 00 00              	callq	9358 <dyld_stub_binder+0x10000714e>
100004cc0: 49 89 c4                    	movq	%rax, %r12
100004cc3: 48 89 43 28                 	movq	%rax, 40(%rbx)
100004cc7: 4c 89 f7                    	movq	%r14, %rdi
100004cca: e8 7f 24 00 00              	callq	9343 <dyld_stub_binder+0x10000714e>
100004ccf: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004cd3: 45 85 ff                    	testl	%r15d, %r15d
100004cd6: 0f 84 44 01 00 00           	je	324 <__ZN14ModelInterface11init_bufferEj+0x180>
100004cdc: 41 c6 04 24 00              	movb	$0, (%r12)
100004ce1: 41 83 ff 01                 	cmpl	$1, %r15d
100004ce5: 0f 84 95 00 00 00           	je	149 <__ZN14ModelInterface11init_bufferEj+0xe0>
100004ceb: 41 8d 46 ff                 	leal	-1(%r14), %eax
100004cef: 49 8d 56 fe                 	leaq	-2(%r14), %rdx
100004cf3: 83 e0 07                    	andl	$7, %eax
100004cf6: b9 01 00 00 00              	movl	$1, %ecx
100004cfb: 48 83 fa 07                 	cmpq	$7, %rdx
100004cff: 72 63                       	jb	99 <__ZN14ModelInterface11init_bufferEj+0xc4>
100004d01: 48 89 c2                    	movq	%rax, %rdx
100004d04: 48 f7 d2                    	notq	%rdx
100004d07: 4c 01 f2                    	addq	%r14, %rdx
100004d0a: 31 c9                       	xorl	%ecx, %ecx
100004d0c: 0f 1f 40 00                 	nopl	(%rax)
100004d10: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d14: c6 44 0e 01 00              	movb	$0, 1(%rsi,%rcx)
100004d19: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d1d: c6 44 0e 02 00              	movb	$0, 2(%rsi,%rcx)
100004d22: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d26: c6 44 0e 03 00              	movb	$0, 3(%rsi,%rcx)
100004d2b: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d2f: c6 44 0e 04 00              	movb	$0, 4(%rsi,%rcx)
100004d34: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d38: c6 44 0e 05 00              	movb	$0, 5(%rsi,%rcx)
100004d3d: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d41: c6 44 0e 06 00              	movb	$0, 6(%rsi,%rcx)
100004d46: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d4a: c6 44 0e 07 00              	movb	$0, 7(%rsi,%rcx)
100004d4f: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d53: c6 44 0e 08 00              	movb	$0, 8(%rsi,%rcx)
100004d58: 48 83 c1 08                 	addq	$8, %rcx
100004d5c: 48 39 ca                    	cmpq	%rcx, %rdx
100004d5f: 75 af                       	jne	-81 <__ZN14ModelInterface11init_bufferEj+0x70>
100004d61: 48 ff c1                    	incq	%rcx
100004d64: 48 85 c0                    	testq	%rax, %rax
100004d67: 74 17                       	je	23 <__ZN14ModelInterface11init_bufferEj+0xe0>
100004d69: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004d70: 48 8b 53 28                 	movq	40(%rbx), %rdx
100004d74: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004d78: 48 ff c1                    	incq	%rcx
100004d7b: 48 ff c8                    	decq	%rax
100004d7e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0xd0>
100004d80: 45 85 ff                    	testl	%r15d, %r15d
100004d83: 0f 84 97 00 00 00           	je	151 <__ZN14ModelInterface11init_bufferEj+0x180>
100004d89: 49 8d 4e ff                 	leaq	-1(%r14), %rcx
100004d8d: 44 89 f0                    	movl	%r14d, %eax
100004d90: 83 e0 07                    	andl	$7, %eax
100004d93: 48 83 f9 07                 	cmpq	$7, %rcx
100004d97: 73 0c                       	jae	12 <__ZN14ModelInterface11init_bufferEj+0x105>
100004d99: 31 c9                       	xorl	%ecx, %ecx
100004d9b: 48 85 c0                    	testq	%rax, %rax
100004d9e: 75 70                       	jne	112 <__ZN14ModelInterface11init_bufferEj+0x170>
100004da0: e9 7b 00 00 00              	jmp	123 <__ZN14ModelInterface11init_bufferEj+0x180>
100004da5: 49 29 c6                    	subq	%rax, %r14
100004da8: 31 c9                       	xorl	%ecx, %ecx
100004daa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100004db0: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004db4: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004db8: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dbc: c6 44 0a 01 00              	movb	$0, 1(%rdx,%rcx)
100004dc1: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dc5: c6 44 0a 02 00              	movb	$0, 2(%rdx,%rcx)
100004dca: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dce: c6 44 0a 03 00              	movb	$0, 3(%rdx,%rcx)
100004dd3: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dd7: c6 44 0a 04 00              	movb	$0, 4(%rdx,%rcx)
100004ddc: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004de0: c6 44 0a 05 00              	movb	$0, 5(%rdx,%rcx)
100004de5: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004de9: c6 44 0a 06 00              	movb	$0, 6(%rdx,%rcx)
100004dee: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004df2: c6 44 0a 07 00              	movb	$0, 7(%rdx,%rcx)
100004df7: 48 83 c1 08                 	addq	$8, %rcx
100004dfb: 49 39 ce                    	cmpq	%rcx, %r14
100004dfe: 75 b0                       	jne	-80 <__ZN14ModelInterface11init_bufferEj+0x110>
100004e00: 48 85 c0                    	testq	%rax, %rax
100004e03: 74 1b                       	je	27 <__ZN14ModelInterface11init_bufferEj+0x180>
100004e05: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004e0f: 90                          	nop
100004e10: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004e14: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004e18: 48 ff c1                    	incq	%rcx
100004e1b: 48 ff c8                    	decq	%rax
100004e1e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0x170>
100004e20: 5b                          	popq	%rbx
100004e21: 41 5c                       	popq	%r12
100004e23: 41 5e                       	popq	%r14
100004e25: 41 5f                       	popq	%r15
100004e27: 5d                          	popq	%rbp
100004e28: c3                          	retq
100004e29: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004e30 __ZN14ModelInterface11swap_bufferEv:
100004e30: 55                          	pushq	%rbp
100004e31: 48 89 e5                    	movq	%rsp, %rbp
100004e34: 80 77 20 01                 	xorb	$1, 32(%rdi)
100004e38: 5d                          	popq	%rbp
100004e39: c3                          	retq
100004e3a: 90                          	nop
100004e3b: 90                          	nop
100004e3c: 90                          	nop
100004e3d: 90                          	nop
100004e3e: 90                          	nop
100004e3f: 90                          	nop

0000000100004e40 __Z4ReLUPaS_j:
100004e40: 55                          	pushq	%rbp
100004e41: 48 89 e5                    	movq	%rsp, %rbp
100004e44: 85 d2                       	testl	%edx, %edx
100004e46: 0f 84 0b 02 00 00           	je	523 <__Z4ReLUPaS_j+0x217>
100004e4c: 8d 42 ff                    	leal	-1(%rdx), %eax
100004e4f: 4c 8d 50 01                 	leaq	1(%rax), %r10
100004e53: 49 81 fa 80 00 00 00        	cmpq	$128, %r10
100004e5a: 0f 82 2c 01 00 00           	jb	300 <__Z4ReLUPaS_j+0x14c>
100004e60: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
100004e64: 48 83 c1 01                 	addq	$1, %rcx
100004e68: 48 39 f9                    	cmpq	%rdi, %rcx
100004e6b: 76 10                       	jbe	16 <__Z4ReLUPaS_j+0x3d>
100004e6d: 48 01 f8                    	addq	%rdi, %rax
100004e70: 48 83 c0 01                 	addq	$1, %rax
100004e74: 48 39 f0                    	cmpq	%rsi, %rax
100004e77: 0f 87 0f 01 00 00           	ja	271 <__Z4ReLUPaS_j+0x14c>
100004e7d: 4d 89 d0                    	movq	%r10, %r8
100004e80: 49 83 e0 80                 	andq	$-128, %r8
100004e84: 49 8d 40 80                 	leaq	-128(%r8), %rax
100004e88: 48 89 c1                    	movq	%rax, %rcx
100004e8b: 48 c1 e9 07                 	shrq	$7, %rcx
100004e8f: 48 ff c1                    	incq	%rcx
100004e92: 41 89 c9                    	movl	%ecx, %r9d
100004e95: 41 83 e1 01                 	andl	$1, %r9d
100004e99: 48 85 c0                    	testq	%rax, %rax
100004e9c: 0f 84 ba 01 00 00           	je	442 <__Z4ReLUPaS_j+0x21c>
100004ea2: 4c 89 c8                    	movq	%r9, %rax
100004ea5: 48 29 c8                    	subq	%rcx, %rax
100004ea8: 31 c9                       	xorl	%ecx, %ecx
100004eaa: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100004eae: 66 90                       	nop
100004eb0: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
100004eb6: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100004ebd: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
100004ec4: c4 e2 7d 3c 64 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm4
100004ecb: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100004ed0: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
100004ed6: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100004edc: c5 fe 7f 64 0f 60           	vmovdqu	%ymm4, 96(%rdi,%rcx)
100004ee2: c4 e2 7d 3c 8c 0e 80 00 00 00       	vpmaxsb	128(%rsi,%rcx), %ymm0, %ymm1
100004eec: c4 e2 7d 3c 94 0e a0 00 00 00       	vpmaxsb	160(%rsi,%rcx), %ymm0, %ymm2
100004ef6: c4 e2 7d 3c 9c 0e c0 00 00 00       	vpmaxsb	192(%rsi,%rcx), %ymm0, %ymm3
100004f00: c4 e2 7d 3c a4 0e e0 00 00 00       	vpmaxsb	224(%rsi,%rcx), %ymm0, %ymm4
100004f0a: c5 fe 7f 8c 0f 80 00 00 00  	vmovdqu	%ymm1, 128(%rdi,%rcx)
100004f13: c5 fe 7f 94 0f a0 00 00 00  	vmovdqu	%ymm2, 160(%rdi,%rcx)
100004f1c: c5 fe 7f 9c 0f c0 00 00 00  	vmovdqu	%ymm3, 192(%rdi,%rcx)
100004f25: c5 fe 7f a4 0f e0 00 00 00  	vmovdqu	%ymm4, 224(%rdi,%rcx)
100004f2e: 48 81 c1 00 01 00 00        	addq	$256, %rcx
100004f35: 48 83 c0 02                 	addq	$2, %rax
100004f39: 0f 85 71 ff ff ff           	jne	-143 <__Z4ReLUPaS_j+0x70>
100004f3f: 4d 85 c9                    	testq	%r9, %r9
100004f42: 74 36                       	je	54 <__Z4ReLUPaS_j+0x13a>
100004f44: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100004f48: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
100004f4e: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100004f55: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
100004f5c: c4 e2 7d 3c 44 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm0
100004f63: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100004f68: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
100004f6e: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100004f74: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
100004f7a: 4d 39 c2                    	cmpq	%r8, %r10
100004f7d: 0f 84 d4 00 00 00           	je	212 <__Z4ReLUPaS_j+0x217>
100004f83: 44 29 c2                    	subl	%r8d, %edx
100004f86: 4c 01 c6                    	addq	%r8, %rsi
100004f89: 4c 01 c7                    	addq	%r8, %rdi
100004f8c: 44 8d 42 ff                 	leal	-1(%rdx), %r8d
100004f90: f6 c2 07                    	testb	$7, %dl
100004f93: 74 38                       	je	56 <__Z4ReLUPaS_j+0x18d>
100004f95: 41 89 d2                    	movl	%edx, %r10d
100004f98: 41 83 e2 07                 	andl	$7, %r10d
100004f9c: 45 31 c9                    	xorl	%r9d, %r9d
100004f9f: 31 c9                       	xorl	%ecx, %ecx
100004fa1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004fab: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100004fb0: 0f b6 04 0e                 	movzbl	(%rsi,%rcx), %eax
100004fb4: 84 c0                       	testb	%al, %al
100004fb6: 41 0f 48 c1                 	cmovsl	%r9d, %eax
100004fba: 88 04 0f                    	movb	%al, (%rdi,%rcx)
100004fbd: 48 ff c1                    	incq	%rcx
100004fc0: 41 39 ca                    	cmpl	%ecx, %r10d
100004fc3: 75 eb                       	jne	-21 <__Z4ReLUPaS_j+0x170>
100004fc5: 29 ca                       	subl	%ecx, %edx
100004fc7: 48 01 ce                    	addq	%rcx, %rsi
100004fca: 48 01 cf                    	addq	%rcx, %rdi
100004fcd: 41 83 f8 07                 	cmpl	$7, %r8d
100004fd1: 0f 82 80 00 00 00           	jb	128 <__Z4ReLUPaS_j+0x217>
100004fd7: 41 89 d0                    	movl	%edx, %r8d
100004fda: 31 c9                       	xorl	%ecx, %ecx
100004fdc: 31 d2                       	xorl	%edx, %edx
100004fde: 66 90                       	nop
100004fe0: 0f b6 04 16                 	movzbl	(%rsi,%rdx), %eax
100004fe4: 84 c0                       	testb	%al, %al
100004fe6: 0f 48 c1                    	cmovsl	%ecx, %eax
100004fe9: 88 04 17                    	movb	%al, (%rdi,%rdx)
100004fec: 0f b6 44 16 01              	movzbl	1(%rsi,%rdx), %eax
100004ff1: 84 c0                       	testb	%al, %al
100004ff3: 0f 48 c1                    	cmovsl	%ecx, %eax
100004ff6: 88 44 17 01                 	movb	%al, 1(%rdi,%rdx)
100004ffa: 0f b6 44 16 02              	movzbl	2(%rsi,%rdx), %eax
100004fff: 84 c0                       	testb	%al, %al
100005001: 0f 48 c1                    	cmovsl	%ecx, %eax
100005004: 88 44 17 02                 	movb	%al, 2(%rdi,%rdx)
100005008: 0f b6 44 16 03              	movzbl	3(%rsi,%rdx), %eax
10000500d: 84 c0                       	testb	%al, %al
10000500f: 0f 48 c1                    	cmovsl	%ecx, %eax
100005012: 88 44 17 03                 	movb	%al, 3(%rdi,%rdx)
100005016: 0f b6 44 16 04              	movzbl	4(%rsi,%rdx), %eax
10000501b: 84 c0                       	testb	%al, %al
10000501d: 0f 48 c1                    	cmovsl	%ecx, %eax
100005020: 88 44 17 04                 	movb	%al, 4(%rdi,%rdx)
100005024: 0f b6 44 16 05              	movzbl	5(%rsi,%rdx), %eax
100005029: 84 c0                       	testb	%al, %al
10000502b: 0f 48 c1                    	cmovsl	%ecx, %eax
10000502e: 88 44 17 05                 	movb	%al, 5(%rdi,%rdx)
100005032: 0f b6 44 16 06              	movzbl	6(%rsi,%rdx), %eax
100005037: 84 c0                       	testb	%al, %al
100005039: 0f 48 c1                    	cmovsl	%ecx, %eax
10000503c: 88 44 17 06                 	movb	%al, 6(%rdi,%rdx)
100005040: 0f b6 44 16 07              	movzbl	7(%rsi,%rdx), %eax
100005045: 84 c0                       	testb	%al, %al
100005047: 0f 48 c1                    	cmovsl	%ecx, %eax
10000504a: 88 44 17 07                 	movb	%al, 7(%rdi,%rdx)
10000504e: 48 83 c2 08                 	addq	$8, %rdx
100005052: 41 39 d0                    	cmpl	%edx, %r8d
100005055: 75 89                       	jne	-119 <__Z4ReLUPaS_j+0x1a0>
100005057: 5d                          	popq	%rbp
100005058: c5 f8 77                    	vzeroupper
10000505b: c3                          	retq
10000505c: 31 c9                       	xorl	%ecx, %ecx
10000505e: 4d 85 c9                    	testq	%r9, %r9
100005061: 0f 85 dd fe ff ff           	jne	-291 <__Z4ReLUPaS_j+0x104>
100005067: e9 0e ff ff ff              	jmp	-242 <__Z4ReLUPaS_j+0x13a>
10000506c: 90                          	nop
10000506d: 90                          	nop
10000506e: 90                          	nop
10000506f: 90                          	nop

0000000100005070 __ZN11LineNetworkC2Ev:
100005070: 55                          	pushq	%rbp
100005071: 48 89 e5                    	movq	%rsp, %rbp
100005074: 41 56                       	pushq	%r14
100005076: 53                          	pushq	%rbx
100005077: 48 89 fb                    	movq	%rdi, %rbx
10000507a: e8 e1 fa ff ff              	callq	-1311 <__ZN14ModelInterfaceC2Ev>
10000507f: 48 8d 05 7a 40 00 00        	leaq	16506(%rip), %rax
100005086: 48 89 03                    	movq	%rax, (%rbx)
100005089: 48 89 df                    	movq	%rbx, %rdi
10000508c: be 00 48 00 00              	movl	$18432, %esi
100005091: e8 0a fc ff ff              	callq	-1014 <__ZN14ModelInterface11init_bufferEj>
100005096: c5 f8 28 05 42 22 00 00     	vmovaps	8770(%rip), %xmm0
10000509e: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
1000050a3: 48 b8 06 00 00 00 06 00 00 00       	movabsq	$25769803782, %rax
1000050ad: 48 89 43 18                 	movq	%rax, 24(%rbx)
1000050b1: 5b                          	popq	%rbx
1000050b2: 41 5e                       	popq	%r14
1000050b4: 5d                          	popq	%rbp
1000050b5: c3                          	retq
1000050b6: 49 89 c6                    	movq	%rax, %r14
1000050b9: 48 89 df                    	movq	%rbx, %rdi
1000050bc: e8 df fa ff ff              	callq	-1313 <__ZN14ModelInterfaceD2Ev>
1000050c1: 4c 89 f7                    	movq	%r14, %rdi
1000050c4: e8 e3 1f 00 00              	callq	8163 <dyld_stub_binder+0x1000070ac>
1000050c9: 0f 0b                       	ud2
1000050cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000050d0 __ZN11LineNetworkC1Ev:
1000050d0: 55                          	pushq	%rbp
1000050d1: 48 89 e5                    	movq	%rsp, %rbp
1000050d4: 41 56                       	pushq	%r14
1000050d6: 53                          	pushq	%rbx
1000050d7: 48 89 fb                    	movq	%rdi, %rbx
1000050da: e8 81 fa ff ff              	callq	-1407 <__ZN14ModelInterfaceC2Ev>
1000050df: 48 8d 05 1a 40 00 00        	leaq	16410(%rip), %rax
1000050e6: 48 89 03                    	movq	%rax, (%rbx)
1000050e9: 48 89 df                    	movq	%rbx, %rdi
1000050ec: be 00 48 00 00              	movl	$18432, %esi
1000050f1: e8 aa fb ff ff              	callq	-1110 <__ZN14ModelInterface11init_bufferEj>
1000050f6: c5 f8 28 05 e2 21 00 00     	vmovaps	8674(%rip), %xmm0
1000050fe: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005103: 48 b8 06 00 00 00 06 00 00 00       	movabsq	$25769803782, %rax
10000510d: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005111: 5b                          	popq	%rbx
100005112: 41 5e                       	popq	%r14
100005114: 5d                          	popq	%rbp
100005115: c3                          	retq
100005116: 49 89 c6                    	movq	%rax, %r14
100005119: 48 89 df                    	movq	%rbx, %rdi
10000511c: e8 7f fa ff ff              	callq	-1409 <__ZN14ModelInterfaceD2Ev>
100005121: 4c 89 f7                    	movq	%r14, %rdi
100005124: e8 83 1f 00 00              	callq	8067 <dyld_stub_binder+0x1000070ac>
100005129: 0f 0b                       	ud2
10000512b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005130 __ZN11LineNetwork7forwardEv:
100005130: 55                          	pushq	%rbp
100005131: 48 89 e5                    	movq	%rsp, %rbp
100005134: 41 56                       	pushq	%r14
100005136: 53                          	pushq	%rbx
100005137: 48 89 fb                    	movq	%rdi, %rbx
10000513a: e8 41 fb ff ff              	callq	-1215 <__ZN14ModelInterface13output_bufferEv>
10000513f: 49 89 c6                    	movq	%rax, %r14
100005142: 48 89 df                    	movq	%rbx, %rdi
100005145: e8 26 fb ff ff              	callq	-1242 <__ZN14ModelInterface12input_bufferEv>
10000514a: 48 83 ec 08                 	subq	$8, %rsp
10000514e: 48 8d 15 9b 21 00 00        	leaq	8603(%rip), %rdx
100005155: 48 8d 0d a4 21 00 00        	leaq	8612(%rip), %rcx
10000515c: 4c 89 f7                    	movq	%r14, %rdi
10000515f: 48 89 c6                    	movq	%rax, %rsi
100005162: 41 b8 37 00 00 00           	movl	$55, %r8d
100005168: 41 b9 08 00 00 00           	movl	$8, %r9d
10000516e: 6a 02                       	pushq	$2
100005170: 6a 03                       	pushq	$3
100005172: 6a 60                       	pushq	$96
100005174: 6a 60                       	pushq	$96
100005176: 6a 01                       	pushq	$1
100005178: e8 33 d8 ff ff              	callq	-10189 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
10000517d: 48 83 c4 30                 	addq	$48, %rsp
100005181: 48 89 df                    	movq	%rbx, %rdi
100005184: e8 a7 fc ff ff              	callq	-857 <__ZN14ModelInterface11swap_bufferEv>
100005189: 48 89 df                    	movq	%rbx, %rdi
10000518c: e8 ef fa ff ff              	callq	-1297 <__ZN14ModelInterface13output_bufferEv>
100005191: 49 89 c6                    	movq	%rax, %r14
100005194: 48 89 df                    	movq	%rbx, %rdi
100005197: e8 d4 fa ff ff              	callq	-1324 <__ZN14ModelInterface12input_bufferEv>
10000519c: 4c 89 f7                    	movq	%r14, %rdi
10000519f: 48 89 c6                    	movq	%rax, %rsi
1000051a2: ba 00 48 00 00              	movl	$18432, %edx
1000051a7: e8 94 fc ff ff              	callq	-876 <__Z4ReLUPaS_j>
1000051ac: 48 89 df                    	movq	%rbx, %rdi
1000051af: e8 7c fc ff ff              	callq	-900 <__ZN14ModelInterface11swap_bufferEv>
1000051b4: 48 89 df                    	movq	%rbx, %rdi
1000051b7: e8 c4 fa ff ff              	callq	-1340 <__ZN14ModelInterface13output_bufferEv>
1000051bc: 49 89 c6                    	movq	%rax, %r14
1000051bf: 48 89 df                    	movq	%rbx, %rdi
1000051c2: e8 a9 fa ff ff              	callq	-1367 <__ZN14ModelInterface12input_bufferEv>
1000051c7: 48 83 ec 08                 	subq	$8, %rsp
1000051cb: 48 8d 15 76 21 00 00        	leaq	8566(%rip), %rdx
1000051d2: 48 8d 0d 77 21 00 00        	leaq	8567(%rip), %rcx
1000051d9: 4c 89 f7                    	movq	%r14, %rdi
1000051dc: 48 89 c6                    	movq	%rax, %rsi
1000051df: 41 b8 37 00 00 00           	movl	$55, %r8d
1000051e5: 41 b9 08 00 00 00           	movl	$8, %r9d
1000051eb: 6a 02                       	pushq	$2
1000051ed: 6a 03                       	pushq	$3
1000051ef: 6a 30                       	pushq	$48
1000051f1: 6a 30                       	pushq	$48
1000051f3: 6a 08                       	pushq	$8
1000051f5: e8 b6 d7 ff ff              	callq	-10314 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
1000051fa: 48 83 c4 30                 	addq	$48, %rsp
1000051fe: 48 89 df                    	movq	%rbx, %rdi
100005201: e8 2a fc ff ff              	callq	-982 <__ZN14ModelInterface11swap_bufferEv>
100005206: 48 89 df                    	movq	%rbx, %rdi
100005209: e8 72 fa ff ff              	callq	-1422 <__ZN14ModelInterface13output_bufferEv>
10000520e: 49 89 c6                    	movq	%rax, %r14
100005211: 48 89 df                    	movq	%rbx, %rdi
100005214: e8 57 fa ff ff              	callq	-1449 <__ZN14ModelInterface12input_bufferEv>
100005219: 4c 89 f7                    	movq	%r14, %rdi
10000521c: 48 89 c6                    	movq	%rax, %rsi
10000521f: ba 00 12 00 00              	movl	$4608, %edx
100005224: e8 17 fc ff ff              	callq	-1001 <__Z4ReLUPaS_j>
100005229: 48 89 df                    	movq	%rbx, %rdi
10000522c: e8 ff fb ff ff              	callq	-1025 <__ZN14ModelInterface11swap_bufferEv>
100005231: 48 89 df                    	movq	%rbx, %rdi
100005234: e8 47 fa ff ff              	callq	-1465 <__ZN14ModelInterface13output_bufferEv>
100005239: 49 89 c6                    	movq	%rax, %r14
10000523c: 48 89 df                    	movq	%rbx, %rdi
10000523f: e8 2c fa ff ff              	callq	-1492 <__ZN14ModelInterface12input_bufferEv>
100005244: 48 83 ec 08                 	subq	$8, %rsp
100005248: 48 8d 15 41 23 00 00        	leaq	9025(%rip), %rdx
10000524f: 48 8d 0d 4a 23 00 00        	leaq	9034(%rip), %rcx
100005256: 4c 89 f7                    	movq	%r14, %rdi
100005259: 48 89 c6                    	movq	%rax, %rsi
10000525c: 41 b8 39 00 00 00           	movl	$57, %r8d
100005262: 41 b9 10 00 00 00           	movl	$16, %r9d
100005268: 6a 02                       	pushq	$2
10000526a: 6a 03                       	pushq	$3
10000526c: 6a 18                       	pushq	$24
10000526e: 6a 18                       	pushq	$24
100005270: 6a 08                       	pushq	$8
100005272: e8 39 d7 ff ff              	callq	-10439 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005277: 48 83 c4 30                 	addq	$48, %rsp
10000527b: 48 89 df                    	movq	%rbx, %rdi
10000527e: e8 ad fb ff ff              	callq	-1107 <__ZN14ModelInterface11swap_bufferEv>
100005283: 48 89 df                    	movq	%rbx, %rdi
100005286: e8 f5 f9 ff ff              	callq	-1547 <__ZN14ModelInterface13output_bufferEv>
10000528b: 49 89 c6                    	movq	%rax, %r14
10000528e: 48 89 df                    	movq	%rbx, %rdi
100005291: e8 da f9 ff ff              	callq	-1574 <__ZN14ModelInterface12input_bufferEv>
100005296: 4c 89 f7                    	movq	%r14, %rdi
100005299: 48 89 c6                    	movq	%rax, %rsi
10000529c: ba 00 09 00 00              	movl	$2304, %edx
1000052a1: e8 9a fb ff ff              	callq	-1126 <__Z4ReLUPaS_j>
1000052a6: 48 89 df                    	movq	%rbx, %rdi
1000052a9: e8 82 fb ff ff              	callq	-1150 <__ZN14ModelInterface11swap_bufferEv>
1000052ae: 48 89 df                    	movq	%rbx, %rdi
1000052b1: e8 ca f9 ff ff              	callq	-1590 <__ZN14ModelInterface13output_bufferEv>
1000052b6: 49 89 c6                    	movq	%rax, %r14
1000052b9: 48 89 df                    	movq	%rbx, %rdi
1000052bc: e8 af f9 ff ff              	callq	-1617 <__ZN14ModelInterface12input_bufferEv>
1000052c1: 48 83 ec 08                 	subq	$8, %rsp
1000052c5: 48 8d 15 54 27 00 00        	leaq	10068(%rip), %rdx
1000052cc: 48 8d 0d 6d 27 00 00        	leaq	10093(%rip), %rcx
1000052d3: 4c 89 f7                    	movq	%r14, %rdi
1000052d6: 48 89 c6                    	movq	%rax, %rsi
1000052d9: 41 b8 30 00 00 00           	movl	$48, %r8d
1000052df: 41 b9 20 00 00 00           	movl	$32, %r9d
1000052e5: 6a 02                       	pushq	$2
1000052e7: 6a 03                       	pushq	$3
1000052e9: 6a 0c                       	pushq	$12
1000052eb: 6a 0c                       	pushq	$12
1000052ed: 6a 10                       	pushq	$16
1000052ef: e8 bc d6 ff ff              	callq	-10564 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
1000052f4: 48 83 c4 30                 	addq	$48, %rsp
1000052f8: 48 89 df                    	movq	%rbx, %rdi
1000052fb: e8 30 fb ff ff              	callq	-1232 <__ZN14ModelInterface11swap_bufferEv>
100005300: 48 89 df                    	movq	%rbx, %rdi
100005303: e8 78 f9 ff ff              	callq	-1672 <__ZN14ModelInterface13output_bufferEv>
100005308: 49 89 c6                    	movq	%rax, %r14
10000530b: 48 89 df                    	movq	%rbx, %rdi
10000530e: e8 5d f9 ff ff              	callq	-1699 <__ZN14ModelInterface12input_bufferEv>
100005313: 4c 89 f7                    	movq	%r14, %rdi
100005316: 48 89 c6                    	movq	%rax, %rsi
100005319: ba 80 04 00 00              	movl	$1152, %edx
10000531e: e8 1d fb ff ff              	callq	-1251 <__Z4ReLUPaS_j>
100005323: 48 89 df                    	movq	%rbx, %rdi
100005326: e8 05 fb ff ff              	callq	-1275 <__ZN14ModelInterface11swap_bufferEv>
10000532b: 48 89 df                    	movq	%rbx, %rdi
10000532e: e8 4d f9 ff ff              	callq	-1715 <__ZN14ModelInterface13output_bufferEv>
100005333: 49 89 c6                    	movq	%rax, %r14
100005336: 48 89 df                    	movq	%rbx, %rdi
100005339: e8 32 f9 ff ff              	callq	-1742 <__ZN14ModelInterface12input_bufferEv>
10000533e: 48 83 ec 08                 	subq	$8, %rsp
100005342: 48 8d 15 f7 38 00 00        	leaq	14583(%rip), %rdx
100005349: 48 8d 0d 00 39 00 00        	leaq	14592(%rip), %rcx
100005350: 4c 89 f7                    	movq	%r14, %rdi
100005353: 48 89 c6                    	movq	%rax, %rsi
100005356: 41 b8 20 00 00 00           	movl	$32, %r8d
10000535c: 41 b9 01 00 00 00           	movl	$1, %r9d
100005362: 6a 01                       	pushq	$1
100005364: 6a 01                       	pushq	$1
100005366: 6a 06                       	pushq	$6
100005368: 6a 06                       	pushq	$6
10000536a: 6a 20                       	pushq	$32
10000536c: e8 3f d6 ff ff              	callq	-10689 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005371: 48 83 c4 30                 	addq	$48, %rsp
100005375: 48 89 df                    	movq	%rbx, %rdi
100005378: e8 b3 fa ff ff              	callq	-1357 <__ZN14ModelInterface11swap_bufferEv>
10000537d: 48 89 df                    	movq	%rbx, %rdi
100005380: 5b                          	popq	%rbx
100005381: 41 5e                       	popq	%r14
100005383: 5d                          	popq	%rbp
100005384: e9 a7 fa ff ff              	jmp	-1369 <__ZN14ModelInterface11swap_bufferEv>
100005389: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100005390 __ZN11LineNetworkD1Ev:
100005390: 55                          	pushq	%rbp
100005391: 48 89 e5                    	movq	%rsp, %rbp
100005394: 5d                          	popq	%rbp
100005395: e9 06 f8 ff ff              	jmp	-2042 <__ZN14ModelInterfaceD2Ev>
10000539a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000053a0 __ZN11LineNetworkD0Ev:
1000053a0: 55                          	pushq	%rbp
1000053a1: 48 89 e5                    	movq	%rsp, %rbp
1000053a4: 53                          	pushq	%rbx
1000053a5: 50                          	pushq	%rax
1000053a6: 48 89 fb                    	movq	%rdi, %rbx
1000053a9: e8 f2 f7 ff ff              	callq	-2062 <__ZN14ModelInterfaceD2Ev>
1000053ae: 48 89 df                    	movq	%rbx, %rdi
1000053b1: 48 83 c4 08                 	addq	$8, %rsp
1000053b5: 5b                          	popq	%rbx
1000053b6: 5d                          	popq	%rbp
1000053b7: e9 8c 1d 00 00              	jmp	7564 <dyld_stub_binder+0x100007148>
1000053bc: 90                          	nop
1000053bd: 90                          	nop
1000053be: 90                          	nop
1000053bf: 90                          	nop

00000001000053c0 __Z8get_timev:
1000053c0: 55                          	pushq	%rbp
1000053c1: 48 89 e5                    	movq	%rsp, %rbp
1000053c4: e8 5b 1d 00 00              	callq	7515 <dyld_stub_binder+0x100007124>
1000053c9: c4 e1 fb 2a c0              	vcvtsi2sd	%rax, %xmm0, %xmm0
1000053ce: c5 fb 5e 05 aa 38 00 00     	vdivsd	14506(%rip), %xmm0, %xmm0
1000053d6: 5d                          	popq	%rbp
1000053d7: c3                          	retq
1000053d8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

00000001000053e0 __Z14get_predictionRN2cv3MatER14ModelInterfacef:
1000053e0: 55                          	pushq	%rbp
1000053e1: 48 89 e5                    	movq	%rsp, %rbp
1000053e4: 41 57                       	pushq	%r15
1000053e6: 41 56                       	pushq	%r14
1000053e8: 41 55                       	pushq	%r13
1000053ea: 41 54                       	pushq	%r12
1000053ec: 53                          	pushq	%rbx
1000053ed: 48 81 ec 28 01 00 00        	subq	$296, %rsp
1000053f4: c5 fa 11 45 b4              	vmovss	%xmm0, -76(%rbp)
1000053f9: 49 89 d6                    	movq	%rdx, %r14
1000053fc: 49 89 f4                    	movq	%rsi, %r12
1000053ff: 48 89 fb                    	movq	%rdi, %rbx
100005402: 48 8b 05 57 3c 00 00        	movq	15447(%rip), %rax
100005409: 48 8b 00                    	movq	(%rax), %rax
10000540c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005410: 8b 46 08                    	movl	8(%rsi), %eax
100005413: 8b 4e 0c                    	movl	12(%rsi), %ecx
100005416: c7 85 e0 fe ff ff 00 00 ff 42       	movl	$1124007936, -288(%rbp)
100005420: 48 8d 95 e8 fe ff ff        	leaq	-280(%rbp), %rdx
100005427: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000542b: c5 fc 11 85 e4 fe ff ff     	vmovups	%ymm0, -284(%rbp)
100005433: c5 fc 11 85 00 ff ff ff     	vmovups	%ymm0, -256(%rbp)
10000543b: 48 89 95 20 ff ff ff        	movq	%rdx, -224(%rbp)
100005442: 48 8d 95 30 ff ff ff        	leaq	-208(%rbp), %rdx
100005449: 48 89 95 28 ff ff ff        	movq	%rdx, -216(%rbp)
100005450: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005454: c5 f8 11 85 30 ff ff ff     	vmovups	%xmm0, -208(%rbp)
10000545c: 89 4d b8                    	movl	%ecx, -72(%rbp)
10000545f: 89 45 bc                    	movl	%eax, -68(%rbp)
100005462: 4c 8d bd e0 fe ff ff        	leaq	-288(%rbp), %r15
100005469: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
10000546d: 4c 89 ff                    	movq	%r15, %rdi
100005470: be 02 00 00 00              	movl	$2, %esi
100005475: 31 c9                       	xorl	%ecx, %ecx
100005477: c5 f8 77                    	vzeroupper
10000547a: e8 4b 1c 00 00              	callq	7243 <dyld_stub_binder+0x1000070ca>
10000547f: 48 c7 85 50 ff ff ff 00 00 00 00    	movq	$0, -176(%rbp)
10000548a: c7 85 40 ff ff ff 00 00 01 01       	movl	$16842752, -192(%rbp)
100005494: 4c 89 a5 48 ff ff ff        	movq	%r12, -184(%rbp)
10000549b: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
1000054a3: c7 45 b8 00 00 01 02        	movl	$33619968, -72(%rbp)
1000054aa: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
1000054ae: 48 8d bd 40 ff ff ff        	leaq	-192(%rbp), %rdi
1000054b5: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
1000054b9: ba 06 00 00 00              	movl	$6, %edx
1000054be: 31 c9                       	xorl	%ecx, %ecx
1000054c0: e8 2f 1c 00 00              	callq	7215 <dyld_stub_binder+0x1000070f4>
1000054c5: 41 8b 44 24 08              	movl	8(%r12), %eax
1000054ca: 41 8b 4c 24 0c              	movl	12(%r12), %ecx
1000054cf: c7 85 40 ff ff ff 00 00 ff 42       	movl	$1124007936, -192(%rbp)
1000054d9: 48 8d 95 48 ff ff ff        	leaq	-184(%rbp), %rdx
1000054e0: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000054e4: c5 fc 11 85 44 ff ff ff     	vmovups	%ymm0, -188(%rbp)
1000054ec: c5 fc 11 85 60 ff ff ff     	vmovups	%ymm0, -160(%rbp)
1000054f4: 48 89 55 80                 	movq	%rdx, -128(%rbp)
1000054f8: 48 8d 55 90                 	leaq	-112(%rbp), %rdx
1000054fc: 48 89 55 88                 	movq	%rdx, -120(%rbp)
100005500: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005504: c5 f8 11 45 90              	vmovups	%xmm0, -112(%rbp)
100005509: 89 4d b8                    	movl	%ecx, -72(%rbp)
10000550c: 89 45 bc                    	movl	%eax, -68(%rbp)
10000550f: 4c 8d a5 40 ff ff ff        	leaq	-192(%rbp), %r12
100005516: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
10000551a: 4c 89 e7                    	movq	%r12, %rdi
10000551d: be 02 00 00 00              	movl	$2, %esi
100005522: 31 c9                       	xorl	%ecx, %ecx
100005524: c5 f8 77                    	vzeroupper
100005527: e8 9e 1b 00 00              	callq	7070 <dyld_stub_binder+0x1000070ca>
10000552c: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100005534: c7 45 b8 00 00 01 01        	movl	$16842752, -72(%rbp)
10000553b: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
10000553f: 48 c7 85 c0 fe ff ff 00 00 00 00    	movq	$0, -320(%rbp)
10000554a: c7 85 b0 fe ff ff 00 00 01 02       	movl	$33619968, -336(%rbp)
100005554: 4c 89 a5 b8 fe ff ff        	movq	%r12, -328(%rbp)
10000555b: 41 8b 46 0c                 	movl	12(%r14), %eax
10000555f: 41 8b 4e 10                 	movl	16(%r14), %ecx
100005563: 89 4d a0                    	movl	%ecx, -96(%rbp)
100005566: 89 45 a4                    	movl	%eax, -92(%rbp)
100005569: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
10000556d: 48 8d b5 b0 fe ff ff        	leaq	-336(%rbp), %rsi
100005574: 48 8d 55 a0                 	leaq	-96(%rbp), %rdx
100005578: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000557c: c5 f0 57 c9                 	vxorps	%xmm1, %xmm1, %xmm1
100005580: b9 03 00 00 00              	movl	$3, %ecx
100005585: e8 58 1b 00 00              	callq	7000 <dyld_stub_binder+0x1000070e2>
10000558a: 41 8b 46 0c                 	movl	12(%r14), %eax
10000558e: 85 c0                       	testl	%eax, %eax
100005590: 48 89 5d a8                 	movq	%rbx, -88(%rbp)
100005594: 0f 84 7f 00 00 00           	je	127 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x239>
10000559a: 41 8b 4e 10                 	movl	16(%r14), %ecx
10000559e: 31 d2                       	xorl	%edx, %edx
1000055a0: 45 31 e4                    	xorl	%r12d, %r12d
1000055a3: 85 c9                       	testl	%ecx, %ecx
1000055a5: 75 15                       	jne	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1dc>
1000055a7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000055b0: 31 c9                       	xorl	%ecx, %ecx
1000055b2: ff c2                       	incl	%edx
1000055b4: 39 c2                       	cmpl	%eax, %edx
1000055b6: 73 61                       	jae	97 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x239>
1000055b8: 85 c9                       	testl	%ecx, %ecx
1000055ba: 74 f4                       	je	-12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d0>
1000055bc: 89 55 b0                    	movl	%edx, -80(%rbp)
1000055bf: 4c 63 ea                    	movslq	%edx, %r13
1000055c2: 31 db                       	xorl	%ebx, %ebx
1000055c4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000055ce: 66 90                       	nop
1000055d0: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000055d4: 48 8b 00                    	movq	(%rax), %rax
1000055d7: 49 0f af c5                 	imulq	%r13, %rax
1000055db: 48 03 85 50 ff ff ff        	addq	-176(%rbp), %rax
1000055e2: 48 63 cb                    	movslq	%ebx, %rcx
1000055e5: 44 0f b6 3c 01              	movzbl	(%rcx,%rax), %r15d
1000055ea: 4c 89 f7                    	movq	%r14, %rdi
1000055ed: e8 7e f6 ff ff              	callq	-2434 <__ZN14ModelInterface12input_bufferEv>
1000055f2: 41 8d 0c 1c                 	leal	(%r12,%rbx), %ecx
1000055f6: 41 d0 ef                    	shrb	%r15b
1000055f9: 89 c9                       	movl	%ecx, %ecx
1000055fb: 44 88 3c 08                 	movb	%r15b, (%rax,%rcx)
1000055ff: ff c3                       	incl	%ebx
100005601: 41 8b 4e 10                 	movl	16(%r14), %ecx
100005605: 39 cb                       	cmpl	%ecx, %ebx
100005607: 72 c7                       	jb	-57 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1f0>
100005609: 41 8b 46 0c                 	movl	12(%r14), %eax
10000560d: 41 01 dc                    	addl	%ebx, %r12d
100005610: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100005614: 8b 55 b0                    	movl	-80(%rbp), %edx
100005617: eb 99                       	jmp	-103 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d2>
100005619: 49 8b 06                    	movq	(%r14), %rax
10000561c: 4c 89 f7                    	movq	%r14, %rdi
10000561f: ff 50 10                    	callq	*16(%rax)
100005622: 41 8b 46 18                 	movl	24(%r14), %eax
100005626: 41 8b 4e 1c                 	movl	28(%r14), %ecx
10000562a: c7 03 00 00 ff 42           	movl	$1124007936, (%rbx)
100005630: 48 8d 53 08                 	leaq	8(%rbx), %rdx
100005634: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005638: c5 fc 11 43 04              	vmovups	%ymm0, 4(%rbx)
10000563d: c5 fc 11 43 20              	vmovups	%ymm0, 32(%rbx)
100005642: 48 89 53 40                 	movq	%rdx, 64(%rbx)
100005646: 48 8d 53 50                 	leaq	80(%rbx), %rdx
10000564a: 48 89 95 c8 fe ff ff        	movq	%rdx, -312(%rbp)
100005651: 48 89 53 48                 	movq	%rdx, 72(%rbx)
100005655: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005659: c5 f8 11 43 50              	vmovups	%xmm0, 80(%rbx)
10000565e: 89 4d b8                    	movl	%ecx, -72(%rbp)
100005661: 89 45 bc                    	movl	%eax, -68(%rbp)
100005664: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
100005668: 48 89 df                    	movq	%rbx, %rdi
10000566b: be 02 00 00 00              	movl	$2, %esi
100005670: 31 c9                       	xorl	%ecx, %ecx
100005672: c5 f8 77                    	vzeroupper
100005675: e8 50 1a 00 00              	callq	6736 <dyld_stub_binder+0x1000070ca>
10000567a: 41 8b 46 18                 	movl	24(%r14), %eax
10000567e: 85 c0                       	testl	%eax, %eax
100005680: 0f 84 a8 00 00 00           	je	168 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x34e>
100005686: 48 8d 4b 04                 	leaq	4(%rbx), %rcx
10000568a: 48 89 8d d0 fe ff ff        	movq	%rcx, -304(%rbp)
100005691: c5 fa 10 45 b4              	vmovss	-76(%rbp), %xmm0
100005696: c5 fa 59 05 1a 36 00 00     	vmulss	13850(%rip), %xmm0, %xmm0
10000569e: c5 fa 11 45 b0              	vmovss	%xmm0, -80(%rbp)
1000056a3: 48 8d 4b 10                 	leaq	16(%rbx), %rcx
1000056a7: 48 89 8d d8 fe ff ff        	movq	%rcx, -296(%rbp)
1000056ae: 41 8b 4e 1c                 	movl	28(%r14), %ecx
1000056b2: 31 d2                       	xorl	%edx, %edx
1000056b4: 45 31 ed                    	xorl	%r13d, %r13d
1000056b7: 85 c9                       	testl	%ecx, %ecx
1000056b9: 75 11                       	jne	17 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2ec>
1000056bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000056c0: 31 c9                       	xorl	%ecx, %ecx
1000056c2: ff c2                       	incl	%edx
1000056c4: 39 c2                       	cmpl	%eax, %edx
1000056c6: 73 66                       	jae	102 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x34e>
1000056c8: 85 c9                       	testl	%ecx, %ecx
1000056ca: 74 f4                       	je	-12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2e0>
1000056cc: 89 55 b4                    	movl	%edx, -76(%rbp)
1000056cf: 4c 63 e2                    	movslq	%edx, %r12
1000056d2: 45 31 ff                    	xorl	%r15d, %r15d
1000056d5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000056df: 90                          	nop
1000056e0: 4c 89 f7                    	movq	%r14, %rdi
1000056e3: e8 98 f5 ff ff              	callq	-2664 <__ZN14ModelInterface13output_bufferEv>
1000056e8: 43 8d 0c 2f                 	leal	(%r15,%r13), %ecx
1000056ec: 89 c9                       	movl	%ecx, %ecx
1000056ee: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000056f2: c5 ea 2a c0                 	vcvtsi2ss	%eax, %xmm2, %xmm0
1000056f6: c5 f8 2e 45 b0              	vucomiss	-80(%rbp), %xmm0
1000056fb: 0f 97 c0                    	seta	%al
1000056fe: 48 8b 4b 48                 	movq	72(%rbx), %rcx
100005702: 48 8b 09                    	movq	(%rcx), %rcx
100005705: 49 0f af cc                 	imulq	%r12, %rcx
100005709: 48 03 4b 10                 	addq	16(%rbx), %rcx
10000570d: 4d 63 ff                    	movslq	%r15d, %r15
100005710: f6 d8                       	negb	%al
100005712: 41 88 04 0f                 	movb	%al, (%r15,%rcx)
100005716: 41 ff c7                    	incl	%r15d
100005719: 41 8b 4e 1c                 	movl	28(%r14), %ecx
10000571d: 41 39 cf                    	cmpl	%ecx, %r15d
100005720: 72 be                       	jb	-66 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x300>
100005722: 41 8b 46 18                 	movl	24(%r14), %eax
100005726: 45 01 fd                    	addl	%r15d, %r13d
100005729: 8b 55 b4                    	movl	-76(%rbp), %edx
10000572c: eb 94                       	jmp	-108 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2e2>
10000572e: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100005735: 48 85 c0                    	testq	%rax, %rax
100005738: 74 12                       	je	18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x36c>
10000573a: f0                          	lock
10000573b: ff 48 14                    	decl	20(%rax)
10000573e: 75 0c                       	jne	12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x36c>
100005740: 48 8d bd 40 ff ff ff        	leaq	-192(%rbp), %rdi
100005747: e8 78 19 00 00              	callq	6520 <dyld_stub_binder+0x1000070c4>
10000574c: 48 c7 85 78 ff ff ff 00 00 00 00    	movq	$0, -136(%rbp)
100005757: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000575b: c5 fc 11 85 50 ff ff ff     	vmovups	%ymm0, -176(%rbp)
100005763: 83 bd 44 ff ff ff 00        	cmpl	$0, -188(%rbp)
10000576a: 7e 2a                       	jle	42 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3b6>
10000576c: 48 8b 45 80                 	movq	-128(%rbp), %rax
100005770: 31 c9                       	xorl	%ecx, %ecx
100005772: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000577c: 0f 1f 40 00                 	nopl	(%rax)
100005780: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100005787: 48 ff c1                    	incq	%rcx
10000578a: 48 63 95 44 ff ff ff        	movslq	-188(%rbp), %rdx
100005791: 48 39 d1                    	cmpq	%rdx, %rcx
100005794: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3a0>
100005796: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
10000579a: 48 8d 45 90                 	leaq	-112(%rbp), %rax
10000579e: 48 39 c7                    	cmpq	%rax, %rdi
1000057a1: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3cb>
1000057a3: c5 f8 77                    	vzeroupper
1000057a6: e8 4f 19 00 00              	callq	6479 <dyld_stub_binder+0x1000070fa>
1000057ab: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
1000057b2: 48 85 c0                    	testq	%rax, %rax
1000057b5: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3ec>
1000057b7: f0                          	lock
1000057b8: ff 48 14                    	decl	20(%rax)
1000057bb: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3ec>
1000057bd: 48 8d bd e0 fe ff ff        	leaq	-288(%rbp), %rdi
1000057c4: c5 f8 77                    	vzeroupper
1000057c7: e8 f8 18 00 00              	callq	6392 <dyld_stub_binder+0x1000070c4>
1000057cc: 48 c7 85 18 ff ff ff 00 00 00 00    	movq	$0, -232(%rbp)
1000057d7: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000057db: c5 fc 11 85 f0 fe ff ff     	vmovups	%ymm0, -272(%rbp)
1000057e3: 83 bd e4 fe ff ff 00        	cmpl	$0, -284(%rbp)
1000057ea: 7e 2a                       	jle	42 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x436>
1000057ec: 48 8b 85 20 ff ff ff        	movq	-224(%rbp), %rax
1000057f3: 31 c9                       	xorl	%ecx, %ecx
1000057f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000057ff: 90                          	nop
100005800: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100005807: 48 ff c1                    	incq	%rcx
10000580a: 48 63 95 e4 fe ff ff        	movslq	-284(%rbp), %rdx
100005811: 48 39 d1                    	cmpq	%rdx, %rcx
100005814: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x420>
100005816: 48 8b bd 28 ff ff ff        	movq	-216(%rbp), %rdi
10000581d: 48 8d 85 30 ff ff ff        	leaq	-208(%rbp), %rax
100005824: 48 39 c7                    	cmpq	%rax, %rdi
100005827: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x451>
100005829: c5 f8 77                    	vzeroupper
10000582c: e8 c9 18 00 00              	callq	6345 <dyld_stub_binder+0x1000070fa>
100005831: 48 8b 05 28 38 00 00        	movq	14376(%rip), %rax
100005838: 48 8b 00                    	movq	(%rax), %rax
10000583b: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
10000583f: 75 18                       	jne	24 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x479>
100005841: 48 89 d8                    	movq	%rbx, %rax
100005844: 48 81 c4 28 01 00 00        	addq	$296, %rsp
10000584b: 5b                          	popq	%rbx
10000584c: 41 5c                       	popq	%r12
10000584e: 41 5d                       	popq	%r13
100005850: 41 5e                       	popq	%r14
100005852: 41 5f                       	popq	%r15
100005854: 5d                          	popq	%rbp
100005855: c5 f8 77                    	vzeroupper
100005858: c3                          	retq
100005859: c5 f8 77                    	vzeroupper
10000585c: e8 05 19 00 00              	callq	6405 <dyld_stub_binder+0x100007166>
100005861: 48 89 c7                    	movq	%rax, %rdi
100005864: e8 47 14 00 00              	callq	5191 <___clang_call_terminate>
100005869: 48 89 c7                    	movq	%rax, %rdi
10000586c: e8 3f 14 00 00              	callq	5183 <___clang_call_terminate>
100005871: e9 94 00 00 00              	jmp	148 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52a>
100005876: eb 00                       	jmp	0 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x498>
100005878: 48 89 c3                    	movq	%rax, %rbx
10000587b: e9 ff 00 00 00              	jmp	255 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x59f>
100005880: e9 85 00 00 00              	jmp	133 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52a>
100005885: 48 89 d9                    	movq	%rbx, %rcx
100005888: 48 89 c3                    	movq	%rax, %rbx
10000588b: 48 8b 41 38                 	movq	56(%rcx), %rax
10000588f: 48 85 c0                    	testq	%rax, %rax
100005892: 74 0f                       	je	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4c3>
100005894: f0                          	lock
100005895: ff 48 14                    	decl	20(%rax)
100005898: 75 09                       	jne	9 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4c3>
10000589a: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
10000589e: e8 21 18 00 00              	callq	6177 <dyld_stub_binder+0x1000070c4>
1000058a3: 48 8b 45 a8                 	movq	-88(%rbp), %rax
1000058a7: 48 c7 40 38 00 00 00 00     	movq	$0, 56(%rax)
1000058af: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000058b3: 48 8b 8d d8 fe ff ff        	movq	-296(%rbp), %rcx
1000058ba: c5 fc 11 01                 	vmovups	%ymm0, (%rcx)
1000058be: 83 78 04 00                 	cmpl	$0, 4(%rax)
1000058c2: 48 8b b5 d0 fe ff ff        	movq	-304(%rbp), %rsi
1000058c9: 7e 1c                       	jle	28 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x507>
1000058cb: 48 8b 45 a8                 	movq	-88(%rbp), %rax
1000058cf: 48 8b 40 40                 	movq	64(%rax), %rax
1000058d3: 31 c9                       	xorl	%ecx, %ecx
1000058d5: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000058dc: 48 ff c1                    	incq	%rcx
1000058df: 48 63 16                    	movslq	(%rsi), %rdx
1000058e2: 48 39 d1                    	cmpq	%rdx, %rcx
1000058e5: 7c ee                       	jl	-18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4f5>
1000058e7: 48 8b 45 a8                 	movq	-88(%rbp), %rax
1000058eb: 48 8b 78 48                 	movq	72(%rax), %rdi
1000058ef: 48 3b bd c8 fe ff ff        	cmpq	-312(%rbp), %rdi
1000058f6: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52d>
1000058f8: c5 f8 77                    	vzeroupper
1000058fb: e8 fa 17 00 00              	callq	6138 <dyld_stub_binder+0x1000070fa>
100005900: eb 0b                       	jmp	11 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x52d>
100005902: 48 89 c7                    	movq	%rax, %rdi
100005905: e8 a6 13 00 00              	callq	5030 <___clang_call_terminate>
10000590a: 48 89 c3                    	movq	%rax, %rbx
10000590d: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100005914: 48 85 c0                    	testq	%rax, %rax
100005917: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x54e>
100005919: f0                          	lock
10000591a: ff 48 14                    	decl	20(%rax)
10000591d: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x54e>
10000591f: 48 8d bd 40 ff ff ff        	leaq	-192(%rbp), %rdi
100005926: c5 f8 77                    	vzeroupper
100005929: e8 96 17 00 00              	callq	6038 <dyld_stub_binder+0x1000070c4>
10000592e: 48 c7 85 78 ff ff ff 00 00 00 00    	movq	$0, -136(%rbp)
100005939: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000593d: c5 fc 11 85 50 ff ff ff     	vmovups	%ymm0, -176(%rbp)
100005945: 83 bd 44 ff ff ff 00        	cmpl	$0, -188(%rbp)
10000594c: 7e 1c                       	jle	28 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x58a>
10000594e: 48 8b 45 80                 	movq	-128(%rbp), %rax
100005952: 31 c9                       	xorl	%ecx, %ecx
100005954: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
10000595b: 48 ff c1                    	incq	%rcx
10000595e: 48 63 95 44 ff ff ff        	movslq	-188(%rbp), %rdx
100005965: 48 39 d1                    	cmpq	%rdx, %rcx
100005968: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x574>
10000596a: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
10000596e: 48 8d 45 90                 	leaq	-112(%rbp), %rax
100005972: 48 39 c7                    	cmpq	%rax, %rdi
100005975: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x59f>
100005977: c5 f8 77                    	vzeroupper
10000597a: e8 7b 17 00 00              	callq	6011 <dyld_stub_binder+0x1000070fa>
10000597f: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
100005986: 48 85 c0                    	testq	%rax, %rax
100005989: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5c0>
10000598b: f0                          	lock
10000598c: ff 48 14                    	decl	20(%rax)
10000598f: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5c0>
100005991: 48 8d bd e0 fe ff ff        	leaq	-288(%rbp), %rdi
100005998: c5 f8 77                    	vzeroupper
10000599b: e8 24 17 00 00              	callq	5924 <dyld_stub_binder+0x1000070c4>
1000059a0: 48 c7 85 18 ff ff ff 00 00 00 00    	movq	$0, -232(%rbp)
1000059ab: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000059af: c5 fc 11 85 f0 fe ff ff     	vmovups	%ymm0, -272(%rbp)
1000059b7: 83 bd e4 fe ff ff 00        	cmpl	$0, -284(%rbp)
1000059be: 7e 26                       	jle	38 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x606>
1000059c0: 48 8b 85 20 ff ff ff        	movq	-224(%rbp), %rax
1000059c7: 31 c9                       	xorl	%ecx, %ecx
1000059c9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000059d0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000059d7: 48 ff c1                    	incq	%rcx
1000059da: 48 63 95 e4 fe ff ff        	movslq	-284(%rbp), %rdx
1000059e1: 48 39 d1                    	cmpq	%rdx, %rcx
1000059e4: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5f0>
1000059e6: 48 8b bd 28 ff ff ff        	movq	-216(%rbp), %rdi
1000059ed: 48 8d 85 30 ff ff ff        	leaq	-208(%rbp), %rax
1000059f4: 48 39 c7                    	cmpq	%rax, %rdi
1000059f7: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x621>
1000059f9: c5 f8 77                    	vzeroupper
1000059fc: e8 f9 16 00 00              	callq	5881 <dyld_stub_binder+0x1000070fa>
100005a01: 48 89 df                    	movq	%rbx, %rdi
100005a04: c5 f8 77                    	vzeroupper
100005a07: e8 a0 16 00 00              	callq	5792 <dyld_stub_binder+0x1000070ac>
100005a0c: 0f 0b                       	ud2
100005a0e: 48 89 c7                    	movq	%rax, %rdi
100005a11: e8 9a 12 00 00              	callq	4762 <___clang_call_terminate>
100005a16: 48 89 c7                    	movq	%rax, %rdi
100005a19: e8 92 12 00 00              	callq	4754 <___clang_call_terminate>
100005a1e: 66 90                       	nop

0000000100005a20 _main:
100005a20: 55                          	pushq	%rbp
100005a21: 48 89 e5                    	movq	%rsp, %rbp
100005a24: 41 57                       	pushq	%r15
100005a26: 41 56                       	pushq	%r14
100005a28: 41 55                       	pushq	%r13
100005a2a: 41 54                       	pushq	%r12
100005a2c: 53                          	pushq	%rbx
100005a2d: 48 83 e4 e0                 	andq	$-32, %rsp
100005a31: 48 81 ec e0 02 00 00        	subq	$736, %rsp
100005a38: 48 8b 05 21 36 00 00        	movq	13857(%rip), %rax
100005a3f: 48 8b 00                    	movq	(%rax), %rax
100005a42: 48 89 84 24 c0 02 00 00     	movq	%rax, 704(%rsp)
100005a4a: 48 8d bc 24 28 02 00 00     	leaq	552(%rsp), %rdi
100005a52: e8 79 f6 ff ff              	callq	-2439 <__ZN11LineNetworkC1Ev>
100005a57: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005a5b: c5 f9 7f 44 24 20           	vmovdqa	%xmm0, 32(%rsp)
100005a61: 48 c7 44 24 30 00 00 00 00  	movq	$0, 48(%rsp)
100005a6a: bf 30 00 00 00              	movl	$48, %edi
100005a6f: e8 e0 16 00 00              	callq	5856 <dyld_stub_binder+0x100007154>
100005a74: 48 89 44 24 30              	movq	%rax, 48(%rsp)
100005a79: c5 f8 28 05 5f 32 00 00     	vmovaps	12895(%rip), %xmm0
100005a81: c5 f8 29 44 24 20           	vmovaps	%xmm0, 32(%rsp)
100005a87: c5 fe 6f 05 35 34 00 00     	vmovdqu	13365(%rip), %ymm0
100005a8f: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100005a93: 48 b9 69 64 65 6f 2e 6d 70 34       	movabsq	$3778640133568685161, %rcx
100005a9d: 48 89 48 20                 	movq	%rcx, 32(%rax)
100005aa1: c6 40 28 00                 	movb	$0, 40(%rax)
100005aa5: 48 8d bc 24 f8 01 00 00     	leaq	504(%rsp), %rdi
100005aad: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
100005ab2: 31 d2                       	xorl	%edx, %edx
100005ab4: c5 f8 77                    	vzeroupper
100005ab7: e8 f6 15 00 00              	callq	5622 <dyld_stub_binder+0x1000070b2>
100005abc: f6 44 24 20 01              	testb	$1, 32(%rsp)
100005ac1: 74 0a                       	je	10 <_main+0xad>
100005ac3: 48 8b 7c 24 30              	movq	48(%rsp), %rdi
100005ac8: e8 7b 16 00 00              	callq	5755 <dyld_stub_binder+0x100007148>
100005acd: 4c 8d 74 24 28              	leaq	40(%rsp), %r14
100005ad2: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005ad6: c5 f9 d6 84 24 00 01 00 00  	vmovq	%xmm0, 256(%rsp)
100005adf: 48 8d 9c 24 f8 01 00 00     	leaq	504(%rsp), %rbx
100005ae7: c4 e2 7d 59 05 98 31 00 00  	vpbroadcastq	12696(%rip), %ymm0
100005af0: c5 fd 7f 84 24 60 02 00 00  	vmovdqa	%ymm0, 608(%rsp)
100005af9: 4c 8d ac 24 10 01 00 00     	leaq	272(%rsp), %r13
100005b01: eb 19                       	jmp	25 <_main+0xfc>
100005b03: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005b0d: 0f 1f 00                    	nopl	(%rax)
100005b10: 45 85 e4                    	testl	%r12d, %r12d
100005b13: 4c 89 fb                    	movq	%r15, %rbx
100005b16: 0f 85 18 0e 00 00           	jne	3608 <_main+0xf14>
100005b1c: 48 89 df                    	movq	%rbx, %rdi
100005b1f: c5 f8 77                    	vzeroupper
100005b22: e8 d9 15 00 00              	callq	5593 <dyld_stub_binder+0x100007100>
100005b27: 84 c0                       	testb	%al, %al
100005b29: 0f 84 05 0e 00 00           	je	3589 <_main+0xf14>
100005b2f: c7 44 24 20 00 00 ff 42     	movl	$1124007936, 32(%rsp)
100005b37: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005b3b: 48 8d 44 24 24              	leaq	36(%rsp), %rax
100005b40: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
100005b45: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100005b49: 4c 89 74 24 60              	movq	%r14, 96(%rsp)
100005b4e: 48 8d 44 24 70              	leaq	112(%rsp), %rax
100005b53: 48 89 44 24 68              	movq	%rax, 104(%rsp)
100005b58: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005b5c: c5 fa 7f 00                 	vmovdqu	%xmm0, (%rax)
100005b60: 49 89 df                    	movq	%rbx, %r15
100005b63: 48 89 df                    	movq	%rbx, %rdi
100005b66: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
100005b6b: c5 f8 77                    	vzeroupper
100005b6e: e8 4b 15 00 00              	callq	5451 <dyld_stub_binder+0x1000070be>
100005b73: 41 bc 03 00 00 00           	movl	$3, %r12d
100005b79: 48 83 7c 24 30 00           	cmpq	$0, 48(%rsp)
100005b7f: 0f 84 2b 0d 00 00           	je	3371 <_main+0xe90>
100005b85: 8b 44 24 24                 	movl	36(%rsp), %eax
100005b89: 83 f8 03                    	cmpl	$3, %eax
100005b8c: 0f 8d 8e 02 00 00           	jge	654 <_main+0x400>
100005b92: 48 63 4c 24 28              	movslq	40(%rsp), %rcx
100005b97: 48 63 74 24 2c              	movslq	44(%rsp), %rsi
100005b9c: 48 0f af f1                 	imulq	%rcx, %rsi
100005ba0: 85 c0                       	testl	%eax, %eax
100005ba2: 0f 84 08 0d 00 00           	je	3336 <_main+0xe90>
100005ba8: 48 85 f6                    	testq	%rsi, %rsi
100005bab: 0f 84 ff 0c 00 00           	je	3327 <_main+0xe90>
100005bb1: bf 19 00 00 00              	movl	$25, %edi
100005bb6: c5 f8 77                    	vzeroupper
100005bb9: e8 30 15 00 00              	callq	5424 <dyld_stub_binder+0x1000070ee>
100005bbe: 3c 1b                       	cmpb	$27, %al
100005bc0: 0f 84 ea 0c 00 00           	je	3306 <_main+0xe90>
100005bc6: e8 59 15 00 00              	callq	5465 <dyld_stub_binder+0x100007124>
100005bcb: 48 89 84 24 70 01 00 00     	movq	%rax, 368(%rsp)
100005bd3: 48 8d bc 24 80 01 00 00     	leaq	384(%rsp), %rdi
100005bdb: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
100005be0: 48 8d 94 24 28 02 00 00     	leaq	552(%rsp), %rdx
100005be8: c5 f9 6e 05 cc 30 00 00     	vmovd	12492(%rip), %xmm0
100005bf0: e8 eb f7 ff ff              	callq	-2069 <__Z14get_predictionRN2cv3MatER14ModelInterfacef>
100005bf5: e8 2a 15 00 00              	callq	5418 <dyld_stub_binder+0x100007124>
100005bfa: 49 89 c4                    	movq	%rax, %r12
100005bfd: c7 84 24 10 01 00 00 00 00 ff 42    	movl	$1124007936, 272(%rsp)
100005c08: 48 8d 84 24 14 01 00 00     	leaq	276(%rsp), %rax
100005c10: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005c14: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100005c18: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
100005c1d: 48 8b 44 24 28              	movq	40(%rsp), %rax
100005c22: 48 8d 8c 24 18 01 00 00     	leaq	280(%rsp), %rcx
100005c2a: 48 89 8c 24 50 01 00 00     	movq	%rcx, 336(%rsp)
100005c32: 48 8d 8c 24 60 01 00 00     	leaq	352(%rsp), %rcx
100005c3a: 48 89 8c 24 58 01 00 00     	movq	%rcx, 344(%rsp)
100005c42: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005c46: c5 fa 7f 01                 	vmovdqu	%xmm0, (%rcx)
100005c4a: 48 89 84 24 a0 02 00 00     	movq	%rax, 672(%rsp)
100005c52: 4d 89 ee                    	movq	%r13, %r14
100005c55: 4c 89 ef                    	movq	%r13, %rdi
100005c58: be 02 00 00 00              	movl	$2, %esi
100005c5d: 48 8d 94 24 a0 02 00 00     	leaq	672(%rsp), %rdx
100005c65: 31 c9                       	xorl	%ecx, %ecx
100005c67: c5 f8 77                    	vzeroupper
100005c6a: e8 5b 14 00 00              	callq	5211 <dyld_stub_binder+0x1000070ca>
100005c6f: 48 c7 84 24 90 00 00 00 00 00 00 00 	movq	$0, 144(%rsp)
100005c7b: c7 84 24 80 00 00 00 00 00 01 01    	movl	$16842752, 128(%rsp)
100005c86: 48 8d 84 24 80 01 00 00     	leaq	384(%rsp), %rax
100005c8e: 48 89 84 24 88 00 00 00     	movq	%rax, 136(%rsp)
100005c96: 48 c7 84 24 f0 00 00 00 00 00 00 00 	movq	$0, 240(%rsp)
100005ca2: c7 84 24 e0 00 00 00 00 00 01 02    	movl	$33619968, 224(%rsp)
100005cad: 4c 89 b4 24 e8 00 00 00     	movq	%r14, 232(%rsp)
100005cb5: 8b 44 24 28                 	movl	40(%rsp), %eax
100005cb9: 8b 4c 24 2c                 	movl	44(%rsp), %ecx
100005cbd: 89 8c 24 08 01 00 00        	movl	%ecx, 264(%rsp)
100005cc4: 89 84 24 0c 01 00 00        	movl	%eax, 268(%rsp)
100005ccb: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005ccf: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100005cd3: 48 8d 9c 24 80 00 00 00     	leaq	128(%rsp), %rbx
100005cdb: 48 89 df                    	movq	%rbx, %rdi
100005cde: 48 8d b4 24 e0 00 00 00     	leaq	224(%rsp), %rsi
100005ce6: 48 8d 94 24 08 01 00 00     	leaq	264(%rsp), %rdx
100005cee: b9 01 00 00 00              	movl	$1, %ecx
100005cf3: e8 ea 13 00 00              	callq	5098 <dyld_stub_binder+0x1000070e2>
100005cf8: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005cfc: c5 fd 7f 84 24 e0 00 00 00  	vmovdqa	%ymm0, 224(%rsp)
100005d05: c7 84 24 80 00 00 00 00 00 ff 42    	movl	$1124007936, 128(%rsp)
100005d10: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
100005d18: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
100005d1d: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100005d21: 48 8b 44 24 28              	movq	40(%rsp), %rax
100005d26: 48 8d 8c 24 88 00 00 00     	leaq	136(%rsp), %rcx
100005d2e: 48 89 8c 24 c0 00 00 00     	movq	%rcx, 192(%rsp)
100005d36: 48 8d 8c 24 d0 00 00 00     	leaq	208(%rsp), %rcx
100005d3e: 48 89 8c 24 c8 00 00 00     	movq	%rcx, 200(%rsp)
100005d46: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005d4a: c5 fa 7f 01                 	vmovdqu	%xmm0, (%rcx)
100005d4e: 48 89 84 24 a0 02 00 00     	movq	%rax, 672(%rsp)
100005d56: 48 89 df                    	movq	%rbx, %rdi
100005d59: be 02 00 00 00              	movl	$2, %esi
100005d5e: 48 8d 94 24 a0 02 00 00     	leaq	672(%rsp), %rdx
100005d66: b9 10 00 00 00              	movl	$16, %ecx
100005d6b: c5 f8 77                    	vzeroupper
100005d6e: e8 57 13 00 00              	callq	4951 <dyld_stub_binder+0x1000070ca>
100005d73: 48 89 df                    	movq	%rbx, %rdi
100005d76: 48 8d b4 24 e0 00 00 00     	leaq	224(%rsp), %rsi
100005d7e: e8 53 13 00 00              	callq	4947 <dyld_stub_binder+0x1000070d6>
100005d83: 48 8b 44 24 58              	movq	88(%rsp), %rax
100005d88: 48 85 c0                    	testq	%rax, %rax
100005d8b: 74 04                       	je	4 <_main+0x371>
100005d8d: f0                          	lock
100005d8e: ff 40 14                    	incl	20(%rax)
100005d91: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100005d99: 48 85 c0                    	testq	%rax, %rax
100005d9c: 74 0e                       	je	14 <_main+0x38c>
100005d9e: f0                          	lock
100005d9f: ff 48 14                    	decl	20(%rax)
100005da2: 75 08                       	jne	8 <_main+0x38c>
100005da4: 48 89 df                    	movq	%rbx, %rdi
100005da7: e8 18 13 00 00              	callq	4888 <dyld_stub_binder+0x1000070c4>
100005dac: 48 c7 84 24 b8 00 00 00 00 00 00 00 	movq	$0, 184(%rsp)
100005db8: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
100005dc0: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005dc4: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100005dc9: 83 bc 24 84 00 00 00 00     	cmpl	$0, 132(%rsp)
100005dd1: 0f 8e 56 05 00 00           	jle	1366 <_main+0x90d>
100005dd7: 48 8b 84 24 c0 00 00 00     	movq	192(%rsp), %rax
100005ddf: 31 c9                       	xorl	%ecx, %ecx
100005de1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005deb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100005df0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100005df7: 48 ff c1                    	incq	%rcx
100005dfa: 48 63 94 24 84 00 00 00     	movslq	132(%rsp), %rdx
100005e02: 48 39 d1                    	cmpq	%rdx, %rcx
100005e05: 7c e9                       	jl	-23 <_main+0x3d0>
100005e07: 8b 44 24 20                 	movl	32(%rsp), %eax
100005e0b: 89 84 24 80 00 00 00        	movl	%eax, 128(%rsp)
100005e12: 83 fa 02                    	cmpl	$2, %edx
100005e15: 0f 8e 1d 05 00 00           	jle	1309 <_main+0x918>
100005e1b: e9 5b 05 00 00              	jmp	1371 <_main+0x95b>
100005e20: 48 8b 4c 24 60              	movq	96(%rsp), %rcx
100005e25: 83 f8 0f                    	cmpl	$15, %eax
100005e28: 77 0c                       	ja	12 <_main+0x416>
100005e2a: be 01 00 00 00              	movl	$1, %esi
100005e2f: 31 d2                       	xorl	%edx, %edx
100005e31: e9 da 04 00 00              	jmp	1242 <_main+0x8f0>
100005e36: 89 c2                       	movl	%eax, %edx
100005e38: 83 e2 f0                    	andl	$-16, %edx
100005e3b: 48 8d 72 f0                 	leaq	-16(%rdx), %rsi
100005e3f: 48 89 f7                    	movq	%rsi, %rdi
100005e42: 48 c1 ef 04                 	shrq	$4, %rdi
100005e46: 48 ff c7                    	incq	%rdi
100005e49: 89 fb                       	movl	%edi, %ebx
100005e4b: 83 e3 03                    	andl	$3, %ebx
100005e4e: 48 83 fe 30                 	cmpq	$48, %rsi
100005e52: 73 25                       	jae	37 <_main+0x459>
100005e54: 31 ff                       	xorl	%edi, %edi
100005e56: c5 fd 6f 84 24 60 02 00 00  	vmovdqa	608(%rsp), %ymm0
100005e5f: c5 fd 6f c8                 	vmovdqa	%ymm0, %ymm1
100005e63: c5 fd 6f d8                 	vmovdqa	%ymm0, %ymm3
100005e67: c5 fd 6f d0                 	vmovdqa	%ymm0, %ymm2
100005e6b: 48 85 db                    	testq	%rbx, %rbx
100005e6e: 0f 85 0e 03 00 00           	jne	782 <_main+0x762>
100005e74: e9 d0 03 00 00              	jmp	976 <_main+0x829>
100005e79: 48 89 de                    	movq	%rbx, %rsi
100005e7c: 48 29 fe                    	subq	%rdi, %rsi
100005e7f: c4 e2 7d 59 0d 00 2e 00 00  	vpbroadcastq	11776(%rip), %ymm1
100005e88: 31 ff                       	xorl	%edi, %edi
100005e8a: c5 fd 6f d9                 	vmovdqa	%ymm1, %ymm3
100005e8e: c5 fd 6f d1                 	vmovdqa	%ymm1, %ymm2
100005e92: c5 fd 6f c1                 	vmovdqa	%ymm1, %ymm0
100005e96: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005ea0: c4 e2 7d 25 24 b9           	vpmovsxdq	(%rcx,%rdi,4), %ymm4
100005ea6: c4 e2 7d 25 6c b9 10        	vpmovsxdq	16(%rcx,%rdi,4), %ymm5
100005ead: c4 e2 7d 25 74 b9 20        	vpmovsxdq	32(%rcx,%rdi,4), %ymm6
100005eb4: c4 e2 7d 25 7c b9 30        	vpmovsxdq	48(%rcx,%rdi,4), %ymm7
100005ebb: c5 bd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm8
100005ec0: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
100005ec4: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
100005ec9: c4 41 75 f4 c9              	vpmuludq	%ymm9, %ymm1, %ymm9
100005ece: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
100005ed3: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100005ed9: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100005edd: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100005ee2: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100005ee7: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
100005eeb: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
100005ef0: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
100005ef5: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
100005ef9: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100005efe: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100005f02: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100005f06: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
100005f0b: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
100005f0f: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100005f14: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100005f18: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100005f1c: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100005f21: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100005f25: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100005f29: c5 dd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm4
100005f2e: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100005f32: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100005f37: c5 fd f4 ed                 	vpmuludq	%ymm5, %ymm0, %ymm5
100005f3b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100005f3f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100005f44: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100005f48: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100005f4c: c4 e2 7d 25 64 b9 40        	vpmovsxdq	64(%rcx,%rdi,4), %ymm4
100005f53: c4 e2 7d 25 6c b9 50        	vpmovsxdq	80(%rcx,%rdi,4), %ymm5
100005f5a: c4 e2 7d 25 74 b9 60        	vpmovsxdq	96(%rcx,%rdi,4), %ymm6
100005f61: c4 e2 7d 25 7c b9 70        	vpmovsxdq	112(%rcx,%rdi,4), %ymm7
100005f68: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100005f6d: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
100005f72: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100005f77: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100005f7b: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100005f80: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100005f86: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100005f8a: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100005f8f: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100005f94: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100005f98: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100005f9d: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100005fa1: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100005fa6: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100005fab: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100005faf: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100005fb3: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100005fb8: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100005fbc: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100005fc1: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100005fc5: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100005fc9: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100005fce: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100005fd2: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100005fd6: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100005fdb: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100005fdf: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100005fe4: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100005fe8: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100005fec: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100005ff1: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100005ff5: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100005ff9: c4 e2 7d 25 a4 b9 80 00 00 00       	vpmovsxdq	128(%rcx,%rdi,4), %ymm4
100006003: c4 e2 7d 25 ac b9 90 00 00 00       	vpmovsxdq	144(%rcx,%rdi,4), %ymm5
10000600d: c4 e2 7d 25 b4 b9 a0 00 00 00       	vpmovsxdq	160(%rcx,%rdi,4), %ymm6
100006017: c4 e2 7d 25 bc b9 b0 00 00 00       	vpmovsxdq	176(%rcx,%rdi,4), %ymm7
100006021: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006026: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
10000602b: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100006030: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006034: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006039: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
10000603f: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006043: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006048: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
10000604d: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006051: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006056: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
10000605a: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
10000605f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006064: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006068: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
10000606c: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006071: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006075: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
10000607a: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
10000607e: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006082: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006087: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
10000608b: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
10000608f: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006094: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006098: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
10000609d: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
1000060a1: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
1000060a5: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
1000060aa: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
1000060ae: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
1000060b2: c4 e2 7d 25 a4 b9 c0 00 00 00       	vpmovsxdq	192(%rcx,%rdi,4), %ymm4
1000060bc: c4 e2 7d 25 ac b9 d0 00 00 00       	vpmovsxdq	208(%rcx,%rdi,4), %ymm5
1000060c6: c4 e2 7d 25 b4 b9 e0 00 00 00       	vpmovsxdq	224(%rcx,%rdi,4), %ymm6
1000060d0: c4 e2 7d 25 bc b9 f0 00 00 00       	vpmovsxdq	240(%rcx,%rdi,4), %ymm7
1000060da: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
1000060df: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
1000060e4: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
1000060e9: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
1000060ed: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
1000060f2: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
1000060f8: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
1000060fc: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006101: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006106: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
10000610a: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
10000610f: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006113: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006118: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
10000611d: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006121: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006125: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
10000612a: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
10000612e: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006133: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006137: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
10000613b: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006140: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006144: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006148: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
10000614d: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006151: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006156: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
10000615a: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
10000615e: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006163: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006167: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
10000616b: 48 83 c7 40                 	addq	$64, %rdi
10000616f: 48 83 c6 04                 	addq	$4, %rsi
100006173: 0f 85 27 fd ff ff           	jne	-729 <_main+0x480>
100006179: 48 85 db                    	testq	%rbx, %rbx
10000617c: 0f 84 c7 00 00 00           	je	199 <_main+0x829>
100006182: 48 8d 34 b9                 	leaq	(%rcx,%rdi,4), %rsi
100006186: 48 83 c6 30                 	addq	$48, %rsi
10000618a: 48 c1 e3 06                 	shlq	$6, %rbx
10000618e: 31 ff                       	xorl	%edi, %edi
100006190: c4 e2 7d 25 64 3e d0        	vpmovsxdq	-48(%rsi,%rdi), %ymm4
100006197: c4 e2 7d 25 6c 3e e0        	vpmovsxdq	-32(%rsi,%rdi), %ymm5
10000619e: c4 e2 7d 25 74 3e f0        	vpmovsxdq	-16(%rsi,%rdi), %ymm6
1000061a5: c4 e2 7d 25 3c 3e           	vpmovsxdq	(%rsi,%rdi), %ymm7
1000061ab: c5 bd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm8
1000061b0: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
1000061b4: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
1000061b9: c4 41 75 f4 c9              	vpmuludq	%ymm9, %ymm1, %ymm9
1000061be: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
1000061c3: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
1000061c9: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
1000061cd: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
1000061d2: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
1000061d7: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
1000061db: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
1000061e0: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
1000061e5: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
1000061e9: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
1000061ee: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
1000061f2: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
1000061f6: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
1000061fb: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
1000061ff: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100006204: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100006208: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
10000620c: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006211: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006215: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006219: c5 dd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm4
10000621e: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100006222: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100006227: c5 fd f4 ed                 	vpmuludq	%ymm5, %ymm0, %ymm5
10000622b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
10000622f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006234: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006238: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
10000623c: 48 83 c7 40                 	addq	$64, %rdi
100006240: 48 39 fb                    	cmpq	%rdi, %rbx
100006243: 0f 85 47 ff ff ff           	jne	-185 <_main+0x770>
100006249: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
10000624e: c5 dd f4 e1                 	vpmuludq	%ymm1, %ymm4, %ymm4
100006252: c5 d5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm5
100006257: c5 e5 f4 ed                 	vpmuludq	%ymm5, %ymm3, %ymm5
10000625b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
10000625f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006264: c5 e5 f4 c9                 	vpmuludq	%ymm1, %ymm3, %ymm1
100006268: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
10000626c: c5 e5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm3
100006271: c5 e5 f4 d9                 	vpmuludq	%ymm1, %ymm3, %ymm3
100006275: c5 dd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm4
10000627a: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
10000627e: c5 dd d4 db                 	vpaddq	%ymm3, %ymm4, %ymm3
100006282: c5 e5 73 f3 20              	vpsllq	$32, %ymm3, %ymm3
100006287: c5 ed f4 c9                 	vpmuludq	%ymm1, %ymm2, %ymm1
10000628b: c5 f5 d4 cb                 	vpaddq	%ymm3, %ymm1, %ymm1
10000628f: c5 ed 73 d0 20              	vpsrlq	$32, %ymm0, %ymm2
100006294: c5 ed f4 d1                 	vpmuludq	%ymm1, %ymm2, %ymm2
100006298: c5 e5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm3
10000629d: c5 fd f4 db                 	vpmuludq	%ymm3, %ymm0, %ymm3
1000062a1: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
1000062a5: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
1000062aa: c5 fd f4 c1                 	vpmuludq	%ymm1, %ymm0, %ymm0
1000062ae: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
1000062b2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000062b8: c5 ed 73 d0 20              	vpsrlq	$32, %ymm0, %ymm2
1000062bd: c5 ed f4 d1                 	vpmuludq	%ymm1, %ymm2, %ymm2
1000062c1: c5 e5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm3
1000062c6: c5 fd f4 db                 	vpmuludq	%ymm3, %ymm0, %ymm3
1000062ca: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
1000062ce: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
1000062d3: c5 fd f4 c1                 	vpmuludq	%ymm1, %ymm0, %ymm0
1000062d7: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
1000062db: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000062e0: c5 e9 73 d0 20              	vpsrlq	$32, %xmm0, %xmm2
1000062e5: c5 e9 f4 d1                 	vpmuludq	%xmm1, %xmm2, %xmm2
1000062e9: c5 e1 73 d8 0c              	vpsrldq	$12, %xmm0, %xmm3
1000062ee: c5 f9 f4 db                 	vpmuludq	%xmm3, %xmm0, %xmm3
1000062f2: c5 e1 d4 d2                 	vpaddq	%xmm2, %xmm3, %xmm2
1000062f6: c5 e9 73 f2 20              	vpsllq	$32, %xmm2, %xmm2
1000062fb: c5 f9 f4 c1                 	vpmuludq	%xmm1, %xmm0, %xmm0
1000062ff: c5 f9 d4 c2                 	vpaddq	%xmm2, %xmm0, %xmm0
100006303: c4 e1 f9 7e c6              	vmovq	%xmm0, %rsi
100006308: 48 39 c2                    	cmpq	%rax, %rdx
10000630b: 74 13                       	je	19 <_main+0x900>
10000630d: 0f 1f 00                    	nopl	(%rax)
100006310: 48 63 3c 91                 	movslq	(%rcx,%rdx,4), %rdi
100006314: 48 0f af f7                 	imulq	%rdi, %rsi
100006318: 48 ff c2                    	incq	%rdx
10000631b: 48 39 d0                    	cmpq	%rdx, %rax
10000631e: 75 f0                       	jne	-16 <_main+0x8f0>
100006320: 85 c0                       	testl	%eax, %eax
100006322: 0f 85 80 f8 ff ff           	jne	-1920 <_main+0x188>
100006328: e9 83 05 00 00              	jmp	1411 <_main+0xe90>
10000632d: 8b 44 24 20                 	movl	32(%rsp), %eax
100006331: 89 84 24 80 00 00 00        	movl	%eax, 128(%rsp)
100006338: 8b 44 24 24                 	movl	36(%rsp), %eax
10000633c: 83 f8 02                    	cmpl	$2, %eax
10000633f: 7f 3a                       	jg	58 <_main+0x95b>
100006341: 89 84 24 84 00 00 00        	movl	%eax, 132(%rsp)
100006348: 8b 4c 24 28                 	movl	40(%rsp), %ecx
10000634c: 8b 44 24 2c                 	movl	44(%rsp), %eax
100006350: 89 8c 24 88 00 00 00        	movl	%ecx, 136(%rsp)
100006357: 89 84 24 8c 00 00 00        	movl	%eax, 140(%rsp)
10000635e: 48 8b 44 24 68              	movq	104(%rsp), %rax
100006363: 48 8b 10                    	movq	(%rax), %rdx
100006366: 48 8b b4 24 c8 00 00 00     	movq	200(%rsp), %rsi
10000636e: 48 89 16                    	movq	%rdx, (%rsi)
100006371: 48 8b 40 08                 	movq	8(%rax), %rax
100006375: 48 89 46 08                 	movq	%rax, 8(%rsi)
100006379: eb 14                       	jmp	20 <_main+0x96f>
10000637b: 48 89 df                    	movq	%rbx, %rdi
10000637e: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
100006383: c5 f8 77                    	vzeroupper
100006386: e8 45 0d 00 00              	callq	3397 <dyld_stub_binder+0x1000070d0>
10000638b: 8b 4c 24 28                 	movl	40(%rsp), %ecx
10000638f: c4 e1 db 2a 84 24 70 01 00 00       	vcvtsi2sdq	368(%rsp), %xmm4, %xmm0
100006399: c4 c1 db 2a cc              	vcvtsi2sd	%r12, %xmm4, %xmm1
10000639e: c5 fb 10 15 da 28 00 00     	vmovsd	10458(%rip), %xmm2
1000063a6: c5 fb 5e c2                 	vdivsd	%xmm2, %xmm0, %xmm0
1000063aa: c5 f3 5e ca                 	vdivsd	%xmm2, %xmm1, %xmm1
1000063ae: c5 fc 10 54 24 30           	vmovups	48(%rsp), %ymm2
1000063b4: c5 fc 11 94 24 90 00 00 00  	vmovups	%ymm2, 144(%rsp)
1000063bd: c5 f9 10 54 24 50           	vmovupd	80(%rsp), %xmm2
1000063c3: c5 f9 11 94 24 b0 00 00 00  	vmovupd	%xmm2, 176(%rsp)
1000063cc: 85 c9                       	testl	%ecx, %ecx
1000063ce: 4c 8d 74 24 28              	leaq	40(%rsp), %r14
1000063d3: 0f 84 48 01 00 00           	je	328 <_main+0xb01>
1000063d9: 31 c0                       	xorl	%eax, %eax
1000063db: 8b 74 24 2c                 	movl	44(%rsp), %esi
1000063df: eb 19                       	jmp	25 <_main+0x9da>
1000063e1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000063eb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000063f0: ff c0                       	incl	%eax
1000063f2: 39 c8                       	cmpl	%ecx, %eax
1000063f4: 0f 83 27 01 00 00           	jae	295 <_main+0xb01>
1000063fa: 85 f6                       	testl	%esi, %esi
1000063fc: be 00 00 00 00              	movl	$0, %esi
100006401: 74 ed                       	je	-19 <_main+0x9d0>
100006403: 48 63 c8                    	movslq	%eax, %rcx
100006406: 31 d2                       	xorl	%edx, %edx
100006408: c5 fb 10 25 80 28 00 00     	vmovsd	10368(%rip), %xmm4
100006410: c5 fa 10 2d a8 28 00 00     	vmovss	10408(%rip), %xmm5
100006418: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100006420: 48 8b 74 24 68              	movq	104(%rsp), %rsi
100006425: 48 8b 3e                    	movq	(%rsi), %rdi
100006428: 48 0f af f9                 	imulq	%rcx, %rdi
10000642c: 48 03 7c 24 30              	addq	48(%rsp), %rdi
100006431: 48 63 d2                    	movslq	%edx, %rdx
100006434: 48 8d 34 52                 	leaq	(%rdx,%rdx,2), %rsi
100006438: 0f b6 3c 37                 	movzbl	(%rdi,%rsi), %edi
10000643c: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
100006440: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
100006444: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100006448: 48 8b 9c 24 c8 00 00 00     	movq	200(%rsp), %rbx
100006450: 48 8b 1b                    	movq	(%rbx), %rbx
100006453: 48 0f af d9                 	imulq	%rcx, %rbx
100006457: 48 03 9c 24 90 00 00 00     	addq	144(%rsp), %rbx
10000645f: 40 88 3c 33                 	movb	%dil, (%rbx,%rsi)
100006463: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100006468: 48 8b 3f                    	movq	(%rdi), %rdi
10000646b: 48 0f af f9                 	imulq	%rcx, %rdi
10000646f: 48 03 7c 24 30              	addq	48(%rsp), %rdi
100006474: 0f b6 7c 37 01              	movzbl	1(%rdi,%rsi), %edi
100006479: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
10000647d: 48 8b bc 24 58 01 00 00     	movq	344(%rsp), %rdi
100006485: 48 8b 3f                    	movq	(%rdi), %rdi
100006488: 48 0f af f9                 	imulq	%rcx, %rdi
10000648c: 48 03 bc 24 20 01 00 00     	addq	288(%rsp), %rdi
100006494: 0f b6 3c 3a                 	movzbl	(%rdx,%rdi), %edi
100006498: c5 ca 2a df                 	vcvtsi2ss	%edi, %xmm6, %xmm3
10000649c: c5 e2 59 dd                 	vmulss	%xmm5, %xmm3, %xmm3
1000064a0: c5 e2 5a db                 	vcvtss2sd	%xmm3, %xmm3, %xmm3
1000064a4: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
1000064a8: c5 eb 58 d3                 	vaddsd	%xmm3, %xmm2, %xmm2
1000064ac: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000064b0: 48 8b 9c 24 c8 00 00 00     	movq	200(%rsp), %rbx
1000064b8: 48 8b 1b                    	movq	(%rbx), %rbx
1000064bb: 48 0f af d9                 	imulq	%rcx, %rbx
1000064bf: 48 03 9c 24 90 00 00 00     	addq	144(%rsp), %rbx
1000064c7: 40 88 7c 33 01              	movb	%dil, 1(%rbx,%rsi)
1000064cc: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
1000064d1: 48 8b 3f                    	movq	(%rdi), %rdi
1000064d4: 48 0f af f9                 	imulq	%rcx, %rdi
1000064d8: 48 03 7c 24 30              	addq	48(%rsp), %rdi
1000064dd: 0f b6 7c 37 02              	movzbl	2(%rdi,%rsi), %edi
1000064e2: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
1000064e6: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
1000064ea: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000064ee: 48 8b 9c 24 c8 00 00 00     	movq	200(%rsp), %rbx
1000064f6: 48 8b 1b                    	movq	(%rbx), %rbx
1000064f9: 48 0f af d9                 	imulq	%rcx, %rbx
1000064fd: 48 03 9c 24 90 00 00 00     	addq	144(%rsp), %rbx
100006505: 40 88 7c 33 02              	movb	%dil, 2(%rbx,%rsi)
10000650a: ff c2                       	incl	%edx
10000650c: 8b 74 24 2c                 	movl	44(%rsp), %esi
100006510: 39 f2                       	cmpl	%esi, %edx
100006512: 0f 82 08 ff ff ff           	jb	-248 <_main+0xa00>
100006518: 8b 4c 24 28                 	movl	40(%rsp), %ecx
10000651c: e9 cf fe ff ff              	jmp	-305 <_main+0x9d0>
100006521: c5 fb 10 15 6f 27 00 00     	vmovsd	10095(%rip), %xmm2
100006529: c5 eb 59 94 24 00 01 00 00  	vmulsd	256(%rsp), %xmm2, %xmm2
100006532: c5 f3 5c c0                 	vsubsd	%xmm0, %xmm1, %xmm0
100006536: c5 fb 58 05 62 27 00 00     	vaddsd	10082(%rip), %xmm0, %xmm0
10000653e: c5 fb 10 0d 62 27 00 00     	vmovsd	10082(%rip), %xmm1
100006546: c5 f3 5e c0                 	vdivsd	%xmm0, %xmm1, %xmm0
10000654a: c5 eb 58 c0                 	vaddsd	%xmm0, %xmm2, %xmm0
10000654e: c5 fb 11 84 24 00 01 00 00  	vmovsd	%xmm0, 256(%rsp)
100006557: c5 f8 77                    	vzeroupper
10000655a: e8 13 0c 00 00              	callq	3091 <dyld_stub_binder+0x100007172>
10000655f: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100006563: 48 8d 9c 24 a0 02 00 00     	leaq	672(%rsp), %rbx
10000656b: 48 89 df                    	movq	%rbx, %rdi
10000656e: e8 c9 0b 00 00              	callq	3017 <dyld_stub_binder+0x10000713c>
100006573: 48 89 df                    	movq	%rbx, %rdi
100006576: 31 f6                       	xorl	%esi, %esi
100006578: 48 8d 15 6e 29 00 00        	leaq	10606(%rip), %rdx
10000657f: e8 8e 0b 00 00              	callq	2958 <dyld_stub_binder+0x100007112>
100006584: 48 8b 48 10                 	movq	16(%rax), %rcx
100006588: 48 89 8c 24 f0 00 00 00     	movq	%rcx, 240(%rsp)
100006590: c5 f8 10 00                 	vmovups	(%rax), %xmm0
100006594: c5 f8 29 84 24 e0 00 00 00  	vmovaps	%xmm0, 224(%rsp)
10000659d: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000065a1: c5 f8 11 00                 	vmovups	%xmm0, (%rax)
1000065a5: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000065ad: f6 84 24 a0 02 00 00 01     	testb	$1, 672(%rsp)
1000065b5: 74 0d                       	je	13 <_main+0xba4>
1000065b7: 48 8b bc 24 b0 02 00 00     	movq	688(%rsp), %rdi
1000065bf: e8 84 0b 00 00              	callq	2948 <dyld_stub_binder+0x100007148>
1000065c4: 48 c7 84 24 b0 02 00 00 00 00 00 00 	movq	$0, 688(%rsp)
1000065d0: c7 84 24 a0 02 00 00 00 00 01 03    	movl	$50397184, 672(%rsp)
1000065db: 4c 8d a4 24 80 00 00 00     	leaq	128(%rsp), %r12
1000065e3: 4c 89 a4 24 a8 02 00 00     	movq	%r12, 680(%rsp)
1000065eb: 48 b8 1e 00 00 00 1e 00 00 00       	movabsq	$128849018910, %rax
1000065f5: 48 89 84 24 78 01 00 00     	movq	%rax, 376(%rsp)
1000065fd: c5 fc 28 05 fb 26 00 00     	vmovaps	9979(%rip), %ymm0
100006605: c5 fc 29 84 24 80 02 00 00  	vmovaps	%ymm0, 640(%rsp)
10000660e: c7 44 24 08 00 00 00 00     	movl	$0, 8(%rsp)
100006616: c7 04 24 10 00 00 00        	movl	$16, (%rsp)
10000661d: 48 8d 9c 24 a0 02 00 00     	leaq	672(%rsp), %rbx
100006625: 48 89 df                    	movq	%rbx, %rdi
100006628: 48 8d b4 24 e0 00 00 00     	leaq	224(%rsp), %rsi
100006630: 48 8d 94 24 78 01 00 00     	leaq	376(%rsp), %rdx
100006638: 31 c9                       	xorl	%ecx, %ecx
10000663a: c5 fb 10 05 6e 26 00 00     	vmovsd	9838(%rip), %xmm0
100006642: 4c 8d 84 24 80 02 00 00     	leaq	640(%rsp), %r8
10000664a: 41 b9 02 00 00 00           	movl	$2, %r9d
100006650: c5 f8 77                    	vzeroupper
100006653: e8 90 0a 00 00              	callq	2704 <dyld_stub_binder+0x1000070e8>
100006658: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
10000665c: c5 f9 29 84 24 a0 02 00 00  	vmovapd	%xmm0, 672(%rsp)
100006665: 48 c7 84 24 b0 02 00 00 00 00 00 00 	movq	$0, 688(%rsp)
100006671: c6 84 24 a0 02 00 00 0a     	movb	$10, 672(%rsp)
100006679: 48 8d 84 24 a1 02 00 00     	leaq	673(%rsp), %rax
100006681: c6 40 04 65                 	movb	$101, 4(%rax)
100006685: c7 00 66 72 61 6d           	movl	$1835102822, (%rax)
10000668b: c6 84 24 a6 02 00 00 00     	movb	$0, 678(%rsp)
100006693: 48 c7 84 24 f0 01 00 00 00 00 00 00 	movq	$0, 496(%rsp)
10000669f: c7 84 24 e0 01 00 00 00 00 01 01    	movl	$16842752, 480(%rsp)
1000066aa: 4c 89 a4 24 e8 01 00 00     	movq	%r12, 488(%rsp)
1000066b2: 48 89 df                    	movq	%rbx, %rdi
1000066b5: 48 8d b4 24 e0 01 00 00     	leaq	480(%rsp), %rsi
1000066bd: e8 1a 0a 00 00              	callq	2586 <dyld_stub_binder+0x1000070dc>
1000066c2: f6 84 24 a0 02 00 00 01     	testb	$1, 672(%rsp)
1000066ca: 74 0d                       	je	13 <_main+0xcb9>
1000066cc: 48 8b bc 24 b0 02 00 00     	movq	688(%rsp), %rdi
1000066d4: e8 6f 0a 00 00              	callq	2671 <dyld_stub_binder+0x100007148>
1000066d9: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
1000066e1: 74 0d                       	je	13 <_main+0xcd0>
1000066e3: 48 8b bc 24 f0 00 00 00     	movq	240(%rsp), %rdi
1000066eb: e8 58 0a 00 00              	callq	2648 <dyld_stub_binder+0x100007148>
1000066f0: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
1000066f8: 48 85 c0                    	testq	%rax, %rax
1000066fb: 74 13                       	je	19 <_main+0xcf0>
1000066fd: f0                          	lock
1000066fe: ff 48 14                    	decl	20(%rax)
100006701: 75 0d                       	jne	13 <_main+0xcf0>
100006703: 48 8d bc 24 80 00 00 00     	leaq	128(%rsp), %rdi
10000670b: e8 b4 09 00 00              	callq	2484 <dyld_stub_binder+0x1000070c4>
100006710: 48 c7 84 24 b8 00 00 00 00 00 00 00 	movq	$0, 184(%rsp)
10000671c: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
100006724: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100006728: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
10000672d: 83 bc 24 84 00 00 00 00     	cmpl	$0, 132(%rsp)
100006735: 7e 30                       	jle	48 <_main+0xd47>
100006737: 48 8b 84 24 c0 00 00 00     	movq	192(%rsp), %rax
10000673f: 31 c9                       	xorl	%ecx, %ecx
100006741: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000674b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006750: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006757: 48 ff c1                    	incq	%rcx
10000675a: 48 63 94 24 84 00 00 00     	movslq	132(%rsp), %rdx
100006762: 48 39 d1                    	cmpq	%rdx, %rcx
100006765: 7c e9                       	jl	-23 <_main+0xd30>
100006767: 48 8b bc 24 c8 00 00 00     	movq	200(%rsp), %rdi
10000676f: 48 8d 84 24 d0 00 00 00     	leaq	208(%rsp), %rax
100006777: 48 39 c7                    	cmpq	%rax, %rdi
10000677a: 74 08                       	je	8 <_main+0xd64>
10000677c: c5 f8 77                    	vzeroupper
10000677f: e8 76 09 00 00              	callq	2422 <dyld_stub_binder+0x1000070fa>
100006784: 48 8b 84 24 48 01 00 00     	movq	328(%rsp), %rax
10000678c: 48 85 c0                    	testq	%rax, %rax
10000678f: 74 11                       	je	17 <_main+0xd82>
100006791: f0                          	lock
100006792: ff 48 14                    	decl	20(%rax)
100006795: 75 0b                       	jne	11 <_main+0xd82>
100006797: 4c 89 ef                    	movq	%r13, %rdi
10000679a: c5 f8 77                    	vzeroupper
10000679d: e8 22 09 00 00              	callq	2338 <dyld_stub_binder+0x1000070c4>
1000067a2: 48 c7 84 24 48 01 00 00 00 00 00 00 	movq	$0, 328(%rsp)
1000067ae: 48 8d 84 24 14 01 00 00     	leaq	276(%rsp), %rax
1000067b6: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
1000067ba: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
1000067bf: 83 bc 24 14 01 00 00 00     	cmpl	$0, 276(%rsp)
1000067c7: 7e 2e                       	jle	46 <_main+0xdd7>
1000067c9: 48 8b 84 24 50 01 00 00     	movq	336(%rsp), %rax
1000067d1: 31 c9                       	xorl	%ecx, %ecx
1000067d3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000067dd: 0f 1f 00                    	nopl	(%rax)
1000067e0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000067e7: 48 ff c1                    	incq	%rcx
1000067ea: 48 63 94 24 14 01 00 00     	movslq	276(%rsp), %rdx
1000067f2: 48 39 d1                    	cmpq	%rdx, %rcx
1000067f5: 7c e9                       	jl	-23 <_main+0xdc0>
1000067f7: 48 8b bc 24 58 01 00 00     	movq	344(%rsp), %rdi
1000067ff: 48 8d 84 24 60 01 00 00     	leaq	352(%rsp), %rax
100006807: 48 39 c7                    	cmpq	%rax, %rdi
10000680a: 74 08                       	je	8 <_main+0xdf4>
10000680c: c5 f8 77                    	vzeroupper
10000680f: e8 e6 08 00 00              	callq	2278 <dyld_stub_binder+0x1000070fa>
100006814: 48 8b 84 24 b8 01 00 00     	movq	440(%rsp), %rax
10000681c: 48 85 c0                    	testq	%rax, %rax
10000681f: 74 16                       	je	22 <_main+0xe17>
100006821: f0                          	lock
100006822: ff 48 14                    	decl	20(%rax)
100006825: 75 10                       	jne	16 <_main+0xe17>
100006827: 48 8d bc 24 80 01 00 00     	leaq	384(%rsp), %rdi
10000682f: c5 f8 77                    	vzeroupper
100006832: e8 8d 08 00 00              	callq	2189 <dyld_stub_binder+0x1000070c4>
100006837: 48 c7 84 24 b8 01 00 00 00 00 00 00 	movq	$0, 440(%rsp)
100006843: 48 8d 84 24 90 01 00 00     	leaq	400(%rsp), %rax
10000684b: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
10000684f: c5 fd 11 00                 	vmovupd	%ymm0, (%rax)
100006853: 83 bc 24 84 01 00 00 00     	cmpl	$0, 388(%rsp)
10000685b: 7e 2a                       	jle	42 <_main+0xe67>
10000685d: 48 8b 84 24 c0 01 00 00     	movq	448(%rsp), %rax
100006865: 31 c9                       	xorl	%ecx, %ecx
100006867: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006870: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006877: 48 ff c1                    	incq	%rcx
10000687a: 48 63 94 24 84 01 00 00     	movslq	388(%rsp), %rdx
100006882: 48 39 d1                    	cmpq	%rdx, %rcx
100006885: 7c e9                       	jl	-23 <_main+0xe50>
100006887: 48 8b bc 24 c8 01 00 00     	movq	456(%rsp), %rdi
10000688f: 48 8d 84 24 d0 01 00 00     	leaq	464(%rsp), %rax
100006897: 48 39 c7                    	cmpq	%rax, %rdi
10000689a: 74 08                       	je	8 <_main+0xe84>
10000689c: c5 f8 77                    	vzeroupper
10000689f: e8 56 08 00 00              	callq	2134 <dyld_stub_binder+0x1000070fa>
1000068a4: 45 31 e4                    	xorl	%r12d, %r12d
1000068a7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000068b0: 48 8b 44 24 58              	movq	88(%rsp), %rax
1000068b5: 48 85 c0                    	testq	%rax, %rax
1000068b8: 74 13                       	je	19 <_main+0xead>
1000068ba: f0                          	lock
1000068bb: ff 48 14                    	decl	20(%rax)
1000068be: 75 0d                       	jne	13 <_main+0xead>
1000068c0: 48 8d 7c 24 20              	leaq	32(%rsp), %rdi
1000068c5: c5 f8 77                    	vzeroupper
1000068c8: e8 f7 07 00 00              	callq	2039 <dyld_stub_binder+0x1000070c4>
1000068cd: 48 c7 44 24 58 00 00 00 00  	movq	$0, 88(%rsp)
1000068d6: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
1000068da: 48 8d 44 24 24              	leaq	36(%rsp), %rax
1000068df: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
1000068e4: 83 7c 24 24 00              	cmpl	$0, 36(%rsp)
1000068e9: 7e 29                       	jle	41 <_main+0xef4>
1000068eb: 48 8b 44 24 60              	movq	96(%rsp), %rax
1000068f0: 31 c9                       	xorl	%ecx, %ecx
1000068f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000068fc: 0f 1f 40 00                 	nopl	(%rax)
100006900: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006907: 48 ff c1                    	incq	%rcx
10000690a: 48 63 54 24 24              	movslq	36(%rsp), %rdx
10000690f: 48 39 d1                    	cmpq	%rdx, %rcx
100006912: 7c ec                       	jl	-20 <_main+0xee0>
100006914: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100006919: 48 8d 44 24 70              	leaq	112(%rsp), %rax
10000691e: 48 39 c7                    	cmpq	%rax, %rdi
100006921: 0f 84 e9 f1 ff ff           	je	-3607 <_main+0xf0>
100006927: c5 f8 77                    	vzeroupper
10000692a: e8 cb 07 00 00              	callq	1995 <dyld_stub_binder+0x1000070fa>
10000692f: e9 dc f1 ff ff              	jmp	-3620 <_main+0xf0>
100006934: 48 8b 3d 0d 27 00 00        	movq	9997(%rip), %rdi
10000693b: 48 8d 35 b8 25 00 00        	leaq	9656(%rip), %rsi
100006942: ba 0d 00 00 00              	movl	$13, %edx
100006947: c5 f8 77                    	vzeroupper
10000694a: e8 71 03 00 00              	callq	881 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000694f: 48 8d bc 24 f8 01 00 00     	leaq	504(%rsp), %rdi
100006957: e8 5c 07 00 00              	callq	1884 <dyld_stub_binder+0x1000070b8>
10000695c: 48 8d bc 24 28 02 00 00     	leaq	552(%rsp), %rdi
100006964: e8 37 e2 ff ff              	callq	-7625 <__ZN14ModelInterfaceD2Ev>
100006969: 48 8b 05 f0 26 00 00        	movq	9968(%rip), %rax
100006970: 48 8b 00                    	movq	(%rax), %rax
100006973: 48 3b 84 24 c0 02 00 00     	cmpq	704(%rsp), %rax
10000697b: 75 11                       	jne	17 <_main+0xf6e>
10000697d: 31 c0                       	xorl	%eax, %eax
10000697f: 48 8d 65 d8                 	leaq	-40(%rbp), %rsp
100006983: 5b                          	popq	%rbx
100006984: 41 5c                       	popq	%r12
100006986: 41 5d                       	popq	%r13
100006988: 41 5e                       	popq	%r14
10000698a: 41 5f                       	popq	%r15
10000698c: 5d                          	popq	%rbp
10000698d: c3                          	retq
10000698e: e8 d3 07 00 00              	callq	2003 <dyld_stub_binder+0x100007166>
100006993: e9 ed 02 00 00              	jmp	749 <_main+0x1265>
100006998: 48 89 c3                    	movq	%rax, %rbx
10000699b: f6 44 24 20 01              	testb	$1, 32(%rsp)
1000069a0: 0f 84 f2 02 00 00           	je	754 <_main+0x1278>
1000069a6: 48 8b 7c 24 30              	movq	48(%rsp), %rdi
1000069ab: e8 98 07 00 00              	callq	1944 <dyld_stub_binder+0x100007148>
1000069b0: e9 e3 02 00 00              	jmp	739 <_main+0x1278>
1000069b5: 48 89 c3                    	movq	%rax, %rbx
1000069b8: e9 db 02 00 00              	jmp	731 <_main+0x1278>
1000069bd: 48 89 c7                    	movq	%rax, %rdi
1000069c0: e8 eb 02 00 00              	callq	747 <___clang_call_terminate>
1000069c5: 48 89 c7                    	movq	%rax, %rdi
1000069c8: e8 e3 02 00 00              	callq	739 <___clang_call_terminate>
1000069cd: 48 89 c7                    	movq	%rax, %rdi
1000069d0: e8 db 02 00 00              	callq	731 <___clang_call_terminate>
1000069d5: eb 59                       	jmp	89 <_main+0x1010>
1000069d7: 48 89 c3                    	movq	%rax, %rbx
1000069da: f6 84 24 a0 02 00 00 01     	testb	$1, 672(%rsp)
1000069e2: 74 1c                       	je	28 <_main+0xfe0>
1000069e4: 48 8b bc 24 b0 02 00 00     	movq	688(%rsp), %rdi
1000069ec: e8 57 07 00 00              	callq	1879 <dyld_stub_binder+0x100007148>
1000069f1: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
1000069f9: 75 0f                       	jne	15 <_main+0xfea>
1000069fb: eb 36                       	jmp	54 <_main+0x1013>
1000069fd: 48 89 c3                    	movq	%rax, %rbx
100006a00: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
100006a08: 74 29                       	je	41 <_main+0x1013>
100006a0a: 48 8b bc 24 f0 00 00 00     	movq	240(%rsp), %rdi
100006a12: eb 15                       	jmp	21 <_main+0x1009>
100006a14: 48 89 c3                    	movq	%rax, %rbx
100006a17: f6 84 24 a0 02 00 00 01     	testb	$1, 672(%rsp)
100006a1f: 74 12                       	je	18 <_main+0x1013>
100006a21: 48 8b bc 24 b0 02 00 00     	movq	688(%rsp), %rdi
100006a29: e8 1a 07 00 00              	callq	1818 <dyld_stub_binder+0x100007148>
100006a2e: eb 03                       	jmp	3 <_main+0x1013>
100006a30: 48 89 c3                    	movq	%rax, %rbx
100006a33: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100006a3b: 48 85 c0                    	testq	%rax, %rax
100006a3e: 74 13                       	je	19 <_main+0x1033>
100006a40: f0                          	lock
100006a41: ff 48 14                    	decl	20(%rax)
100006a44: 75 0d                       	jne	13 <_main+0x1033>
100006a46: 48 8d bc 24 80 00 00 00     	leaq	128(%rsp), %rdi
100006a4e: e8 71 06 00 00              	callq	1649 <dyld_stub_binder+0x1000070c4>
100006a53: 48 c7 84 24 b8 00 00 00 00 00 00 00 	movq	$0, 184(%rsp)
100006a5f: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100006a63: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
100006a6b: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100006a70: 83 bc 24 84 00 00 00 00     	cmpl	$0, 132(%rsp)
100006a78: 7e 21                       	jle	33 <_main+0x107b>
100006a7a: 48 8b 84 24 c0 00 00 00     	movq	192(%rsp), %rax
100006a82: 31 c9                       	xorl	%ecx, %ecx
100006a84: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006a8b: 48 ff c1                    	incq	%rcx
100006a8e: 48 63 94 24 84 00 00 00     	movslq	132(%rsp), %rdx
100006a96: 48 39 d1                    	cmpq	%rdx, %rcx
100006a99: 7c e9                       	jl	-23 <_main+0x1064>
100006a9b: 48 8b bc 24 c8 00 00 00     	movq	200(%rsp), %rdi
100006aa3: 48 8d 84 24 d0 00 00 00     	leaq	208(%rsp), %rax
100006aab: 48 39 c7                    	cmpq	%rax, %rdi
100006aae: 74 24                       	je	36 <_main+0x10b4>
100006ab0: c5 f8 77                    	vzeroupper
100006ab3: e8 42 06 00 00              	callq	1602 <dyld_stub_binder+0x1000070fa>
100006ab8: eb 1a                       	jmp	26 <_main+0x10b4>
100006aba: 48 89 c7                    	movq	%rax, %rdi
100006abd: e8 ee 01 00 00              	callq	494 <___clang_call_terminate>
100006ac2: eb 0d                       	jmp	13 <_main+0x10b1>
100006ac4: 48 89 c3                    	movq	%rax, %rbx
100006ac7: e9 90 00 00 00              	jmp	144 <_main+0x113c>
100006acc: e9 2e 01 00 00              	jmp	302 <_main+0x11df>
100006ad1: 48 89 c3                    	movq	%rax, %rbx
100006ad4: 48 8b 84 24 48 01 00 00     	movq	328(%rsp), %rax
100006adc: 48 85 c0                    	testq	%rax, %rax
100006adf: 74 16                       	je	22 <_main+0x10d7>
100006ae1: f0                          	lock
100006ae2: ff 48 14                    	decl	20(%rax)
100006ae5: 75 10                       	jne	16 <_main+0x10d7>
100006ae7: 48 8d bc 24 10 01 00 00     	leaq	272(%rsp), %rdi
100006aef: c5 f8 77                    	vzeroupper
100006af2: e8 cd 05 00 00              	callq	1485 <dyld_stub_binder+0x1000070c4>
100006af7: 48 c7 84 24 48 01 00 00 00 00 00 00 	movq	$0, 328(%rsp)
100006b03: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100006b07: 48 8d 84 24 14 01 00 00     	leaq	276(%rsp), %rax
100006b0f: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100006b14: 83 bc 24 14 01 00 00 00     	cmpl	$0, 276(%rsp)
100006b1c: 7e 21                       	jle	33 <_main+0x111f>
100006b1e: 48 8b 84 24 50 01 00 00     	movq	336(%rsp), %rax
100006b26: 31 c9                       	xorl	%ecx, %ecx
100006b28: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006b2f: 48 ff c1                    	incq	%rcx
100006b32: 48 63 94 24 14 01 00 00     	movslq	276(%rsp), %rdx
100006b3a: 48 39 d1                    	cmpq	%rdx, %rcx
100006b3d: 7c e9                       	jl	-23 <_main+0x1108>
100006b3f: 48 8b bc 24 58 01 00 00     	movq	344(%rsp), %rdi
100006b47: 48 8d 84 24 60 01 00 00     	leaq	352(%rsp), %rax
100006b4f: 48 39 c7                    	cmpq	%rax, %rdi
100006b52: 74 08                       	je	8 <_main+0x113c>
100006b54: c5 f8 77                    	vzeroupper
100006b57: e8 9e 05 00 00              	callq	1438 <dyld_stub_binder+0x1000070fa>
100006b5c: 48 8b 84 24 b8 01 00 00     	movq	440(%rsp), %rax
100006b64: 48 85 c0                    	testq	%rax, %rax
100006b67: 74 16                       	je	22 <_main+0x115f>
100006b69: f0                          	lock
100006b6a: ff 48 14                    	decl	20(%rax)
100006b6d: 75 10                       	jne	16 <_main+0x115f>
100006b6f: 48 8d bc 24 80 01 00 00     	leaq	384(%rsp), %rdi
100006b77: c5 f8 77                    	vzeroupper
100006b7a: e8 45 05 00 00              	callq	1349 <dyld_stub_binder+0x1000070c4>
100006b7f: 48 c7 84 24 b8 01 00 00 00 00 00 00 	movq	$0, 440(%rsp)
100006b8b: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006b8f: 48 8d 84 24 90 01 00 00     	leaq	400(%rsp), %rax
100006b97: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100006b9b: 83 bc 24 84 01 00 00 00     	cmpl	$0, 388(%rsp)
100006ba3: 7e 21                       	jle	33 <_main+0x11a6>
100006ba5: 48 8b 84 24 c0 01 00 00     	movq	448(%rsp), %rax
100006bad: 31 c9                       	xorl	%ecx, %ecx
100006baf: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006bb6: 48 ff c1                    	incq	%rcx
100006bb9: 48 63 94 24 84 01 00 00     	movslq	388(%rsp), %rdx
100006bc1: 48 39 d1                    	cmpq	%rdx, %rcx
100006bc4: 7c e9                       	jl	-23 <_main+0x118f>
100006bc6: 48 8b bc 24 c8 01 00 00     	movq	456(%rsp), %rdi
100006bce: 48 8d 84 24 d0 01 00 00     	leaq	464(%rsp), %rax
100006bd6: 48 39 c7                    	cmpq	%rax, %rdi
100006bd9: 74 27                       	je	39 <_main+0x11e2>
100006bdb: c5 f8 77                    	vzeroupper
100006bde: e8 17 05 00 00              	callq	1303 <dyld_stub_binder+0x1000070fa>
100006be3: eb 1d                       	jmp	29 <_main+0x11e2>
100006be5: 48 89 c7                    	movq	%rax, %rdi
100006be8: e8 c3 00 00 00              	callq	195 <___clang_call_terminate>
100006bed: 48 89 c7                    	movq	%rax, %rdi
100006bf0: e8 bb 00 00 00              	callq	187 <___clang_call_terminate>
100006bf5: eb 08                       	jmp	8 <_main+0x11df>
100006bf7: 48 89 c7                    	movq	%rax, %rdi
100006bfa: e8 b1 00 00 00              	callq	177 <___clang_call_terminate>
100006bff: 48 89 c3                    	movq	%rax, %rbx
100006c02: 48 8b 44 24 58              	movq	88(%rsp), %rax
100006c07: 48 85 c0                    	testq	%rax, %rax
100006c0a: 74 13                       	je	19 <_main+0x11ff>
100006c0c: f0                          	lock
100006c0d: ff 48 14                    	decl	20(%rax)
100006c10: 75 0d                       	jne	13 <_main+0x11ff>
100006c12: 48 8d 7c 24 20              	leaq	32(%rsp), %rdi
100006c17: c5 f8 77                    	vzeroupper
100006c1a: e8 a5 04 00 00              	callq	1189 <dyld_stub_binder+0x1000070c4>
100006c1f: 48 c7 44 24 58 00 00 00 00  	movq	$0, 88(%rsp)
100006c28: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006c2c: 48 8d 44 24 24              	leaq	36(%rsp), %rax
100006c31: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100006c36: 83 7c 24 24 00              	cmpl	$0, 36(%rsp)
100006c3b: 7e 27                       	jle	39 <_main+0x1244>
100006c3d: 48 8b 44 24 60              	movq	96(%rsp), %rax
100006c42: 31 c9                       	xorl	%ecx, %ecx
100006c44: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006c4e: 66 90                       	nop
100006c50: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006c57: 48 ff c1                    	incq	%rcx
100006c5a: 48 63 54 24 24              	movslq	36(%rsp), %rdx
100006c5f: 48 39 d1                    	cmpq	%rdx, %rcx
100006c62: 7c ec                       	jl	-20 <_main+0x1230>
100006c64: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100006c69: 48 8d 44 24 70              	leaq	112(%rsp), %rax
100006c6e: 48 39 c7                    	cmpq	%rax, %rdi
100006c71: 74 15                       	je	21 <_main+0x1268>
100006c73: c5 f8 77                    	vzeroupper
100006c76: e8 7f 04 00 00              	callq	1151 <dyld_stub_binder+0x1000070fa>
100006c7b: eb 0b                       	jmp	11 <_main+0x1268>
100006c7d: 48 89 c7                    	movq	%rax, %rdi
100006c80: e8 2b 00 00 00              	callq	43 <___clang_call_terminate>
100006c85: 48 89 c3                    	movq	%rax, %rbx
100006c88: 48 8d bc 24 f8 01 00 00     	leaq	504(%rsp), %rdi
100006c90: c5 f8 77                    	vzeroupper
100006c93: e8 20 04 00 00              	callq	1056 <dyld_stub_binder+0x1000070b8>
100006c98: 48 8d bc 24 28 02 00 00     	leaq	552(%rsp), %rdi
100006ca0: e8 fb de ff ff              	callq	-8453 <__ZN14ModelInterfaceD2Ev>
100006ca5: 48 89 df                    	movq	%rbx, %rdi
100006ca8: e8 ff 03 00 00              	callq	1023 <dyld_stub_binder+0x1000070ac>
100006cad: 0f 0b                       	ud2
100006caf: 90                          	nop

0000000100006cb0 ___clang_call_terminate:
100006cb0: 50                          	pushq	%rax
100006cb1: e8 a4 04 00 00              	callq	1188 <dyld_stub_binder+0x10000715a>
100006cb6: e8 87 04 00 00              	callq	1159 <dyld_stub_binder+0x100007142>
100006cbb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006cc0 __ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:
100006cc0: 55                          	pushq	%rbp
100006cc1: 48 89 e5                    	movq	%rsp, %rbp
100006cc4: 41 57                       	pushq	%r15
100006cc6: 41 56                       	pushq	%r14
100006cc8: 41 55                       	pushq	%r13
100006cca: 41 54                       	pushq	%r12
100006ccc: 53                          	pushq	%rbx
100006ccd: 48 83 ec 28                 	subq	$40, %rsp
100006cd1: 49 89 d6                    	movq	%rdx, %r14
100006cd4: 49 89 f7                    	movq	%rsi, %r15
100006cd7: 48 89 fb                    	movq	%rdi, %rbx
100006cda: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100006cde: 48 89 de                    	movq	%rbx, %rsi
100006ce1: e8 32 04 00 00              	callq	1074 <dyld_stub_binder+0x100007118>
100006ce6: 80 7d b0 00                 	cmpb	$0, -80(%rbp)
100006cea: 0f 84 ae 00 00 00           	je	174 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100006cf0: 48 8b 03                    	movq	(%rbx), %rax
100006cf3: 48 8b 40 e8                 	movq	-24(%rax), %rax
100006cf7: 4c 8d 24 03                 	leaq	(%rbx,%rax), %r12
100006cfb: 48 8b 7c 03 28              	movq	40(%rbx,%rax), %rdi
100006d00: 44 8b 6c 03 08              	movl	8(%rbx,%rax), %r13d
100006d05: 8b 84 03 90 00 00 00        	movl	144(%rbx,%rax), %eax
100006d0c: 83 f8 ff                    	cmpl	$-1, %eax
100006d0f: 75 4a                       	jne	74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9b>
100006d11: 48 89 7d c0                 	movq	%rdi, -64(%rbp)
100006d15: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100006d19: 4c 89 e6                    	movq	%r12, %rsi
100006d1c: e8 eb 03 00 00              	callq	1003 <dyld_stub_binder+0x10000710c>
100006d21: 48 8b 35 28 23 00 00        	movq	9000(%rip), %rsi
100006d28: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100006d2c: e8 d5 03 00 00              	callq	981 <dyld_stub_binder+0x100007106>
100006d31: 48 8b 08                    	movq	(%rax), %rcx
100006d34: 48 89 c7                    	movq	%rax, %rdi
100006d37: be 20 00 00 00              	movl	$32, %esi
100006d3c: ff 51 38                    	callq	*56(%rcx)
100006d3f: 88 45 d7                    	movb	%al, -41(%rbp)
100006d42: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100006d46: e8 df 03 00 00              	callq	991 <dyld_stub_binder+0x10000712a>
100006d4b: 0f be 45 d7                 	movsbl	-41(%rbp), %eax
100006d4f: 41 89 84 24 90 00 00 00     	movl	%eax, 144(%r12)
100006d57: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100006d5b: 4d 01 fe                    	addq	%r15, %r14
100006d5e: 41 81 e5 b0 00 00 00        	andl	$176, %r13d
100006d65: 41 83 fd 20                 	cmpl	$32, %r13d
100006d69: 4c 89 fa                    	movq	%r15, %rdx
100006d6c: 49 0f 44 d6                 	cmoveq	%r14, %rdx
100006d70: 44 0f be c8                 	movsbl	%al, %r9d
100006d74: 4c 89 fe                    	movq	%r15, %rsi
100006d77: 4c 89 f1                    	movq	%r14, %rcx
100006d7a: 4d 89 e0                    	movq	%r12, %r8
100006d7d: e8 9e 00 00 00              	callq	158 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100006d82: 48 85 c0                    	testq	%rax, %rax
100006d85: 75 17                       	jne	23 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100006d87: 48 8b 03                    	movq	(%rbx), %rax
100006d8a: 48 8b 40 e8                 	movq	-24(%rax), %rax
100006d8e: 48 8d 3c 03                 	leaq	(%rbx,%rax), %rdi
100006d92: 8b 74 03 20                 	movl	32(%rbx,%rax), %esi
100006d96: 83 ce 05                    	orl	$5, %esi
100006d99: e8 98 03 00 00              	callq	920 <dyld_stub_binder+0x100007136>
100006d9e: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100006da2: e8 77 03 00 00              	callq	887 <dyld_stub_binder+0x10000711e>
100006da7: 48 89 d8                    	movq	%rbx, %rax
100006daa: 48 83 c4 28                 	addq	$40, %rsp
100006dae: 5b                          	popq	%rbx
100006daf: 41 5c                       	popq	%r12
100006db1: 41 5d                       	popq	%r13
100006db3: 41 5e                       	popq	%r14
100006db5: 41 5f                       	popq	%r15
100006db7: 5d                          	popq	%rbp
100006db8: c3                          	retq
100006db9: eb 0e                       	jmp	14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x109>
100006dbb: 49 89 c6                    	movq	%rax, %r14
100006dbe: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100006dc2: e8 63 03 00 00              	callq	867 <dyld_stub_binder+0x10000712a>
100006dc7: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x10c>
100006dc9: 49 89 c6                    	movq	%rax, %r14
100006dcc: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100006dd0: e8 49 03 00 00              	callq	841 <dyld_stub_binder+0x10000711e>
100006dd5: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11a>
100006dd7: 49 89 c6                    	movq	%rax, %r14
100006dda: 4c 89 f7                    	movq	%r14, %rdi
100006ddd: e8 78 03 00 00              	callq	888 <dyld_stub_binder+0x10000715a>
100006de2: 48 8b 03                    	movq	(%rbx), %rax
100006de5: 48 8b 78 e8                 	movq	-24(%rax), %rdi
100006de9: 48 01 df                    	addq	%rbx, %rdi
100006dec: e8 3f 03 00 00              	callq	831 <dyld_stub_binder+0x100007130>
100006df1: e8 6a 03 00 00              	callq	874 <dyld_stub_binder+0x100007160>
100006df6: eb af                       	jmp	-81 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe7>
100006df8: 48 89 c3                    	movq	%rax, %rbx
100006dfb: e8 60 03 00 00              	callq	864 <dyld_stub_binder+0x100007160>
100006e00: 48 89 df                    	movq	%rbx, %rdi
100006e03: e8 a4 02 00 00              	callq	676 <dyld_stub_binder+0x1000070ac>
100006e08: 0f 0b                       	ud2
100006e0a: 48 89 c7                    	movq	%rax, %rdi
100006e0d: e8 9e fe ff ff              	callq	-354 <___clang_call_terminate>
100006e12: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006e1c: 0f 1f 40 00                 	nopl	(%rax)

0000000100006e20 __ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:
100006e20: 55                          	pushq	%rbp
100006e21: 48 89 e5                    	movq	%rsp, %rbp
100006e24: 41 57                       	pushq	%r15
100006e26: 41 56                       	pushq	%r14
100006e28: 41 55                       	pushq	%r13
100006e2a: 41 54                       	pushq	%r12
100006e2c: 53                          	pushq	%rbx
100006e2d: 48 83 ec 38                 	subq	$56, %rsp
100006e31: 48 85 ff                    	testq	%rdi, %rdi
100006e34: 0f 84 17 01 00 00           	je	279 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100006e3a: 4d 89 c4                    	movq	%r8, %r12
100006e3d: 49 89 cf                    	movq	%rcx, %r15
100006e40: 49 89 fe                    	movq	%rdi, %r14
100006e43: 44 89 4d bc                 	movl	%r9d, -68(%rbp)
100006e47: 48 89 c8                    	movq	%rcx, %rax
100006e4a: 48 29 f0                    	subq	%rsi, %rax
100006e4d: 49 8b 48 18                 	movq	24(%r8), %rcx
100006e51: 45 31 ed                    	xorl	%r13d, %r13d
100006e54: 48 29 c1                    	subq	%rax, %rcx
100006e57: 4c 0f 4f e9                 	cmovgq	%rcx, %r13
100006e5b: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100006e5f: 48 89 d3                    	movq	%rdx, %rbx
100006e62: 48 29 f3                    	subq	%rsi, %rbx
100006e65: 48 85 db                    	testq	%rbx, %rbx
100006e68: 7e 15                       	jle	21 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x5f>
100006e6a: 49 8b 06                    	movq	(%r14), %rax
100006e6d: 4c 89 f7                    	movq	%r14, %rdi
100006e70: 48 89 da                    	movq	%rbx, %rdx
100006e73: ff 50 60                    	callq	*96(%rax)
100006e76: 48 39 d8                    	cmpq	%rbx, %rax
100006e79: 0f 85 d2 00 00 00           	jne	210 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100006e7f: 4d 85 ed                    	testq	%r13, %r13
100006e82: 0f 8e a1 00 00 00           	jle	161 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x109>
100006e88: 4c 89 65 b0                 	movq	%r12, -80(%rbp)
100006e8c: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100006e90: c5 f8 29 45 c0              	vmovaps	%xmm0, -64(%rbp)
100006e95: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100006e9d: 49 83 fd 17                 	cmpq	$23, %r13
100006ea1: 73 12                       	jae	18 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x95>
100006ea3: 43 8d 44 2d 00              	leal	(%r13,%r13), %eax
100006ea8: 88 45 c0                    	movb	%al, -64(%rbp)
100006eab: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100006eaf: 4c 8d 65 c1                 	leaq	-63(%rbp), %r12
100006eb3: eb 27                       	jmp	39 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xbc>
100006eb5: 49 8d 5d 10                 	leaq	16(%r13), %rbx
100006eb9: 48 83 e3 f0                 	andq	$-16, %rbx
100006ebd: 48 89 df                    	movq	%rbx, %rdi
100006ec0: e8 8f 02 00 00              	callq	655 <dyld_stub_binder+0x100007154>
100006ec5: 49 89 c4                    	movq	%rax, %r12
100006ec8: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100006ecc: 48 83 cb 01                 	orq	$1, %rbx
100006ed0: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
100006ed4: 4c 89 6d c8                 	movq	%r13, -56(%rbp)
100006ed8: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100006edc: 0f b6 75 bc                 	movzbl	-68(%rbp), %esi
100006ee0: 4c 89 e7                    	movq	%r12, %rdi
100006ee3: 4c 89 ea                    	movq	%r13, %rdx
100006ee6: e8 81 02 00 00              	callq	641 <dyld_stub_binder+0x10000716c>
100006eeb: 43 c6 04 2c 00              	movb	$0, (%r12,%r13)
100006ef0: f6 45 c0 01                 	testb	$1, -64(%rbp)
100006ef4: 74 06                       	je	6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100006ef6: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
100006efa: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdf>
100006efc: 48 ff c3                    	incq	%rbx
100006eff: 4c 8b 65 b0                 	movq	-80(%rbp), %r12
100006f03: 49 8b 06                    	movq	(%r14), %rax
100006f06: 4c 89 f7                    	movq	%r14, %rdi
100006f09: 48 89 de                    	movq	%rbx, %rsi
100006f0c: 4c 89 ea                    	movq	%r13, %rdx
100006f0f: ff 50 60                    	callq	*96(%rax)
100006f12: 48 89 c3                    	movq	%rax, %rbx
100006f15: f6 45 c0 01                 	testb	$1, -64(%rbp)
100006f19: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x104>
100006f1b: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100006f1f: e8 24 02 00 00              	callq	548 <dyld_stub_binder+0x100007148>
100006f24: 4c 39 eb                    	cmpq	%r13, %rbx
100006f27: 75 28                       	jne	40 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100006f29: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
100006f2d: 49 29 f7                    	subq	%rsi, %r15
100006f30: 4d 85 ff                    	testq	%r15, %r15
100006f33: 7e 11                       	jle	17 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x126>
100006f35: 49 8b 06                    	movq	(%r14), %rax
100006f38: 4c 89 f7                    	movq	%r14, %rdi
100006f3b: 4c 89 fa                    	movq	%r15, %rdx
100006f3e: ff 50 60                    	callq	*96(%rax)
100006f41: 4c 39 f8                    	cmpq	%r15, %rax
100006f44: 75 0b                       	jne	11 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100006f46: 49 c7 44 24 18 00 00 00 00  	movq	$0, 24(%r12)
100006f4f: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x134>
100006f51: 45 31 f6                    	xorl	%r14d, %r14d
100006f54: 4c 89 f0                    	movq	%r14, %rax
100006f57: 48 83 c4 38                 	addq	$56, %rsp
100006f5b: 5b                          	popq	%rbx
100006f5c: 41 5c                       	popq	%r12
100006f5e: 41 5d                       	popq	%r13
100006f60: 41 5e                       	popq	%r14
100006f62: 41 5f                       	popq	%r15
100006f64: 5d                          	popq	%rbp
100006f65: c3                          	retq
100006f66: 48 89 c3                    	movq	%rax, %rbx
100006f69: f6 45 c0 01                 	testb	$1, -64(%rbp)
100006f6d: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x158>
100006f6f: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100006f73: e8 d0 01 00 00              	callq	464 <dyld_stub_binder+0x100007148>
100006f78: 48 89 df                    	movq	%rbx, %rdi
100006f7b: e8 2c 01 00 00              	callq	300 <dyld_stub_binder+0x1000070ac>
100006f80: 0f 0b                       	ud2
100006f82: 90                          	nop
100006f83: 90                          	nop
100006f84: 90                          	nop
100006f85: 90                          	nop
100006f86: 90                          	nop
100006f87: 90                          	nop
100006f88: 90                          	nop
100006f89: 90                          	nop
100006f8a: 90                          	nop
100006f8b: 90                          	nop
100006f8c: 90                          	nop
100006f8d: 90                          	nop
100006f8e: 90                          	nop
100006f8f: 90                          	nop

0000000100006f90 ___cxx_global_var_init:
100006f90: 55                          	pushq	%rbp
100006f91: 48 89 e5                    	movq	%rsp, %rbp
100006f94: 48 8b 05 65 20 00 00        	movq	8293(%rip), %rax
100006f9b: 80 38 00                    	cmpb	$0, (%rax)
100006f9e: 74 02                       	je	2 <___cxx_global_var_init+0x12>
100006fa0: 5d                          	popq	%rbp
100006fa1: c3                          	retq
100006fa2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100006fa9: 5d                          	popq	%rbp
100006faa: c3                          	retq
100006fab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006fb0 ___cxx_global_var_init.4:
100006fb0: 55                          	pushq	%rbp
100006fb1: 48 89 e5                    	movq	%rsp, %rbp
100006fb4: 48 8b 05 65 20 00 00        	movq	8293(%rip), %rax
100006fbb: 80 38 00                    	cmpb	$0, (%rax)
100006fbe: 74 02                       	je	2 <___cxx_global_var_init.4+0x12>
100006fc0: 5d                          	popq	%rbp
100006fc1: c3                          	retq
100006fc2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100006fc9: 5d                          	popq	%rbp
100006fca: c3                          	retq
100006fcb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006fd0 ___cxx_global_var_init.5:
100006fd0: 55                          	pushq	%rbp
100006fd1: 48 89 e5                    	movq	%rsp, %rbp
100006fd4: 48 8b 05 5d 20 00 00        	movq	8285(%rip), %rax
100006fdb: 80 38 00                    	cmpb	$0, (%rax)
100006fde: 74 02                       	je	2 <___cxx_global_var_init.5+0x12>
100006fe0: 5d                          	popq	%rbp
100006fe1: c3                          	retq
100006fe2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100006fe9: 5d                          	popq	%rbp
100006fea: c3                          	retq
100006feb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006ff0 ___cxx_global_var_init.6:
100006ff0: 55                          	pushq	%rbp
100006ff1: 48 89 e5                    	movq	%rsp, %rbp
100006ff4: 48 8b 05 35 20 00 00        	movq	8245(%rip), %rax
100006ffb: 80 38 00                    	cmpb	$0, (%rax)
100006ffe: 74 02                       	je	2 <___cxx_global_var_init.6+0x12>
100007000: 5d                          	popq	%rbp
100007001: c3                          	retq
100007002: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007009: 5d                          	popq	%rbp
10000700a: c3                          	retq
10000700b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007010 ___cxx_global_var_init.7:
100007010: 55                          	pushq	%rbp
100007011: 48 89 e5                    	movq	%rsp, %rbp
100007014: 48 8b 05 0d 20 00 00        	movq	8205(%rip), %rax
10000701b: 80 38 00                    	cmpb	$0, (%rax)
10000701e: 74 02                       	je	2 <___cxx_global_var_init.7+0x12>
100007020: 5d                          	popq	%rbp
100007021: c3                          	retq
100007022: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007029: 5d                          	popq	%rbp
10000702a: c3                          	retq
10000702b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007030 ___cxx_global_var_init.8:
100007030: 55                          	pushq	%rbp
100007031: 48 89 e5                    	movq	%rsp, %rbp
100007034: 48 8b 05 cd 1f 00 00        	movq	8141(%rip), %rax
10000703b: 80 38 00                    	cmpb	$0, (%rax)
10000703e: 74 02                       	je	2 <___cxx_global_var_init.8+0x12>
100007040: 5d                          	popq	%rbp
100007041: c3                          	retq
100007042: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007049: 5d                          	popq	%rbp
10000704a: c3                          	retq
10000704b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007050 ___cxx_global_var_init.9:
100007050: 55                          	pushq	%rbp
100007051: 48 89 e5                    	movq	%rsp, %rbp
100007054: 48 8b 05 b5 1f 00 00        	movq	8117(%rip), %rax
10000705b: 80 38 00                    	cmpb	$0, (%rax)
10000705e: 74 02                       	je	2 <___cxx_global_var_init.9+0x12>
100007060: 5d                          	popq	%rbp
100007061: c3                          	retq
100007062: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007069: 5d                          	popq	%rbp
10000706a: c3                          	retq
10000706b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007070 ___cxx_global_var_init.10:
100007070: 55                          	pushq	%rbp
100007071: 48 89 e5                    	movq	%rsp, %rbp
100007074: 48 8b 05 c5 1f 00 00        	movq	8133(%rip), %rax
10000707b: 80 38 00                    	cmpb	$0, (%rax)
10000707e: 74 02                       	je	2 <___cxx_global_var_init.10+0x12>
100007080: 5d                          	popq	%rbp
100007081: c3                          	retq
100007082: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007089: 5d                          	popq	%rbp
10000708a: c3                          	retq
10000708b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007090 ___cxx_global_var_init.11:
100007090: 55                          	pushq	%rbp
100007091: 48 89 e5                    	movq	%rsp, %rbp
100007094: 48 8b 05 7d 1f 00 00        	movq	8061(%rip), %rax
10000709b: 80 38 00                    	cmpb	$0, (%rax)
10000709e: 74 02                       	je	2 <___cxx_global_var_init.11+0x12>
1000070a0: 5d                          	popq	%rbp
1000070a1: c3                          	retq
1000070a2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
1000070a9: 5d                          	popq	%rbp
1000070aa: c3                          	retq

Disassembly of section __TEXT,__stubs:

00000001000070ac __stubs:
1000070ac: ff 25 4e 2f 00 00           	jmpq	*12110(%rip)
1000070b2: ff 25 50 2f 00 00           	jmpq	*12112(%rip)
1000070b8: ff 25 52 2f 00 00           	jmpq	*12114(%rip)
1000070be: ff 25 54 2f 00 00           	jmpq	*12116(%rip)
1000070c4: ff 25 56 2f 00 00           	jmpq	*12118(%rip)
1000070ca: ff 25 58 2f 00 00           	jmpq	*12120(%rip)
1000070d0: ff 25 5a 2f 00 00           	jmpq	*12122(%rip)
1000070d6: ff 25 5c 2f 00 00           	jmpq	*12124(%rip)
1000070dc: ff 25 5e 2f 00 00           	jmpq	*12126(%rip)
1000070e2: ff 25 60 2f 00 00           	jmpq	*12128(%rip)
1000070e8: ff 25 62 2f 00 00           	jmpq	*12130(%rip)
1000070ee: ff 25 64 2f 00 00           	jmpq	*12132(%rip)
1000070f4: ff 25 66 2f 00 00           	jmpq	*12134(%rip)
1000070fa: ff 25 68 2f 00 00           	jmpq	*12136(%rip)
100007100: ff 25 6a 2f 00 00           	jmpq	*12138(%rip)
100007106: ff 25 6c 2f 00 00           	jmpq	*12140(%rip)
10000710c: ff 25 6e 2f 00 00           	jmpq	*12142(%rip)
100007112: ff 25 70 2f 00 00           	jmpq	*12144(%rip)
100007118: ff 25 72 2f 00 00           	jmpq	*12146(%rip)
10000711e: ff 25 74 2f 00 00           	jmpq	*12148(%rip)
100007124: ff 25 76 2f 00 00           	jmpq	*12150(%rip)
10000712a: ff 25 78 2f 00 00           	jmpq	*12152(%rip)
100007130: ff 25 7a 2f 00 00           	jmpq	*12154(%rip)
100007136: ff 25 7c 2f 00 00           	jmpq	*12156(%rip)
10000713c: ff 25 7e 2f 00 00           	jmpq	*12158(%rip)
100007142: ff 25 80 2f 00 00           	jmpq	*12160(%rip)
100007148: ff 25 82 2f 00 00           	jmpq	*12162(%rip)
10000714e: ff 25 84 2f 00 00           	jmpq	*12164(%rip)
100007154: ff 25 86 2f 00 00           	jmpq	*12166(%rip)
10000715a: ff 25 88 2f 00 00           	jmpq	*12168(%rip)
100007160: ff 25 8a 2f 00 00           	jmpq	*12170(%rip)
100007166: ff 25 8c 2f 00 00           	jmpq	*12172(%rip)
10000716c: ff 25 8e 2f 00 00           	jmpq	*12174(%rip)
100007172: ff 25 90 2f 00 00           	jmpq	*12176(%rip)

Disassembly of section __TEXT,__stub_helper:

0000000100007178 __stub_helper:
100007178: 4c 8d 1d 91 2f 00 00        	leaq	12177(%rip), %r11
10000717f: 41 53                       	pushq	%r11
100007181: ff 25 e1 1e 00 00           	jmpq	*7905(%rip)
100007187: 90                          	nop
100007188: 68 4e 01 00 00              	pushq	$334
10000718d: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>
100007192: 68 9c 02 00 00              	pushq	$668
100007197: e9 dc ff ff ff              	jmp	-36 <__stub_helper>
10000719c: 68 17 00 00 00              	pushq	$23
1000071a1: e9 d2 ff ff ff              	jmp	-46 <__stub_helper>
1000071a6: 68 7a 00 00 00              	pushq	$122
1000071ab: e9 c8 ff ff ff              	jmp	-56 <__stub_helper>
1000071b0: 68 9b 00 00 00              	pushq	$155
1000071b5: e9 be ff ff ff              	jmp	-66 <__stub_helper>
1000071ba: 68 11 03 00 00              	pushq	$785
1000071bf: e9 b4 ff ff ff              	jmp	-76 <__stub_helper>
1000071c4: 68 b9 01 00 00              	pushq	$441
1000071c9: e9 aa ff ff ff              	jmp	-86 <__stub_helper>
1000071ce: 68 07 02 00 00              	pushq	$519
1000071d3: e9 a0 ff ff ff              	jmp	-96 <__stub_helper>
1000071d8: 68 b4 02 00 00              	pushq	$692
1000071dd: e9 96 ff ff ff              	jmp	-106 <__stub_helper>
1000071e2: 68 c4 00 00 00              	pushq	$196
1000071e7: e9 8c ff ff ff              	jmp	-116 <__stub_helper>
1000071ec: 68 e5 00 00 00              	pushq	$229
1000071f1: e9 82 ff ff ff              	jmp	-126 <__stub_helper>
1000071f6: 68 05 01 00 00              	pushq	$261
1000071fb: e9 78 ff ff ff              	jmp	-136 <__stub_helper>
100007200: 68 27 01 00 00              	pushq	$295
100007205: e9 6e ff ff ff              	jmp	-146 <__stub_helper>
10000720a: 68 f6 02 00 00              	pushq	$758
10000720f: e9 64 ff ff ff              	jmp	-156 <__stub_helper>
100007214: 68 3a 03 00 00              	pushq	$826
100007219: e9 5a ff ff ff              	jmp	-166 <__stub_helper>
10000721e: 68 68 03 00 00              	pushq	$872
100007223: e9 50 ff ff ff              	jmp	-176 <__stub_helper>
100007228: 68 8e 03 00 00              	pushq	$910
10000722d: e9 46 ff ff ff              	jmp	-186 <__stub_helper>
100007232: 68 e3 03 00 00              	pushq	$995
100007237: e9 3c ff ff ff              	jmp	-196 <__stub_helper>
10000723c: 68 2a 04 00 00              	pushq	$1066
100007241: e9 32 ff ff ff              	jmp	-206 <__stub_helper>
100007246: 68 6e 04 00 00              	pushq	$1134
10000724b: e9 28 ff ff ff              	jmp	-216 <__stub_helper>
100007250: 68 9c 04 00 00              	pushq	$1180
100007255: e9 1e ff ff ff              	jmp	-226 <__stub_helper>
10000725a: 68 ba 04 00 00              	pushq	$1210
10000725f: e9 14 ff ff ff              	jmp	-236 <__stub_helper>
100007264: 68 fb 04 00 00              	pushq	$1275
100007269: e9 0a ff ff ff              	jmp	-246 <__stub_helper>
10000726e: 68 1f 05 00 00              	pushq	$1311
100007273: e9 00 ff ff ff              	jmp	-256 <__stub_helper>
100007278: 68 3e 05 00 00              	pushq	$1342
10000727d: e9 f6 fe ff ff              	jmp	-266 <__stub_helper>
100007282: 68 57 05 00 00              	pushq	$1367
100007287: e9 ec fe ff ff              	jmp	-276 <__stub_helper>
10000728c: 68 72 05 00 00              	pushq	$1394
100007291: e9 e2 fe ff ff              	jmp	-286 <__stub_helper>
100007296: 68 00 00 00 00              	pushq	$0
10000729b: e9 d8 fe ff ff              	jmp	-296 <__stub_helper>
1000072a0: 68 8b 05 00 00              	pushq	$1419
1000072a5: e9 ce fe ff ff              	jmp	-306 <__stub_helper>
1000072aa: 68 a5 05 00 00              	pushq	$1445
1000072af: e9 c4 fe ff ff              	jmp	-316 <__stub_helper>
1000072b4: 68 b5 05 00 00              	pushq	$1461
1000072b9: e9 ba fe ff ff              	jmp	-326 <__stub_helper>
