
bin/embedded_neural_nework_test.elf:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100002240 __Z10dot_kernelPKaS0_j:
100002240: 55                          	pushq	%rbp
100002241: 48 89 e5                    	movq	%rsp, %rbp
100002244: 41 56                       	pushq	%r14
100002246: 53                          	pushq	%rbx
100002247: 31 c0                       	xorl	%eax, %eax
100002249: 83 fa 20                    	cmpl	$32, %edx
10000224c: 0f 82 36 01 00 00           	jb	310 <__Z10dot_kernelPKaS0_j+0x148>
100002252: 83 c2 e0                    	addl	$-32, %edx
100002255: 89 d0                       	movl	%edx, %eax
100002257: c1 e8 05                    	shrl	$5, %eax
10000225a: 44 8d 48 01                 	leal	1(%rax), %r9d
10000225e: 45 89 c8                    	movl	%r9d, %r8d
100002261: 41 83 e0 01                 	andl	$1, %r8d
100002265: 85 c0                       	testl	%eax, %eax
100002267: 0f 84 f0 03 00 00           	je	1008 <__Z10dot_kernelPKaS0_j+0x41d>
10000226d: 45 29 c1                    	subl	%r8d, %r9d
100002270: 31 c9                       	xorl	%ecx, %ecx
100002272: 31 c0                       	xorl	%eax, %eax
100002274: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000227e: 66 90                       	nop
100002280: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100002287: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
10000228e: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100002294: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
10000229b: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
1000022a2: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
1000022a7: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
1000022ae: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
1000022b3: c4 e2 7d 21 24 0e           	vpmovsxbd	(%rsi,%rcx), %ymm4
1000022b9: c4 e2 5d 40 d2              	vpmulld	%ymm2, %ymm4, %ymm2
1000022be: c4 e2 7d 21 64 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm4
1000022c5: c4 e2 5d 40 db              	vpmulld	%ymm3, %ymm4, %ymm3
1000022ca: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
1000022ce: c5 ed fe cb                 	vpaddd	%ymm3, %ymm2, %ymm1
1000022d2: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
1000022d6: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000022dc: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000022e0: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000022e5: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000022e9: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000022ee: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000022f2: c4 c1 79 7e c2              	vmovd	%xmm0, %r10d
1000022f7: c4 e2 7d 21 44 0f 28        	vpmovsxbd	40(%rdi,%rcx), %ymm0
1000022fe: c4 e2 7d 21 4c 0f 38        	vpmovsxbd	56(%rdi,%rcx), %ymm1
100002305: c4 e2 7d 21 54 0f 20        	vpmovsxbd	32(%rdi,%rcx), %ymm2
10000230c: c4 e2 7d 21 5c 0f 30        	vpmovsxbd	48(%rdi,%rcx), %ymm3
100002313: c4 e2 7d 21 64 0e 28        	vpmovsxbd	40(%rsi,%rcx), %ymm4
10000231a: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
10000231f: c4 e2 7d 21 64 0e 38        	vpmovsxbd	56(%rsi,%rcx), %ymm4
100002326: 41 01 c2                    	addl	%eax, %r10d
100002329: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
10000232e: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100002332: c4 e2 7d 21 4c 0e 20        	vpmovsxbd	32(%rsi,%rcx), %ymm1
100002339: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
10000233e: c4 e2 7d 21 54 0e 30        	vpmovsxbd	48(%rsi,%rcx), %ymm2
100002345: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
10000234a: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
10000234e: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002352: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002358: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000235c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002361: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002365: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000236a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000236e: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002372: 44 01 d0                    	addl	%r10d, %eax
100002375: 48 83 c1 40                 	addq	$64, %rcx
100002379: 41 83 c1 fe                 	addl	$-2, %r9d
10000237d: 0f 85 fd fe ff ff           	jne	-259 <__Z10dot_kernelPKaS0_j+0x40>
100002383: e9 d9 02 00 00              	jmp	729 <__Z10dot_kernelPKaS0_j+0x421>
100002388: 45 31 db                    	xorl	%r11d, %r11d
10000238b: 83 fa 10                    	cmpl	$16, %edx
10000238e: 0f 83 61 03 00 00           	jae	865 <__Z10dot_kernelPKaS0_j+0x4b5>
100002394: 45 89 d9                    	movl	%r11d, %r9d
100002397: 83 fa 08                    	cmpl	$8, %edx
10000239a: 0f 83 e8 04 00 00           	jae	1256 <__Z10dot_kernelPKaS0_j+0x648>
1000023a0: 45 89 c8                    	movl	%r9d, %r8d
1000023a3: 85 d2                       	testl	%edx, %edx
1000023a5: 0f 84 bc 05 00 00           	je	1468 <__Z10dot_kernelPKaS0_j+0x727>
1000023ab: 83 fa 1f                    	cmpl	$31, %edx
1000023ae: 0f 86 ad 01 00 00           	jbe	429 <__Z10dot_kernelPKaS0_j+0x321>
1000023b4: 8d 4a ff                    	leal	-1(%rdx), %ecx
1000023b7: 44 89 c3                    	movl	%r8d, %ebx
1000023ba: f7 d3                       	notl	%ebx
1000023bc: 39 d9                       	cmpl	%ebx, %ecx
1000023be: 0f 87 9d 01 00 00           	ja	413 <__Z10dot_kernelPKaS0_j+0x321>
1000023c4: 41 89 d1                    	movl	%edx, %r9d
1000023c7: 41 83 e1 e0                 	andl	$-32, %r9d
1000023cb: c5 79 6e c0                 	vmovd	%eax, %xmm8
1000023cf: 41 8d 41 e0                 	leal	-32(%r9), %eax
1000023d3: 89 c1                       	movl	%eax, %ecx
1000023d5: c1 e9 05                    	shrl	$5, %ecx
1000023d8: ff c1                       	incl	%ecx
1000023da: 41 89 ca                    	movl	%ecx, %r10d
1000023dd: 41 83 e2 01                 	andl	$1, %r10d
1000023e1: 85 c0                       	testl	%eax, %eax
1000023e3: 0f 84 86 05 00 00           	je	1414 <__Z10dot_kernelPKaS0_j+0x72f>
1000023e9: 44 29 d1                    	subl	%r10d, %ecx
1000023ec: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
1000023f0: 45 31 db                    	xorl	%r11d, %r11d
1000023f3: 44 89 c0                    	movl	%r8d, %eax
1000023f6: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
1000023fa: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
1000023ff: 90                          	nop
100002400: 89 c3                       	movl	%eax, %ebx
100002402: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
100002408: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
10000240f: c4 e2 79 20 74 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm6
100002416: c4 e2 79 20 7c 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm7
10000241d: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
100002423: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
100002427: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
10000242e: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
100002432: c4 e2 79 20 6c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm5
100002439: c5 d1 f5 ee                 	vpmaddwd	%xmm6, %xmm5, %xmm5
10000243d: c4 e2 79 20 74 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm6
100002444: c5 c9 f5 f7                 	vpmaddwd	%xmm7, %xmm6, %xmm6
100002448: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
10000244d: c5 5d fe d1                 	vpaddd	%ymm1, %ymm4, %ymm10
100002451: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
100002455: 8d 58 20                    	leal	32(%rax), %ebx
100002458: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
10000245e: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
100002465: c4 e2 79 20 7c 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm7
10000246c: c4 e2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm2
100002473: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
100002479: c4 c1 4d fe f1              	vpaddd	%ymm9, %ymm6, %ymm6
10000247e: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
100002482: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
100002489: c4 e2 79 20 4c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm1
100002490: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
100002494: c5 f1 f5 ef                 	vpmaddwd	%xmm7, %xmm1, %xmm5
100002498: c4 e2 79 20 4c 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm1
10000249f: c5 f1 f5 d2                 	vpmaddwd	%xmm2, %xmm1, %xmm2
1000024a3: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
1000024a8: c4 c1 5d fe ca              	vpaddd	%ymm10, %ymm4, %ymm1
1000024ad: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
1000024b1: c5 6d fe ce                 	vpaddd	%ymm6, %ymm2, %ymm9
1000024b5: 41 83 c3 40                 	addl	$64, %r11d
1000024b9: 83 c0 40                    	addl	$64, %eax
1000024bc: 83 c1 fe                    	addl	$-2, %ecx
1000024bf: 0f 85 3b ff ff ff           	jne	-197 <__Z10dot_kernelPKaS0_j+0x1c0>
1000024c5: 45 85 d2                    	testl	%r10d, %r10d
1000024c8: 74 5b                       	je	91 <__Z10dot_kernelPKaS0_j+0x2e5>
1000024ca: 45 01 c3                    	addl	%r8d, %r11d
1000024cd: c4 a2 79 20 44 1e 18        	vpmovsxbw	24(%rsi,%r11), %xmm0
1000024d4: c4 a2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%r11), %xmm2
1000024db: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
1000024df: c4 41 7d fe c9              	vpaddd	%ymm9, %ymm0, %ymm9
1000024e4: c4 a2 79 20 44 1e 10        	vpmovsxbw	16(%rsi,%r11), %xmm0
1000024eb: c4 a2 79 20 54 1f 10        	vpmovsxbw	16(%rdi,%r11), %xmm2
1000024f2: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
1000024f6: c5 fd fe db                 	vpaddd	%ymm3, %ymm0, %ymm3
1000024fa: c4 a2 79 20 44 1e 08        	vpmovsxbw	8(%rsi,%r11), %xmm0
100002501: c4 a2 79 20 54 1f 08        	vpmovsxbw	8(%rdi,%r11), %xmm2
100002508: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
10000250c: c5 fd fe c9                 	vpaddd	%ymm1, %ymm0, %ymm1
100002510: c4 a2 79 20 04 1e           	vpmovsxbw	(%rsi,%r11), %xmm0
100002516: c4 a2 79 20 14 1f           	vpmovsxbw	(%rdi,%r11), %xmm2
10000251c: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
100002520: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
100002525: c4 c1 75 fe c1              	vpaddd	%ymm9, %ymm1, %ymm0
10000252a: c5 bd fe cb                 	vpaddd	%ymm3, %ymm8, %ymm1
10000252e: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002532: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002538: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000253c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002541: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002545: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000254a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000254e: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002552: 44 39 ca                    	cmpl	%r9d, %edx
100002555: 0f 84 0c 04 00 00           	je	1036 <__Z10dot_kernelPKaS0_j+0x727>
10000255b: 45 01 c8                    	addl	%r9d, %r8d
10000255e: 44 29 ca                    	subl	%r9d, %edx
100002561: 44 8d 4a ff                 	leal	-1(%rdx), %r9d
100002565: 41 89 d2                    	movl	%edx, %r10d
100002568: 41 83 e2 07                 	andl	$7, %r10d
10000256c: 74 21                       	je	33 <__Z10dot_kernelPKaS0_j+0x34f>
10000256e: 31 c9                       	xorl	%ecx, %ecx
100002570: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002574: 44 0f be 1c 1f              	movsbl	(%rdi,%rbx), %r11d
100002579: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000257d: 41 0f af db                 	imull	%r11d, %ebx
100002581: 01 d8                       	addl	%ebx, %eax
100002583: ff c1                       	incl	%ecx
100002585: 41 39 ca                    	cmpl	%ecx, %r10d
100002588: 75 e6                       	jne	-26 <__Z10dot_kernelPKaS0_j+0x330>
10000258a: 41 01 c8                    	addl	%ecx, %r8d
10000258d: 29 ca                       	subl	%ecx, %edx
10000258f: 41 83 f9 07                 	cmpl	$7, %r9d
100002593: 0f 82 ce 03 00 00           	jb	974 <__Z10dot_kernelPKaS0_j+0x727>
100002599: 31 c9                       	xorl	%ecx, %ecx
10000259b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000025a0: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000025a4: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
1000025a9: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000025ad: 41 0f af d9                 	imull	%r9d, %ebx
1000025b1: 01 c3                       	addl	%eax, %ebx
1000025b3: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
1000025b7: 83 c0 01                    	addl	$1, %eax
1000025ba: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
1000025bf: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000025c3: 41 0f af c1                 	imull	%r9d, %eax
1000025c7: 01 d8                       	addl	%ebx, %eax
1000025c9: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000025cd: 83 c3 02                    	addl	$2, %ebx
1000025d0: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
1000025d5: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000025d9: 41 0f af d9                 	imull	%r9d, %ebx
1000025dd: 01 c3                       	addl	%eax, %ebx
1000025df: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
1000025e3: 83 c0 03                    	addl	$3, %eax
1000025e6: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
1000025eb: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000025ef: 41 0f af c1                 	imull	%r9d, %eax
1000025f3: 01 d8                       	addl	%ebx, %eax
1000025f5: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000025f9: 83 c3 04                    	addl	$4, %ebx
1000025fc: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002601: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002605: 41 0f af d9                 	imull	%r9d, %ebx
100002609: 01 c3                       	addl	%eax, %ebx
10000260b: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
10000260f: 83 c0 05                    	addl	$5, %eax
100002612: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
100002617: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000261b: 41 0f af c1                 	imull	%r9d, %eax
10000261f: 01 d8                       	addl	%ebx, %eax
100002621: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002625: 83 c3 06                    	addl	$6, %ebx
100002628: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
10000262d: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002631: 41 0f af d9                 	imull	%r9d, %ebx
100002635: 01 c3                       	addl	%eax, %ebx
100002637: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
10000263b: 83 c0 07                    	addl	$7, %eax
10000263e: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
100002643: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002647: 41 0f af c1                 	imull	%r9d, %eax
10000264b: 01 d8                       	addl	%ebx, %eax
10000264d: 83 c1 08                    	addl	$8, %ecx
100002650: 39 ca                       	cmpl	%ecx, %edx
100002652: 0f 85 48 ff ff ff           	jne	-184 <__Z10dot_kernelPKaS0_j+0x360>
100002658: e9 0a 03 00 00              	jmp	778 <__Z10dot_kernelPKaS0_j+0x727>
10000265d: 31 c9                       	xorl	%ecx, %ecx
10000265f: 31 c0                       	xorl	%eax, %eax
100002661: 41 89 d3                    	movl	%edx, %r11d
100002664: 41 83 e3 e0                 	andl	$-32, %r11d
100002668: 45 85 c0                    	testl	%r8d, %r8d
10000266b: 74 78                       	je	120 <__Z10dot_kernelPKaS0_j+0x4a5>
10000266d: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100002674: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
10000267b: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100002681: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
100002688: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
10000268f: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100002694: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
10000269b: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
1000026a0: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
1000026a4: c4 e2 7d 21 0c 0e           	vpmovsxbd	(%rsi,%rcx), %ymm1
1000026aa: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
1000026af: c4 e2 7d 21 54 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm2
1000026b6: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
1000026bb: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
1000026bf: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
1000026c3: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000026c9: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000026cd: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000026d2: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000026d6: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000026db: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000026df: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000026e3: 01 c8                       	addl	%ecx, %eax
1000026e5: 44 29 da                    	subl	%r11d, %edx
1000026e8: 41 83 c3 20                 	addl	$32, %r11d
1000026ec: 83 fa 10                    	cmpl	$16, %edx
1000026ef: 0f 82 9f fc ff ff           	jb	-865 <__Z10dot_kernelPKaS0_j+0x154>
1000026f5: 44 8d 42 f0                 	leal	-16(%rdx), %r8d
1000026f9: 45 89 c2                    	movl	%r8d, %r10d
1000026fc: 41 83 e2 f0                 	andl	$-16, %r10d
100002700: 47 8d 0c 13                 	leal	(%r11,%r10), %r9d
100002704: 41 83 c1 10                 	addl	$16, %r9d
100002708: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002710: 44 89 d9                    	movl	%r11d, %ecx
100002713: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
100002718: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
10000271c: 41 0f af de                 	imull	%r14d, %ebx
100002720: 01 c3                       	addl	%eax, %ebx
100002722: 48 89 c8                    	movq	%rcx, %rax
100002725: 48 83 c8 01                 	orq	$1, %rax
100002729: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000272e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002732: 41 0f af c6                 	imull	%r14d, %eax
100002736: 01 d8                       	addl	%ebx, %eax
100002738: 48 89 cb                    	movq	%rcx, %rbx
10000273b: 48 83 cb 02                 	orq	$2, %rbx
10000273f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002744: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002748: 41 0f af de                 	imull	%r14d, %ebx
10000274c: 01 c3                       	addl	%eax, %ebx
10000274e: 48 89 c8                    	movq	%rcx, %rax
100002751: 48 83 c8 03                 	orq	$3, %rax
100002755: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000275a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000275e: 41 0f af c6                 	imull	%r14d, %eax
100002762: 01 d8                       	addl	%ebx, %eax
100002764: 48 89 cb                    	movq	%rcx, %rbx
100002767: 48 83 cb 04                 	orq	$4, %rbx
10000276b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002770: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002774: 41 0f af de                 	imull	%r14d, %ebx
100002778: 01 c3                       	addl	%eax, %ebx
10000277a: 48 89 c8                    	movq	%rcx, %rax
10000277d: 48 83 c8 05                 	orq	$5, %rax
100002781: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002786: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000278a: 41 0f af c6                 	imull	%r14d, %eax
10000278e: 01 d8                       	addl	%ebx, %eax
100002790: 48 89 cb                    	movq	%rcx, %rbx
100002793: 48 83 cb 06                 	orq	$6, %rbx
100002797: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000279c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000027a0: 41 0f af de                 	imull	%r14d, %ebx
1000027a4: 01 c3                       	addl	%eax, %ebx
1000027a6: 48 89 c8                    	movq	%rcx, %rax
1000027a9: 48 83 c8 07                 	orq	$7, %rax
1000027ad: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000027b2: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000027b6: 41 0f af c6                 	imull	%r14d, %eax
1000027ba: 01 d8                       	addl	%ebx, %eax
1000027bc: 48 89 cb                    	movq	%rcx, %rbx
1000027bf: 48 83 cb 08                 	orq	$8, %rbx
1000027c3: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000027c8: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000027cc: 41 0f af de                 	imull	%r14d, %ebx
1000027d0: 01 c3                       	addl	%eax, %ebx
1000027d2: 48 89 c8                    	movq	%rcx, %rax
1000027d5: 48 83 c8 09                 	orq	$9, %rax
1000027d9: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000027de: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000027e2: 41 0f af c6                 	imull	%r14d, %eax
1000027e6: 01 d8                       	addl	%ebx, %eax
1000027e8: 48 89 cb                    	movq	%rcx, %rbx
1000027eb: 48 83 cb 0a                 	orq	$10, %rbx
1000027ef: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000027f4: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000027f8: 41 0f af de                 	imull	%r14d, %ebx
1000027fc: 01 c3                       	addl	%eax, %ebx
1000027fe: 48 89 c8                    	movq	%rcx, %rax
100002801: 48 83 c8 0b                 	orq	$11, %rax
100002805: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000280a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000280e: 41 0f af c6                 	imull	%r14d, %eax
100002812: 01 d8                       	addl	%ebx, %eax
100002814: 48 89 cb                    	movq	%rcx, %rbx
100002817: 48 83 cb 0c                 	orq	$12, %rbx
10000281b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002820: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002824: 41 0f af de                 	imull	%r14d, %ebx
100002828: 01 c3                       	addl	%eax, %ebx
10000282a: 48 89 c8                    	movq	%rcx, %rax
10000282d: 48 83 c8 0d                 	orq	$13, %rax
100002831: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002836: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000283a: 41 0f af c6                 	imull	%r14d, %eax
10000283e: 01 d8                       	addl	%ebx, %eax
100002840: 48 89 cb                    	movq	%rcx, %rbx
100002843: 48 83 cb 0e                 	orq	$14, %rbx
100002847: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000284c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002850: 41 0f af de                 	imull	%r14d, %ebx
100002854: 01 c3                       	addl	%eax, %ebx
100002856: 48 83 c9 0f                 	orq	$15, %rcx
10000285a: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
10000285f: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
100002863: 41 0f af c6                 	imull	%r14d, %eax
100002867: 01 d8                       	addl	%ebx, %eax
100002869: 41 83 c3 10                 	addl	$16, %r11d
10000286d: 83 c2 f0                    	addl	$-16, %edx
100002870: 83 fa 0f                    	cmpl	$15, %edx
100002873: 0f 87 97 fe ff ff           	ja	-361 <__Z10dot_kernelPKaS0_j+0x4d0>
100002879: 45 29 d0                    	subl	%r10d, %r8d
10000287c: 44 89 c2                    	movl	%r8d, %edx
10000287f: 83 fa 08                    	cmpl	$8, %edx
100002882: 0f 82 18 fb ff ff           	jb	-1256 <__Z10dot_kernelPKaS0_j+0x160>
100002888: 44 8d 52 f8                 	leal	-8(%rdx), %r10d
10000288c: 45 89 d3                    	movl	%r10d, %r11d
10000288f: 41 83 e3 f8                 	andl	$-8, %r11d
100002893: 47 8d 04 19                 	leal	(%r9,%r11), %r8d
100002897: 41 83 c0 08                 	addl	$8, %r8d
10000289b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000028a0: 44 89 c9                    	movl	%r9d, %ecx
1000028a3: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000028a8: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
1000028ac: 41 0f af de                 	imull	%r14d, %ebx
1000028b0: 01 c3                       	addl	%eax, %ebx
1000028b2: 48 89 c8                    	movq	%rcx, %rax
1000028b5: 48 83 c8 01                 	orq	$1, %rax
1000028b9: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000028be: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000028c2: 41 0f af c6                 	imull	%r14d, %eax
1000028c6: 01 d8                       	addl	%ebx, %eax
1000028c8: 48 89 cb                    	movq	%rcx, %rbx
1000028cb: 48 83 cb 02                 	orq	$2, %rbx
1000028cf: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000028d4: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000028d8: 41 0f af de                 	imull	%r14d, %ebx
1000028dc: 01 c3                       	addl	%eax, %ebx
1000028de: 48 89 c8                    	movq	%rcx, %rax
1000028e1: 48 83 c8 03                 	orq	$3, %rax
1000028e5: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000028ea: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000028ee: 41 0f af c6                 	imull	%r14d, %eax
1000028f2: 01 d8                       	addl	%ebx, %eax
1000028f4: 48 89 cb                    	movq	%rcx, %rbx
1000028f7: 48 83 cb 04                 	orq	$4, %rbx
1000028fb: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002900: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002904: 41 0f af de                 	imull	%r14d, %ebx
100002908: 01 c3                       	addl	%eax, %ebx
10000290a: 48 89 c8                    	movq	%rcx, %rax
10000290d: 48 83 c8 05                 	orq	$5, %rax
100002911: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002916: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000291a: 41 0f af c6                 	imull	%r14d, %eax
10000291e: 01 d8                       	addl	%ebx, %eax
100002920: 48 89 cb                    	movq	%rcx, %rbx
100002923: 48 83 cb 06                 	orq	$6, %rbx
100002927: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000292c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002930: 41 0f af de                 	imull	%r14d, %ebx
100002934: 01 c3                       	addl	%eax, %ebx
100002936: 48 83 c9 07                 	orq	$7, %rcx
10000293a: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
10000293f: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
100002943: 41 0f af c6                 	imull	%r14d, %eax
100002947: 01 d8                       	addl	%ebx, %eax
100002949: 41 83 c1 08                 	addl	$8, %r9d
10000294d: 83 c2 f8                    	addl	$-8, %edx
100002950: 83 fa 07                    	cmpl	$7, %edx
100002953: 0f 87 47 ff ff ff           	ja	-185 <__Z10dot_kernelPKaS0_j+0x660>
100002959: 45 29 da                    	subl	%r11d, %r10d
10000295c: 44 89 d2                    	movl	%r10d, %edx
10000295f: 85 d2                       	testl	%edx, %edx
100002961: 0f 85 44 fa ff ff           	jne	-1468 <__Z10dot_kernelPKaS0_j+0x16b>
100002967: 5b                          	popq	%rbx
100002968: 41 5e                       	popq	%r14
10000296a: 5d                          	popq	%rbp
10000296b: c5 f8 77                    	vzeroupper
10000296e: c3                          	retq
10000296f: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100002973: 45 31 db                    	xorl	%r11d, %r11d
100002976: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
10000297a: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
10000297f: 45 85 d2                    	testl	%r10d, %r10d
100002982: 0f 85 42 fb ff ff           	jne	-1214 <__Z10dot_kernelPKaS0_j+0x28a>
100002988: e9 98 fb ff ff              	jmp	-1128 <__Z10dot_kernelPKaS0_j+0x2e5>
10000298d: 0f 1f 00                    	nopl	(%rax)

0000000100002990 __Z6LinearPaS_PKaS1_ajj:
100002990: 55                          	pushq	%rbp
100002991: 48 89 e5                    	movq	%rsp, %rbp
100002994: 41 57                       	pushq	%r15
100002996: 41 56                       	pushq	%r14
100002998: 41 55                       	pushq	%r13
10000299a: 41 54                       	pushq	%r12
10000299c: 53                          	pushq	%rbx
10000299d: 48 83 ec 28                 	subq	$40, %rsp
1000029a1: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000029a5: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
1000029a9: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
1000029ad: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
1000029b1: 8b 45 10                    	movl	16(%rbp), %eax
1000029b4: 85 c0                       	testl	%eax, %eax
1000029b6: 74 71                       	je	113 <__Z6LinearPaS_PKaS1_ajj+0x99>
1000029b8: 44 89 cb                    	movl	%r9d, %ebx
1000029bb: 45 0f be f0                 	movsbl	%r8b, %r14d
1000029bf: 41 89 c7                    	movl	%eax, %r15d
1000029c2: 45 31 e4                    	xorl	%r12d, %r12d
1000029c5: 45 31 ed                    	xorl	%r13d, %r13d
1000029c8: eb 19                       	jmp	25 <__Z6LinearPaS_PKaS1_ajj+0x53>
1000029ca: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000029d0: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000029d4: 42 88 04 29                 	movb	%al, (%rcx,%r13)
1000029d8: 49 ff c5                    	incq	%r13
1000029db: 41 01 dc                    	addl	%ebx, %r12d
1000029de: 4d 39 ef                    	cmpq	%r13, %r15
1000029e1: 74 46                       	je	70 <__Z6LinearPaS_PKaS1_ajj+0x99>
1000029e3: 44 89 e6                    	movl	%r12d, %esi
1000029e6: 48 03 75 b8                 	addq	-72(%rbp), %rsi
1000029ea: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000029ee: 89 da                       	movl	%ebx, %edx
1000029f0: e8 4b f8 ff ff              	callq	-1973 <__Z10dot_kernelPKaS0_j>
1000029f5: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000029f9: 42 0f be 0c 29              	movsbl	(%rcx,%r13), %ecx
1000029fe: 01 c1                       	addl	%eax, %ecx
100002a00: 41 0f af ce                 	imull	%r14d, %ecx
100002a04: 89 c8                       	movl	%ecx, %eax
100002a06: c1 f8 1f                    	sarl	$31, %eax
100002a09: c1 e8 12                    	shrl	$18, %eax
100002a0c: 01 c8                       	addl	%ecx, %eax
100002a0e: c1 f8 0e                    	sarl	$14, %eax
100002a11: 3d 80 00 00 00              	cmpl	$128, %eax
100002a16: 7c 05                       	jl	5 <__Z6LinearPaS_PKaS1_ajj+0x8d>
100002a18: b8 7f 00 00 00              	movl	$127, %eax
100002a1d: 83 f8 81                    	cmpl	$-127, %eax
100002a20: 7f ae                       	jg	-82 <__Z6LinearPaS_PKaS1_ajj+0x40>
100002a22: b8 81 00 00 00              	movl	$129, %eax
100002a27: eb a7                       	jmp	-89 <__Z6LinearPaS_PKaS1_ajj+0x40>
100002a29: 48 83 c4 28                 	addq	$40, %rsp
100002a2d: 5b                          	popq	%rbx
100002a2e: 41 5c                       	popq	%r12
100002a30: 41 5d                       	popq	%r13
100002a32: 41 5e                       	popq	%r14
100002a34: 41 5f                       	popq	%r15
100002a36: 5d                          	popq	%rbp
100002a37: c3                          	retq
100002a38: 90                          	nop
100002a39: 90                          	nop
100002a3a: 90                          	nop
100002a3b: 90                          	nop
100002a3c: 90                          	nop
100002a3d: 90                          	nop
100002a3e: 90                          	nop
100002a3f: 90                          	nop

0000000100002a40 __Z6Conv2dPaS_PKaS1_ijjjjjj:
100002a40: 55                          	pushq	%rbp
100002a41: 48 89 e5                    	movq	%rsp, %rbp
100002a44: 41 57                       	pushq	%r15
100002a46: 41 56                       	pushq	%r14
100002a48: 41 55                       	pushq	%r13
100002a4a: 41 54                       	pushq	%r12
100002a4c: 53                          	pushq	%rbx
100002a4d: 48 83 ec 68                 	subq	$104, %rsp
100002a51: 44 89 4d d4                 	movl	%r9d, -44(%rbp)
100002a55: 44 89 45 d0                 	movl	%r8d, -48(%rbp)
100002a59: 48 89 4d b0                 	movq	%rcx, -80(%rbp)
100002a5d: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
100002a61: 48 89 75 b8                 	movq	%rsi, -72(%rbp)
100002a65: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
100002a69: 44 8b 55 30                 	movl	48(%rbp), %r10d
100002a6d: 8b 4d 28                    	movl	40(%rbp), %ecx
100002a70: 8b 45 18                    	movl	24(%rbp), %eax
100002a73: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002a77: 8b 45 10                    	movl	16(%rbp), %eax
100002a7a: 83 f9 03                    	cmpl	$3, %ecx
100002a7d: 0f 84 24 01 00 00           	je	292 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x167>
100002a83: 83 f9 01                    	cmpl	$1, %ecx
100002a86: 0f 85 1f 08 00 00           	jne	2079 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002a8c: 8d 48 ff                    	leal	-1(%rax), %ecx
100002a8f: 83 f9 1f                    	cmpl	$31, %ecx
100002a92: 0f 87 5b 01 00 00           	ja	347 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x1b3>
100002a98: 48 8d 05 61 09 00 00        	leaq	2401(%rip), %rax
100002a9f: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002aa3: 48 01 c1                    	addq	%rax, %rcx
100002aa6: ff e1                       	jmpq	*%rcx
100002aa8: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002aac: 0f 84 f9 07 00 00           	je	2041 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002ab2: 44 89 d1                    	movl	%r10d, %ecx
100002ab5: d1 e9                       	shrl	%ecx
100002ab7: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002abb: 29 c8                       	subl	%ecx, %eax
100002abd: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002ac1: 8b 45 20                    	movl	32(%rbp), %eax
100002ac4: 41 89 c7                    	movl	%eax, %r15d
100002ac7: 89 4d b0                    	movl	%ecx, -80(%rbp)
100002aca: 41 29 cf                    	subl	%ecx, %r15d
100002acd: 8b 45 d4                    	movl	-44(%rbp), %eax
100002ad0: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100002ad4: 31 c9                       	xorl	%ecx, %ecx
100002ad6: 41 bb 7f 00 00 00           	movl	$127, %r11d
100002adc: 41 be 81 00 00 00           	movl	$129, %r14d
100002ae2: 44 8b 6d d4                 	movl	-44(%rbp), %r13d
100002ae6: 44 8b 65 d0                 	movl	-48(%rbp), %r12d
100002aea: 4c 8b 45 a0                 	movq	-96(%rbp), %r8
100002aee: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002af2: 75 1f                       	jne	31 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xd3>
100002af4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002afe: 66 90                       	nop
100002b00: 48 ff c1                    	incq	%rcx
100002b03: 48 3b 4d a8                 	cmpq	-88(%rbp), %rcx
100002b07: 0f 84 9e 07 00 00           	je	1950 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002b0d: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002b11: 74 ed                       	je	-19 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xc0>
100002b13: c7 45 b8 00 00 00 00        	movl	$0, -72(%rbp)
100002b1a: eb 15                       	jmp	21 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xf1>
100002b1c: 0f 1f 40 00                 	nopl	(%rax)
100002b20: 8b 45 b8                    	movl	-72(%rbp), %eax
100002b23: 44 01 c8                    	addl	%r9d, %eax
100002b26: 89 45 b8                    	movl	%eax, -72(%rbp)
100002b29: 3b 45 c8                    	cmpl	-56(%rbp), %eax
100002b2c: 4d 89 ca                    	movq	%r9, %r10
100002b2f: 73 cf                       	jae	-49 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xc0>
100002b31: 45 85 ff                    	testl	%r15d, %r15d
100002b34: 4d 89 d1                    	movq	%r10, %r9
100002b37: 4c 8b 55 98                 	movq	-104(%rbp), %r10
100002b3b: 74 e3                       	je	-29 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
100002b3d: 8b 45 b8                    	movl	-72(%rbp), %eax
100002b40: 31 d2                       	xorl	%edx, %edx
100002b42: 41 f7 f1                    	divl	%r9d
100002b45: 89 c7                       	movl	%eax, %edi
100002b47: 8b 45 20                    	movl	32(%rbp), %eax
100002b4a: 31 d2                       	xorl	%edx, %edx
100002b4c: 41 f7 f1                    	divl	%r9d
100002b4f: 89 c6                       	movl	%eax, %esi
100002b51: 8b 45 b0                    	movl	-80(%rbp), %eax
100002b54: 29 c7                       	subl	%eax, %edi
100002b56: 0f af f7                    	imull	%edi, %esi
100002b59: 29 c6                       	subl	%eax, %esi
100002b5b: 31 ff                       	xorl	%edi, %edi
100002b5d: 0f 1f 00                    	nopl	(%rax)
100002b60: 41 0f be 04 08              	movsbl	(%r8,%rcx), %eax
100002b65: 41 0f af c4                 	imull	%r12d, %eax
100002b69: 89 c3                       	movl	%eax, %ebx
100002b6b: c1 fb 1f                    	sarl	$31, %ebx
100002b6e: c1 eb 12                    	shrl	$18, %ebx
100002b71: 01 c3                       	addl	%eax, %ebx
100002b73: c1 fb 0e                    	sarl	$14, %ebx
100002b76: 81 fb 80 00 00 00           	cmpl	$128, %ebx
100002b7c: 41 0f 4d db                 	cmovgel	%r11d, %ebx
100002b80: 89 f8                       	movl	%edi, %eax
100002b82: 31 d2                       	xorl	%edx, %edx
100002b84: 41 f7 f1                    	divl	%r9d
100002b87: 01 f0                       	addl	%esi, %eax
100002b89: 41 0f af c5                 	imull	%r13d, %eax
100002b8d: 01 c8                       	addl	%ecx, %eax
100002b8f: 83 fb 81                    	cmpl	$-127, %ebx
100002b92: 41 0f 4e de                 	cmovlel	%r14d, %ebx
100002b96: 41 88 1c 02                 	movb	%bl, (%r10,%rax)
100002b9a: 44 01 cf                    	addl	%r9d, %edi
100002b9d: 44 39 ff                    	cmpl	%r15d, %edi
100002ba0: 72 be                       	jb	-66 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x120>
100002ba2: e9 79 ff ff ff              	jmp	-135 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
100002ba7: 8d 48 ff                    	leal	-1(%rax), %ecx
100002baa: 83 f9 1f                    	cmpl	$31, %ecx
100002bad: 0f 87 c8 01 00 00           	ja	456 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x33b>
100002bb3: 48 8d 05 c6 07 00 00        	leaq	1990(%rip), %rax
100002bba: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002bbe: 48 01 c1                    	addq	%rax, %rcx
100002bc1: ff e1                       	jmpq	*%rcx
100002bc3: 48 83 ec 08                 	subq	$8, %rsp
100002bc7: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002bcb: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100002bcf: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002bd3: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100002bd7: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002bdb: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002bdf: 41 52                       	pushq	%r10
100002be1: 8b 45 20                    	movl	32(%rbp), %eax
100002be4: 50                          	pushq	%rax
100002be5: 8b 45 18                    	movl	24(%rbp), %eax
100002be8: 50                          	pushq	%rax
100002be9: e8 52 0a 00 00              	callq	2642 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj>
100002bee: e9 76 07 00 00              	jmp	1910 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x929>
100002bf3: 83 f8 40                    	cmpl	$64, %eax
100002bf6: 0f 85 af 06 00 00           	jne	1711 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002bfc: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002c00: 0f 84 a5 06 00 00           	je	1701 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002c06: 45 89 d0                    	movl	%r10d, %r8d
100002c09: 41 d1 e8                    	shrl	%r8d
100002c0c: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002c10: 44 29 c0                    	subl	%r8d, %eax
100002c13: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002c17: 8b 45 20                    	movl	32(%rbp), %eax
100002c1a: 41 89 c1                    	movl	%eax, %r9d
100002c1d: 45 29 c1                    	subl	%r8d, %r9d
100002c20: 8b 55 d4                    	movl	-44(%rbp), %edx
100002c23: 48 89 95 70 ff ff ff        	movq	%rdx, -144(%rbp)
100002c2a: 44 89 d2                    	movl	%r10d, %edx
100002c2d: 0f af d0                    	imull	%eax, %edx
100002c30: c1 e2 06                    	shll	$6, %edx
100002c33: 89 95 78 ff ff ff           	movl	%edx, -136(%rbp)
100002c39: 45 89 d6                    	movl	%r10d, %r14d
100002c3c: 41 c1 e6 06                 	shll	$6, %r14d
100002c40: 31 d2                       	xorl	%edx, %edx
100002c42: 44 89 4d c0                 	movl	%r9d, -64(%rbp)
100002c46: 44 89 75 c4                 	movl	%r14d, -60(%rbp)
100002c4a: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002c4e: 75 16                       	jne	22 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x226>
100002c50: 48 ff c2                    	incq	%rdx
100002c53: 48 3b 95 70 ff ff ff        	cmpq	-144(%rbp), %rdx
100002c5a: 0f 84 4b 06 00 00           	je	1611 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002c60: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002c64: 74 ea                       	je	-22 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x210>
100002c66: 41 89 d3                    	movl	%edx, %r11d
100002c69: 41 c1 e3 06                 	shll	$6, %r11d
100002c6d: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002c71: 4a 8d 34 18                 	leaq	(%rax,%r11), %rsi
100002c75: c7 45 90 00 00 00 00        	movl	$0, -112(%rbp)
100002c7c: 45 31 e4                    	xorl	%r12d, %r12d
100002c7f: 48 89 55 80                 	movq	%rdx, -128(%rbp)
100002c83: 48 89 75 88                 	movq	%rsi, -120(%rbp)
100002c87: eb 1c                       	jmp	28 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x265>
100002c89: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002c90: 45 01 d4                    	addl	%r10d, %r12d
100002c93: 8b 45 90                    	movl	-112(%rbp), %eax
100002c96: 03 85 78 ff ff ff           	addl	-136(%rbp), %eax
100002c9c: 89 45 90                    	movl	%eax, -112(%rbp)
100002c9f: 44 3b 65 c8                 	cmpl	-56(%rbp), %r12d
100002ca3: 73 ab                       	jae	-85 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x210>
100002ca5: 45 85 c9                    	testl	%r9d, %r9d
100002ca8: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100002cac: 74 e2                       	je	-30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x250>
100002cae: 31 db                       	xorl	%ebx, %ebx
100002cb0: 44 8b 7d 90                 	movl	-112(%rbp), %r15d
100002cb4: 44 89 65 a8                 	movl	%r12d, -88(%rbp)
100002cb8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002cc0: 44 89 ff                    	movl	%r15d, %edi
100002cc3: 48 01 cf                    	addq	%rcx, %rdi
100002cc6: 45 89 c4                    	movl	%r8d, %r12d
100002cc9: 4d 89 de                    	movq	%r11, %r14
100002ccc: 4d 89 d5                    	movq	%r10, %r13
100002ccf: e8 2c 17 00 00              	callq	5932 <__Z11microkernelILj1ELj64EasET2_PKT1_S3_>
100002cd4: 4d 89 ea                    	movq	%r13, %r10
100002cd7: 44 8b 6d 20                 	movl	32(%rbp), %r13d
100002cdb: 4d 89 f3                    	movq	%r14, %r11
100002cde: ba 7f 00 00 00              	movl	$127, %edx
100002ce3: 45 89 e0                    	movl	%r12d, %r8d
100002ce6: 44 8b 65 a8                 	movl	-88(%rbp), %r12d
100002cea: 98                          	cwtl
100002ceb: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002cef: 42 0f be 0c 31              	movsbl	(%rcx,%r14), %ecx
100002cf4: 01 c1                       	addl	%eax, %ecx
100002cf6: 0f af 4d d0                 	imull	-48(%rbp), %ecx
100002cfa: 89 cf                       	movl	%ecx, %edi
100002cfc: c1 ff 1f                    	sarl	$31, %edi
100002cff: c1 ef 12                    	shrl	$18, %edi
100002d02: 01 cf                       	addl	%ecx, %edi
100002d04: c1 ff 0e                    	sarl	$14, %edi
100002d07: 81 ff 80 00 00 00           	cmpl	$128, %edi
100002d0d: 0f 4d fa                    	cmovgel	%edx, %edi
100002d10: 89 d8                       	movl	%ebx, %eax
100002d12: 31 d2                       	xorl	%edx, %edx
100002d14: 41 f7 f2                    	divl	%r10d
100002d17: 89 c1                       	movl	%eax, %ecx
100002d19: 44 89 e0                    	movl	%r12d, %eax
100002d1c: 31 d2                       	xorl	%edx, %edx
100002d1e: 41 f7 f2                    	divl	%r10d
100002d21: 89 c6                       	movl	%eax, %esi
100002d23: 44 89 e8                    	movl	%r13d, %eax
100002d26: 44 8b 6d d4                 	movl	-44(%rbp), %r13d
100002d2a: 31 d2                       	xorl	%edx, %edx
100002d2c: 41 f7 f2                    	divl	%r10d
100002d2f: 44 8b 75 c4                 	movl	-60(%rbp), %r14d
100002d33: 44 29 c6                    	subl	%r8d, %esi
100002d36: 0f af c6                    	imull	%esi, %eax
100002d39: 48 8b 55 80                 	movq	-128(%rbp), %rdx
100002d3d: 44 29 c1                    	subl	%r8d, %ecx
100002d40: 01 c8                       	addl	%ecx, %eax
100002d42: 44 8b 4d c0                 	movl	-64(%rbp), %r9d
100002d46: 41 0f af c5                 	imull	%r13d, %eax
100002d4a: 01 d0                       	addl	%edx, %eax
100002d4c: 83 ff 81                    	cmpl	$-127, %edi
100002d4f: b9 81 00 00 00              	movl	$129, %ecx
100002d54: 0f 4e f9                    	cmovlel	%ecx, %edi
100002d57: 48 8b 75 88                 	movq	-120(%rbp), %rsi
100002d5b: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002d5f: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100002d63: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100002d67: 44 01 d3                    	addl	%r10d, %ebx
100002d6a: 45 01 f7                    	addl	%r14d, %r15d
100002d6d: 44 39 cb                    	cmpl	%r9d, %ebx
100002d70: 0f 82 4a ff ff ff           	jb	-182 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x280>
100002d76: e9 15 ff ff ff              	jmp	-235 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x250>
100002d7b: 83 f8 40                    	cmpl	$64, %eax
100002d7e: 0f 85 27 05 00 00           	jne	1319 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002d84: 48 83 ec 08                 	subq	$8, %rsp
100002d88: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002d8c: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100002d90: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002d94: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100002d98: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002d9c: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002da0: 41 52                       	pushq	%r10
100002da2: 8b 45 20                    	movl	32(%rbp), %eax
100002da5: 50                          	pushq	%rax
100002da6: 8b 45 18                    	movl	24(%rbp), %eax
100002da9: 50                          	pushq	%rax
100002daa: e8 b1 13 00 00              	callq	5041 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj>
100002daf: e9 b5 05 00 00              	jmp	1461 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x929>
100002db4: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002db8: 0f 84 ed 04 00 00           	je	1261 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002dbe: 44 89 d1                    	movl	%r10d, %ecx
100002dc1: d1 e9                       	shrl	%ecx
100002dc3: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002dc7: 29 c8                       	subl	%ecx, %eax
100002dc9: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002dcd: 8b 45 20                    	movl	32(%rbp), %eax
100002dd0: 89 c2                       	movl	%eax, %edx
100002dd2: 89 4d c4                    	movl	%ecx, -60(%rbp)
100002dd5: 29 ca                       	subl	%ecx, %edx
100002dd7: 8b 4d d4                    	movl	-44(%rbp), %ecx
100002dda: 48 89 4d 90                 	movq	%rcx, -112(%rbp)
100002dde: 44 89 d1                    	movl	%r10d, %ecx
100002de1: 0f af c8                    	imull	%eax, %ecx
100002de4: c1 e1 02                    	shll	$2, %ecx
100002de7: 89 4d c0                    	movl	%ecx, -64(%rbp)
100002dea: 42 8d 1c 95 00 00 00 00     	leal	(,%r10,4), %ebx
100002df2: 31 c0                       	xorl	%eax, %eax
100002df4: 8b 75 d0                    	movl	-48(%rbp), %esi
100002df7: 4c 8b 6d a0                 	movq	-96(%rbp), %r13
100002dfb: 4c 8b 65 b8                 	movq	-72(%rbp), %r12
100002dff: eb 20                       	jmp	32 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3e1>
100002e01: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002e0b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002e10: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002e14: 48 ff c0                    	incq	%rax
100002e17: 48 3b 45 90                 	cmpq	-112(%rbp), %rax
100002e1b: 0f 84 8a 04 00 00           	je	1162 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002e21: 48 89 45 88                 	movq	%rax, -120(%rbp)
100002e25: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002e29: 74 e5                       	je	-27 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3d0>
100002e2b: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002e2f: 44 8d 0c 85 00 00 00 00     	leal	(,%rax,4), %r9d
100002e37: c7 45 a8 00 00 00 00        	movl	$0, -88(%rbp)
100002e3e: c7 45 80 00 00 00 00        	movl	$0, -128(%rbp)
100002e45: eb 25                       	jmp	37 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x42c>
100002e47: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002e50: 8b 55 80                    	movl	-128(%rbp), %edx
100002e53: 44 01 da                    	addl	%r11d, %edx
100002e56: 8b 45 a8                    	movl	-88(%rbp), %eax
100002e59: 03 45 c0                    	addl	-64(%rbp), %eax
100002e5c: 89 45 a8                    	movl	%eax, -88(%rbp)
100002e5f: 89 55 80                    	movl	%edx, -128(%rbp)
100002e62: 3b 55 c8                    	cmpl	-56(%rbp), %edx
100002e65: 89 ca                       	movl	%ecx, %edx
100002e67: 4d 89 da                    	movq	%r11, %r10
100002e6a: 73 a4                       	jae	-92 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3d0>
100002e6c: 85 d2                       	testl	%edx, %edx
100002e6e: 89 d1                       	movl	%edx, %ecx
100002e70: 4d 89 d3                    	movq	%r10, %r11
100002e73: 4c 8b 7d 88                 	movq	-120(%rbp), %r15
100002e77: 74 d7                       	je	-41 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x410>
100002e79: 8b 45 80                    	movl	-128(%rbp), %eax
100002e7c: 31 d2                       	xorl	%edx, %edx
100002e7e: 41 f7 f3                    	divl	%r11d
100002e81: 89 c7                       	movl	%eax, %edi
100002e83: 8b 45 20                    	movl	32(%rbp), %eax
100002e86: 31 d2                       	xorl	%edx, %edx
100002e88: 41 f7 f3                    	divl	%r11d
100002e8b: 41 89 c6                    	movl	%eax, %r14d
100002e8e: 8b 45 c4                    	movl	-60(%rbp), %eax
100002e91: 29 c7                       	subl	%eax, %edi
100002e93: 44 0f af f7                 	imull	%edi, %r14d
100002e97: 41 29 c6                    	subl	%eax, %r14d
100002e9a: 31 ff                       	xorl	%edi, %edi
100002e9c: 44 8b 55 a8                 	movl	-88(%rbp), %r10d
100002ea0: 44 89 d0                    	movl	%r10d, %eax
100002ea3: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
100002ea7: c4 a2 79 21 04 0a           	vpmovsxbd	(%rdx,%r9), %xmm0
100002ead: c4 c2 79 21 0c 04           	vpmovsxbd	(%r12,%rax), %xmm1
100002eb3: c4 e2 71 40 c0              	vpmulld	%xmm0, %xmm1, %xmm0
100002eb8: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002ebd: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002ec1: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002ec6: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002eca: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002ece: 98                          	cwtl
100002ecf: 43 0f be 54 0d 00           	movsbl	(%r13,%r9), %edx
100002ed5: 01 c2                       	addl	%eax, %edx
100002ed7: 0f af d6                    	imull	%esi, %edx
100002eda: 41 89 d0                    	movl	%edx, %r8d
100002edd: 41 c1 f8 1f                 	sarl	$31, %r8d
100002ee1: 41 c1 e8 12                 	shrl	$18, %r8d
100002ee5: 41 01 d0                    	addl	%edx, %r8d
100002ee8: 41 c1 f8 0e                 	sarl	$14, %r8d
100002eec: 41 81 f8 80 00 00 00        	cmpl	$128, %r8d
100002ef3: b8 7f 00 00 00              	movl	$127, %eax
100002ef8: 44 0f 4d c0                 	cmovgel	%eax, %r8d
100002efc: 89 f8                       	movl	%edi, %eax
100002efe: 31 d2                       	xorl	%edx, %edx
100002f00: 41 f7 f3                    	divl	%r11d
100002f03: 44 01 f0                    	addl	%r14d, %eax
100002f06: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002f0a: 44 01 f8                    	addl	%r15d, %eax
100002f0d: 41 83 f8 81                 	cmpl	$-127, %r8d
100002f11: ba 81 00 00 00              	movl	$129, %edx
100002f16: 44 0f 4e c2                 	cmovlel	%edx, %r8d
100002f1a: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002f1e: 44 88 04 02                 	movb	%r8b, (%rdx,%rax)
100002f22: 44 01 df                    	addl	%r11d, %edi
100002f25: 41 01 da                    	addl	%ebx, %r10d
100002f28: 39 cf                       	cmpl	%ecx, %edi
100002f2a: 0f 82 70 ff ff ff           	jb	-144 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x460>
100002f30: e9 1b ff ff ff              	jmp	-229 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x410>
100002f35: 48 83 ec 08                 	subq	$8, %rsp
100002f39: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100002f3d: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100002f41: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002f45: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100002f49: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002f4d: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002f51: 41 52                       	pushq	%r10
100002f53: 8b 45 20                    	movl	32(%rbp), %eax
100002f56: 50                          	pushq	%rax
100002f57: 8b 45 18                    	movl	24(%rbp), %eax
100002f5a: 50                          	pushq	%rax
100002f5b: e8 20 05 00 00              	callq	1312 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
100002f60: e9 04 04 00 00              	jmp	1028 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x929>
100002f65: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002f69: 0f 84 3c 03 00 00           	je	828 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002f6f: 45 89 d5                    	movl	%r10d, %r13d
100002f72: 41 d1 ed                    	shrl	%r13d
100002f75: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002f79: 44 29 e8                    	subl	%r13d, %eax
100002f7c: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002f80: 8b 45 20                    	movl	32(%rbp), %eax
100002f83: 89 c7                       	movl	%eax, %edi
100002f85: 44 29 ef                    	subl	%r13d, %edi
100002f88: 8b 4d d4                    	movl	-44(%rbp), %ecx
100002f8b: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
100002f92: 44 89 d1                    	movl	%r10d, %ecx
100002f95: 0f af c8                    	imull	%eax, %ecx
100002f98: c1 e1 04                    	shll	$4, %ecx
100002f9b: 89 4d 90                    	movl	%ecx, -112(%rbp)
100002f9e: 44 89 d6                    	movl	%r10d, %esi
100002fa1: c1 e6 04                    	shll	$4, %esi
100002fa4: 31 c0                       	xorl	%eax, %eax
100002fa6: 44 89 6d a8                 	movl	%r13d, -88(%rbp)
100002faa: 4c 8b 4d b0                 	movq	-80(%rbp), %r9
100002fae: 44 8b 6d a8                 	movl	-88(%rbp), %r13d
100002fb2: eb 20                       	jmp	32 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x594>
100002fb4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002fbe: 66 90                       	nop
100002fc0: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002fc4: 48 ff c0                    	incq	%rax
100002fc7: 48 3b 85 78 ff ff ff        	cmpq	-136(%rbp), %rax
100002fce: 0f 84 d7 02 00 00           	je	727 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100002fd4: 48 89 45 88                 	movq	%rax, -120(%rbp)
100002fd8: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100002fdc: 74 e2                       	je	-30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x580>
100002fde: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100002fe2: 41 89 cb                    	movl	%ecx, %r11d
100002fe5: 41 c1 e3 04                 	shll	$4, %r11d
100002fe9: c7 45 c0 00 00 00 00        	movl	$0, -64(%rbp)
100002ff0: c7 45 c4 00 00 00 00        	movl	$0, -60(%rbp)
100002ff7: eb 23                       	jmp	35 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5dc>
100002ff9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100003000: 8b 7d c4                    	movl	-60(%rbp), %edi
100003003: 44 01 f7                    	addl	%r14d, %edi
100003006: 8b 45 c0                    	movl	-64(%rbp), %eax
100003009: 03 45 90                    	addl	-112(%rbp), %eax
10000300c: 89 45 c0                    	movl	%eax, -64(%rbp)
10000300f: 89 7d c4                    	movl	%edi, -60(%rbp)
100003012: 3b 7d c8                    	cmpl	-56(%rbp), %edi
100003015: 4d 89 f2                    	movq	%r14, %r10
100003018: 89 df                       	movl	%ebx, %edi
10000301a: 73 a4                       	jae	-92 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x580>
10000301c: 85 ff                       	testl	%edi, %edi
10000301e: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003021: 4c 8b 45 a0                 	movq	-96(%rbp), %r8
100003025: 4d 89 d6                    	movq	%r10, %r14
100003028: 89 fb                       	movl	%edi, %ebx
10000302a: 41 bc 7f 00 00 00           	movl	$127, %r12d
100003030: 74 ce                       	je	-50 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100003032: 8b 45 c4                    	movl	-60(%rbp), %eax
100003035: 31 d2                       	xorl	%edx, %edx
100003037: 41 f7 f6                    	divl	%r14d
10000303a: 89 c7                       	movl	%eax, %edi
10000303c: 8b 45 20                    	movl	32(%rbp), %eax
10000303f: 31 d2                       	xorl	%edx, %edx
100003041: 41 f7 f6                    	divl	%r14d
100003044: 2b 7d a8                    	subl	-88(%rbp), %edi
100003047: 0f af c7                    	imull	%edi, %eax
10000304a: 89 45 80                    	movl	%eax, -128(%rbp)
10000304d: 31 ff                       	xorl	%edi, %edi
10000304f: 44 8b 55 c0                 	movl	-64(%rbp), %r10d
100003053: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000305d: 0f 1f 00                    	nopl	(%rax)
100003060: 44 89 d0                    	movl	%r10d, %eax
100003063: c4 82 7d 21 04 19           	vpmovsxbd	(%r9,%r11), %ymm0
100003069: c4 82 7d 21 4c 19 08        	vpmovsxbd	8(%r9,%r11), %ymm1
100003070: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
100003074: c4 e2 7d 21 14 02           	vpmovsxbd	(%rdx,%rax), %ymm2
10000307a: c4 e2 6d 40 c0              	vpmulld	%ymm0, %ymm2, %ymm0
10000307f: c4 e2 7d 21 54 02 08        	vpmovsxbd	8(%rdx,%rax), %ymm2
100003086: c4 e2 6d 40 c9              	vpmulld	%ymm1, %ymm2, %ymm1
10000308b: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
10000308f: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100003095: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003099: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
10000309e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000030a2: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000030a7: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000030ab: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000030af: 98                          	cwtl
1000030b0: 43 0f be 14 18              	movsbl	(%r8,%r11), %edx
1000030b5: 01 c2                       	addl	%eax, %edx
1000030b7: 0f af d1                    	imull	%ecx, %edx
1000030ba: 4d 89 c7                    	movq	%r8, %r15
1000030bd: 41 89 d0                    	movl	%edx, %r8d
1000030c0: 41 c1 f8 1f                 	sarl	$31, %r8d
1000030c4: 41 c1 e8 12                 	shrl	$18, %r8d
1000030c8: 41 01 d0                    	addl	%edx, %r8d
1000030cb: 41 c1 f8 0e                 	sarl	$14, %r8d
1000030cf: 41 81 f8 80 00 00 00        	cmpl	$128, %r8d
1000030d6: 45 0f 4d c4                 	cmovgel	%r12d, %r8d
1000030da: 89 f8                       	movl	%edi, %eax
1000030dc: 31 d2                       	xorl	%edx, %edx
1000030de: 41 f7 f6                    	divl	%r14d
1000030e1: 44 29 e8                    	subl	%r13d, %eax
1000030e4: 03 45 80                    	addl	-128(%rbp), %eax
1000030e7: 0f af 45 d4                 	imull	-44(%rbp), %eax
1000030eb: 03 45 88                    	addl	-120(%rbp), %eax
1000030ee: 41 83 f8 81                 	cmpl	$-127, %r8d
1000030f2: ba 81 00 00 00              	movl	$129, %edx
1000030f7: 44 0f 4e c2                 	cmovlel	%edx, %r8d
1000030fb: 4c 8b 65 98                 	movq	-104(%rbp), %r12
1000030ff: 45 88 04 04                 	movb	%r8b, (%r12,%rax)
100003103: 41 bc 7f 00 00 00           	movl	$127, %r12d
100003109: 4d 89 f8                    	movq	%r15, %r8
10000310c: 44 01 f7                    	addl	%r14d, %edi
10000310f: 41 01 f2                    	addl	%esi, %r10d
100003112: 39 df                       	cmpl	%ebx, %edi
100003114: 0f 82 46 ff ff ff           	jb	-186 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x620>
10000311a: e9 e1 fe ff ff              	jmp	-287 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
10000311f: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003123: 0f 84 82 01 00 00           	je	386 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100003129: 45 89 d0                    	movl	%r10d, %r8d
10000312c: 41 d1 e8                    	shrl	%r8d
10000312f: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003133: 44 29 c0                    	subl	%r8d, %eax
100003136: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000313a: 8b 45 20                    	movl	32(%rbp), %eax
10000313d: 41 89 c1                    	movl	%eax, %r9d
100003140: 45 29 c1                    	subl	%r8d, %r9d
100003143: 8b 55 d4                    	movl	-44(%rbp), %edx
100003146: 48 89 95 70 ff ff ff        	movq	%rdx, -144(%rbp)
10000314d: 44 89 d2                    	movl	%r10d, %edx
100003150: 0f af d0                    	imull	%eax, %edx
100003153: c1 e2 05                    	shll	$5, %edx
100003156: 89 95 78 ff ff ff           	movl	%edx, -136(%rbp)
10000315c: 45 89 d6                    	movl	%r10d, %r14d
10000315f: 41 c1 e6 05                 	shll	$5, %r14d
100003163: 31 d2                       	xorl	%edx, %edx
100003165: 44 89 4d c0                 	movl	%r9d, -64(%rbp)
100003169: 44 89 75 c4                 	movl	%r14d, -60(%rbp)
10000316d: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100003171: 75 23                       	jne	35 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x756>
100003173: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000317d: 0f 1f 00                    	nopl	(%rax)
100003180: 48 ff c2                    	incq	%rdx
100003183: 48 3b 95 70 ff ff ff        	cmpq	-144(%rbp), %rdx
10000318a: 0f 84 1b 01 00 00           	je	283 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x86b>
100003190: 83 7d c8 00                 	cmpl	$0, -56(%rbp)
100003194: 74 ea                       	je	-22 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x740>
100003196: 41 89 d3                    	movl	%edx, %r11d
100003199: 41 c1 e3 05                 	shll	$5, %r11d
10000319d: 48 8b 45 b0                 	movq	-80(%rbp), %rax
1000031a1: 4a 8d 34 18                 	leaq	(%rax,%r11), %rsi
1000031a5: c7 45 90 00 00 00 00        	movl	$0, -112(%rbp)
1000031ac: 45 31 e4                    	xorl	%r12d, %r12d
1000031af: 48 89 55 80                 	movq	%rdx, -128(%rbp)
1000031b3: 48 89 75 88                 	movq	%rsi, -120(%rbp)
1000031b7: eb 1c                       	jmp	28 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x795>
1000031b9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000031c0: 45 01 d4                    	addl	%r10d, %r12d
1000031c3: 8b 45 90                    	movl	-112(%rbp), %eax
1000031c6: 03 85 78 ff ff ff           	addl	-136(%rbp), %eax
1000031cc: 89 45 90                    	movl	%eax, -112(%rbp)
1000031cf: 44 3b 65 c8                 	cmpl	-56(%rbp), %r12d
1000031d3: 73 ab                       	jae	-85 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x740>
1000031d5: 45 85 c9                    	testl	%r9d, %r9d
1000031d8: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000031dc: 74 e2                       	je	-30 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x780>
1000031de: 31 db                       	xorl	%ebx, %ebx
1000031e0: 44 8b 7d 90                 	movl	-112(%rbp), %r15d
1000031e4: 44 89 65 a8                 	movl	%r12d, -88(%rbp)
1000031e8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000031f0: 44 89 ff                    	movl	%r15d, %edi
1000031f3: 48 01 cf                    	addq	%rcx, %rdi
1000031f6: 45 89 c4                    	movl	%r8d, %r12d
1000031f9: 4d 89 de                    	movq	%r11, %r14
1000031fc: 4d 89 d5                    	movq	%r10, %r13
1000031ff: e8 9c 11 00 00              	callq	4508 <__Z11microkernelILj1ELj32EasET2_PKT1_S3_>
100003204: 4d 89 ea                    	movq	%r13, %r10
100003207: 44 8b 6d 20                 	movl	32(%rbp), %r13d
10000320b: 4d 89 f3                    	movq	%r14, %r11
10000320e: ba 7f 00 00 00              	movl	$127, %edx
100003213: 45 89 e0                    	movl	%r12d, %r8d
100003216: 44 8b 65 a8                 	movl	-88(%rbp), %r12d
10000321a: 98                          	cwtl
10000321b: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
10000321f: 42 0f be 0c 31              	movsbl	(%rcx,%r14), %ecx
100003224: 01 c1                       	addl	%eax, %ecx
100003226: 0f af 4d d0                 	imull	-48(%rbp), %ecx
10000322a: 89 cf                       	movl	%ecx, %edi
10000322c: c1 ff 1f                    	sarl	$31, %edi
10000322f: c1 ef 12                    	shrl	$18, %edi
100003232: 01 cf                       	addl	%ecx, %edi
100003234: c1 ff 0e                    	sarl	$14, %edi
100003237: 81 ff 80 00 00 00           	cmpl	$128, %edi
10000323d: 0f 4d fa                    	cmovgel	%edx, %edi
100003240: 89 d8                       	movl	%ebx, %eax
100003242: 31 d2                       	xorl	%edx, %edx
100003244: 41 f7 f2                    	divl	%r10d
100003247: 89 c1                       	movl	%eax, %ecx
100003249: 44 89 e0                    	movl	%r12d, %eax
10000324c: 31 d2                       	xorl	%edx, %edx
10000324e: 41 f7 f2                    	divl	%r10d
100003251: 89 c6                       	movl	%eax, %esi
100003253: 44 89 e8                    	movl	%r13d, %eax
100003256: 44 8b 6d d4                 	movl	-44(%rbp), %r13d
10000325a: 31 d2                       	xorl	%edx, %edx
10000325c: 41 f7 f2                    	divl	%r10d
10000325f: 44 8b 75 c4                 	movl	-60(%rbp), %r14d
100003263: 44 29 c6                    	subl	%r8d, %esi
100003266: 0f af c6                    	imull	%esi, %eax
100003269: 48 8b 55 80                 	movq	-128(%rbp), %rdx
10000326d: 44 29 c1                    	subl	%r8d, %ecx
100003270: 01 c8                       	addl	%ecx, %eax
100003272: 44 8b 4d c0                 	movl	-64(%rbp), %r9d
100003276: 41 0f af c5                 	imull	%r13d, %eax
10000327a: 01 d0                       	addl	%edx, %eax
10000327c: 83 ff 81                    	cmpl	$-127, %edi
10000327f: b9 81 00 00 00              	movl	$129, %ecx
100003284: 0f 4e f9                    	cmovlel	%ecx, %edi
100003287: 48 8b 75 88                 	movq	-120(%rbp), %rsi
10000328b: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
10000328f: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100003293: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100003297: 44 01 d3                    	addl	%r10d, %ebx
10000329a: 45 01 f7                    	addl	%r14d, %r15d
10000329d: 44 39 cb                    	cmpl	%r9d, %ebx
1000032a0: 0f 82 4a ff ff ff           	jb	-182 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7b0>
1000032a6: e9 15 ff ff ff              	jmp	-235 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x780>
1000032ab: 48 83 c4 68                 	addq	$104, %rsp
1000032af: e9 bc 00 00 00              	jmp	188 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x930>
1000032b4: 48 83 ec 08                 	subq	$8, %rsp
1000032b8: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000032bc: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
1000032c0: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000032c4: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
1000032c8: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
1000032cc: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
1000032d0: 41 52                       	pushq	%r10
1000032d2: 8b 45 20                    	movl	32(%rbp), %eax
1000032d5: 50                          	pushq	%rax
1000032d6: 8b 45 18                    	movl	24(%rbp), %eax
1000032d9: 50                          	pushq	%rax
1000032da: e8 81 05 00 00              	callq	1409 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj>
1000032df: e9 85 00 00 00              	jmp	133 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x929>
1000032e4: 48 83 ec 08                 	subq	$8, %rsp
1000032e8: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000032ec: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
1000032f0: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000032f4: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
1000032f8: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
1000032fc: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100003300: 41 52                       	pushq	%r10
100003302: 8b 45 20                    	movl	32(%rbp), %eax
100003305: 50                          	pushq	%rax
100003306: 8b 45 18                    	movl	24(%rbp), %eax
100003309: 50                          	pushq	%rax
10000330a: e8 91 07 00 00              	callq	1937 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
10000330f: eb 58                       	jmp	88 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x929>
100003311: 48 83 ec 08                 	subq	$8, %rsp
100003315: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003319: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
10000331d: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100003321: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100003325: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100003329: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
10000332d: 41 52                       	pushq	%r10
10000332f: 8b 45 20                    	movl	32(%rbp), %eax
100003332: 50                          	pushq	%rax
100003333: 8b 45 18                    	movl	24(%rbp), %eax
100003336: 50                          	pushq	%rax
100003337: e8 a4 09 00 00              	callq	2468 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj>
10000333c: eb 2b                       	jmp	43 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x929>
10000333e: 48 83 ec 08                 	subq	$8, %rsp
100003342: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100003346: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
10000334a: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000334e: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100003352: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100003356: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
10000335a: 41 52                       	pushq	%r10
10000335c: 8b 45 20                    	movl	32(%rbp), %eax
10000335f: 50                          	pushq	%rax
100003360: 8b 45 18                    	movl	24(%rbp), %eax
100003363: 50                          	pushq	%rax
100003364: e8 b7 0b 00 00              	callq	2999 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj>
100003369: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003370: 5b                          	popq	%rbx
100003371: 41 5c                       	popq	%r12
100003373: 41 5d                       	popq	%r13
100003375: 41 5e                       	popq	%r14
100003377: 41 5f                       	popq	%r15
100003379: 5d                          	popq	%rbp
10000337a: c5 f8 77                    	vzeroupper
10000337d: c3                          	retq
10000337e: 66 90                       	nop
100003380: 43 f8                       	clc
100003382: ff ff                       	<unknown>
100003384: 2b ff                       	subl	%edi, %edi
100003386: ff ff                       	<unknown>
100003388: 2b ff                       	subl	%edi, %edi
10000338a: ff ff                       	<unknown>
10000338c: 34 ff                       	xorb	$-1, %al
10000338e: ff ff                       	<unknown>
100003390: 2b ff                       	subl	%edi, %edi
100003392: ff ff                       	<unknown>
100003394: 2b ff                       	subl	%edi, %edi
100003396: ff ff                       	<unknown>
100003398: 2b ff                       	subl	%edi, %edi
10000339a: ff ff                       	<unknown>
10000339c: 64 ff ff                    	<unknown>
10000339f: ff 2b                       	ljmpl	*(%rbx)
1000033a1: ff ff                       	<unknown>
1000033a3: ff 2b                       	ljmpl	*(%rbx)
1000033a5: ff ff                       	<unknown>
1000033a7: ff 2b                       	ljmpl	*(%rbx)
1000033a9: ff ff                       	<unknown>
1000033ab: ff 2b                       	ljmpl	*(%rbx)
1000033ad: ff ff                       	<unknown>
1000033af: ff 2b                       	ljmpl	*(%rbx)
1000033b1: ff ff                       	<unknown>
1000033b3: ff 2b                       	ljmpl	*(%rbx)
1000033b5: ff ff                       	<unknown>
1000033b7: ff 2b                       	ljmpl	*(%rbx)
1000033b9: ff ff                       	<unknown>
1000033bb: ff 91 ff ff ff 2b           	callq	*738197503(%rcx)
1000033c1: ff ff                       	<unknown>
1000033c3: ff 2b                       	ljmpl	*(%rbx)
1000033c5: ff ff                       	<unknown>
1000033c7: ff 2b                       	ljmpl	*(%rbx)
1000033c9: ff ff                       	<unknown>
1000033cb: ff 2b                       	ljmpl	*(%rbx)
1000033cd: ff ff                       	<unknown>
1000033cf: ff 2b                       	ljmpl	*(%rbx)
1000033d1: ff ff                       	<unknown>
1000033d3: ff 2b                       	ljmpl	*(%rbx)
1000033d5: ff ff                       	<unknown>
1000033d7: ff 2b                       	ljmpl	*(%rbx)
1000033d9: ff ff                       	<unknown>
1000033db: ff 2b                       	ljmpl	*(%rbx)
1000033dd: ff ff                       	<unknown>
1000033df: ff 2b                       	ljmpl	*(%rbx)
1000033e1: ff ff                       	<unknown>
1000033e3: ff 2b                       	ljmpl	*(%rbx)
1000033e5: ff ff                       	<unknown>
1000033e7: ff 2b                       	ljmpl	*(%rbx)
1000033e9: ff ff                       	<unknown>
1000033eb: ff 2b                       	ljmpl	*(%rbx)
1000033ed: ff ff                       	<unknown>
1000033ef: ff 2b                       	ljmpl	*(%rbx)
1000033f1: ff ff                       	<unknown>
1000033f3: ff 2b                       	ljmpl	*(%rbx)
1000033f5: ff ff                       	<unknown>
1000033f7: ff 2b                       	ljmpl	*(%rbx)
1000033f9: ff ff                       	<unknown>
1000033fb: ff be ff ff ff a8           	<unknown>
100003401: f6 ff                       	idivb	%bh
100003403: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003409: fe ff                       	<unknown>
10000340b: ff b4 f9 ff ff ab fe        	pushq	-22282241(%rcx,%rdi,8)
100003412: ff ff                       	<unknown>
100003414: ab                          	stosl	%eax, %es:(%rdi)
100003415: fe ff                       	<unknown>
100003417: ff ab fe ff ff 35           	ljmpl	*905969662(%rbx)
10000341d: fb                          	sti
10000341e: ff ff                       	<unknown>
100003420: ab                          	stosl	%eax, %es:(%rdi)
100003421: fe ff                       	<unknown>
100003423: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003429: fe ff                       	<unknown>
10000342b: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003431: fe ff                       	<unknown>
100003433: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003439: fe ff                       	<unknown>
10000343b: ff 65 fb                    	jmpq	*-5(%rbp)
10000343e: ff ff                       	<unknown>
100003440: ab                          	stosl	%eax, %es:(%rdi)
100003441: fe ff                       	<unknown>
100003443: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003449: fe ff                       	<unknown>
10000344b: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003451: fe ff                       	<unknown>
100003453: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003459: fe ff                       	<unknown>
10000345b: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003461: fe ff                       	<unknown>
100003463: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003469: fe ff                       	<unknown>
10000346b: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003471: fe ff                       	<unknown>
100003473: ff ab fe ff ff ab           	ljmpl	*-1409286146(%rbx)
100003479: fe ff                       	<unknown>
10000347b: ff 1f                       	lcalll	*(%rdi)
10000347d: fd                          	std
10000347e: ff ff                       	<unknown>

0000000100003480 __Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003480: 55                          	pushq	%rbp
100003481: 48 89 e5                    	movq	%rsp, %rbp
100003484: 41 57                       	pushq	%r15
100003486: 41 56                       	pushq	%r14
100003488: 41 55                       	pushq	%r13
10000348a: 41 54                       	pushq	%r12
10000348c: 53                          	pushq	%rbx
10000348d: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003491: 48 89 4d 90                 	movq	%rcx, -112(%rbp)
100003495: 48 89 55 98                 	movq	%rdx, -104(%rbp)
100003499: 48 89 75 a0                 	movq	%rsi, -96(%rbp)
10000349d: 45 85 c9                    	testl	%r9d, %r9d
1000034a0: 0f 84 85 01 00 00           	je	389 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1ab>
1000034a6: 44 89 ca                    	movl	%r9d, %edx
1000034a9: 44 8b 75 20                 	movl	32(%rbp), %r14d
1000034ad: 8b 45 18                    	movl	24(%rbp), %eax
1000034b0: 8b 4d 10                    	movl	16(%rbp), %ecx
1000034b3: 44 89 f6                    	movl	%r14d, %esi
1000034b6: d1 ee                       	shrl	%esi
1000034b8: 29 f1                       	subl	%esi, %ecx
1000034ba: 89 4d cc                    	movl	%ecx, -52(%rbp)
1000034bd: 89 c1                       	movl	%eax, %ecx
1000034bf: 89 75 b8                    	movl	%esi, -72(%rbp)
1000034c2: 29 f1                       	subl	%esi, %ecx
1000034c4: 44 89 ce                    	movl	%r9d, %esi
1000034c7: 48 89 75 a8                 	movq	%rsi, -88(%rbp)
1000034cb: 44 89 f6                    	movl	%r14d, %esi
1000034ce: 0f af f0                    	imull	%eax, %esi
1000034d1: c1 e6 03                    	shll	$3, %esi
1000034d4: 89 75 bc                    	movl	%esi, -68(%rbp)
1000034d7: 42 8d 04 f5 00 00 00 00     	leal	(,%r14,8), %eax
1000034df: 31 f6                       	xorl	%esi, %esi
1000034e1: 89 4d c8                    	movl	%ecx, -56(%rbp)
1000034e4: 89 45 b4                    	movl	%eax, -76(%rbp)
1000034e7: 44 8b 55 b8                 	movl	-72(%rbp), %r10d
1000034eb: 41 bc 81 00 00 00           	movl	$129, %r12d
1000034f1: eb 1e                       	jmp	30 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x91>
1000034f3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000034fd: 0f 1f 00                    	nopl	(%rax)
100003500: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
100003504: 48 ff c6                    	incq	%rsi
100003507: 48 3b 75 a8                 	cmpq	-88(%rbp), %rsi
10000350b: 0f 84 1a 01 00 00           	je	282 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1ab>
100003511: 48 89 75 c0                 	movq	%rsi, -64(%rbp)
100003515: 83 7d cc 00                 	cmpl	$0, -52(%rbp)
100003519: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x80>
10000351b: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
10000351f: 44 8d 0c f5 00 00 00 00     	leal	(,%rsi,8), %r9d
100003527: c7 45 d0 00 00 00 00        	movl	$0, -48(%rbp)
10000352e: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003535: eb 23                       	jmp	35 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xda>
100003537: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100003540: 8b 75 d4                    	movl	-44(%rbp), %esi
100003543: 44 01 f6                    	addl	%r14d, %esi
100003546: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003549: 03 4d bc                    	addl	-68(%rbp), %ecx
10000354c: 89 4d d0                    	movl	%ecx, -48(%rbp)
10000354f: 89 75 d4                    	movl	%esi, -44(%rbp)
100003552: 3b 75 cc                    	cmpl	-52(%rbp), %esi
100003555: 8b 4d c8                    	movl	-56(%rbp), %ecx
100003558: 73 a6                       	jae	-90 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x80>
10000355a: 85 c9                       	testl	%ecx, %ecx
10000355c: 48 8b 75 a0                 	movq	-96(%rbp), %rsi
100003560: 4c 8b 6d c0                 	movq	-64(%rbp), %r13
100003564: 74 da                       	je	-38 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xc0>
100003566: 8b 45 d4                    	movl	-44(%rbp), %eax
100003569: 41 89 d3                    	movl	%edx, %r11d
10000356c: 31 d2                       	xorl	%edx, %edx
10000356e: 41 f7 f6                    	divl	%r14d
100003571: 89 c3                       	movl	%eax, %ebx
100003573: 8b 45 18                    	movl	24(%rbp), %eax
100003576: 31 d2                       	xorl	%edx, %edx
100003578: 41 f7 f6                    	divl	%r14d
10000357b: 41 89 c7                    	movl	%eax, %r15d
10000357e: 44 29 d3                    	subl	%r10d, %ebx
100003581: 44 0f af fb                 	imull	%ebx, %r15d
100003585: 31 db                       	xorl	%ebx, %ebx
100003587: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000358b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003590: 44 89 c0                    	movl	%r8d, %eax
100003593: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100003597: c4 a2 7d 21 04 09           	vpmovsxbd	(%rcx,%r9), %ymm0
10000359d: c4 e2 7d 21 0c 06           	vpmovsxbd	(%rsi,%rax), %ymm1
1000035a3: c4 e2 75 40 c0              	vpmulld	%ymm0, %ymm1, %ymm0
1000035a8: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000035ae: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000035b2: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000035b7: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000035bb: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000035c0: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000035c4: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000035c8: 98                          	cwtl
1000035c9: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
1000035cd: 42 0f be 14 09              	movsbl	(%rcx,%r9), %edx
1000035d2: 01 c2                       	addl	%eax, %edx
1000035d4: 0f af 55 b0                 	imull	-80(%rbp), %edx
1000035d8: 89 d1                       	movl	%edx, %ecx
1000035da: c1 f9 1f                    	sarl	$31, %ecx
1000035dd: c1 e9 12                    	shrl	$18, %ecx
1000035e0: 01 d1                       	addl	%edx, %ecx
1000035e2: c1 f9 0e                    	sarl	$14, %ecx
1000035e5: 81 f9 80 00 00 00           	cmpl	$128, %ecx
1000035eb: b8 7f 00 00 00              	movl	$127, %eax
1000035f0: 0f 4d c8                    	cmovgel	%eax, %ecx
1000035f3: 89 d8                       	movl	%ebx, %eax
1000035f5: 31 d2                       	xorl	%edx, %edx
1000035f7: 41 f7 f6                    	divl	%r14d
1000035fa: 44 89 da                    	movl	%r11d, %edx
1000035fd: 44 29 d0                    	subl	%r10d, %eax
100003600: 44 01 f8                    	addl	%r15d, %eax
100003603: 41 0f af c3                 	imull	%r11d, %eax
100003607: 44 01 e8                    	addl	%r13d, %eax
10000360a: 83 f9 81                    	cmpl	$-127, %ecx
10000360d: 41 0f 4e cc                 	cmovlel	%r12d, %ecx
100003611: 88 0c 07                    	movb	%cl, (%rdi,%rax)
100003614: 8b 45 b4                    	movl	-76(%rbp), %eax
100003617: 44 01 f3                    	addl	%r14d, %ebx
10000361a: 41 01 c0                    	addl	%eax, %r8d
10000361d: 3b 5d c8                    	cmpl	-56(%rbp), %ebx
100003620: 0f 82 6a ff ff ff           	jb	-150 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003626: e9 15 ff ff ff              	jmp	-235 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xc0>
10000362b: 5b                          	popq	%rbx
10000362c: 41 5c                       	popq	%r12
10000362e: 41 5d                       	popq	%r13
100003630: 41 5e                       	popq	%r14
100003632: 41 5f                       	popq	%r15
100003634: 5d                          	popq	%rbp
100003635: c5 f8 77                    	vzeroupper
100003638: c3                          	retq
100003639: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100003640 __Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj:
100003640: 55                          	pushq	%rbp
100003641: 48 89 e5                    	movq	%rsp, %rbp
100003644: 41 57                       	pushq	%r15
100003646: 41 56                       	pushq	%r14
100003648: 41 55                       	pushq	%r13
10000364a: 41 54                       	pushq	%r12
10000364c: 53                          	pushq	%rbx
10000364d: 45 85 c9                    	testl	%r9d, %r9d
100003650: 0f 84 f7 01 00 00           	je	503 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x20d>
100003656: 49 89 d4                    	movq	%rdx, %r12
100003659: 44 8b 7d 20                 	movl	32(%rbp), %r15d
10000365d: 44 8b 55 18                 	movl	24(%rbp), %r10d
100003661: 8b 5d 10                    	movl	16(%rbp), %ebx
100003664: 44 89 f8                    	movl	%r15d, %eax
100003667: d1 e8                       	shrl	%eax
100003669: 29 c3                       	subl	%eax, %ebx
10000366b: 83 c3 fe                    	addl	$-2, %ebx
10000366e: 89 5d d0                    	movl	%ebx, -48(%rbp)
100003671: 44 89 d3                    	movl	%r10d, %ebx
100003674: 29 c3                       	subl	%eax, %ebx
100003676: 83 c3 fe                    	addl	$-2, %ebx
100003679: 44 89 d2                    	movl	%r10d, %edx
10000367c: 48 89 55 88                 	movq	%rdx, -120(%rbp)
100003680: 41 8d 52 01                 	leal	1(%r10), %edx
100003684: 48 89 55 90                 	movq	%rdx, -112(%rbp)
100003688: 41 8d 52 02                 	leal	2(%r10), %edx
10000368c: 48 89 55 98                 	movq	%rdx, -104(%rbp)
100003690: 43 8d 14 12                 	leal	(%r10,%r10), %edx
100003694: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
100003698: 41 be 01 00 00 00           	movl	$1, %r14d
10000369e: 41 29 c6                    	subl	%eax, %r14d
1000036a1: 44 89 c8                    	movl	%r9d, %eax
1000036a4: 48 89 45 a8                 	movq	%rax, -88(%rbp)
1000036a8: 44 89 f8                    	movl	%r15d, %eax
1000036ab: 41 0f af c2                 	imull	%r10d, %eax
1000036af: 89 45 c4                    	movl	%eax, -60(%rbp)
1000036b2: 31 c0                       	xorl	%eax, %eax
1000036b4: 89 5d c0                    	movl	%ebx, -64(%rbp)
1000036b7: eb 18                       	jmp	24 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x91>
1000036b9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000036c0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000036c4: 48 ff c0                    	incq	%rax
1000036c7: 48 3b 45 a8                 	cmpq	-88(%rbp), %rax
1000036cb: 0f 84 7c 01 00 00           	je	380 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x20d>
1000036d1: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000036d5: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
1000036d9: 74 e5                       	je	-27 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x80>
1000036db: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000036df: 44 8d 14 c0                 	leal	(%rax,%rax,8), %r10d
1000036e3: 31 c0                       	xorl	%eax, %eax
1000036e5: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
1000036ec: eb 1c                       	jmp	28 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xca>
1000036ee: 66 90                       	nop
1000036f0: 8b 45 d4                    	movl	-44(%rbp), %eax
1000036f3: 8b 55 20                    	movl	32(%rbp), %edx
1000036f6: 01 d0                       	addl	%edx, %eax
1000036f8: 44 03 5d c4                 	addl	-60(%rbp), %r11d
1000036fc: 89 45 d4                    	movl	%eax, -44(%rbp)
1000036ff: 3b 45 d0                    	cmpl	-48(%rbp), %eax
100003702: 44 89 fb                    	movl	%r15d, %ebx
100003705: 4c 89 d8                    	movq	%r11, %rax
100003708: 73 b6                       	jae	-74 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x80>
10000370a: 85 db                       	testl	%ebx, %ebx
10000370c: 41 89 df                    	movl	%ebx, %r15d
10000370f: 49 89 c3                    	movq	%rax, %r11
100003712: 74 dc                       	je	-36 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
100003714: 8b 45 d4                    	movl	-44(%rbp), %eax
100003717: 31 d2                       	xorl	%edx, %edx
100003719: 8b 5d 20                    	movl	32(%rbp), %ebx
10000371c: 4c 89 5d b0                 	movq	%r11, -80(%rbp)
100003720: 41 89 db                    	movl	%ebx, %r11d
100003723: f7 f3                       	divl	%ebx
100003725: 89 c3                       	movl	%eax, %ebx
100003727: 8b 45 18                    	movl	24(%rbp), %eax
10000372a: 31 d2                       	xorl	%edx, %edx
10000372c: 41 f7 f3                    	divl	%r11d
10000372f: 4c 8b 5d b0                 	movq	-80(%rbp), %r11
100003733: 44 01 f3                    	addl	%r14d, %ebx
100003736: 0f af c3                    	imull	%ebx, %eax
100003739: 89 45 bc                    	movl	%eax, -68(%rbp)
10000373c: 45 31 ed                    	xorl	%r13d, %r13d
10000373f: 90                          	nop
100003740: 43 8d 14 2b                 	leal	(%r11,%r13), %edx
100003744: 42 0f be 04 11              	movsbl	(%rcx,%r10), %eax
100003749: 45 89 f7                    	movl	%r14d, %r15d
10000374c: 44 0f be 34 16              	movsbl	(%rsi,%rdx), %r14d
100003751: 44 0f af f0                 	imull	%eax, %r14d
100003755: 42 0f be 44 11 01           	movsbl	1(%rcx,%r10), %eax
10000375b: 44 0f be 5c 16 01           	movsbl	1(%rsi,%rdx), %r11d
100003761: 44 0f af d8                 	imull	%eax, %r11d
100003765: 48 8d 04 16                 	leaq	(%rsi,%rdx), %rax
100003769: 45 01 f3                    	addl	%r14d, %r11d
10000376c: 46 0f be 74 11 02           	movsbl	2(%rcx,%r10), %r14d
100003772: 0f be 54 16 02              	movsbl	2(%rsi,%rdx), %edx
100003777: 41 0f af d6                 	imull	%r14d, %edx
10000377b: 44 01 da                    	addl	%r11d, %edx
10000377e: 46 0f be 5c 11 03           	movsbl	3(%rcx,%r10), %r11d
100003784: 48 8b 5d 88                 	movq	-120(%rbp), %rbx
100003788: 44 0f be 34 03              	movsbl	(%rbx,%rax), %r14d
10000378d: 45 0f af f3                 	imull	%r11d, %r14d
100003791: 41 01 d6                    	addl	%edx, %r14d
100003794: 46 0f be 5c 11 04           	movsbl	4(%rcx,%r10), %r11d
10000379a: 48 8b 55 90                 	movq	-112(%rbp), %rdx
10000379e: 0f be 14 02                 	movsbl	(%rdx,%rax), %edx
1000037a2: 41 0f af d3                 	imull	%r11d, %edx
1000037a6: 44 01 f2                    	addl	%r14d, %edx
1000037a9: 46 0f be 5c 11 05           	movsbl	5(%rcx,%r10), %r11d
1000037af: 48 8b 5d 98                 	movq	-104(%rbp), %rbx
1000037b3: 44 0f be 34 03              	movsbl	(%rbx,%rax), %r14d
1000037b8: 45 0f af f3                 	imull	%r11d, %r14d
1000037bc: 41 01 d6                    	addl	%edx, %r14d
1000037bf: 46 0f be 5c 11 06           	movsbl	6(%rcx,%r10), %r11d
1000037c5: 42 0f be 54 11 07           	movsbl	7(%rcx,%r10), %edx
1000037cb: 44 01 da                    	addl	%r11d, %edx
1000037ce: 42 0f be 5c 11 08           	movsbl	8(%rcx,%r10), %ebx
1000037d4: 01 d3                       	addl	%edx, %ebx
1000037d6: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000037da: 0f be 04 02                 	movsbl	(%rdx,%rax), %eax
1000037de: 0f af d8                    	imull	%eax, %ebx
1000037e1: 43 0f be 04 14              	movsbl	(%r12,%r10), %eax
1000037e6: 44 01 f0                    	addl	%r14d, %eax
1000037e9: 45 89 fe                    	movl	%r15d, %r14d
1000037ec: ba 7f 00 00 00              	movl	$127, %edx
1000037f1: 01 d8                       	addl	%ebx, %eax
1000037f3: 41 0f af c0                 	imull	%r8d, %eax
1000037f7: 89 c3                       	movl	%eax, %ebx
1000037f9: c1 fb 1f                    	sarl	$31, %ebx
1000037fc: c1 eb 12                    	shrl	$18, %ebx
1000037ff: 01 c3                       	addl	%eax, %ebx
100003801: c1 fb 0e                    	sarl	$14, %ebx
100003804: 81 fb 80 00 00 00           	cmpl	$128, %ebx
10000380a: 0f 4d da                    	cmovgel	%edx, %ebx
10000380d: 44 89 e8                    	movl	%r13d, %eax
100003810: 31 d2                       	xorl	%edx, %edx
100003812: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003816: 41 f7 f3                    	divl	%r11d
100003819: 44 01 f8                    	addl	%r15d, %eax
10000381c: 03 45 bc                    	addl	-68(%rbp), %eax
10000381f: 41 0f af c1                 	imull	%r9d, %eax
100003823: 03 45 c8                    	addl	-56(%rbp), %eax
100003826: 83 fb 81                    	cmpl	$-127, %ebx
100003829: ba 81 00 00 00              	movl	$129, %edx
10000382e: 0f 4e da                    	cmovlel	%edx, %ebx
100003831: 44 8b 7d c0                 	movl	-64(%rbp), %r15d
100003835: 88 1c 07                    	movb	%bl, (%rdi,%rax)
100003838: 45 01 dd                    	addl	%r11d, %r13d
10000383b: 4c 8b 5d b0                 	movq	-80(%rbp), %r11
10000383f: 45 39 fd                    	cmpl	%r15d, %r13d
100003842: 0f 82 f8 fe ff ff           	jb	-264 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x100>
100003848: e9 a3 fe ff ff              	jmp	-349 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
10000384d: 5b                          	popq	%rbx
10000384e: 41 5c                       	popq	%r12
100003850: 41 5d                       	popq	%r13
100003852: 41 5e                       	popq	%r14
100003854: 41 5f                       	popq	%r15
100003856: 5d                          	popq	%rbp
100003857: c3                          	retq
100003858: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003860 __Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj:
100003860: 55                          	pushq	%rbp
100003861: 48 89 e5                    	movq	%rsp, %rbp
100003864: 41 57                       	pushq	%r15
100003866: 41 56                       	pushq	%r14
100003868: 41 55                       	pushq	%r13
10000386a: 41 54                       	pushq	%r12
10000386c: 53                          	pushq	%rbx
10000386d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003874: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003878: 45 85 c9                    	testl	%r9d, %r9d
10000387b: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003881: 49 89 d2                    	movq	%rdx, %r10
100003884: 49 89 f4                    	movq	%rsi, %r12
100003887: 44 8b 5d 20                 	movl	32(%rbp), %r11d
10000388b: 8b 45 18                    	movl	24(%rbp), %eax
10000388e: 8b 55 10                    	movl	16(%rbp), %edx
100003891: 44 89 d9                    	movl	%r11d, %ecx
100003894: d1 e9                       	shrl	%ecx
100003896: 29 ca                       	subl	%ecx, %edx
100003898: 83 c2 fe                    	addl	$-2, %edx
10000389b: 89 55 d0                    	movl	%edx, -48(%rbp)
10000389e: 89 c2                       	movl	%eax, %edx
1000038a0: 29 ca                       	subl	%ecx, %edx
1000038a2: 83 c2 fe                    	addl	$-2, %edx
1000038a5: bb 01 00 00 00              	movl	$1, %ebx
1000038aa: 29 cb                       	subl	%ecx, %ebx
1000038ac: 44 89 c9                    	movl	%r9d, %ecx
1000038af: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000038b3: 8d 0c c5 00 00 00 00        	leal	(,%rax,8), %ecx
1000038ba: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000038be: 44 89 d9                    	movl	%r11d, %ecx
1000038c1: 0f af c8                    	imull	%eax, %ecx
1000038c4: c1 e1 02                    	shll	$2, %ecx
1000038c7: 89 4d bc                    	movl	%ecx, -68(%rbp)
1000038ca: 46 8d 2c 9d 00 00 00 00     	leal	(,%r11,4), %r13d
1000038d2: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
1000038d9: 48 89 45 90                 	movq	%rax, -112(%rbp)
1000038dd: 31 c0                       	xorl	%eax, %eax
1000038df: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
1000038e3: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
1000038e7: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
1000038ee: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
1000038f2: 89 55 b0                    	movl	%edx, -80(%rbp)
1000038f5: 89 5d b4                    	movl	%ebx, -76(%rbp)
1000038f8: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
1000038fc: eb 13                       	jmp	19 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
1000038fe: 66 90                       	nop
100003900: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003904: 48 ff c0                    	incq	%rax
100003907: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
10000390b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003911: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003915: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003919: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000391b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000391f: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
100003926: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003929: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
10000392d: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003931: 49 8d 44 0e 0c              	leaq	12(%r14,%rcx), %rax
100003936: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000393d: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003944: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003948: 48 83 c0 18                 	addq	$24, %rax
10000394c: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003953: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000395a: 31 c0                       	xorl	%eax, %eax
10000395c: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003963: eb 25                       	jmp	37 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100003965: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000396f: 90                          	nop
100003970: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003973: 44 01 d9                    	addl	%r11d, %ecx
100003976: 8b 45 d4                    	movl	-44(%rbp), %eax
100003979: 03 45 bc                    	addl	-68(%rbp), %eax
10000397c: 89 45 d4                    	movl	%eax, -44(%rbp)
10000397f: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003982: 89 c8                       	movl	%ecx, %eax
100003984: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000398a: 89 45 cc                    	movl	%eax, -52(%rbp)
10000398d: 85 d2                       	testl	%edx, %edx
10000398f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003991: 45 31 f6                    	xorl	%r14d, %r14d
100003994: 8b 45 d4                    	movl	-44(%rbp), %eax
100003997: 41 89 c7                    	movl	%eax, %r15d
10000399a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000039a0: 44 89 ff                    	movl	%r15d, %edi
1000039a3: 4c 01 e7                    	addq	%r12, %rdi
1000039a6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
1000039ad: e8 fe 0a 00 00              	callq	2814 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000039b2: 0f bf d8                    	movswl	%ax, %ebx
1000039b5: 48 8b 45 90                 	movq	-112(%rbp), %rax
1000039b9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000039bd: 4c 01 e7                    	addq	%r12, %rdi
1000039c0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
1000039c7: e8 e4 0a 00 00              	callq	2788 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000039cc: 44 0f bf e8                 	movswl	%ax, %r13d
1000039d0: 41 01 dd                    	addl	%ebx, %r13d
1000039d3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000039d7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000039db: 4c 01 e7                    	addq	%r12, %rdi
1000039de: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000039e5: e8 c6 0a 00 00              	callq	2758 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000039ea: 44 8b 5d 20                 	movl	32(%rbp), %r11d
1000039ee: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
1000039f5: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
1000039f9: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
1000039fd: 98                          	cwtl
1000039fe: 44 01 e8                    	addl	%r13d, %eax
100003a01: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100003a05: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003a0c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003a11: 01 c1                       	addl	%eax, %ecx
100003a13: 41 0f af c8                 	imull	%r8d, %ecx
100003a17: 89 cf                       	movl	%ecx, %edi
100003a19: c1 ff 1f                    	sarl	$31, %edi
100003a1c: c1 ef 12                    	shrl	$18, %edi
100003a1f: 01 cf                       	addl	%ecx, %edi
100003a21: c1 ff 0e                    	sarl	$14, %edi
100003a24: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003a2a: b8 7f 00 00 00              	movl	$127, %eax
100003a2f: 0f 4d f8                    	cmovgel	%eax, %edi
100003a32: 44 89 f0                    	movl	%r14d, %eax
100003a35: 31 d2                       	xorl	%edx, %edx
100003a37: 41 f7 f3                    	divl	%r11d
100003a3a: 89 c1                       	movl	%eax, %ecx
100003a3c: 8b 45 cc                    	movl	-52(%rbp), %eax
100003a3f: 31 d2                       	xorl	%edx, %edx
100003a41: 41 f7 f3                    	divl	%r11d
100003a44: 89 c6                       	movl	%eax, %esi
100003a46: 8b 45 18                    	movl	24(%rbp), %eax
100003a49: 8b 5d b4                    	movl	-76(%rbp), %ebx
100003a4c: 31 d2                       	xorl	%edx, %edx
100003a4e: 41 f7 f3                    	divl	%r11d
100003a51: 8b 55 b0                    	movl	-80(%rbp), %edx
100003a54: 01 de                       	addl	%ebx, %esi
100003a56: 0f af c6                    	imull	%esi, %eax
100003a59: be 81 00 00 00              	movl	$129, %esi
100003a5e: 01 d9                       	addl	%ebx, %ecx
100003a60: 01 c1                       	addl	%eax, %ecx
100003a62: 41 0f af c9                 	imull	%r9d, %ecx
100003a66: 03 4d c0                    	addl	-64(%rbp), %ecx
100003a69: 83 ff 81                    	cmpl	$-127, %edi
100003a6c: 0f 4e fe                    	cmovlel	%esi, %edi
100003a6f: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003a73: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003a77: 45 01 de                    	addl	%r11d, %r14d
100003a7a: 45 01 ef                    	addl	%r13d, %r15d
100003a7d: 41 39 d6                    	cmpl	%edx, %r14d
100003a80: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100003a86: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003a8b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003a92: 5b                          	popq	%rbx
100003a93: 41 5c                       	popq	%r12
100003a95: 41 5d                       	popq	%r13
100003a97: 41 5e                       	popq	%r14
100003a99: 41 5f                       	popq	%r15
100003a9b: 5d                          	popq	%rbp
100003a9c: c3                          	retq
100003a9d: 0f 1f 00                    	nopl	(%rax)

0000000100003aa0 __Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003aa0: 55                          	pushq	%rbp
100003aa1: 48 89 e5                    	movq	%rsp, %rbp
100003aa4: 41 57                       	pushq	%r15
100003aa6: 41 56                       	pushq	%r14
100003aa8: 41 55                       	pushq	%r13
100003aaa: 41 54                       	pushq	%r12
100003aac: 53                          	pushq	%rbx
100003aad: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003ab4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003ab8: 45 85 c9                    	testl	%r9d, %r9d
100003abb: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003ac1: 49 89 d2                    	movq	%rdx, %r10
100003ac4: 49 89 f4                    	movq	%rsi, %r12
100003ac7: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003acb: 8b 45 18                    	movl	24(%rbp), %eax
100003ace: 8b 55 10                    	movl	16(%rbp), %edx
100003ad1: 44 89 d9                    	movl	%r11d, %ecx
100003ad4: d1 e9                       	shrl	%ecx
100003ad6: 29 ca                       	subl	%ecx, %edx
100003ad8: 83 c2 fe                    	addl	$-2, %edx
100003adb: 89 55 d0                    	movl	%edx, -48(%rbp)
100003ade: 89 c2                       	movl	%eax, %edx
100003ae0: 29 ca                       	subl	%ecx, %edx
100003ae2: 83 c2 fe                    	addl	$-2, %edx
100003ae5: bb 01 00 00 00              	movl	$1, %ebx
100003aea: 29 cb                       	subl	%ecx, %ebx
100003aec: 44 89 c9                    	movl	%r9d, %ecx
100003aef: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003af3: 89 c1                       	movl	%eax, %ecx
100003af5: c1 e1 04                    	shll	$4, %ecx
100003af8: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003afc: 44 89 d9                    	movl	%r11d, %ecx
100003aff: 0f af c8                    	imull	%eax, %ecx
100003b02: c1 e1 03                    	shll	$3, %ecx
100003b05: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003b08: 46 8d 2c dd 00 00 00 00     	leal	(,%r11,8), %r13d
100003b10: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003b17: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003b1b: 31 c0                       	xorl	%eax, %eax
100003b1d: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
100003b21: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003b25: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003b2c: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003b30: 89 55 b0                    	movl	%edx, -80(%rbp)
100003b33: 89 5d b4                    	movl	%ebx, -76(%rbp)
100003b36: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
100003b3a: eb 15                       	jmp	21 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
100003b3c: 0f 1f 40 00                 	nopl	(%rax)
100003b40: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003b44: 48 ff c0                    	incq	%rax
100003b47: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003b4b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003b51: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003b55: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003b59: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003b5b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003b5f: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003b66: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003b69: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003b6d: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003b71: 49 8d 44 0e 18              	leaq	24(%r14,%rcx), %rax
100003b76: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003b7d: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003b84: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003b88: 48 83 c0 30                 	addq	$48, %rax
100003b8c: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003b93: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003b9a: 31 c0                       	xorl	%eax, %eax
100003b9c: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003ba3: eb 25                       	jmp	37 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100003ba5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003baf: 90                          	nop
100003bb0: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003bb3: 44 01 d9                    	addl	%r11d, %ecx
100003bb6: 8b 45 d4                    	movl	-44(%rbp), %eax
100003bb9: 03 45 bc                    	addl	-68(%rbp), %eax
100003bbc: 89 45 d4                    	movl	%eax, -44(%rbp)
100003bbf: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003bc2: 89 c8                       	movl	%ecx, %eax
100003bc4: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003bca: 89 45 cc                    	movl	%eax, -52(%rbp)
100003bcd: 85 d2                       	testl	%edx, %edx
100003bcf: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003bd1: 45 31 f6                    	xorl	%r14d, %r14d
100003bd4: 8b 45 d4                    	movl	-44(%rbp), %eax
100003bd7: 41 89 c7                    	movl	%eax, %r15d
100003bda: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100003be0: 44 89 ff                    	movl	%r15d, %edi
100003be3: 4c 01 e7                    	addq	%r12, %rdi
100003be6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003bed: e8 2e 09 00 00              	callq	2350 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003bf2: 0f bf d8                    	movswl	%ax, %ebx
100003bf5: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003bf9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003bfd: 4c 01 e7                    	addq	%r12, %rdi
100003c00: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003c07: e8 14 09 00 00              	callq	2324 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003c0c: 44 0f bf e8                 	movswl	%ax, %r13d
100003c10: 41 01 dd                    	addl	%ebx, %r13d
100003c13: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003c17: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003c1b: 4c 01 e7                    	addq	%r12, %rdi
100003c1e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003c25: e8 f6 08 00 00              	callq	2294 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003c2a: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003c2e: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003c35: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
100003c39: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
100003c3d: 98                          	cwtl
100003c3e: 44 01 e8                    	addl	%r13d, %eax
100003c41: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100003c45: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003c4c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003c51: 01 c1                       	addl	%eax, %ecx
100003c53: 41 0f af c8                 	imull	%r8d, %ecx
100003c57: 89 cf                       	movl	%ecx, %edi
100003c59: c1 ff 1f                    	sarl	$31, %edi
100003c5c: c1 ef 12                    	shrl	$18, %edi
100003c5f: 01 cf                       	addl	%ecx, %edi
100003c61: c1 ff 0e                    	sarl	$14, %edi
100003c64: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003c6a: b8 7f 00 00 00              	movl	$127, %eax
100003c6f: 0f 4d f8                    	cmovgel	%eax, %edi
100003c72: 44 89 f0                    	movl	%r14d, %eax
100003c75: 31 d2                       	xorl	%edx, %edx
100003c77: 41 f7 f3                    	divl	%r11d
100003c7a: 89 c1                       	movl	%eax, %ecx
100003c7c: 8b 45 cc                    	movl	-52(%rbp), %eax
100003c7f: 31 d2                       	xorl	%edx, %edx
100003c81: 41 f7 f3                    	divl	%r11d
100003c84: 89 c6                       	movl	%eax, %esi
100003c86: 8b 45 18                    	movl	24(%rbp), %eax
100003c89: 8b 5d b4                    	movl	-76(%rbp), %ebx
100003c8c: 31 d2                       	xorl	%edx, %edx
100003c8e: 41 f7 f3                    	divl	%r11d
100003c91: 8b 55 b0                    	movl	-80(%rbp), %edx
100003c94: 01 de                       	addl	%ebx, %esi
100003c96: 0f af c6                    	imull	%esi, %eax
100003c99: be 81 00 00 00              	movl	$129, %esi
100003c9e: 01 d9                       	addl	%ebx, %ecx
100003ca0: 01 c1                       	addl	%eax, %ecx
100003ca2: 41 0f af c9                 	imull	%r9d, %ecx
100003ca6: 03 4d c0                    	addl	-64(%rbp), %ecx
100003ca9: 83 ff 81                    	cmpl	$-127, %edi
100003cac: 0f 4e fe                    	cmovlel	%esi, %edi
100003caf: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003cb3: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003cb7: 45 01 de                    	addl	%r11d, %r14d
100003cba: 45 01 ef                    	addl	%r13d, %r15d
100003cbd: 41 39 d6                    	cmpl	%edx, %r14d
100003cc0: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100003cc6: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003ccb: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003cd2: 5b                          	popq	%rbx
100003cd3: 41 5c                       	popq	%r12
100003cd5: 41 5d                       	popq	%r13
100003cd7: 41 5e                       	popq	%r14
100003cd9: 41 5f                       	popq	%r15
100003cdb: 5d                          	popq	%rbp
100003cdc: c3                          	retq
100003cdd: 0f 1f 00                    	nopl	(%rax)

0000000100003ce0 __Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj:
100003ce0: 55                          	pushq	%rbp
100003ce1: 48 89 e5                    	movq	%rsp, %rbp
100003ce4: 41 57                       	pushq	%r15
100003ce6: 41 56                       	pushq	%r14
100003ce8: 41 55                       	pushq	%r13
100003cea: 41 54                       	pushq	%r12
100003cec: 53                          	pushq	%rbx
100003ced: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003cf4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003cf8: 45 85 c9                    	testl	%r9d, %r9d
100003cfb: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003d01: 49 89 d2                    	movq	%rdx, %r10
100003d04: 49 89 f4                    	movq	%rsi, %r12
100003d07: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003d0b: 8b 45 18                    	movl	24(%rbp), %eax
100003d0e: 8b 55 10                    	movl	16(%rbp), %edx
100003d11: 44 89 d9                    	movl	%r11d, %ecx
100003d14: d1 e9                       	shrl	%ecx
100003d16: 29 ca                       	subl	%ecx, %edx
100003d18: 83 c2 fe                    	addl	$-2, %edx
100003d1b: 89 55 d0                    	movl	%edx, -48(%rbp)
100003d1e: 89 c2                       	movl	%eax, %edx
100003d20: 29 ca                       	subl	%ecx, %edx
100003d22: 83 c2 fe                    	addl	$-2, %edx
100003d25: bb 01 00 00 00              	movl	$1, %ebx
100003d2a: 29 cb                       	subl	%ecx, %ebx
100003d2c: 44 89 c9                    	movl	%r9d, %ecx
100003d2f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003d33: 89 c1                       	movl	%eax, %ecx
100003d35: c1 e1 05                    	shll	$5, %ecx
100003d38: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003d3c: 44 89 d9                    	movl	%r11d, %ecx
100003d3f: 0f af c8                    	imull	%eax, %ecx
100003d42: c1 e1 04                    	shll	$4, %ecx
100003d45: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003d48: 45 89 dd                    	movl	%r11d, %r13d
100003d4b: 41 c1 e5 04                 	shll	$4, %r13d
100003d4f: c1 e0 04                    	shll	$4, %eax
100003d52: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003d56: 31 c0                       	xorl	%eax, %eax
100003d58: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
100003d5c: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003d60: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003d67: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003d6b: 89 55 b0                    	movl	%edx, -80(%rbp)
100003d6e: 89 5d b4                    	movl	%ebx, -76(%rbp)
100003d71: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
100003d75: eb 1a                       	jmp	26 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
100003d77: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100003d80: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003d84: 48 ff c0                    	incq	%rax
100003d87: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003d8b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003d91: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003d95: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003d99: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003d9b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003d9f: c1 e0 04                    	shll	$4, %eax
100003da2: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003da5: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003da9: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003dad: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003db1: 48 83 c0 30                 	addq	$48, %rax
100003db5: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003dbc: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003dc3: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003dc7: 48 83 c0 60                 	addq	$96, %rax
100003dcb: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003dd2: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100003dd9: 31 c0                       	xorl	%eax, %eax
100003ddb: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003de2: eb 26                       	jmp	38 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100003de4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003dee: 66 90                       	nop
100003df0: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003df3: 44 01 d9                    	addl	%r11d, %ecx
100003df6: 8b 45 d4                    	movl	-44(%rbp), %eax
100003df9: 03 45 bc                    	addl	-68(%rbp), %eax
100003dfc: 89 45 d4                    	movl	%eax, -44(%rbp)
100003dff: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100003e02: 89 c8                       	movl	%ecx, %eax
100003e04: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003e0a: 89 45 cc                    	movl	%eax, -52(%rbp)
100003e0d: 85 d2                       	testl	%edx, %edx
100003e0f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003e11: 45 31 f6                    	xorl	%r14d, %r14d
100003e14: 8b 45 d4                    	movl	-44(%rbp), %eax
100003e17: 41 89 c7                    	movl	%eax, %r15d
100003e1a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100003e20: 44 89 ff                    	movl	%r15d, %edi
100003e23: 4c 01 e7                    	addq	%r12, %rdi
100003e26: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003e2d: e8 9e 07 00 00              	callq	1950 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003e32: 0f bf d8                    	movswl	%ax, %ebx
100003e35: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003e39: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003e3d: 4c 01 e7                    	addq	%r12, %rdi
100003e40: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003e47: e8 84 07 00 00              	callq	1924 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003e4c: 44 0f bf e8                 	movswl	%ax, %r13d
100003e50: 41 01 dd                    	addl	%ebx, %r13d
100003e53: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003e57: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003e5b: 4c 01 e7                    	addq	%r12, %rdi
100003e5e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003e65: e8 66 07 00 00              	callq	1894 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003e6a: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003e6e: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003e75: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
100003e79: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
100003e7d: 98                          	cwtl
100003e7e: 44 01 e8                    	addl	%r13d, %eax
100003e81: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100003e85: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003e8c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003e91: 01 c1                       	addl	%eax, %ecx
100003e93: 41 0f af c8                 	imull	%r8d, %ecx
100003e97: 89 cf                       	movl	%ecx, %edi
100003e99: c1 ff 1f                    	sarl	$31, %edi
100003e9c: c1 ef 12                    	shrl	$18, %edi
100003e9f: 01 cf                       	addl	%ecx, %edi
100003ea1: c1 ff 0e                    	sarl	$14, %edi
100003ea4: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003eaa: b8 7f 00 00 00              	movl	$127, %eax
100003eaf: 0f 4d f8                    	cmovgel	%eax, %edi
100003eb2: 44 89 f0                    	movl	%r14d, %eax
100003eb5: 31 d2                       	xorl	%edx, %edx
100003eb7: 41 f7 f3                    	divl	%r11d
100003eba: 89 c1                       	movl	%eax, %ecx
100003ebc: 8b 45 cc                    	movl	-52(%rbp), %eax
100003ebf: 31 d2                       	xorl	%edx, %edx
100003ec1: 41 f7 f3                    	divl	%r11d
100003ec4: 89 c6                       	movl	%eax, %esi
100003ec6: 8b 45 18                    	movl	24(%rbp), %eax
100003ec9: 8b 5d b4                    	movl	-76(%rbp), %ebx
100003ecc: 31 d2                       	xorl	%edx, %edx
100003ece: 41 f7 f3                    	divl	%r11d
100003ed1: 8b 55 b0                    	movl	-80(%rbp), %edx
100003ed4: 01 de                       	addl	%ebx, %esi
100003ed6: 0f af c6                    	imull	%esi, %eax
100003ed9: be 81 00 00 00              	movl	$129, %esi
100003ede: 01 d9                       	addl	%ebx, %ecx
100003ee0: 01 c1                       	addl	%eax, %ecx
100003ee2: 41 0f af c9                 	imull	%r9d, %ecx
100003ee6: 03 4d c0                    	addl	-64(%rbp), %ecx
100003ee9: 83 ff 81                    	cmpl	$-127, %edi
100003eec: 0f 4e fe                    	cmovlel	%esi, %edi
100003eef: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003ef3: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003ef7: 45 01 de                    	addl	%r11d, %r14d
100003efa: 45 01 ef                    	addl	%r13d, %r15d
100003efd: 41 39 d6                    	cmpl	%edx, %r14d
100003f00: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100003f06: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003f0b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003f12: 5b                          	popq	%rbx
100003f13: 41 5c                       	popq	%r12
100003f15: 41 5d                       	popq	%r13
100003f17: 41 5e                       	popq	%r14
100003f19: 41 5f                       	popq	%r15
100003f1b: 5d                          	popq	%rbp
100003f1c: c3                          	retq
100003f1d: 0f 1f 00                    	nopl	(%rax)

0000000100003f20 __Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj:
100003f20: 55                          	pushq	%rbp
100003f21: 48 89 e5                    	movq	%rsp, %rbp
100003f24: 41 57                       	pushq	%r15
100003f26: 41 56                       	pushq	%r14
100003f28: 41 55                       	pushq	%r13
100003f2a: 41 54                       	pushq	%r12
100003f2c: 53                          	pushq	%rbx
100003f2d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003f34: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003f38: 45 85 c9                    	testl	%r9d, %r9d
100003f3b: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003f41: 49 89 d2                    	movq	%rdx, %r10
100003f44: 49 89 f4                    	movq	%rsi, %r12
100003f47: 44 8b 5d 20                 	movl	32(%rbp), %r11d
100003f4b: 8b 45 18                    	movl	24(%rbp), %eax
100003f4e: 8b 55 10                    	movl	16(%rbp), %edx
100003f51: 44 89 d9                    	movl	%r11d, %ecx
100003f54: d1 e9                       	shrl	%ecx
100003f56: 29 ca                       	subl	%ecx, %edx
100003f58: 83 c2 fe                    	addl	$-2, %edx
100003f5b: 89 55 d0                    	movl	%edx, -48(%rbp)
100003f5e: 89 c2                       	movl	%eax, %edx
100003f60: 29 ca                       	subl	%ecx, %edx
100003f62: 83 c2 fe                    	addl	$-2, %edx
100003f65: bb 01 00 00 00              	movl	$1, %ebx
100003f6a: 29 cb                       	subl	%ecx, %ebx
100003f6c: 44 89 c9                    	movl	%r9d, %ecx
100003f6f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003f73: 89 c1                       	movl	%eax, %ecx
100003f75: c1 e1 06                    	shll	$6, %ecx
100003f78: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003f7c: 44 89 d9                    	movl	%r11d, %ecx
100003f7f: 0f af c8                    	imull	%eax, %ecx
100003f82: c1 e1 05                    	shll	$5, %ecx
100003f85: 89 4d bc                    	movl	%ecx, -68(%rbp)
100003f88: 45 89 dd                    	movl	%r11d, %r13d
100003f8b: 41 c1 e5 05                 	shll	$5, %r13d
100003f8f: c1 e0 05                    	shll	$5, %eax
100003f92: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003f96: 31 c0                       	xorl	%eax, %eax
100003f98: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
100003f9c: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003fa0: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003fa7: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003fab: 89 55 b0                    	movl	%edx, -80(%rbp)
100003fae: 89 5d b4                    	movl	%ebx, -76(%rbp)
100003fb1: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
100003fb5: eb 1a                       	jmp	26 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
100003fb7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100003fc0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003fc4: 48 ff c0                    	incq	%rax
100003fc7: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003fcb: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100003fd1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100003fd5: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100003fd9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003fdb: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003fdf: c1 e0 05                    	shll	$5, %eax
100003fe2: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003fe5: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100003fe9: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
100003fed: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100003ff1: 48 83 c0 60                 	addq	$96, %rax
100003ff5: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003ffc: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100004003: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100004007: 48 05 c0 00 00 00           	addq	$192, %rax
10000400d: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100004014: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000401b: 31 c0                       	xorl	%eax, %eax
10000401d: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100004024: eb 24                       	jmp	36 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100004026: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004030: 8b 4d cc                    	movl	-52(%rbp), %ecx
100004033: 44 01 d9                    	addl	%r11d, %ecx
100004036: 8b 45 d4                    	movl	-44(%rbp), %eax
100004039: 03 45 bc                    	addl	-68(%rbp), %eax
10000403c: 89 45 d4                    	movl	%eax, -44(%rbp)
10000403f: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100004042: 89 c8                       	movl	%ecx, %eax
100004044: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000404a: 89 45 cc                    	movl	%eax, -52(%rbp)
10000404d: 85 d2                       	testl	%edx, %edx
10000404f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100004051: 45 31 f6                    	xorl	%r14d, %r14d
100004054: 8b 45 d4                    	movl	-44(%rbp), %eax
100004057: 41 89 c7                    	movl	%eax, %r15d
10000405a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100004060: 44 89 ff                    	movl	%r15d, %edi
100004063: 4c 01 e7                    	addq	%r12, %rdi
100004066: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
10000406d: e8 de 07 00 00              	callq	2014 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100004072: 0f bf d8                    	movswl	%ax, %ebx
100004075: 48 8b 45 90                 	movq	-112(%rbp), %rax
100004079: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000407d: 4c 01 e7                    	addq	%r12, %rdi
100004080: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100004087: e8 c4 07 00 00              	callq	1988 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
10000408c: 44 0f bf e8                 	movswl	%ax, %r13d
100004090: 41 01 dd                    	addl	%ebx, %r13d
100004093: 48 8b 45 88                 	movq	-120(%rbp), %rax
100004097: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000409b: 4c 01 e7                    	addq	%r12, %rdi
10000409e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000040a5: e8 a6 07 00 00              	callq	1958 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
1000040aa: 44 8b 5d 20                 	movl	32(%rbp), %r11d
1000040ae: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
1000040b5: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
1000040b9: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
1000040bd: 98                          	cwtl
1000040be: 44 01 e8                    	addl	%r13d, %eax
1000040c1: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
1000040c5: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
1000040cc: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
1000040d1: 01 c1                       	addl	%eax, %ecx
1000040d3: 41 0f af c8                 	imull	%r8d, %ecx
1000040d7: 89 cf                       	movl	%ecx, %edi
1000040d9: c1 ff 1f                    	sarl	$31, %edi
1000040dc: c1 ef 12                    	shrl	$18, %edi
1000040df: 01 cf                       	addl	%ecx, %edi
1000040e1: c1 ff 0e                    	sarl	$14, %edi
1000040e4: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000040ea: b8 7f 00 00 00              	movl	$127, %eax
1000040ef: 0f 4d f8                    	cmovgel	%eax, %edi
1000040f2: 44 89 f0                    	movl	%r14d, %eax
1000040f5: 31 d2                       	xorl	%edx, %edx
1000040f7: 41 f7 f3                    	divl	%r11d
1000040fa: 89 c1                       	movl	%eax, %ecx
1000040fc: 8b 45 cc                    	movl	-52(%rbp), %eax
1000040ff: 31 d2                       	xorl	%edx, %edx
100004101: 41 f7 f3                    	divl	%r11d
100004104: 89 c6                       	movl	%eax, %esi
100004106: 8b 45 18                    	movl	24(%rbp), %eax
100004109: 8b 5d b4                    	movl	-76(%rbp), %ebx
10000410c: 31 d2                       	xorl	%edx, %edx
10000410e: 41 f7 f3                    	divl	%r11d
100004111: 8b 55 b0                    	movl	-80(%rbp), %edx
100004114: 01 de                       	addl	%ebx, %esi
100004116: 0f af c6                    	imull	%esi, %eax
100004119: be 81 00 00 00              	movl	$129, %esi
10000411e: 01 d9                       	addl	%ebx, %ecx
100004120: 01 c1                       	addl	%eax, %ecx
100004122: 41 0f af c9                 	imull	%r9d, %ecx
100004126: 03 4d c0                    	addl	-64(%rbp), %ecx
100004129: 83 ff 81                    	cmpl	$-127, %edi
10000412c: 0f 4e fe                    	cmovlel	%esi, %edi
10000412f: 48 8b 45 80                 	movq	-128(%rbp), %rax
100004133: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100004137: 45 01 de                    	addl	%r11d, %r14d
10000413a: 45 01 ef                    	addl	%r13d, %r15d
10000413d: 41 39 d6                    	cmpl	%edx, %r14d
100004140: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100004146: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000414b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100004152: 5b                          	popq	%rbx
100004153: 41 5c                       	popq	%r12
100004155: 41 5d                       	popq	%r13
100004157: 41 5e                       	popq	%r14
100004159: 41 5f                       	popq	%r15
10000415b: 5d                          	popq	%rbp
10000415c: c3                          	retq
10000415d: 0f 1f 00                    	nopl	(%rax)

0000000100004160 __Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj:
100004160: 55                          	pushq	%rbp
100004161: 48 89 e5                    	movq	%rsp, %rbp
100004164: 41 57                       	pushq	%r15
100004166: 41 56                       	pushq	%r14
100004168: 41 55                       	pushq	%r13
10000416a: 41 54                       	pushq	%r12
10000416c: 53                          	pushq	%rbx
10000416d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100004174: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100004178: 45 85 c9                    	testl	%r9d, %r9d
10000417b: 0f 84 0a 02 00 00           	je	522 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100004181: 49 89 d2                    	movq	%rdx, %r10
100004184: 49 89 f4                    	movq	%rsi, %r12
100004187: 44 8b 5d 20                 	movl	32(%rbp), %r11d
10000418b: 8b 45 18                    	movl	24(%rbp), %eax
10000418e: 8b 55 10                    	movl	16(%rbp), %edx
100004191: 44 89 d9                    	movl	%r11d, %ecx
100004194: d1 e9                       	shrl	%ecx
100004196: 29 ca                       	subl	%ecx, %edx
100004198: 83 c2 fe                    	addl	$-2, %edx
10000419b: 89 55 d0                    	movl	%edx, -48(%rbp)
10000419e: 89 c2                       	movl	%eax, %edx
1000041a0: 29 ca                       	subl	%ecx, %edx
1000041a2: 83 c2 fe                    	addl	$-2, %edx
1000041a5: bb 01 00 00 00              	movl	$1, %ebx
1000041aa: 29 cb                       	subl	%ecx, %ebx
1000041ac: 44 89 c9                    	movl	%r9d, %ecx
1000041af: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000041b3: 89 c1                       	movl	%eax, %ecx
1000041b5: c1 e1 07                    	shll	$7, %ecx
1000041b8: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000041bc: 44 89 d9                    	movl	%r11d, %ecx
1000041bf: 0f af c8                    	imull	%eax, %ecx
1000041c2: c1 e1 06                    	shll	$6, %ecx
1000041c5: 89 4d bc                    	movl	%ecx, -68(%rbp)
1000041c8: 45 89 dd                    	movl	%r11d, %r13d
1000041cb: 41 c1 e5 06                 	shll	$6, %r13d
1000041cf: c1 e0 06                    	shll	$6, %eax
1000041d2: 48 89 45 90                 	movq	%rax, -112(%rbp)
1000041d6: 31 c0                       	xorl	%eax, %eax
1000041d8: 44 89 4d a8                 	movl	%r9d, -88(%rbp)
1000041dc: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
1000041e0: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
1000041e7: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
1000041eb: 89 55 b0                    	movl	%edx, -80(%rbp)
1000041ee: 89 5d b4                    	movl	%ebx, -76(%rbp)
1000041f1: 44 89 6d b8                 	movl	%r13d, -72(%rbp)
1000041f5: eb 1a                       	jmp	26 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xb1>
1000041f7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100004200: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004204: 48 ff c0                    	incq	%rax
100004207: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
10000420b: 0f 84 7a 01 00 00           	je	378 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x22b>
100004211: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004215: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
100004219: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000421b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000421f: c1 e0 06                    	shll	$6, %eax
100004222: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100004225: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
100004229: 49 8d 34 0e                 	leaq	(%r14,%rcx), %rsi
10000422d: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100004231: 48 05 c0 00 00 00           	addq	$192, %rax
100004237: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000423e: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100004245: 49 8d 04 0e                 	leaq	(%r14,%rcx), %rax
100004249: 48 05 80 01 00 00           	addq	$384, %rax
10000424f: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100004256: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
10000425d: 31 c0                       	xorl	%eax, %eax
10000425f: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100004266: eb 22                       	jmp	34 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x12a>
100004268: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100004270: 8b 4d cc                    	movl	-52(%rbp), %ecx
100004273: 44 01 d9                    	addl	%r11d, %ecx
100004276: 8b 45 d4                    	movl	-44(%rbp), %eax
100004279: 03 45 bc                    	addl	-68(%rbp), %eax
10000427c: 89 45 d4                    	movl	%eax, -44(%rbp)
10000427f: 3b 4d d0                    	cmpl	-48(%rbp), %ecx
100004282: 89 c8                       	movl	%ecx, %eax
100004284: 0f 83 76 ff ff ff           	jae	-138 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000428a: 89 45 cc                    	movl	%eax, -52(%rbp)
10000428d: 85 d2                       	testl	%edx, %edx
10000428f: 74 df                       	je	-33 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100004291: 45 31 f6                    	xorl	%r14d, %r14d
100004294: 8b 45 d4                    	movl	-44(%rbp), %eax
100004297: 41 89 c7                    	movl	%eax, %r15d
10000429a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000042a0: 44 89 ff                    	movl	%r15d, %edi
1000042a3: 4c 01 e7                    	addq	%r12, %rdi
1000042a6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
1000042ad: e8 9e 06 00 00              	callq	1694 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
1000042b2: 0f bf d8                    	movswl	%ax, %ebx
1000042b5: 48 8b 45 90                 	movq	-112(%rbp), %rax
1000042b9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000042bd: 4c 01 e7                    	addq	%r12, %rdi
1000042c0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
1000042c7: e8 84 06 00 00              	callq	1668 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
1000042cc: 44 0f bf e8                 	movswl	%ax, %r13d
1000042d0: 41 01 dd                    	addl	%ebx, %r13d
1000042d3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000042d7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000042db: 4c 01 e7                    	addq	%r12, %rdi
1000042de: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000042e5: e8 66 06 00 00              	callq	1638 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
1000042ea: 44 8b 5d 20                 	movl	32(%rbp), %r11d
1000042ee: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
1000042f5: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
1000042f9: 44 8b 4d a8                 	movl	-88(%rbp), %r9d
1000042fd: 98                          	cwtl
1000042fe: 44 01 e8                    	addl	%r13d, %eax
100004301: 44 8b 6d b8                 	movl	-72(%rbp), %r13d
100004305: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000430c: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100004311: 01 c1                       	addl	%eax, %ecx
100004313: 41 0f af c8                 	imull	%r8d, %ecx
100004317: 89 cf                       	movl	%ecx, %edi
100004319: c1 ff 1f                    	sarl	$31, %edi
10000431c: c1 ef 12                    	shrl	$18, %edi
10000431f: 01 cf                       	addl	%ecx, %edi
100004321: c1 ff 0e                    	sarl	$14, %edi
100004324: 81 ff 80 00 00 00           	cmpl	$128, %edi
10000432a: b8 7f 00 00 00              	movl	$127, %eax
10000432f: 0f 4d f8                    	cmovgel	%eax, %edi
100004332: 44 89 f0                    	movl	%r14d, %eax
100004335: 31 d2                       	xorl	%edx, %edx
100004337: 41 f7 f3                    	divl	%r11d
10000433a: 89 c1                       	movl	%eax, %ecx
10000433c: 8b 45 cc                    	movl	-52(%rbp), %eax
10000433f: 31 d2                       	xorl	%edx, %edx
100004341: 41 f7 f3                    	divl	%r11d
100004344: 89 c6                       	movl	%eax, %esi
100004346: 8b 45 18                    	movl	24(%rbp), %eax
100004349: 8b 5d b4                    	movl	-76(%rbp), %ebx
10000434c: 31 d2                       	xorl	%edx, %edx
10000434e: 41 f7 f3                    	divl	%r11d
100004351: 8b 55 b0                    	movl	-80(%rbp), %edx
100004354: 01 de                       	addl	%ebx, %esi
100004356: 0f af c6                    	imull	%esi, %eax
100004359: be 81 00 00 00              	movl	$129, %esi
10000435e: 01 d9                       	addl	%ebx, %ecx
100004360: 01 c1                       	addl	%eax, %ecx
100004362: 41 0f af c9                 	imull	%r9d, %ecx
100004366: 03 4d c0                    	addl	-64(%rbp), %ecx
100004369: 83 ff 81                    	cmpl	$-127, %edi
10000436c: 0f 4e fe                    	cmovlel	%esi, %edi
10000436f: 48 8b 45 80                 	movq	-128(%rbp), %rax
100004373: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100004377: 45 01 de                    	addl	%r11d, %r14d
10000437a: 45 01 ef                    	addl	%r13d, %r15d
10000437d: 41 39 d6                    	cmpl	%edx, %r14d
100004380: 0f 82 1a ff ff ff           	jb	-230 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x140>
100004386: e9 e5 fe ff ff              	jmp	-283 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000438b: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100004392: 5b                          	popq	%rbx
100004393: 41 5c                       	popq	%r12
100004395: 41 5d                       	popq	%r13
100004397: 41 5e                       	popq	%r14
100004399: 41 5f                       	popq	%r15
10000439b: 5d                          	popq	%rbp
10000439c: c3                          	retq
10000439d: 0f 1f 00                    	nopl	(%rax)

00000001000043a0 __Z11microkernelILj1ELj32EasET2_PKT1_S3_:
1000043a0: 55                          	pushq	%rbp
1000043a1: 48 89 e5                    	movq	%rsp, %rbp
1000043a4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
1000043a9: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
1000043af: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
1000043b4: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000043b8: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
1000043be: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000043c2: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000043c6: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000043cc: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043d0: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000043d5: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043d9: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000043de: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043e2: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000043e7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043eb: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000043ef: 98                          	cwtl
1000043f0: 5d                          	popq	%rbp
1000043f1: c5 f8 77                    	vzeroupper
1000043f4: c3                          	retq
1000043f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000043ff: 90                          	nop

0000000100004400 __Z11microkernelILj1ELj64EasET2_PKT1_S3_:
100004400: 55                          	pushq	%rbp
100004401: 48 89 e5                    	movq	%rsp, %rbp
100004404: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004409: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000440f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004414: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004418: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000441e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004422: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004426: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000442c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004430: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004435: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004439: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000443e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004442: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004447: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000444b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000444f: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
100004455: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
10000445b: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004461: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004465: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
10000446b: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
10000446f: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004473: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004479: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000447d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004482: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004486: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000448b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000448f: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004494: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004498: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
10000449c: 01 c1                       	addl	%eax, %ecx
10000449e: 0f bf c1                    	movswl	%cx, %eax
1000044a1: 5d                          	popq	%rbp
1000044a2: c5 f8 77                    	vzeroupper
1000044a5: c3                          	retq
1000044a6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000044b0 __Z11microkernelILj3ELj4EasET2_PKT1_S3_:
1000044b0: 55                          	pushq	%rbp
1000044b1: 48 89 e5                    	movq	%rsp, %rbp
1000044b4: c4 e2 79 20 06              	vpmovsxbw	(%rsi), %xmm0
1000044b9: c4 e2 79 20 0f              	vpmovsxbw	(%rdi), %xmm1
1000044be: c5 f1 d5 c0                 	vpmullw	%xmm0, %xmm1, %xmm0
1000044c2: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000044c7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044cb: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000044d0: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044d4: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000044d9: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044dd: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000044e1: 0f be 4e 08                 	movsbl	8(%rsi), %ecx
1000044e5: 0f be 57 08                 	movsbl	8(%rdi), %edx
1000044e9: 0f af d1                    	imull	%ecx, %edx
1000044ec: 01 c2                       	addl	%eax, %edx
1000044ee: 0f be 46 09                 	movsbl	9(%rsi), %eax
1000044f2: 0f be 4f 09                 	movsbl	9(%rdi), %ecx
1000044f6: 0f af c8                    	imull	%eax, %ecx
1000044f9: 01 d1                       	addl	%edx, %ecx
1000044fb: 0f be 46 0a                 	movsbl	10(%rsi), %eax
1000044ff: 0f be 57 0a                 	movsbl	10(%rdi), %edx
100004503: 0f af d0                    	imull	%eax, %edx
100004506: 01 ca                       	addl	%ecx, %edx
100004508: 0f be 46 0b                 	movsbl	11(%rsi), %eax
10000450c: 0f be 4f 0b                 	movsbl	11(%rdi), %ecx
100004510: 0f af c8                    	imull	%eax, %ecx
100004513: 01 d1                       	addl	%edx, %ecx
100004515: 0f bf c1                    	movswl	%cx, %eax
100004518: 5d                          	popq	%rbp
100004519: c3                          	retq
10000451a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100004520 __Z11microkernelILj3ELj8EasET2_PKT1_S3_:
100004520: 55                          	pushq	%rbp
100004521: 48 89 e5                    	movq	%rsp, %rbp
100004524: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004529: c4 e2 7d 20 0f              	vpmovsxbw	(%rdi), %ymm1
10000452e: c5 f5 d5 c0                 	vpmullw	%ymm0, %ymm1, %ymm0
100004532: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004538: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000453c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004541: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004545: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000454a: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000454e: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004553: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004557: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000455b: 0f be 4e 10                 	movsbl	16(%rsi), %ecx
10000455f: 0f be 57 10                 	movsbl	16(%rdi), %edx
100004563: 0f af d1                    	imull	%ecx, %edx
100004566: 01 c2                       	addl	%eax, %edx
100004568: 0f be 46 11                 	movsbl	17(%rsi), %eax
10000456c: 0f be 4f 11                 	movsbl	17(%rdi), %ecx
100004570: 0f af c8                    	imull	%eax, %ecx
100004573: 01 d1                       	addl	%edx, %ecx
100004575: 0f be 46 12                 	movsbl	18(%rsi), %eax
100004579: 0f be 57 12                 	movsbl	18(%rdi), %edx
10000457d: 0f af d0                    	imull	%eax, %edx
100004580: 01 ca                       	addl	%ecx, %edx
100004582: 0f be 46 13                 	movsbl	19(%rsi), %eax
100004586: 0f be 4f 13                 	movsbl	19(%rdi), %ecx
10000458a: 0f af c8                    	imull	%eax, %ecx
10000458d: 01 d1                       	addl	%edx, %ecx
10000458f: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004593: 0f be 57 14                 	movsbl	20(%rdi), %edx
100004597: 0f af d0                    	imull	%eax, %edx
10000459a: 01 ca                       	addl	%ecx, %edx
10000459c: 0f be 46 15                 	movsbl	21(%rsi), %eax
1000045a0: 0f be 4f 15                 	movsbl	21(%rdi), %ecx
1000045a4: 0f af c8                    	imull	%eax, %ecx
1000045a7: 01 d1                       	addl	%edx, %ecx
1000045a9: 0f be 46 16                 	movsbl	22(%rsi), %eax
1000045ad: 0f be 57 16                 	movsbl	22(%rdi), %edx
1000045b1: 0f af d0                    	imull	%eax, %edx
1000045b4: 01 ca                       	addl	%ecx, %edx
1000045b6: 0f be 46 17                 	movsbl	23(%rsi), %eax
1000045ba: 0f be 4f 17                 	movsbl	23(%rdi), %ecx
1000045be: 0f af c8                    	imull	%eax, %ecx
1000045c1: 01 d1                       	addl	%edx, %ecx
1000045c3: 0f bf c1                    	movswl	%cx, %eax
1000045c6: 5d                          	popq	%rbp
1000045c7: c5 f8 77                    	vzeroupper
1000045ca: c3                          	retq
1000045cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000045d0 __Z11microkernelILj3ELj16EasET2_PKT1_S3_:
1000045d0: 55                          	pushq	%rbp
1000045d1: 48 89 e5                    	movq	%rsp, %rbp
1000045d4: 0f be 06                    	movsbl	(%rsi), %eax
1000045d7: 0f be 0f                    	movsbl	(%rdi), %ecx
1000045da: 0f af c8                    	imull	%eax, %ecx
1000045dd: 0f be 46 01                 	movsbl	1(%rsi), %eax
1000045e1: 0f be 57 01                 	movsbl	1(%rdi), %edx
1000045e5: 0f af d0                    	imull	%eax, %edx
1000045e8: 01 ca                       	addl	%ecx, %edx
1000045ea: 0f be 46 02                 	movsbl	2(%rsi), %eax
1000045ee: 0f be 4f 02                 	movsbl	2(%rdi), %ecx
1000045f2: 0f af c8                    	imull	%eax, %ecx
1000045f5: 01 d1                       	addl	%edx, %ecx
1000045f7: 0f be 46 03                 	movsbl	3(%rsi), %eax
1000045fb: 0f be 57 03                 	movsbl	3(%rdi), %edx
1000045ff: 0f af d0                    	imull	%eax, %edx
100004602: 01 ca                       	addl	%ecx, %edx
100004604: 0f be 46 04                 	movsbl	4(%rsi), %eax
100004608: 0f be 4f 04                 	movsbl	4(%rdi), %ecx
10000460c: 0f af c8                    	imull	%eax, %ecx
10000460f: 01 d1                       	addl	%edx, %ecx
100004611: 0f be 46 05                 	movsbl	5(%rsi), %eax
100004615: 0f be 57 05                 	movsbl	5(%rdi), %edx
100004619: 0f af d0                    	imull	%eax, %edx
10000461c: 01 ca                       	addl	%ecx, %edx
10000461e: 0f be 46 06                 	movsbl	6(%rsi), %eax
100004622: 0f be 4f 06                 	movsbl	6(%rdi), %ecx
100004626: 0f af c8                    	imull	%eax, %ecx
100004629: 01 d1                       	addl	%edx, %ecx
10000462b: 0f be 46 07                 	movsbl	7(%rsi), %eax
10000462f: 0f be 57 07                 	movsbl	7(%rdi), %edx
100004633: 0f af d0                    	imull	%eax, %edx
100004636: 01 ca                       	addl	%ecx, %edx
100004638: 0f be 46 08                 	movsbl	8(%rsi), %eax
10000463c: 0f be 4f 08                 	movsbl	8(%rdi), %ecx
100004640: 0f af c8                    	imull	%eax, %ecx
100004643: 01 d1                       	addl	%edx, %ecx
100004645: 0f be 46 09                 	movsbl	9(%rsi), %eax
100004649: 0f be 57 09                 	movsbl	9(%rdi), %edx
10000464d: 0f af d0                    	imull	%eax, %edx
100004650: 01 ca                       	addl	%ecx, %edx
100004652: 0f be 46 0a                 	movsbl	10(%rsi), %eax
100004656: 0f be 4f 0a                 	movsbl	10(%rdi), %ecx
10000465a: 0f af c8                    	imull	%eax, %ecx
10000465d: 01 d1                       	addl	%edx, %ecx
10000465f: 0f be 46 0b                 	movsbl	11(%rsi), %eax
100004663: 0f be 57 0b                 	movsbl	11(%rdi), %edx
100004667: 0f af d0                    	imull	%eax, %edx
10000466a: 01 ca                       	addl	%ecx, %edx
10000466c: 0f be 46 0c                 	movsbl	12(%rsi), %eax
100004670: 0f be 4f 0c                 	movsbl	12(%rdi), %ecx
100004674: 0f af c8                    	imull	%eax, %ecx
100004677: 01 d1                       	addl	%edx, %ecx
100004679: 0f be 46 0d                 	movsbl	13(%rsi), %eax
10000467d: 0f be 57 0d                 	movsbl	13(%rdi), %edx
100004681: 0f af d0                    	imull	%eax, %edx
100004684: 01 ca                       	addl	%ecx, %edx
100004686: 0f be 46 0e                 	movsbl	14(%rsi), %eax
10000468a: 0f be 4f 0e                 	movsbl	14(%rdi), %ecx
10000468e: 0f af c8                    	imull	%eax, %ecx
100004691: 01 d1                       	addl	%edx, %ecx
100004693: 0f be 46 0f                 	movsbl	15(%rsi), %eax
100004697: 0f be 57 0f                 	movsbl	15(%rdi), %edx
10000469b: 0f af d0                    	imull	%eax, %edx
10000469e: 01 ca                       	addl	%ecx, %edx
1000046a0: 0f be 46 10                 	movsbl	16(%rsi), %eax
1000046a4: 0f be 4f 10                 	movsbl	16(%rdi), %ecx
1000046a8: 0f af c8                    	imull	%eax, %ecx
1000046ab: 01 d1                       	addl	%edx, %ecx
1000046ad: 0f be 46 11                 	movsbl	17(%rsi), %eax
1000046b1: 0f be 57 11                 	movsbl	17(%rdi), %edx
1000046b5: 0f af d0                    	imull	%eax, %edx
1000046b8: 01 ca                       	addl	%ecx, %edx
1000046ba: 0f be 46 12                 	movsbl	18(%rsi), %eax
1000046be: 0f be 4f 12                 	movsbl	18(%rdi), %ecx
1000046c2: 0f af c8                    	imull	%eax, %ecx
1000046c5: 01 d1                       	addl	%edx, %ecx
1000046c7: 0f be 46 13                 	movsbl	19(%rsi), %eax
1000046cb: 0f be 57 13                 	movsbl	19(%rdi), %edx
1000046cf: 0f af d0                    	imull	%eax, %edx
1000046d2: 01 ca                       	addl	%ecx, %edx
1000046d4: 0f be 46 14                 	movsbl	20(%rsi), %eax
1000046d8: 0f be 4f 14                 	movsbl	20(%rdi), %ecx
1000046dc: 0f af c8                    	imull	%eax, %ecx
1000046df: 01 d1                       	addl	%edx, %ecx
1000046e1: 0f be 46 15                 	movsbl	21(%rsi), %eax
1000046e5: 0f be 57 15                 	movsbl	21(%rdi), %edx
1000046e9: 0f af d0                    	imull	%eax, %edx
1000046ec: 01 ca                       	addl	%ecx, %edx
1000046ee: 0f be 46 16                 	movsbl	22(%rsi), %eax
1000046f2: 0f be 4f 16                 	movsbl	22(%rdi), %ecx
1000046f6: 0f af c8                    	imull	%eax, %ecx
1000046f9: 01 d1                       	addl	%edx, %ecx
1000046fb: 0f be 46 17                 	movsbl	23(%rsi), %eax
1000046ff: 0f be 57 17                 	movsbl	23(%rdi), %edx
100004703: 0f af d0                    	imull	%eax, %edx
100004706: 01 ca                       	addl	%ecx, %edx
100004708: 0f be 46 18                 	movsbl	24(%rsi), %eax
10000470c: 0f be 4f 18                 	movsbl	24(%rdi), %ecx
100004710: 0f af c8                    	imull	%eax, %ecx
100004713: 01 d1                       	addl	%edx, %ecx
100004715: 0f be 46 19                 	movsbl	25(%rsi), %eax
100004719: 0f be 57 19                 	movsbl	25(%rdi), %edx
10000471d: 0f af d0                    	imull	%eax, %edx
100004720: 01 ca                       	addl	%ecx, %edx
100004722: 0f be 46 1a                 	movsbl	26(%rsi), %eax
100004726: 0f be 4f 1a                 	movsbl	26(%rdi), %ecx
10000472a: 0f af c8                    	imull	%eax, %ecx
10000472d: 01 d1                       	addl	%edx, %ecx
10000472f: 0f be 46 1b                 	movsbl	27(%rsi), %eax
100004733: 0f be 57 1b                 	movsbl	27(%rdi), %edx
100004737: 0f af d0                    	imull	%eax, %edx
10000473a: 01 ca                       	addl	%ecx, %edx
10000473c: 0f be 46 1c                 	movsbl	28(%rsi), %eax
100004740: 0f be 4f 1c                 	movsbl	28(%rdi), %ecx
100004744: 0f af c8                    	imull	%eax, %ecx
100004747: 01 d1                       	addl	%edx, %ecx
100004749: 0f be 46 1d                 	movsbl	29(%rsi), %eax
10000474d: 0f be 57 1d                 	movsbl	29(%rdi), %edx
100004751: 0f af d0                    	imull	%eax, %edx
100004754: 01 ca                       	addl	%ecx, %edx
100004756: 0f be 46 1e                 	movsbl	30(%rsi), %eax
10000475a: 0f be 4f 1e                 	movsbl	30(%rdi), %ecx
10000475e: 0f af c8                    	imull	%eax, %ecx
100004761: 01 d1                       	addl	%edx, %ecx
100004763: 0f be 46 1f                 	movsbl	31(%rsi), %eax
100004767: 0f be 57 1f                 	movsbl	31(%rdi), %edx
10000476b: 0f af d0                    	imull	%eax, %edx
10000476e: 01 ca                       	addl	%ecx, %edx
100004770: 0f be 46 20                 	movsbl	32(%rsi), %eax
100004774: 0f be 4f 20                 	movsbl	32(%rdi), %ecx
100004778: 0f af c8                    	imull	%eax, %ecx
10000477b: 01 d1                       	addl	%edx, %ecx
10000477d: 0f be 46 21                 	movsbl	33(%rsi), %eax
100004781: 0f be 57 21                 	movsbl	33(%rdi), %edx
100004785: 0f af d0                    	imull	%eax, %edx
100004788: 01 ca                       	addl	%ecx, %edx
10000478a: 0f be 46 22                 	movsbl	34(%rsi), %eax
10000478e: 0f be 4f 22                 	movsbl	34(%rdi), %ecx
100004792: 0f af c8                    	imull	%eax, %ecx
100004795: 01 d1                       	addl	%edx, %ecx
100004797: 0f be 46 23                 	movsbl	35(%rsi), %eax
10000479b: 0f be 57 23                 	movsbl	35(%rdi), %edx
10000479f: 0f af d0                    	imull	%eax, %edx
1000047a2: 01 ca                       	addl	%ecx, %edx
1000047a4: 0f be 46 24                 	movsbl	36(%rsi), %eax
1000047a8: 0f be 4f 24                 	movsbl	36(%rdi), %ecx
1000047ac: 0f af c8                    	imull	%eax, %ecx
1000047af: 01 d1                       	addl	%edx, %ecx
1000047b1: 0f be 46 25                 	movsbl	37(%rsi), %eax
1000047b5: 0f be 57 25                 	movsbl	37(%rdi), %edx
1000047b9: 0f af d0                    	imull	%eax, %edx
1000047bc: 01 ca                       	addl	%ecx, %edx
1000047be: 0f be 46 26                 	movsbl	38(%rsi), %eax
1000047c2: 0f be 4f 26                 	movsbl	38(%rdi), %ecx
1000047c6: 0f af c8                    	imull	%eax, %ecx
1000047c9: 01 d1                       	addl	%edx, %ecx
1000047cb: 0f be 46 27                 	movsbl	39(%rsi), %eax
1000047cf: 0f be 57 27                 	movsbl	39(%rdi), %edx
1000047d3: 0f af d0                    	imull	%eax, %edx
1000047d6: 01 ca                       	addl	%ecx, %edx
1000047d8: 0f be 46 28                 	movsbl	40(%rsi), %eax
1000047dc: 0f be 4f 28                 	movsbl	40(%rdi), %ecx
1000047e0: 0f af c8                    	imull	%eax, %ecx
1000047e3: 01 d1                       	addl	%edx, %ecx
1000047e5: 0f be 46 29                 	movsbl	41(%rsi), %eax
1000047e9: 0f be 57 29                 	movsbl	41(%rdi), %edx
1000047ed: 0f af d0                    	imull	%eax, %edx
1000047f0: 01 ca                       	addl	%ecx, %edx
1000047f2: 0f be 46 2a                 	movsbl	42(%rsi), %eax
1000047f6: 0f be 4f 2a                 	movsbl	42(%rdi), %ecx
1000047fa: 0f af c8                    	imull	%eax, %ecx
1000047fd: 01 d1                       	addl	%edx, %ecx
1000047ff: 0f be 46 2b                 	movsbl	43(%rsi), %eax
100004803: 0f be 57 2b                 	movsbl	43(%rdi), %edx
100004807: 0f af d0                    	imull	%eax, %edx
10000480a: 01 ca                       	addl	%ecx, %edx
10000480c: 0f be 46 2c                 	movsbl	44(%rsi), %eax
100004810: 0f be 4f 2c                 	movsbl	44(%rdi), %ecx
100004814: 0f af c8                    	imull	%eax, %ecx
100004817: 01 d1                       	addl	%edx, %ecx
100004819: 0f be 46 2d                 	movsbl	45(%rsi), %eax
10000481d: 0f be 57 2d                 	movsbl	45(%rdi), %edx
100004821: 0f af d0                    	imull	%eax, %edx
100004824: 01 ca                       	addl	%ecx, %edx
100004826: 0f be 46 2e                 	movsbl	46(%rsi), %eax
10000482a: 0f be 4f 2e                 	movsbl	46(%rdi), %ecx
10000482e: 0f af c8                    	imull	%eax, %ecx
100004831: 01 d1                       	addl	%edx, %ecx
100004833: 0f be 46 2f                 	movsbl	47(%rsi), %eax
100004837: 0f be 57 2f                 	movsbl	47(%rdi), %edx
10000483b: 0f af d0                    	imull	%eax, %edx
10000483e: 01 ca                       	addl	%ecx, %edx
100004840: 0f bf c2                    	movswl	%dx, %eax
100004843: 5d                          	popq	%rbp
100004844: c3                          	retq
100004845: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000484f: 90                          	nop

0000000100004850 __Z11microkernelILj3ELj32EasET2_PKT1_S3_:
100004850: 55                          	pushq	%rbp
100004851: 48 89 e5                    	movq	%rsp, %rbp
100004854: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004859: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000485f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004864: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004868: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000486e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004872: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004876: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000487c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004880: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004885: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004889: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000488e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004892: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004897: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000489b: c4 e2 7d 20 4e 20           	vpmovsxbw	32(%rsi), %ymm1
1000048a1: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000048a5: c4 e2 7d 20 46 30           	vpmovsxbw	48(%rsi), %ymm0
1000048ab: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
1000048b1: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000048b5: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
1000048bb: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000048bf: c5 f5 fd c0                 	vpaddw	%ymm0, %ymm1, %ymm0
1000048c3: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000048c9: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048cd: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000048d2: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048d6: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000048db: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048df: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000048e4: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000048e8: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000048ec: 01 c1                       	addl	%eax, %ecx
1000048ee: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
1000048f4: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
1000048fa: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004900: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004904: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
10000490a: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
10000490e: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004912: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004918: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000491c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004921: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004925: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000492a: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000492e: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004933: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004937: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000493b: 01 c8                       	addl	%ecx, %eax
10000493d: 98                          	cwtl
10000493e: 5d                          	popq	%rbp
10000493f: c5 f8 77                    	vzeroupper
100004942: c3                          	retq
100004943: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000494d: 0f 1f 00                    	nopl	(%rax)

0000000100004950 __Z11microkernelILj3ELj64EasET2_PKT1_S3_:
100004950: 55                          	pushq	%rbp
100004951: 48 89 e5                    	movq	%rsp, %rbp
100004954: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004959: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000495f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004964: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004968: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000496e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004972: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004976: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000497c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004980: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004985: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004989: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000498e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004992: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004997: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000499b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000499f: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
1000049a5: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
1000049ab: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
1000049b1: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
1000049b5: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
1000049bb: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000049bf: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000049c3: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000049c9: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049cd: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000049d2: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049d6: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000049db: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049df: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000049e4: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000049e8: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000049ec: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
1000049f2: 01 c1                       	addl	%eax, %ecx
1000049f4: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
1000049fa: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004a00: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004a04: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
100004a0a: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004a0e: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004a12: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004a18: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a1c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004a21: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a25: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004a2a: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a2e: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004a33: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a37: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004a3b: 01 c8                       	addl	%ecx, %eax
100004a3d: c4 e2 7d 20 46 60           	vpmovsxbw	96(%rsi), %ymm0
100004a43: c4 e2 7d 20 4e 70           	vpmovsxbw	112(%rsi), %ymm1
100004a49: c4 e2 7d 20 57 60           	vpmovsxbw	96(%rdi), %ymm2
100004a4f: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004a53: c4 e2 7d 20 57 70           	vpmovsxbw	112(%rdi), %ymm2
100004a59: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004a5d: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004a61: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004a67: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a6b: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004a70: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a74: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004a79: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a7d: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004a82: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004a86: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004a8a: c4 e2 7d 20 86 80 00 00 00  	vpmovsxbw	128(%rsi), %ymm0
100004a93: 01 c1                       	addl	%eax, %ecx
100004a95: c4 e2 7d 20 8e 90 00 00 00  	vpmovsxbw	144(%rsi), %ymm1
100004a9e: c4 e2 7d 20 97 80 00 00 00  	vpmovsxbw	128(%rdi), %ymm2
100004aa7: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004aab: c4 e2 7d 20 97 90 00 00 00  	vpmovsxbw	144(%rdi), %ymm2
100004ab4: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004ab8: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004abc: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004ac2: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ac6: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004acb: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004acf: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004ad4: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ad8: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004add: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ae1: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004ae5: 01 c8                       	addl	%ecx, %eax
100004ae7: c4 e2 7d 20 86 a0 00 00 00  	vpmovsxbw	160(%rsi), %ymm0
100004af0: c4 e2 7d 20 8e b0 00 00 00  	vpmovsxbw	176(%rsi), %ymm1
100004af9: c4 e2 7d 20 97 a0 00 00 00  	vpmovsxbw	160(%rdi), %ymm2
100004b02: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004b06: c4 e2 7d 20 97 b0 00 00 00  	vpmovsxbw	176(%rdi), %ymm2
100004b0f: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004b13: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004b17: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004b1d: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b21: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004b26: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b2a: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004b2f: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b33: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004b38: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b3c: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004b40: 01 c1                       	addl	%eax, %ecx
100004b42: 0f bf c1                    	movswl	%cx, %eax
100004b45: 5d                          	popq	%rbp
100004b46: c5 f8 77                    	vzeroupper
100004b49: c3                          	retq
100004b4a: 90                          	nop
100004b4b: 90                          	nop
100004b4c: 90                          	nop
100004b4d: 90                          	nop
100004b4e: 90                          	nop
100004b4f: 90                          	nop

0000000100004b50 __ZN14ModelInterfaceC2Ev:
100004b50: 55                          	pushq	%rbp
100004b51: 48 89 e5                    	movq	%rsp, %rbp
100004b54: 48 8d 05 6d 45 00 00        	leaq	17773(%rip), %rax
100004b5b: 48 89 07                    	movq	%rax, (%rdi)
100004b5e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004b62: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004b67: 5d                          	popq	%rbp
100004b68: c3                          	retq
100004b69: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004b70 __ZN14ModelInterfaceC1Ev:
100004b70: 55                          	pushq	%rbp
100004b71: 48 89 e5                    	movq	%rsp, %rbp
100004b74: 48 8d 05 4d 45 00 00        	leaq	17741(%rip), %rax
100004b7b: 48 89 07                    	movq	%rax, (%rdi)
100004b7e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004b82: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004b87: 5d                          	popq	%rbp
100004b88: c3                          	retq
100004b89: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004b90 __ZN14ModelInterfaceD2Ev:
100004b90: 55                          	pushq	%rbp
100004b91: 48 89 e5                    	movq	%rsp, %rbp
100004b94: 53                          	pushq	%rbx
100004b95: 50                          	pushq	%rax
100004b96: 48 89 fb                    	movq	%rdi, %rbx
100004b99: 48 8d 05 28 45 00 00        	leaq	17704(%rip), %rax
100004ba0: 48 89 07                    	movq	%rax, (%rdi)
100004ba3: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004ba7: 48 85 ff                    	testq	%rdi, %rdi
100004baa: 74 05                       	je	5 <__ZN14ModelInterfaceD2Ev+0x21>
100004bac: e8 97 25 00 00              	callq	9623 <dyld_stub_binder+0x100007148>
100004bb1: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004bb5: 48 83 c4 08                 	addq	$8, %rsp
100004bb9: 48 85 ff                    	testq	%rdi, %rdi
100004bbc: 74 07                       	je	7 <__ZN14ModelInterfaceD2Ev+0x35>
100004bbe: 5b                          	popq	%rbx
100004bbf: 5d                          	popq	%rbp
100004bc0: e9 83 25 00 00              	jmp	9603 <dyld_stub_binder+0x100007148>
100004bc5: 5b                          	popq	%rbx
100004bc6: 5d                          	popq	%rbp
100004bc7: c3                          	retq
100004bc8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004bd0 __ZN14ModelInterfaceD1Ev:
100004bd0: 55                          	pushq	%rbp
100004bd1: 48 89 e5                    	movq	%rsp, %rbp
100004bd4: 53                          	pushq	%rbx
100004bd5: 50                          	pushq	%rax
100004bd6: 48 89 fb                    	movq	%rdi, %rbx
100004bd9: 48 8d 05 e8 44 00 00        	leaq	17640(%rip), %rax
100004be0: 48 89 07                    	movq	%rax, (%rdi)
100004be3: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004be7: 48 85 ff                    	testq	%rdi, %rdi
100004bea: 74 05                       	je	5 <__ZN14ModelInterfaceD1Ev+0x21>
100004bec: e8 57 25 00 00              	callq	9559 <dyld_stub_binder+0x100007148>
100004bf1: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004bf5: 48 83 c4 08                 	addq	$8, %rsp
100004bf9: 48 85 ff                    	testq	%rdi, %rdi
100004bfc: 74 07                       	je	7 <__ZN14ModelInterfaceD1Ev+0x35>
100004bfe: 5b                          	popq	%rbx
100004bff: 5d                          	popq	%rbp
100004c00: e9 43 25 00 00              	jmp	9539 <dyld_stub_binder+0x100007148>
100004c05: 5b                          	popq	%rbx
100004c06: 5d                          	popq	%rbp
100004c07: c3                          	retq
100004c08: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004c10 __ZN14ModelInterfaceD0Ev:
100004c10: 55                          	pushq	%rbp
100004c11: 48 89 e5                    	movq	%rsp, %rbp
100004c14: 53                          	pushq	%rbx
100004c15: 50                          	pushq	%rax
100004c16: 48 89 fb                    	movq	%rdi, %rbx
100004c19: 48 8d 05 a8 44 00 00        	leaq	17576(%rip), %rax
100004c20: 48 89 07                    	movq	%rax, (%rdi)
100004c23: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004c27: 48 85 ff                    	testq	%rdi, %rdi
100004c2a: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x21>
100004c2c: e8 17 25 00 00              	callq	9495 <dyld_stub_binder+0x100007148>
100004c31: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004c35: 48 85 ff                    	testq	%rdi, %rdi
100004c38: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x2f>
100004c3a: e8 09 25 00 00              	callq	9481 <dyld_stub_binder+0x100007148>
100004c3f: 48 89 df                    	movq	%rbx, %rdi
100004c42: 48 83 c4 08                 	addq	$8, %rsp
100004c46: 5b                          	popq	%rbx
100004c47: 5d                          	popq	%rbp
100004c48: e9 fb 24 00 00              	jmp	9467 <dyld_stub_binder+0x100007148>
100004c4d: 0f 1f 00                    	nopl	(%rax)

0000000100004c50 __ZN14ModelInterface7forwardEv:
100004c50: 55                          	pushq	%rbp
100004c51: 48 89 e5                    	movq	%rsp, %rbp
100004c54: 5d                          	popq	%rbp
100004c55: c3                          	retq
100004c56: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004c60 __ZN14ModelInterface12input_bufferEv:
100004c60: 55                          	pushq	%rbp
100004c61: 48 89 e5                    	movq	%rsp, %rbp
100004c64: 0f b6 47 20                 	movzbl	32(%rdi), %eax
100004c68: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100004c6d: 5d                          	popq	%rbp
100004c6e: c3                          	retq
100004c6f: 90                          	nop

0000000100004c70 __ZN14ModelInterface13output_bufferEv:
100004c70: 55                          	pushq	%rbp
100004c71: 48 89 e5                    	movq	%rsp, %rbp
100004c74: 31 c0                       	xorl	%eax, %eax
100004c76: 80 7f 20 00                 	cmpb	$0, 32(%rdi)
100004c7a: 0f 94 c0                    	sete	%al
100004c7d: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100004c82: 5d                          	popq	%rbp
100004c83: c3                          	retq
100004c84: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004c8e: 66 90                       	nop

0000000100004c90 __ZN14ModelInterface11init_bufferEj:
100004c90: 55                          	pushq	%rbp
100004c91: 48 89 e5                    	movq	%rsp, %rbp
100004c94: 41 57                       	pushq	%r15
100004c96: 41 56                       	pushq	%r14
100004c98: 41 54                       	pushq	%r12
100004c9a: 53                          	pushq	%rbx
100004c9b: 41 89 f7                    	movl	%esi, %r15d
100004c9e: 48 89 fb                    	movq	%rdi, %rbx
100004ca1: c6 47 20 00                 	movb	$0, 32(%rdi)
100004ca5: 41 89 f6                    	movl	%esi, %r14d
100004ca8: 4c 89 f7                    	movq	%r14, %rdi
100004cab: e8 9e 24 00 00              	callq	9374 <dyld_stub_binder+0x10000714e>
100004cb0: 49 89 c4                    	movq	%rax, %r12
100004cb3: 48 89 43 28                 	movq	%rax, 40(%rbx)
100004cb7: 4c 89 f7                    	movq	%r14, %rdi
100004cba: e8 8f 24 00 00              	callq	9359 <dyld_stub_binder+0x10000714e>
100004cbf: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004cc3: 45 85 ff                    	testl	%r15d, %r15d
100004cc6: 0f 84 44 01 00 00           	je	324 <__ZN14ModelInterface11init_bufferEj+0x180>
100004ccc: 41 c6 04 24 00              	movb	$0, (%r12)
100004cd1: 41 83 ff 01                 	cmpl	$1, %r15d
100004cd5: 0f 84 95 00 00 00           	je	149 <__ZN14ModelInterface11init_bufferEj+0xe0>
100004cdb: 41 8d 46 ff                 	leal	-1(%r14), %eax
100004cdf: 49 8d 56 fe                 	leaq	-2(%r14), %rdx
100004ce3: 83 e0 07                    	andl	$7, %eax
100004ce6: b9 01 00 00 00              	movl	$1, %ecx
100004ceb: 48 83 fa 07                 	cmpq	$7, %rdx
100004cef: 72 63                       	jb	99 <__ZN14ModelInterface11init_bufferEj+0xc4>
100004cf1: 48 89 c2                    	movq	%rax, %rdx
100004cf4: 48 f7 d2                    	notq	%rdx
100004cf7: 4c 01 f2                    	addq	%r14, %rdx
100004cfa: 31 c9                       	xorl	%ecx, %ecx
100004cfc: 0f 1f 40 00                 	nopl	(%rax)
100004d00: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d04: c6 44 0e 01 00              	movb	$0, 1(%rsi,%rcx)
100004d09: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d0d: c6 44 0e 02 00              	movb	$0, 2(%rsi,%rcx)
100004d12: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d16: c6 44 0e 03 00              	movb	$0, 3(%rsi,%rcx)
100004d1b: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d1f: c6 44 0e 04 00              	movb	$0, 4(%rsi,%rcx)
100004d24: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d28: c6 44 0e 05 00              	movb	$0, 5(%rsi,%rcx)
100004d2d: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d31: c6 44 0e 06 00              	movb	$0, 6(%rsi,%rcx)
100004d36: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d3a: c6 44 0e 07 00              	movb	$0, 7(%rsi,%rcx)
100004d3f: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004d43: c6 44 0e 08 00              	movb	$0, 8(%rsi,%rcx)
100004d48: 48 83 c1 08                 	addq	$8, %rcx
100004d4c: 48 39 ca                    	cmpq	%rcx, %rdx
100004d4f: 75 af                       	jne	-81 <__ZN14ModelInterface11init_bufferEj+0x70>
100004d51: 48 ff c1                    	incq	%rcx
100004d54: 48 85 c0                    	testq	%rax, %rax
100004d57: 74 17                       	je	23 <__ZN14ModelInterface11init_bufferEj+0xe0>
100004d59: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004d60: 48 8b 53 28                 	movq	40(%rbx), %rdx
100004d64: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004d68: 48 ff c1                    	incq	%rcx
100004d6b: 48 ff c8                    	decq	%rax
100004d6e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0xd0>
100004d70: 45 85 ff                    	testl	%r15d, %r15d
100004d73: 0f 84 97 00 00 00           	je	151 <__ZN14ModelInterface11init_bufferEj+0x180>
100004d79: 49 8d 4e ff                 	leaq	-1(%r14), %rcx
100004d7d: 44 89 f0                    	movl	%r14d, %eax
100004d80: 83 e0 07                    	andl	$7, %eax
100004d83: 48 83 f9 07                 	cmpq	$7, %rcx
100004d87: 73 0c                       	jae	12 <__ZN14ModelInterface11init_bufferEj+0x105>
100004d89: 31 c9                       	xorl	%ecx, %ecx
100004d8b: 48 85 c0                    	testq	%rax, %rax
100004d8e: 75 70                       	jne	112 <__ZN14ModelInterface11init_bufferEj+0x170>
100004d90: e9 7b 00 00 00              	jmp	123 <__ZN14ModelInterface11init_bufferEj+0x180>
100004d95: 49 29 c6                    	subq	%rax, %r14
100004d98: 31 c9                       	xorl	%ecx, %ecx
100004d9a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100004da0: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004da4: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004da8: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dac: c6 44 0a 01 00              	movb	$0, 1(%rdx,%rcx)
100004db1: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004db5: c6 44 0a 02 00              	movb	$0, 2(%rdx,%rcx)
100004dba: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dbe: c6 44 0a 03 00              	movb	$0, 3(%rdx,%rcx)
100004dc3: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dc7: c6 44 0a 04 00              	movb	$0, 4(%rdx,%rcx)
100004dcc: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dd0: c6 44 0a 05 00              	movb	$0, 5(%rdx,%rcx)
100004dd5: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004dd9: c6 44 0a 06 00              	movb	$0, 6(%rdx,%rcx)
100004dde: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004de2: c6 44 0a 07 00              	movb	$0, 7(%rdx,%rcx)
100004de7: 48 83 c1 08                 	addq	$8, %rcx
100004deb: 49 39 ce                    	cmpq	%rcx, %r14
100004dee: 75 b0                       	jne	-80 <__ZN14ModelInterface11init_bufferEj+0x110>
100004df0: 48 85 c0                    	testq	%rax, %rax
100004df3: 74 1b                       	je	27 <__ZN14ModelInterface11init_bufferEj+0x180>
100004df5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004dff: 90                          	nop
100004e00: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004e04: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004e08: 48 ff c1                    	incq	%rcx
100004e0b: 48 ff c8                    	decq	%rax
100004e0e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0x170>
100004e10: 5b                          	popq	%rbx
100004e11: 41 5c                       	popq	%r12
100004e13: 41 5e                       	popq	%r14
100004e15: 41 5f                       	popq	%r15
100004e17: 5d                          	popq	%rbp
100004e18: c3                          	retq
100004e19: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004e20 __ZN14ModelInterface11swap_bufferEv:
100004e20: 55                          	pushq	%rbp
100004e21: 48 89 e5                    	movq	%rsp, %rbp
100004e24: 80 77 20 01                 	xorb	$1, 32(%rdi)
100004e28: 5d                          	popq	%rbp
100004e29: c3                          	retq
100004e2a: 90                          	nop
100004e2b: 90                          	nop
100004e2c: 90                          	nop
100004e2d: 90                          	nop
100004e2e: 90                          	nop
100004e2f: 90                          	nop

0000000100004e30 __Z4ReLUPaS_j:
100004e30: 55                          	pushq	%rbp
100004e31: 48 89 e5                    	movq	%rsp, %rbp
100004e34: 85 d2                       	testl	%edx, %edx
100004e36: 0f 84 0b 02 00 00           	je	523 <__Z4ReLUPaS_j+0x217>
100004e3c: 8d 42 ff                    	leal	-1(%rdx), %eax
100004e3f: 4c 8d 50 01                 	leaq	1(%rax), %r10
100004e43: 49 81 fa 80 00 00 00        	cmpq	$128, %r10
100004e4a: 0f 82 2c 01 00 00           	jb	300 <__Z4ReLUPaS_j+0x14c>
100004e50: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
100004e54: 48 83 c1 01                 	addq	$1, %rcx
100004e58: 48 39 f9                    	cmpq	%rdi, %rcx
100004e5b: 76 10                       	jbe	16 <__Z4ReLUPaS_j+0x3d>
100004e5d: 48 01 f8                    	addq	%rdi, %rax
100004e60: 48 83 c0 01                 	addq	$1, %rax
100004e64: 48 39 f0                    	cmpq	%rsi, %rax
100004e67: 0f 87 0f 01 00 00           	ja	271 <__Z4ReLUPaS_j+0x14c>
100004e6d: 4d 89 d0                    	movq	%r10, %r8
100004e70: 49 83 e0 80                 	andq	$-128, %r8
100004e74: 49 8d 40 80                 	leaq	-128(%r8), %rax
100004e78: 48 89 c1                    	movq	%rax, %rcx
100004e7b: 48 c1 e9 07                 	shrq	$7, %rcx
100004e7f: 48 ff c1                    	incq	%rcx
100004e82: 41 89 c9                    	movl	%ecx, %r9d
100004e85: 41 83 e1 01                 	andl	$1, %r9d
100004e89: 48 85 c0                    	testq	%rax, %rax
100004e8c: 0f 84 ba 01 00 00           	je	442 <__Z4ReLUPaS_j+0x21c>
100004e92: 4c 89 c8                    	movq	%r9, %rax
100004e95: 48 29 c8                    	subq	%rcx, %rax
100004e98: 31 c9                       	xorl	%ecx, %ecx
100004e9a: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100004e9e: 66 90                       	nop
100004ea0: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
100004ea6: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100004ead: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
100004eb4: c4 e2 7d 3c 64 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm4
100004ebb: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100004ec0: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
100004ec6: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100004ecc: c5 fe 7f 64 0f 60           	vmovdqu	%ymm4, 96(%rdi,%rcx)
100004ed2: c4 e2 7d 3c 8c 0e 80 00 00 00       	vpmaxsb	128(%rsi,%rcx), %ymm0, %ymm1
100004edc: c4 e2 7d 3c 94 0e a0 00 00 00       	vpmaxsb	160(%rsi,%rcx), %ymm0, %ymm2
100004ee6: c4 e2 7d 3c 9c 0e c0 00 00 00       	vpmaxsb	192(%rsi,%rcx), %ymm0, %ymm3
100004ef0: c4 e2 7d 3c a4 0e e0 00 00 00       	vpmaxsb	224(%rsi,%rcx), %ymm0, %ymm4
100004efa: c5 fe 7f 8c 0f 80 00 00 00  	vmovdqu	%ymm1, 128(%rdi,%rcx)
100004f03: c5 fe 7f 94 0f a0 00 00 00  	vmovdqu	%ymm2, 160(%rdi,%rcx)
100004f0c: c5 fe 7f 9c 0f c0 00 00 00  	vmovdqu	%ymm3, 192(%rdi,%rcx)
100004f15: c5 fe 7f a4 0f e0 00 00 00  	vmovdqu	%ymm4, 224(%rdi,%rcx)
100004f1e: 48 81 c1 00 01 00 00        	addq	$256, %rcx
100004f25: 48 83 c0 02                 	addq	$2, %rax
100004f29: 0f 85 71 ff ff ff           	jne	-143 <__Z4ReLUPaS_j+0x70>
100004f2f: 4d 85 c9                    	testq	%r9, %r9
100004f32: 74 36                       	je	54 <__Z4ReLUPaS_j+0x13a>
100004f34: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100004f38: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
100004f3e: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100004f45: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
100004f4c: c4 e2 7d 3c 44 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm0
100004f53: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100004f58: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
100004f5e: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100004f64: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
100004f6a: 4d 39 c2                    	cmpq	%r8, %r10
100004f6d: 0f 84 d4 00 00 00           	je	212 <__Z4ReLUPaS_j+0x217>
100004f73: 44 29 c2                    	subl	%r8d, %edx
100004f76: 4c 01 c6                    	addq	%r8, %rsi
100004f79: 4c 01 c7                    	addq	%r8, %rdi
100004f7c: 44 8d 42 ff                 	leal	-1(%rdx), %r8d
100004f80: f6 c2 07                    	testb	$7, %dl
100004f83: 74 38                       	je	56 <__Z4ReLUPaS_j+0x18d>
100004f85: 41 89 d2                    	movl	%edx, %r10d
100004f88: 41 83 e2 07                 	andl	$7, %r10d
100004f8c: 45 31 c9                    	xorl	%r9d, %r9d
100004f8f: 31 c9                       	xorl	%ecx, %ecx
100004f91: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004f9b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100004fa0: 0f b6 04 0e                 	movzbl	(%rsi,%rcx), %eax
100004fa4: 84 c0                       	testb	%al, %al
100004fa6: 41 0f 48 c1                 	cmovsl	%r9d, %eax
100004faa: 88 04 0f                    	movb	%al, (%rdi,%rcx)
100004fad: 48 ff c1                    	incq	%rcx
100004fb0: 41 39 ca                    	cmpl	%ecx, %r10d
100004fb3: 75 eb                       	jne	-21 <__Z4ReLUPaS_j+0x170>
100004fb5: 29 ca                       	subl	%ecx, %edx
100004fb7: 48 01 ce                    	addq	%rcx, %rsi
100004fba: 48 01 cf                    	addq	%rcx, %rdi
100004fbd: 41 83 f8 07                 	cmpl	$7, %r8d
100004fc1: 0f 82 80 00 00 00           	jb	128 <__Z4ReLUPaS_j+0x217>
100004fc7: 41 89 d0                    	movl	%edx, %r8d
100004fca: 31 c9                       	xorl	%ecx, %ecx
100004fcc: 31 d2                       	xorl	%edx, %edx
100004fce: 66 90                       	nop
100004fd0: 0f b6 04 16                 	movzbl	(%rsi,%rdx), %eax
100004fd4: 84 c0                       	testb	%al, %al
100004fd6: 0f 48 c1                    	cmovsl	%ecx, %eax
100004fd9: 88 04 17                    	movb	%al, (%rdi,%rdx)
100004fdc: 0f b6 44 16 01              	movzbl	1(%rsi,%rdx), %eax
100004fe1: 84 c0                       	testb	%al, %al
100004fe3: 0f 48 c1                    	cmovsl	%ecx, %eax
100004fe6: 88 44 17 01                 	movb	%al, 1(%rdi,%rdx)
100004fea: 0f b6 44 16 02              	movzbl	2(%rsi,%rdx), %eax
100004fef: 84 c0                       	testb	%al, %al
100004ff1: 0f 48 c1                    	cmovsl	%ecx, %eax
100004ff4: 88 44 17 02                 	movb	%al, 2(%rdi,%rdx)
100004ff8: 0f b6 44 16 03              	movzbl	3(%rsi,%rdx), %eax
100004ffd: 84 c0                       	testb	%al, %al
100004fff: 0f 48 c1                    	cmovsl	%ecx, %eax
100005002: 88 44 17 03                 	movb	%al, 3(%rdi,%rdx)
100005006: 0f b6 44 16 04              	movzbl	4(%rsi,%rdx), %eax
10000500b: 84 c0                       	testb	%al, %al
10000500d: 0f 48 c1                    	cmovsl	%ecx, %eax
100005010: 88 44 17 04                 	movb	%al, 4(%rdi,%rdx)
100005014: 0f b6 44 16 05              	movzbl	5(%rsi,%rdx), %eax
100005019: 84 c0                       	testb	%al, %al
10000501b: 0f 48 c1                    	cmovsl	%ecx, %eax
10000501e: 88 44 17 05                 	movb	%al, 5(%rdi,%rdx)
100005022: 0f b6 44 16 06              	movzbl	6(%rsi,%rdx), %eax
100005027: 84 c0                       	testb	%al, %al
100005029: 0f 48 c1                    	cmovsl	%ecx, %eax
10000502c: 88 44 17 06                 	movb	%al, 6(%rdi,%rdx)
100005030: 0f b6 44 16 07              	movzbl	7(%rsi,%rdx), %eax
100005035: 84 c0                       	testb	%al, %al
100005037: 0f 48 c1                    	cmovsl	%ecx, %eax
10000503a: 88 44 17 07                 	movb	%al, 7(%rdi,%rdx)
10000503e: 48 83 c2 08                 	addq	$8, %rdx
100005042: 41 39 d0                    	cmpl	%edx, %r8d
100005045: 75 89                       	jne	-119 <__Z4ReLUPaS_j+0x1a0>
100005047: 5d                          	popq	%rbp
100005048: c5 f8 77                    	vzeroupper
10000504b: c3                          	retq
10000504c: 31 c9                       	xorl	%ecx, %ecx
10000504e: 4d 85 c9                    	testq	%r9, %r9
100005051: 0f 85 dd fe ff ff           	jne	-291 <__Z4ReLUPaS_j+0x104>
100005057: e9 0e ff ff ff              	jmp	-242 <__Z4ReLUPaS_j+0x13a>
10000505c: 90                          	nop
10000505d: 90                          	nop
10000505e: 90                          	nop
10000505f: 90                          	nop

0000000100005060 __ZN11LineNetworkC2Ev:
100005060: 55                          	pushq	%rbp
100005061: 48 89 e5                    	movq	%rsp, %rbp
100005064: 41 56                       	pushq	%r14
100005066: 53                          	pushq	%rbx
100005067: 48 89 fb                    	movq	%rdi, %rbx
10000506a: e8 e1 fa ff ff              	callq	-1311 <__ZN14ModelInterfaceC2Ev>
10000506f: 48 8d 05 8a 40 00 00        	leaq	16522(%rip), %rax
100005076: 48 89 03                    	movq	%rax, (%rbx)
100005079: 48 89 df                    	movq	%rbx, %rdi
10000507c: be 00 00 08 00              	movl	$524288, %esi
100005081: e8 0a fc ff ff              	callq	-1014 <__ZN14ModelInterface11init_bufferEj>
100005086: c5 f8 28 05 52 22 00 00     	vmovaps	8786(%rip), %xmm0
10000508e: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005093: 48 b8 20 00 00 00 20 00 00 00       	movabsq	$137438953504, %rax
10000509d: 48 89 43 18                 	movq	%rax, 24(%rbx)
1000050a1: 5b                          	popq	%rbx
1000050a2: 41 5e                       	popq	%r14
1000050a4: 5d                          	popq	%rbp
1000050a5: c3                          	retq
1000050a6: 49 89 c6                    	movq	%rax, %r14
1000050a9: 48 89 df                    	movq	%rbx, %rdi
1000050ac: e8 df fa ff ff              	callq	-1313 <__ZN14ModelInterfaceD2Ev>
1000050b1: 4c 89 f7                    	movq	%r14, %rdi
1000050b4: e8 f3 1f 00 00              	callq	8179 <dyld_stub_binder+0x1000070ac>
1000050b9: 0f 0b                       	ud2
1000050bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000050c0 __ZN11LineNetworkC1Ev:
1000050c0: 55                          	pushq	%rbp
1000050c1: 48 89 e5                    	movq	%rsp, %rbp
1000050c4: 41 56                       	pushq	%r14
1000050c6: 53                          	pushq	%rbx
1000050c7: 48 89 fb                    	movq	%rdi, %rbx
1000050ca: e8 81 fa ff ff              	callq	-1407 <__ZN14ModelInterfaceC2Ev>
1000050cf: 48 8d 05 2a 40 00 00        	leaq	16426(%rip), %rax
1000050d6: 48 89 03                    	movq	%rax, (%rbx)
1000050d9: 48 89 df                    	movq	%rbx, %rdi
1000050dc: be 00 00 08 00              	movl	$524288, %esi
1000050e1: e8 aa fb ff ff              	callq	-1110 <__ZN14ModelInterface11init_bufferEj>
1000050e6: c5 f8 28 05 f2 21 00 00     	vmovaps	8690(%rip), %xmm0
1000050ee: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
1000050f3: 48 b8 20 00 00 00 20 00 00 00       	movabsq	$137438953504, %rax
1000050fd: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005101: 5b                          	popq	%rbx
100005102: 41 5e                       	popq	%r14
100005104: 5d                          	popq	%rbp
100005105: c3                          	retq
100005106: 49 89 c6                    	movq	%rax, %r14
100005109: 48 89 df                    	movq	%rbx, %rdi
10000510c: e8 7f fa ff ff              	callq	-1409 <__ZN14ModelInterfaceD2Ev>
100005111: 4c 89 f7                    	movq	%r14, %rdi
100005114: e8 93 1f 00 00              	callq	8083 <dyld_stub_binder+0x1000070ac>
100005119: 0f 0b                       	ud2
10000511b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005120 __ZN11LineNetwork7forwardEv:
100005120: 55                          	pushq	%rbp
100005121: 48 89 e5                    	movq	%rsp, %rbp
100005124: 41 56                       	pushq	%r14
100005126: 53                          	pushq	%rbx
100005127: 48 89 fb                    	movq	%rdi, %rbx
10000512a: e8 41 fb ff ff              	callq	-1215 <__ZN14ModelInterface13output_bufferEv>
10000512f: 49 89 c6                    	movq	%rax, %r14
100005132: 48 89 df                    	movq	%rbx, %rdi
100005135: e8 26 fb ff ff              	callq	-1242 <__ZN14ModelInterface12input_bufferEv>
10000513a: 48 83 ec 08                 	subq	$8, %rsp
10000513e: 48 8d 15 ab 21 00 00        	leaq	8619(%rip), %rdx
100005145: 48 8d 0d b4 21 00 00        	leaq	8628(%rip), %rcx
10000514c: 4c 89 f7                    	movq	%r14, %rdi
10000514f: 48 89 c6                    	movq	%rax, %rsi
100005152: 41 b8 37 00 00 00           	movl	$55, %r8d
100005158: 41 b9 08 00 00 00           	movl	$8, %r9d
10000515e: 6a 02                       	pushq	$2
100005160: 6a 03                       	pushq	$3
100005162: 68 00 02 00 00              	pushq	$512
100005167: 68 00 02 00 00              	pushq	$512
10000516c: 6a 01                       	pushq	$1
10000516e: e8 cd d8 ff ff              	callq	-10035 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005173: 48 83 c4 30                 	addq	$48, %rsp
100005177: 48 89 df                    	movq	%rbx, %rdi
10000517a: e8 a1 fc ff ff              	callq	-863 <__ZN14ModelInterface11swap_bufferEv>
10000517f: 48 89 df                    	movq	%rbx, %rdi
100005182: e8 e9 fa ff ff              	callq	-1303 <__ZN14ModelInterface13output_bufferEv>
100005187: 49 89 c6                    	movq	%rax, %r14
10000518a: 48 89 df                    	movq	%rbx, %rdi
10000518d: e8 ce fa ff ff              	callq	-1330 <__ZN14ModelInterface12input_bufferEv>
100005192: 4c 89 f7                    	movq	%r14, %rdi
100005195: 48 89 c6                    	movq	%rax, %rsi
100005198: ba 00 00 08 00              	movl	$524288, %edx
10000519d: e8 8e fc ff ff              	callq	-882 <__Z4ReLUPaS_j>
1000051a2: 48 89 df                    	movq	%rbx, %rdi
1000051a5: e8 76 fc ff ff              	callq	-906 <__ZN14ModelInterface11swap_bufferEv>
1000051aa: 48 89 df                    	movq	%rbx, %rdi
1000051ad: e8 be fa ff ff              	callq	-1346 <__ZN14ModelInterface13output_bufferEv>
1000051b2: 49 89 c6                    	movq	%rax, %r14
1000051b5: 48 89 df                    	movq	%rbx, %rdi
1000051b8: e8 a3 fa ff ff              	callq	-1373 <__ZN14ModelInterface12input_bufferEv>
1000051bd: 48 83 ec 08                 	subq	$8, %rsp
1000051c1: 48 8d 15 80 21 00 00        	leaq	8576(%rip), %rdx
1000051c8: 48 8d 0d 81 21 00 00        	leaq	8577(%rip), %rcx
1000051cf: 4c 89 f7                    	movq	%r14, %rdi
1000051d2: 48 89 c6                    	movq	%rax, %rsi
1000051d5: 41 b8 37 00 00 00           	movl	$55, %r8d
1000051db: 41 b9 08 00 00 00           	movl	$8, %r9d
1000051e1: 6a 02                       	pushq	$2
1000051e3: 6a 03                       	pushq	$3
1000051e5: 68 00 01 00 00              	pushq	$256
1000051ea: 68 00 01 00 00              	pushq	$256
1000051ef: 6a 08                       	pushq	$8
1000051f1: e8 4a d8 ff ff              	callq	-10166 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
1000051f6: 48 83 c4 30                 	addq	$48, %rsp
1000051fa: 48 89 df                    	movq	%rbx, %rdi
1000051fd: e8 1e fc ff ff              	callq	-994 <__ZN14ModelInterface11swap_bufferEv>
100005202: 48 89 df                    	movq	%rbx, %rdi
100005205: e8 66 fa ff ff              	callq	-1434 <__ZN14ModelInterface13output_bufferEv>
10000520a: 49 89 c6                    	movq	%rax, %r14
10000520d: 48 89 df                    	movq	%rbx, %rdi
100005210: e8 4b fa ff ff              	callq	-1461 <__ZN14ModelInterface12input_bufferEv>
100005215: 4c 89 f7                    	movq	%r14, %rdi
100005218: 48 89 c6                    	movq	%rax, %rsi
10000521b: ba 00 00 02 00              	movl	$131072, %edx
100005220: e8 0b fc ff ff              	callq	-1013 <__Z4ReLUPaS_j>
100005225: 48 89 df                    	movq	%rbx, %rdi
100005228: e8 f3 fb ff ff              	callq	-1037 <__ZN14ModelInterface11swap_bufferEv>
10000522d: 48 89 df                    	movq	%rbx, %rdi
100005230: e8 3b fa ff ff              	callq	-1477 <__ZN14ModelInterface13output_bufferEv>
100005235: 49 89 c6                    	movq	%rax, %r14
100005238: 48 89 df                    	movq	%rbx, %rdi
10000523b: e8 20 fa ff ff              	callq	-1504 <__ZN14ModelInterface12input_bufferEv>
100005240: 48 83 ec 08                 	subq	$8, %rsp
100005244: 48 8d 15 45 23 00 00        	leaq	9029(%rip), %rdx
10000524b: 48 8d 0d 4e 23 00 00        	leaq	9038(%rip), %rcx
100005252: 4c 89 f7                    	movq	%r14, %rdi
100005255: 48 89 c6                    	movq	%rax, %rsi
100005258: 41 b8 39 00 00 00           	movl	$57, %r8d
10000525e: 41 b9 10 00 00 00           	movl	$16, %r9d
100005264: 6a 02                       	pushq	$2
100005266: 6a 03                       	pushq	$3
100005268: 68 80 00 00 00              	pushq	$128
10000526d: 68 80 00 00 00              	pushq	$128
100005272: 6a 08                       	pushq	$8
100005274: e8 c7 d7 ff ff              	callq	-10297 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005279: 48 83 c4 30                 	addq	$48, %rsp
10000527d: 48 89 df                    	movq	%rbx, %rdi
100005280: e8 9b fb ff ff              	callq	-1125 <__ZN14ModelInterface11swap_bufferEv>
100005285: 48 89 df                    	movq	%rbx, %rdi
100005288: e8 e3 f9 ff ff              	callq	-1565 <__ZN14ModelInterface13output_bufferEv>
10000528d: 49 89 c6                    	movq	%rax, %r14
100005290: 48 89 df                    	movq	%rbx, %rdi
100005293: e8 c8 f9 ff ff              	callq	-1592 <__ZN14ModelInterface12input_bufferEv>
100005298: 4c 89 f7                    	movq	%r14, %rdi
10000529b: 48 89 c6                    	movq	%rax, %rsi
10000529e: ba 00 00 01 00              	movl	$65536, %edx
1000052a3: e8 88 fb ff ff              	callq	-1144 <__Z4ReLUPaS_j>
1000052a8: 48 89 df                    	movq	%rbx, %rdi
1000052ab: e8 70 fb ff ff              	callq	-1168 <__ZN14ModelInterface11swap_bufferEv>
1000052b0: 48 89 df                    	movq	%rbx, %rdi
1000052b3: e8 b8 f9 ff ff              	callq	-1608 <__ZN14ModelInterface13output_bufferEv>
1000052b8: 49 89 c6                    	movq	%rax, %r14
1000052bb: 48 89 df                    	movq	%rbx, %rdi
1000052be: e8 9d f9 ff ff              	callq	-1635 <__ZN14ModelInterface12input_bufferEv>
1000052c3: 48 83 ec 08                 	subq	$8, %rsp
1000052c7: 48 8d 15 52 27 00 00        	leaq	10066(%rip), %rdx
1000052ce: 48 8d 0d 6b 27 00 00        	leaq	10091(%rip), %rcx
1000052d5: 4c 89 f7                    	movq	%r14, %rdi
1000052d8: 48 89 c6                    	movq	%rax, %rsi
1000052db: 41 b8 30 00 00 00           	movl	$48, %r8d
1000052e1: 41 b9 20 00 00 00           	movl	$32, %r9d
1000052e7: 6a 02                       	pushq	$2
1000052e9: 6a 03                       	pushq	$3
1000052eb: 6a 40                       	pushq	$64
1000052ed: 6a 40                       	pushq	$64
1000052ef: 6a 10                       	pushq	$16
1000052f1: e8 4a d7 ff ff              	callq	-10422 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
1000052f6: 48 83 c4 30                 	addq	$48, %rsp
1000052fa: 48 89 df                    	movq	%rbx, %rdi
1000052fd: e8 1e fb ff ff              	callq	-1250 <__ZN14ModelInterface11swap_bufferEv>
100005302: 48 89 df                    	movq	%rbx, %rdi
100005305: e8 66 f9 ff ff              	callq	-1690 <__ZN14ModelInterface13output_bufferEv>
10000530a: 49 89 c6                    	movq	%rax, %r14
10000530d: 48 89 df                    	movq	%rbx, %rdi
100005310: e8 4b f9 ff ff              	callq	-1717 <__ZN14ModelInterface12input_bufferEv>
100005315: 4c 89 f7                    	movq	%r14, %rdi
100005318: 48 89 c6                    	movq	%rax, %rsi
10000531b: ba 00 80 00 00              	movl	$32768, %edx
100005320: e8 0b fb ff ff              	callq	-1269 <__Z4ReLUPaS_j>
100005325: 48 89 df                    	movq	%rbx, %rdi
100005328: e8 f3 fa ff ff              	callq	-1293 <__ZN14ModelInterface11swap_bufferEv>
10000532d: 48 89 df                    	movq	%rbx, %rdi
100005330: e8 3b f9 ff ff              	callq	-1733 <__ZN14ModelInterface13output_bufferEv>
100005335: 49 89 c6                    	movq	%rax, %r14
100005338: 48 89 df                    	movq	%rbx, %rdi
10000533b: e8 20 f9 ff ff              	callq	-1760 <__ZN14ModelInterface12input_bufferEv>
100005340: 48 83 ec 08                 	subq	$8, %rsp
100005344: 48 8d 15 f5 38 00 00        	leaq	14581(%rip), %rdx
10000534b: 48 8d 0d fe 38 00 00        	leaq	14590(%rip), %rcx
100005352: 4c 89 f7                    	movq	%r14, %rdi
100005355: 48 89 c6                    	movq	%rax, %rsi
100005358: 41 b8 20 00 00 00           	movl	$32, %r8d
10000535e: 41 b9 01 00 00 00           	movl	$1, %r9d
100005364: 6a 01                       	pushq	$1
100005366: 6a 01                       	pushq	$1
100005368: 6a 20                       	pushq	$32
10000536a: 6a 20                       	pushq	$32
10000536c: 6a 20                       	pushq	$32
10000536e: e8 cd d6 ff ff              	callq	-10547 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005373: 48 83 c4 30                 	addq	$48, %rsp
100005377: 48 89 df                    	movq	%rbx, %rdi
10000537a: e8 a1 fa ff ff              	callq	-1375 <__ZN14ModelInterface11swap_bufferEv>
10000537f: 48 89 df                    	movq	%rbx, %rdi
100005382: 5b                          	popq	%rbx
100005383: 41 5e                       	popq	%r14
100005385: 5d                          	popq	%rbp
100005386: e9 95 fa ff ff              	jmp	-1387 <__ZN14ModelInterface11swap_bufferEv>
10000538b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005390 __ZN11LineNetworkD1Ev:
100005390: 55                          	pushq	%rbp
100005391: 48 89 e5                    	movq	%rsp, %rbp
100005394: 5d                          	popq	%rbp
100005395: e9 f6 f7 ff ff              	jmp	-2058 <__ZN14ModelInterfaceD2Ev>
10000539a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000053a0 __ZN11LineNetworkD0Ev:
1000053a0: 55                          	pushq	%rbp
1000053a1: 48 89 e5                    	movq	%rsp, %rbp
1000053a4: 53                          	pushq	%rbx
1000053a5: 50                          	pushq	%rax
1000053a6: 48 89 fb                    	movq	%rdi, %rbx
1000053a9: e8 e2 f7 ff ff              	callq	-2078 <__ZN14ModelInterfaceD2Ev>
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
1000055ed: e8 6e f6 ff ff              	callq	-2450 <__ZN14ModelInterface12input_bufferEv>
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
1000056e3: e8 88 f5 ff ff              	callq	-2680 <__ZN14ModelInterface13output_bufferEv>
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
100005a52: e8 69 f6 ff ff              	callq	-2455 <__ZN11LineNetworkC1Ev>
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
100006964: e8 27 e2 ff ff              	callq	-7641 <__ZN14ModelInterfaceD2Ev>
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
100006ca0: e8 eb de ff ff              	callq	-8469 <__ZN14ModelInterfaceD2Ev>
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
