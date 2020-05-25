
bin/embedded_neural_nework_test.elf:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100001dd0 __Z10dot_kernelPKaS0_j:
100001dd0: 55                          	pushq	%rbp
100001dd1: 48 89 e5                    	movq	%rsp, %rbp
100001dd4: 41 56                       	pushq	%r14
100001dd6: 53                          	pushq	%rbx
100001dd7: 31 c0                       	xorl	%eax, %eax
100001dd9: 83 fa 20                    	cmpl	$32, %edx
100001ddc: 0f 82 9b 04 00 00           	jb	1179 <__Z10dot_kernelPKaS0_j+0x4ad>
100001de2: 83 c2 e0                    	addl	$-32, %edx
100001de5: 89 d0                       	movl	%edx, %eax
100001de7: c1 e8 05                    	shrl	$5, %eax
100001dea: 44 8d 48 01                 	leal	1(%rax), %r9d
100001dee: 45 89 c8                    	movl	%r9d, %r8d
100001df1: 41 83 e0 01                 	andl	$1, %r8d
100001df5: 85 c0                       	testl	%eax, %eax
100001df7: 0f 84 02 07 00 00           	je	1794 <__Z10dot_kernelPKaS0_j+0x72f>
100001dfd: 45 29 c1                    	subl	%r8d, %r9d
100001e00: 31 c9                       	xorl	%ecx, %ecx
100001e02: 31 c0                       	xorl	%eax, %eax
100001e04: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001e0e: 66 90                       	nop
100001e10: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100001e17: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
100001e1e: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100001e24: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
100001e2b: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
100001e32: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100001e37: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
100001e3e: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100001e43: c4 e2 7d 21 24 0e           	vpmovsxbd	(%rsi,%rcx), %ymm4
100001e49: c4 e2 5d 40 d2              	vpmulld	%ymm2, %ymm4, %ymm2
100001e4e: c4 e2 7d 21 64 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm4
100001e55: c4 e2 5d 40 db              	vpmulld	%ymm3, %ymm4, %ymm3
100001e5a: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100001e5e: c5 ed fe cb                 	vpaddd	%ymm3, %ymm2, %ymm1
100001e62: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100001e66: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100001e6c: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001e70: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100001e75: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001e79: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100001e7e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001e82: c4 c1 79 7e c2              	vmovd	%xmm0, %r10d
100001e87: c4 e2 7d 21 44 0f 28        	vpmovsxbd	40(%rdi,%rcx), %ymm0
100001e8e: c4 e2 7d 21 4c 0f 38        	vpmovsxbd	56(%rdi,%rcx), %ymm1
100001e95: c4 e2 7d 21 54 0f 20        	vpmovsxbd	32(%rdi,%rcx), %ymm2
100001e9c: c4 e2 7d 21 5c 0f 30        	vpmovsxbd	48(%rdi,%rcx), %ymm3
100001ea3: c4 e2 7d 21 64 0e 28        	vpmovsxbd	40(%rsi,%rcx), %ymm4
100001eaa: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100001eaf: c4 e2 7d 21 64 0e 38        	vpmovsxbd	56(%rsi,%rcx), %ymm4
100001eb6: 41 01 c2                    	addl	%eax, %r10d
100001eb9: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100001ebe: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100001ec2: c4 e2 7d 21 4c 0e 20        	vpmovsxbd	32(%rsi,%rcx), %ymm1
100001ec9: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
100001ece: c4 e2 7d 21 54 0e 30        	vpmovsxbd	48(%rsi,%rcx), %ymm2
100001ed5: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
100001eda: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
100001ede: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100001ee2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100001ee8: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001eec: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100001ef1: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001ef5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100001efa: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001efe: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100001f02: 44 01 d0                    	addl	%r10d, %eax
100001f05: 48 83 c1 40                 	addq	$64, %rcx
100001f09: 41 83 c1 fe                 	addl	$-2, %r9d
100001f0d: 0f 85 fd fe ff ff           	jne	-259 <__Z10dot_kernelPKaS0_j+0x40>
100001f13: 41 89 d3                    	movl	%edx, %r11d
100001f16: 41 83 e3 e0                 	andl	$-32, %r11d
100001f1a: 45 85 c0                    	testl	%r8d, %r8d
100001f1d: 74 78                       	je	120 <__Z10dot_kernelPKaS0_j+0x1c7>
100001f1f: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100001f26: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
100001f2d: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100001f33: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
100001f3a: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
100001f41: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100001f46: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
100001f4d: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100001f52: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100001f56: c4 e2 7d 21 0c 0e           	vpmovsxbd	(%rsi,%rcx), %ymm1
100001f5c: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
100001f61: c4 e2 7d 21 54 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm2
100001f68: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
100001f6d: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
100001f71: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100001f75: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100001f7b: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001f7f: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100001f84: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001f88: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100001f8d: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100001f91: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100001f95: 01 c8                       	addl	%ecx, %eax
100001f97: 44 29 da                    	subl	%r11d, %edx
100001f9a: 41 83 c3 20                 	addl	$32, %r11d
100001f9e: 83 fa 10                    	cmpl	$16, %edx
100001fa1: 0f 83 e2 02 00 00           	jae	738 <__Z10dot_kernelPKaS0_j+0x4b9>
100001fa7: 45 89 d9                    	movl	%r11d, %r9d
100001faa: 83 fa 08                    	cmpl	$8, %edx
100001fad: 0f 83 65 04 00 00           	jae	1125 <__Z10dot_kernelPKaS0_j+0x648>
100001fb3: 45 89 c8                    	movl	%r9d, %r8d
100001fb6: 85 d2                       	testl	%edx, %edx
100001fb8: 0f 84 39 05 00 00           	je	1337 <__Z10dot_kernelPKaS0_j+0x727>
100001fbe: 83 fa 1f                    	cmpl	$31, %edx
100001fc1: 0f 86 ba 01 00 00           	jbe	442 <__Z10dot_kernelPKaS0_j+0x3b1>
100001fc7: 8d 4a ff                    	leal	-1(%rdx), %ecx
100001fca: 44 89 c3                    	movl	%r8d, %ebx
100001fcd: f7 d3                       	notl	%ebx
100001fcf: 39 d9                       	cmpl	%ebx, %ecx
100001fd1: 0f 87 aa 01 00 00           	ja	426 <__Z10dot_kernelPKaS0_j+0x3b1>
100001fd7: 41 89 d1                    	movl	%edx, %r9d
100001fda: 41 83 e1 e0                 	andl	$-32, %r9d
100001fde: c5 79 6e c0                 	vmovd	%eax, %xmm8
100001fe2: 41 8d 41 e0                 	leal	-32(%r9), %eax
100001fe6: 89 c1                       	movl	%eax, %ecx
100001fe8: c1 e9 05                    	shrl	$5, %ecx
100001feb: ff c1                       	incl	%ecx
100001fed: 41 89 ca                    	movl	%ecx, %r10d
100001ff0: 41 83 e2 01                 	andl	$1, %r10d
100001ff4: 85 c0                       	testl	%eax, %eax
100001ff6: 0f 84 1c 05 00 00           	je	1308 <__Z10dot_kernelPKaS0_j+0x748>
100001ffc: 44 29 d1                    	subl	%r10d, %ecx
100001fff: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100002003: 45 31 db                    	xorl	%r11d, %r11d
100002006: 44 89 c0                    	movl	%r8d, %eax
100002009: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
10000200d: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
100002012: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000201c: 0f 1f 40 00                 	nopl	(%rax)
100002020: 89 c3                       	movl	%eax, %ebx
100002022: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
100002028: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
10000202f: c4 e2 79 20 74 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm6
100002036: c4 e2 79 20 7c 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm7
10000203d: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
100002043: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
100002047: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
10000204e: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
100002052: c4 e2 79 20 6c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm5
100002059: c5 d1 f5 ee                 	vpmaddwd	%xmm6, %xmm5, %xmm5
10000205d: c4 e2 79 20 74 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm6
100002064: c5 c9 f5 f7                 	vpmaddwd	%xmm7, %xmm6, %xmm6
100002068: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
10000206d: c5 5d fe d1                 	vpaddd	%ymm1, %ymm4, %ymm10
100002071: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
100002075: 8d 58 20                    	leal	32(%rax), %ebx
100002078: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
10000207e: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
100002085: c4 e2 79 20 7c 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm7
10000208c: c4 e2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm2
100002093: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
100002099: c4 c1 4d fe f1              	vpaddd	%ymm9, %ymm6, %ymm6
10000209e: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
1000020a2: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
1000020a9: c4 e2 79 20 4c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm1
1000020b0: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
1000020b4: c5 f1 f5 ef                 	vpmaddwd	%xmm7, %xmm1, %xmm5
1000020b8: c4 e2 79 20 4c 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm1
1000020bf: c5 f1 f5 d2                 	vpmaddwd	%xmm2, %xmm1, %xmm2
1000020c3: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
1000020c8: c4 c1 5d fe ca              	vpaddd	%ymm10, %ymm4, %ymm1
1000020cd: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
1000020d1: c5 6d fe ce                 	vpaddd	%ymm6, %ymm2, %ymm9
1000020d5: 41 83 c3 40                 	addl	$64, %r11d
1000020d9: 83 c0 40                    	addl	$64, %eax
1000020dc: 83 c1 fe                    	addl	$-2, %ecx
1000020df: 0f 85 3b ff ff ff           	jne	-197 <__Z10dot_kernelPKaS0_j+0x250>
1000020e5: 45 85 d2                    	testl	%r10d, %r10d
1000020e8: 74 5b                       	je	91 <__Z10dot_kernelPKaS0_j+0x375>
1000020ea: 45 01 c3                    	addl	%r8d, %r11d
1000020ed: c4 a2 79 20 44 1e 18        	vpmovsxbw	24(%rsi,%r11), %xmm0
1000020f4: c4 a2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%r11), %xmm2
1000020fb: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
1000020ff: c4 41 7d fe c9              	vpaddd	%ymm9, %ymm0, %ymm9
100002104: c4 a2 79 20 44 1e 10        	vpmovsxbw	16(%rsi,%r11), %xmm0
10000210b: c4 a2 79 20 54 1f 10        	vpmovsxbw	16(%rdi,%r11), %xmm2
100002112: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
100002116: c5 fd fe db                 	vpaddd	%ymm3, %ymm0, %ymm3
10000211a: c4 a2 79 20 44 1e 08        	vpmovsxbw	8(%rsi,%r11), %xmm0
100002121: c4 a2 79 20 54 1f 08        	vpmovsxbw	8(%rdi,%r11), %xmm2
100002128: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
10000212c: c5 fd fe c9                 	vpaddd	%ymm1, %ymm0, %ymm1
100002130: c4 a2 79 20 04 1e           	vpmovsxbw	(%rsi,%r11), %xmm0
100002136: c4 a2 79 20 14 1f           	vpmovsxbw	(%rdi,%r11), %xmm2
10000213c: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
100002140: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
100002145: c4 c1 75 fe c1              	vpaddd	%ymm9, %ymm1, %ymm0
10000214a: c5 bd fe cb                 	vpaddd	%ymm3, %ymm8, %ymm1
10000214e: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002152: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002158: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000215c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002161: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002165: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000216a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000216e: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002172: 44 39 ca                    	cmpl	%r9d, %edx
100002175: 0f 84 7c 03 00 00           	je	892 <__Z10dot_kernelPKaS0_j+0x727>
10000217b: 45 01 c8                    	addl	%r9d, %r8d
10000217e: 44 29 ca                    	subl	%r9d, %edx
100002181: 44 8d 4a ff                 	leal	-1(%rdx), %r9d
100002185: 41 89 d2                    	movl	%edx, %r10d
100002188: 41 83 e2 07                 	andl	$7, %r10d
10000218c: 74 21                       	je	33 <__Z10dot_kernelPKaS0_j+0x3df>
10000218e: 31 c9                       	xorl	%ecx, %ecx
100002190: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002194: 44 0f be 1c 1f              	movsbl	(%rdi,%rbx), %r11d
100002199: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000219d: 41 0f af db                 	imull	%r11d, %ebx
1000021a1: 01 d8                       	addl	%ebx, %eax
1000021a3: ff c1                       	incl	%ecx
1000021a5: 41 39 ca                    	cmpl	%ecx, %r10d
1000021a8: 75 e6                       	jne	-26 <__Z10dot_kernelPKaS0_j+0x3c0>
1000021aa: 41 01 c8                    	addl	%ecx, %r8d
1000021ad: 29 ca                       	subl	%ecx, %edx
1000021af: 41 83 f9 07                 	cmpl	$7, %r9d
1000021b3: 0f 82 3e 03 00 00           	jb	830 <__Z10dot_kernelPKaS0_j+0x727>
1000021b9: 31 c9                       	xorl	%ecx, %ecx
1000021bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000021c0: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000021c4: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
1000021c9: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000021cd: 41 0f af d9                 	imull	%r9d, %ebx
1000021d1: 01 c3                       	addl	%eax, %ebx
1000021d3: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
1000021d7: 83 c0 01                    	addl	$1, %eax
1000021da: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
1000021df: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000021e3: 41 0f af c1                 	imull	%r9d, %eax
1000021e7: 01 d8                       	addl	%ebx, %eax
1000021e9: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000021ed: 83 c3 02                    	addl	$2, %ebx
1000021f0: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
1000021f5: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000021f9: 41 0f af d9                 	imull	%r9d, %ebx
1000021fd: 01 c3                       	addl	%eax, %ebx
1000021ff: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
100002203: 83 c0 03                    	addl	$3, %eax
100002206: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
10000220b: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000220f: 41 0f af c1                 	imull	%r9d, %eax
100002213: 01 d8                       	addl	%ebx, %eax
100002215: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002219: 83 c3 04                    	addl	$4, %ebx
10000221c: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002221: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002225: 41 0f af d9                 	imull	%r9d, %ebx
100002229: 01 c3                       	addl	%eax, %ebx
10000222b: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
10000222f: 83 c0 05                    	addl	$5, %eax
100002232: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
100002237: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000223b: 41 0f af c1                 	imull	%r9d, %eax
10000223f: 01 d8                       	addl	%ebx, %eax
100002241: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002245: 83 c3 06                    	addl	$6, %ebx
100002248: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
10000224d: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002251: 41 0f af d9                 	imull	%r9d, %ebx
100002255: 01 c3                       	addl	%eax, %ebx
100002257: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
10000225b: 83 c0 07                    	addl	$7, %eax
10000225e: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
100002263: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002267: 41 0f af c1                 	imull	%r9d, %eax
10000226b: 01 d8                       	addl	%ebx, %eax
10000226d: 83 c1 08                    	addl	$8, %ecx
100002270: 39 ca                       	cmpl	%ecx, %edx
100002272: 0f 85 48 ff ff ff           	jne	-184 <__Z10dot_kernelPKaS0_j+0x3f0>
100002278: e9 7a 02 00 00              	jmp	634 <__Z10dot_kernelPKaS0_j+0x727>
10000227d: 45 31 db                    	xorl	%r11d, %r11d
100002280: 83 fa 10                    	cmpl	$16, %edx
100002283: 0f 82 1e fd ff ff           	jb	-738 <__Z10dot_kernelPKaS0_j+0x1d7>
100002289: 44 8d 42 f0                 	leal	-16(%rdx), %r8d
10000228d: 45 89 c2                    	movl	%r8d, %r10d
100002290: 41 83 e2 f0                 	andl	$-16, %r10d
100002294: 47 8d 0c 13                 	leal	(%r11,%r10), %r9d
100002298: 41 83 c1 10                 	addl	$16, %r9d
10000229c: 0f 1f 40 00                 	nopl	(%rax)
1000022a0: 44 89 d9                    	movl	%r11d, %ecx
1000022a3: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000022a8: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
1000022ac: 41 0f af de                 	imull	%r14d, %ebx
1000022b0: 01 c3                       	addl	%eax, %ebx
1000022b2: 48 89 c8                    	movq	%rcx, %rax
1000022b5: 48 83 c8 01                 	orq	$1, %rax
1000022b9: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000022be: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000022c2: 41 0f af c6                 	imull	%r14d, %eax
1000022c6: 01 d8                       	addl	%ebx, %eax
1000022c8: 48 89 cb                    	movq	%rcx, %rbx
1000022cb: 48 83 cb 02                 	orq	$2, %rbx
1000022cf: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000022d4: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000022d8: 41 0f af de                 	imull	%r14d, %ebx
1000022dc: 01 c3                       	addl	%eax, %ebx
1000022de: 48 89 c8                    	movq	%rcx, %rax
1000022e1: 48 83 c8 03                 	orq	$3, %rax
1000022e5: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000022ea: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000022ee: 41 0f af c6                 	imull	%r14d, %eax
1000022f2: 01 d8                       	addl	%ebx, %eax
1000022f4: 48 89 cb                    	movq	%rcx, %rbx
1000022f7: 48 83 cb 04                 	orq	$4, %rbx
1000022fb: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002300: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002304: 41 0f af de                 	imull	%r14d, %ebx
100002308: 01 c3                       	addl	%eax, %ebx
10000230a: 48 89 c8                    	movq	%rcx, %rax
10000230d: 48 83 c8 05                 	orq	$5, %rax
100002311: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002316: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000231a: 41 0f af c6                 	imull	%r14d, %eax
10000231e: 01 d8                       	addl	%ebx, %eax
100002320: 48 89 cb                    	movq	%rcx, %rbx
100002323: 48 83 cb 06                 	orq	$6, %rbx
100002327: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000232c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002330: 41 0f af de                 	imull	%r14d, %ebx
100002334: 01 c3                       	addl	%eax, %ebx
100002336: 48 89 c8                    	movq	%rcx, %rax
100002339: 48 83 c8 07                 	orq	$7, %rax
10000233d: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002342: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002346: 41 0f af c6                 	imull	%r14d, %eax
10000234a: 01 d8                       	addl	%ebx, %eax
10000234c: 48 89 cb                    	movq	%rcx, %rbx
10000234f: 48 83 cb 08                 	orq	$8, %rbx
100002353: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002358: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000235c: 41 0f af de                 	imull	%r14d, %ebx
100002360: 01 c3                       	addl	%eax, %ebx
100002362: 48 89 c8                    	movq	%rcx, %rax
100002365: 48 83 c8 09                 	orq	$9, %rax
100002369: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000236e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002372: 41 0f af c6                 	imull	%r14d, %eax
100002376: 01 d8                       	addl	%ebx, %eax
100002378: 48 89 cb                    	movq	%rcx, %rbx
10000237b: 48 83 cb 0a                 	orq	$10, %rbx
10000237f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002384: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002388: 41 0f af de                 	imull	%r14d, %ebx
10000238c: 01 c3                       	addl	%eax, %ebx
10000238e: 48 89 c8                    	movq	%rcx, %rax
100002391: 48 83 c8 0b                 	orq	$11, %rax
100002395: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000239a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000239e: 41 0f af c6                 	imull	%r14d, %eax
1000023a2: 01 d8                       	addl	%ebx, %eax
1000023a4: 48 89 cb                    	movq	%rcx, %rbx
1000023a7: 48 83 cb 0c                 	orq	$12, %rbx
1000023ab: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000023b0: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000023b4: 41 0f af de                 	imull	%r14d, %ebx
1000023b8: 01 c3                       	addl	%eax, %ebx
1000023ba: 48 89 c8                    	movq	%rcx, %rax
1000023bd: 48 83 c8 0d                 	orq	$13, %rax
1000023c1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000023c6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000023ca: 41 0f af c6                 	imull	%r14d, %eax
1000023ce: 01 d8                       	addl	%ebx, %eax
1000023d0: 48 89 cb                    	movq	%rcx, %rbx
1000023d3: 48 83 cb 0e                 	orq	$14, %rbx
1000023d7: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000023dc: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000023e0: 41 0f af de                 	imull	%r14d, %ebx
1000023e4: 01 c3                       	addl	%eax, %ebx
1000023e6: 48 83 c9 0f                 	orq	$15, %rcx
1000023ea: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000023ef: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
1000023f3: 41 0f af c6                 	imull	%r14d, %eax
1000023f7: 01 d8                       	addl	%ebx, %eax
1000023f9: 41 83 c3 10                 	addl	$16, %r11d
1000023fd: 83 c2 f0                    	addl	$-16, %edx
100002400: 83 fa 0f                    	cmpl	$15, %edx
100002403: 0f 87 97 fe ff ff           	ja	-361 <__Z10dot_kernelPKaS0_j+0x4d0>
100002409: 45 29 d0                    	subl	%r10d, %r8d
10000240c: 44 89 c2                    	movl	%r8d, %edx
10000240f: 83 fa 08                    	cmpl	$8, %edx
100002412: 0f 82 9b fb ff ff           	jb	-1125 <__Z10dot_kernelPKaS0_j+0x1e3>
100002418: 44 8d 52 f8                 	leal	-8(%rdx), %r10d
10000241c: 45 89 d3                    	movl	%r10d, %r11d
10000241f: 41 83 e3 f8                 	andl	$-8, %r11d
100002423: 47 8d 04 19                 	leal	(%r9,%r11), %r8d
100002427: 41 83 c0 08                 	addl	$8, %r8d
10000242b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002430: 44 89 c9                    	movl	%r9d, %ecx
100002433: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
100002438: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
10000243c: 41 0f af de                 	imull	%r14d, %ebx
100002440: 01 c3                       	addl	%eax, %ebx
100002442: 48 89 c8                    	movq	%rcx, %rax
100002445: 48 83 c8 01                 	orq	$1, %rax
100002449: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000244e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002452: 41 0f af c6                 	imull	%r14d, %eax
100002456: 01 d8                       	addl	%ebx, %eax
100002458: 48 89 cb                    	movq	%rcx, %rbx
10000245b: 48 83 cb 02                 	orq	$2, %rbx
10000245f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002464: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002468: 41 0f af de                 	imull	%r14d, %ebx
10000246c: 01 c3                       	addl	%eax, %ebx
10000246e: 48 89 c8                    	movq	%rcx, %rax
100002471: 48 83 c8 03                 	orq	$3, %rax
100002475: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000247a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000247e: 41 0f af c6                 	imull	%r14d, %eax
100002482: 01 d8                       	addl	%ebx, %eax
100002484: 48 89 cb                    	movq	%rcx, %rbx
100002487: 48 83 cb 04                 	orq	$4, %rbx
10000248b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002490: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002494: 41 0f af de                 	imull	%r14d, %ebx
100002498: 01 c3                       	addl	%eax, %ebx
10000249a: 48 89 c8                    	movq	%rcx, %rax
10000249d: 48 83 c8 05                 	orq	$5, %rax
1000024a1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000024a6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000024aa: 41 0f af c6                 	imull	%r14d, %eax
1000024ae: 01 d8                       	addl	%ebx, %eax
1000024b0: 48 89 cb                    	movq	%rcx, %rbx
1000024b3: 48 83 cb 06                 	orq	$6, %rbx
1000024b7: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000024bc: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000024c0: 41 0f af de                 	imull	%r14d, %ebx
1000024c4: 01 c3                       	addl	%eax, %ebx
1000024c6: 48 83 c9 07                 	orq	$7, %rcx
1000024ca: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000024cf: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
1000024d3: 41 0f af c6                 	imull	%r14d, %eax
1000024d7: 01 d8                       	addl	%ebx, %eax
1000024d9: 41 83 c1 08                 	addl	$8, %r9d
1000024dd: 83 c2 f8                    	addl	$-8, %edx
1000024e0: 83 fa 07                    	cmpl	$7, %edx
1000024e3: 0f 87 47 ff ff ff           	ja	-185 <__Z10dot_kernelPKaS0_j+0x660>
1000024e9: 45 29 da                    	subl	%r11d, %r10d
1000024ec: 44 89 d2                    	movl	%r10d, %edx
1000024ef: 85 d2                       	testl	%edx, %edx
1000024f1: 0f 85 c7 fa ff ff           	jne	-1337 <__Z10dot_kernelPKaS0_j+0x1ee>
1000024f7: 5b                          	popq	%rbx
1000024f8: 41 5e                       	popq	%r14
1000024fa: 5d                          	popq	%rbp
1000024fb: c5 f8 77                    	vzeroupper
1000024fe: c3                          	retq
1000024ff: 31 c9                       	xorl	%ecx, %ecx
100002501: 31 c0                       	xorl	%eax, %eax
100002503: 41 89 d3                    	movl	%edx, %r11d
100002506: 41 83 e3 e0                 	andl	$-32, %r11d
10000250a: 45 85 c0                    	testl	%r8d, %r8d
10000250d: 0f 85 0c fa ff ff           	jne	-1524 <__Z10dot_kernelPKaS0_j+0x14f>
100002513: e9 7f fa ff ff              	jmp	-1409 <__Z10dot_kernelPKaS0_j+0x1c7>
100002518: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
10000251c: 45 31 db                    	xorl	%r11d, %r11d
10000251f: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
100002523: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
100002528: 45 85 d2                    	testl	%r10d, %r10d
10000252b: 0f 85 b9 fb ff ff           	jne	-1095 <__Z10dot_kernelPKaS0_j+0x31a>
100002531: e9 0f fc ff ff              	jmp	-1009 <__Z10dot_kernelPKaS0_j+0x375>
100002536: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100002540 __Z6LinearPaS_PKaS1_ajj:
100002540: 55                          	pushq	%rbp
100002541: 48 89 e5                    	movq	%rsp, %rbp
100002544: 41 57                       	pushq	%r15
100002546: 41 56                       	pushq	%r14
100002548: 41 55                       	pushq	%r13
10000254a: 41 54                       	pushq	%r12
10000254c: 53                          	pushq	%rbx
10000254d: 48 83 ec 28                 	subq	$40, %rsp
100002551: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002555: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100002559: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000255d: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100002561: 8b 45 10                    	movl	16(%rbp), %eax
100002564: 85 c0                       	testl	%eax, %eax
100002566: 74 71                       	je	113 <__Z6LinearPaS_PKaS1_ajj+0x99>
100002568: 44 89 cb                    	movl	%r9d, %ebx
10000256b: 45 0f be f0                 	movsbl	%r8b, %r14d
10000256f: 41 89 c7                    	movl	%eax, %r15d
100002572: 45 31 e4                    	xorl	%r12d, %r12d
100002575: 45 31 ed                    	xorl	%r13d, %r13d
100002578: eb 19                       	jmp	25 <__Z6LinearPaS_PKaS1_ajj+0x53>
10000257a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100002580: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100002584: 42 88 04 29                 	movb	%al, (%rcx,%r13)
100002588: 49 ff c5                    	incq	%r13
10000258b: 41 01 dc                    	addl	%ebx, %r12d
10000258e: 4d 39 ef                    	cmpq	%r13, %r15
100002591: 74 46                       	je	70 <__Z6LinearPaS_PKaS1_ajj+0x99>
100002593: 44 89 e6                    	movl	%r12d, %esi
100002596: 48 03 75 b8                 	addq	-72(%rbp), %rsi
10000259a: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
10000259e: 89 da                       	movl	%ebx, %edx
1000025a0: e8 2b f8 ff ff              	callq	-2005 <__Z10dot_kernelPKaS0_j>
1000025a5: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000025a9: 42 0f be 0c 29              	movsbl	(%rcx,%r13), %ecx
1000025ae: 01 c1                       	addl	%eax, %ecx
1000025b0: 41 0f af ce                 	imull	%r14d, %ecx
1000025b4: 89 c8                       	movl	%ecx, %eax
1000025b6: c1 f8 1f                    	sarl	$31, %eax
1000025b9: c1 e8 12                    	shrl	$18, %eax
1000025bc: 01 c8                       	addl	%ecx, %eax
1000025be: c1 f8 0e                    	sarl	$14, %eax
1000025c1: 3d 80 00 00 00              	cmpl	$128, %eax
1000025c6: 7c 05                       	jl	5 <__Z6LinearPaS_PKaS1_ajj+0x8d>
1000025c8: b8 7f 00 00 00              	movl	$127, %eax
1000025cd: 83 f8 81                    	cmpl	$-127, %eax
1000025d0: 7f ae                       	jg	-82 <__Z6LinearPaS_PKaS1_ajj+0x40>
1000025d2: b8 81 00 00 00              	movl	$129, %eax
1000025d7: eb a7                       	jmp	-89 <__Z6LinearPaS_PKaS1_ajj+0x40>
1000025d9: 48 83 c4 28                 	addq	$40, %rsp
1000025dd: 5b                          	popq	%rbx
1000025de: 41 5c                       	popq	%r12
1000025e0: 41 5d                       	popq	%r13
1000025e2: 41 5e                       	popq	%r14
1000025e4: 41 5f                       	popq	%r15
1000025e6: 5d                          	popq	%rbp
1000025e7: c3                          	retq
1000025e8: 90                          	nop
1000025e9: 90                          	nop
1000025ea: 90                          	nop
1000025eb: 90                          	nop
1000025ec: 90                          	nop
1000025ed: 90                          	nop
1000025ee: 90                          	nop
1000025ef: 90                          	nop

00000001000025f0 __Z6Conv2dPaS_PKaS1_ijjjjjj:
1000025f0: 55                          	pushq	%rbp
1000025f1: 48 89 e5                    	movq	%rsp, %rbp
1000025f4: 41 57                       	pushq	%r15
1000025f6: 41 56                       	pushq	%r14
1000025f8: 41 55                       	pushq	%r13
1000025fa: 41 54                       	pushq	%r12
1000025fc: 53                          	pushq	%rbx
1000025fd: 48 83 ec 68                 	subq	$104, %rsp
100002601: 44 89 4d d4                 	movl	%r9d, -44(%rbp)
100002605: 44 89 45 d0                 	movl	%r8d, -48(%rbp)
100002609: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
10000260d: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
100002611: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
100002615: 48 89 7d a8                 	movq	%rdi, -88(%rbp)
100002619: 8b 4d 28                    	movl	40(%rbp), %ecx
10000261c: 8b 5d 18                    	movl	24(%rbp), %ebx
10000261f: 8b 45 10                    	movl	16(%rbp), %eax
100002622: 83 f9 03                    	cmpl	$3, %ecx
100002625: 0f 84 24 01 00 00           	je	292 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x15f>
10000262b: 48 89 5d c8                 	movq	%rbx, -56(%rbp)
10000262f: 83 f9 01                    	cmpl	$1, %ecx
100002632: 0f 85 f3 09 00 00           	jne	2547 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002638: 8d 48 ff                    	leal	-1(%rax), %ecx
10000263b: 8b 55 d4                    	movl	-44(%rbp), %edx
10000263e: 48 89 55 80                 	movq	%rdx, -128(%rbp)
100002642: 83 f9 1f                    	cmpl	$31, %ecx
100002645: 0f 87 4f 01 00 00           	ja	335 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x1aa>
10000264b: 48 8d 05 6e 0a 00 00        	leaq	2670(%rip), %rax
100002652: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002656: 48 01 c1                    	addq	%rax, %rcx
100002659: ff e1                       	jmpq	*%rcx
10000265b: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
10000265f: 0f 84 c6 09 00 00           	je	2502 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002665: 8b 45 30                    	movl	48(%rbp), %eax
100002668: 89 c1                       	movl	%eax, %ecx
10000266a: d1 e9                       	shrl	%ecx
10000266c: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002670: 89 4d 90                    	movl	%ecx, -112(%rbp)
100002673: 29 c8                       	subl	%ecx, %eax
100002675: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002679: 0f 84 ac 09 00 00           	je	2476 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
10000267f: 8b 45 20                    	movl	32(%rbp), %eax
100002682: 41 89 c7                    	movl	%eax, %r15d
100002685: 44 2b 7d 90                 	subl	-112(%rbp), %r15d
100002689: 0f 84 d9 08 00 00           	je	2265 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x978>
10000268f: 31 d2                       	xorl	%edx, %edx
100002691: 8b 4d 30                    	movl	48(%rbp), %ecx
100002694: f7 f1                       	divl	%ecx
100002696: 89 45 c4                    	movl	%eax, -60(%rbp)
100002699: 31 f6                       	xorl	%esi, %esi
10000269b: 41 bb 7f 00 00 00           	movl	$127, %r11d
1000026a1: 41 be 81 00 00 00           	movl	$129, %r14d
1000026a7: 44 8b 45 d4                 	movl	-44(%rbp), %r8d
1000026ab: 44 8b 65 d0                 	movl	-48(%rbp), %r12d
1000026af: 4c 8b 4d a0                 	movq	-96(%rbp), %r9
1000026b3: 4c 8b 55 a8                 	movq	-88(%rbp), %r10
1000026b7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000026c0: 31 c0                       	xorl	%eax, %eax
1000026c2: 44 8b 6d 30                 	movl	48(%rbp), %r13d
1000026c6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000026d0: 89 45 b0                    	movl	%eax, -80(%rbp)
1000026d3: 31 d2                       	xorl	%edx, %edx
1000026d5: 41 f7 f5                    	divl	%r13d
1000026d8: 89 c7                       	movl	%eax, %edi
1000026da: 8b 45 90                    	movl	-112(%rbp), %eax
1000026dd: 29 c7                       	subl	%eax, %edi
1000026df: 0f af 7d c4                 	imull	-60(%rbp), %edi
1000026e3: 29 c7                       	subl	%eax, %edi
1000026e5: 31 db                       	xorl	%ebx, %ebx
1000026e7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000026f0: 41 0f be 04 31              	movsbl	(%r9,%rsi), %eax
1000026f5: 41 0f af c4                 	imull	%r12d, %eax
1000026f9: 89 c1                       	movl	%eax, %ecx
1000026fb: c1 f9 1f                    	sarl	$31, %ecx
1000026fe: c1 e9 12                    	shrl	$18, %ecx
100002701: 01 c1                       	addl	%eax, %ecx
100002703: c1 f9 0e                    	sarl	$14, %ecx
100002706: 81 f9 80 00 00 00           	cmpl	$128, %ecx
10000270c: 41 0f 4d cb                 	cmovgel	%r11d, %ecx
100002710: 89 d8                       	movl	%ebx, %eax
100002712: 31 d2                       	xorl	%edx, %edx
100002714: 41 f7 f5                    	divl	%r13d
100002717: 01 f8                       	addl	%edi, %eax
100002719: 41 0f af c0                 	imull	%r8d, %eax
10000271d: 01 f0                       	addl	%esi, %eax
10000271f: 83 f9 81                    	cmpl	$-127, %ecx
100002722: 41 0f 4e ce                 	cmovlel	%r14d, %ecx
100002726: 41 88 0c 02                 	movb	%cl, (%r10,%rax)
10000272a: 44 01 eb                    	addl	%r13d, %ebx
10000272d: 44 39 fb                    	cmpl	%r15d, %ebx
100002730: 72 be                       	jb	-66 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x100>
100002732: 8b 45 b0                    	movl	-80(%rbp), %eax
100002735: 44 01 e8                    	addl	%r13d, %eax
100002738: 3b 45 c8                    	cmpl	-56(%rbp), %eax
10000273b: 72 93                       	jb	-109 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
10000273d: 48 ff c6                    	incq	%rsi
100002740: 48 3b 75 80                 	cmpq	-128(%rbp), %rsi
100002744: 0f 85 76 ff ff ff           	jne	-138 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xd0>
10000274a: e9 dc 08 00 00              	jmp	2268 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
10000274f: 8d 48 ff                    	leal	-1(%rax), %ecx
100002752: 83 f9 1f                    	cmpl	$31, %ecx
100002755: 0f 87 c0 01 00 00           	ja	448 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x32b>
10000275b: 48 8d 05 de 08 00 00        	leaq	2270(%rip), %rax
100002762: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002766: 48 01 c1                    	addq	%rax, %rcx
100002769: ff e1                       	jmpq	*%rcx
10000276b: 48 83 ec 08                 	subq	$8, %rsp
10000276f: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002773: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002777: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000277b: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
10000277f: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002783: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002787: 8b 45 30                    	movl	48(%rbp), %eax
10000278a: 50                          	pushq	%rax
10000278b: 8b 45 20                    	movl	32(%rbp), %eax
10000278e: 50                          	pushq	%rax
10000278f: 53                          	pushq	%rbx
100002790: e8 8b 0b 00 00              	callq	2955 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj>
100002795: e9 c2 07 00 00              	jmp	1986 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
10000279a: 83 f8 40                    	cmpl	$64, %eax
10000279d: 0f 85 88 08 00 00           	jne	2184 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
1000027a3: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000027a7: 0f 84 7e 08 00 00           	je	2174 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
1000027ad: 8b 45 30                    	movl	48(%rbp), %eax
1000027b0: 89 c1                       	movl	%eax, %ecx
1000027b2: d1 e9                       	shrl	%ecx
1000027b4: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000027b8: 89 4d c4                    	movl	%ecx, -60(%rbp)
1000027bb: 29 c8                       	subl	%ecx, %eax
1000027bd: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000027c1: 0f 84 64 08 00 00           	je	2148 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
1000027c7: 8b 45 20                    	movl	32(%rbp), %eax
1000027ca: 48 89 c1                    	movq	%rax, %rcx
1000027cd: 41 89 cb                    	movl	%ecx, %r11d
1000027d0: 44 2b 5d c4                 	subl	-60(%rbp), %r11d
1000027d4: 8b 45 30                    	movl	48(%rbp), %eax
1000027d7: 89 c2                       	movl	%eax, %edx
1000027d9: 0f af d1                    	imull	%ecx, %edx
1000027dc: c1 e2 06                    	shll	$6, %edx
1000027df: 89 55 c0                    	movl	%edx, -64(%rbp)
1000027e2: 89 c7                       	movl	%eax, %edi
1000027e4: c1 e7 06                    	shll	$6, %edi
1000027e7: 45 31 c0                    	xorl	%r8d, %r8d
1000027ea: 89 bd 78 ff ff ff           	movl	%edi, -136(%rbp)
1000027f0: 44 89 5d 88                 	movl	%r11d, -120(%rbp)
1000027f4: 45 85 db                    	testl	%r11d, %r11d
1000027f7: 75 1d                       	jne	29 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x226>
1000027f9: e9 06 01 00 00              	jmp	262 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x314>
1000027fe: 66 90                       	nop
100002800: 49 ff c0                    	incq	%r8
100002803: 4c 3b 45 80                 	cmpq	-128(%rbp), %r8
100002807: 0f 84 1e 08 00 00           	je	2078 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
10000280d: 45 85 db                    	testl	%r11d, %r11d
100002810: 0f 84 ee 00 00 00           	je	238 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x314>
100002816: 45 89 c4                    	movl	%r8d, %r12d
100002819: 41 c1 e4 06                 	shll	$6, %r12d
10000281d: 48 8b 45 98                 	movq	-104(%rbp), %rax
100002821: 4a 8d 34 20                 	leaq	(%rax,%r12), %rsi
100002825: 45 31 ed                    	xorl	%r13d, %r13d
100002828: 45 31 ff                    	xorl	%r15d, %r15d
10000282b: 48 89 75 90                 	movq	%rsi, -112(%rbp)
10000282f: 90                          	nop
100002830: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100002834: 45 31 f6                    	xorl	%r14d, %r14d
100002837: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002840: 44 89 ef                    	movl	%r13d, %edi
100002843: 48 03 7d b0                 	addq	-80(%rbp), %rdi
100002847: 44 89 fb                    	movl	%r15d, %ebx
10000284a: 4d 89 c7                    	movq	%r8, %r15
10000284d: e8 7e 19 00 00              	callq	6526 <__Z11microkernelILj1ELj64EasET2_PKT1_S3_>
100002852: 41 b9 81 00 00 00           	movl	$129, %r9d
100002858: ba 7f 00 00 00              	movl	$127, %edx
10000285d: 4d 89 f8                    	movq	%r15, %r8
100002860: 41 89 df                    	movl	%ebx, %r15d
100002863: 98                          	cwtl
100002864: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002868: 42 0f be 0c 21              	movsbl	(%rcx,%r12), %ecx
10000286d: 01 c1                       	addl	%eax, %ecx
10000286f: 0f af 4d d0                 	imull	-48(%rbp), %ecx
100002873: 89 cf                       	movl	%ecx, %edi
100002875: c1 ff 1f                    	sarl	$31, %edi
100002878: c1 ef 12                    	shrl	$18, %edi
10000287b: 01 cf                       	addl	%ecx, %edi
10000287d: c1 ff 0e                    	sarl	$14, %edi
100002880: 81 ff 80 00 00 00           	cmpl	$128, %edi
100002886: 0f 4d fa                    	cmovgel	%edx, %edi
100002889: 44 89 f0                    	movl	%r14d, %eax
10000288c: 31 d2                       	xorl	%edx, %edx
10000288e: 8b 4d 30                    	movl	48(%rbp), %ecx
100002891: 48 89 cb                    	movq	%rcx, %rbx
100002894: f7 f3                       	divl	%ebx
100002896: 89 c1                       	movl	%eax, %ecx
100002898: 44 89 f8                    	movl	%r15d, %eax
10000289b: 31 d2                       	xorl	%edx, %edx
10000289d: f7 f3                       	divl	%ebx
10000289f: 89 c6                       	movl	%eax, %esi
1000028a1: 8b 45 20                    	movl	32(%rbp), %eax
1000028a4: 31 d2                       	xorl	%edx, %edx
1000028a6: f7 f3                       	divl	%ebx
1000028a8: 8b 55 c4                    	movl	-60(%rbp), %edx
1000028ab: 29 d6                       	subl	%edx, %esi
1000028ad: 0f af c6                    	imull	%esi, %eax
1000028b0: 44 8b 5d 88                 	movl	-120(%rbp), %r11d
1000028b4: 29 d1                       	subl	%edx, %ecx
1000028b6: 01 c8                       	addl	%ecx, %eax
1000028b8: 48 8b 75 90                 	movq	-112(%rbp), %rsi
1000028bc: 0f af 45 d4                 	imull	-44(%rbp), %eax
1000028c0: 44 01 c0                    	addl	%r8d, %eax
1000028c3: 83 ff 81                    	cmpl	$-127, %edi
1000028c6: 41 0f 4e f9                 	cmovlel	%r9d, %edi
1000028ca: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
1000028ce: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
1000028d2: 8b bd 78 ff ff ff           	movl	-136(%rbp), %edi
1000028d8: 41 01 de                    	addl	%ebx, %r14d
1000028db: 41 01 fd                    	addl	%edi, %r13d
1000028de: 45 39 de                    	cmpl	%r11d, %r14d
1000028e1: 0f 82 59 ff ff ff           	jb	-167 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x250>
1000028e7: 8b 45 30                    	movl	48(%rbp), %eax
1000028ea: 41 01 c7                    	addl	%eax, %r15d
1000028ed: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
1000028f1: 44 03 6d c0                 	addl	-64(%rbp), %r13d
1000028f5: 44 3b 7d c8                 	cmpl	-56(%rbp), %r15d
1000028f9: 0f 82 31 ff ff ff           	jb	-207 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x240>
1000028ff: e9 fc fe ff ff              	jmp	-260 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x210>
100002904: 31 c0                       	xorl	%eax, %eax
100002906: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000290a: 8b 55 30                    	movl	48(%rbp), %edx
10000290d: 0f 1f 00                    	nopl	(%rax)
100002910: 01 d0                       	addl	%edx, %eax
100002912: 39 c8                       	cmpl	%ecx, %eax
100002914: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x320>
100002916: e9 e5 fe ff ff              	jmp	-283 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x210>
10000291b: 83 f8 40                    	cmpl	$64, %eax
10000291e: 0f 85 07 07 00 00           	jne	1799 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002924: 48 83 ec 08                 	subq	$8, %rsp
100002928: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
10000292c: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002930: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002934: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002938: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000293c: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002940: 8b 45 30                    	movl	48(%rbp), %eax
100002943: 50                          	pushq	%rax
100002944: 8b 45 20                    	movl	32(%rbp), %eax
100002947: 50                          	pushq	%rax
100002948: 53                          	pushq	%rbx
100002949: e8 c2 15 00 00              	callq	5570 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj>
10000294e: e9 09 06 00 00              	jmp	1545 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100002953: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002957: 0f 84 ce 06 00 00           	je	1742 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
10000295d: 8b 45 30                    	movl	48(%rbp), %eax
100002960: 89 c1                       	movl	%eax, %ecx
100002962: d1 e9                       	shrl	%ecx
100002964: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002968: 89 4d c0                    	movl	%ecx, -64(%rbp)
10000296b: 29 c8                       	subl	%ecx, %eax
10000296d: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002971: 0f 84 b4 06 00 00           	je	1716 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002977: 8b 45 20                    	movl	32(%rbp), %eax
10000297a: 48 89 c1                    	movq	%rax, %rcx
10000297d: 89 ca                       	movl	%ecx, %edx
10000297f: 2b 55 c0                    	subl	-64(%rbp), %edx
100002982: 8b 45 30                    	movl	48(%rbp), %eax
100002985: 89 c6                       	movl	%eax, %esi
100002987: 0f af f1                    	imull	%ecx, %esi
10000298a: c1 e6 02                    	shll	$2, %esi
10000298d: 89 b5 74 ff ff ff           	movl	%esi, -140(%rbp)
100002993: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
10000299a: 89 85 70 ff ff ff           	movl	%eax, -144(%rbp)
1000029a0: 31 c9                       	xorl	%ecx, %ecx
1000029a2: 89 55 88                    	movl	%edx, -120(%rbp)
1000029a5: 4c 8b 6d 98                 	movq	-104(%rbp), %r13
1000029a9: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
1000029ad: 44 8b 9d 70 ff ff ff        	movl	-144(%rbp), %r11d
1000029b4: 85 d2                       	testl	%edx, %edx
1000029b6: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
1000029bd: 75 37                       	jne	55 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x406>
1000029bf: e9 4c 01 00 00              	jmp	332 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x520>
1000029c4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000029ce: 66 90                       	nop
1000029d0: 48 8b 8d 78 ff ff ff        	movq	-136(%rbp), %rcx
1000029d7: 48 ff c1                    	incq	%rcx
1000029da: 48 3b 4d 80                 	cmpq	-128(%rbp), %rcx
1000029de: 8b 55 88                    	movl	-120(%rbp), %edx
1000029e1: 0f 84 44 06 00 00           	je	1604 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
1000029e7: 85 d2                       	testl	%edx, %edx
1000029e9: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
1000029f0: 0f 84 1a 01 00 00           	je	282 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x520>
1000029f6: 8b 45 20                    	movl	32(%rbp), %eax
1000029f9: 31 d2                       	xorl	%edx, %edx
1000029fb: 44 8b 45 30                 	movl	48(%rbp), %r8d
1000029ff: 41 f7 f0                    	divl	%r8d
100002a02: 89 45 bc                    	movl	%eax, -68(%rbp)
100002a05: 8d 34 8d 00 00 00 00        	leal	(,%rcx,4), %esi
100002a0c: 45 31 d2                    	xorl	%r10d, %r10d
100002a0f: 31 c0                       	xorl	%eax, %eax
100002a11: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002a1b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002a20: 89 45 c4                    	movl	%eax, -60(%rbp)
100002a23: 31 d2                       	xorl	%edx, %edx
100002a25: 8b 4d 30                    	movl	48(%rbp), %ecx
100002a28: f7 f1                       	divl	%ecx
100002a2a: 89 c7                       	movl	%eax, %edi
100002a2c: 8b 45 c0                    	movl	-64(%rbp), %eax
100002a2f: 29 c7                       	subl	%eax, %edi
100002a31: 0f af 7d bc                 	imull	-68(%rbp), %edi
100002a35: 29 c7                       	subl	%eax, %edi
100002a37: 44 89 55 90                 	movl	%r10d, -112(%rbp)
100002a3b: 31 db                       	xorl	%ebx, %ebx
100002a3d: 44 8b 45 88                 	movl	-120(%rbp), %r8d
100002a41: 4c 8b bd 78 ff ff ff        	movq	-136(%rbp), %r15
100002a48: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002a50: 44 89 d0                    	movl	%r10d, %eax
100002a53: c4 c2 79 21 44 35 00        	vpmovsxbd	(%r13,%rsi), %xmm0
100002a5a: c4 c2 79 21 0c 06           	vpmovsxbd	(%r14,%rax), %xmm1
100002a60: c4 e2 71 40 c0              	vpmulld	%xmm0, %xmm1, %xmm0
100002a65: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002a6a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002a6e: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002a73: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002a77: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002a7b: 98                          	cwtl
100002a7c: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002a80: 0f be 14 31                 	movsbl	(%rcx,%rsi), %edx
100002a84: 01 c2                       	addl	%eax, %edx
100002a86: 0f af 55 d0                 	imull	-48(%rbp), %edx
100002a8a: 41 89 d1                    	movl	%edx, %r9d
100002a8d: 41 c1 f9 1f                 	sarl	$31, %r9d
100002a91: 41 c1 e9 12                 	shrl	$18, %r9d
100002a95: 41 01 d1                    	addl	%edx, %r9d
100002a98: 41 c1 f9 0e                 	sarl	$14, %r9d
100002a9c: 41 81 f9 80 00 00 00        	cmpl	$128, %r9d
100002aa3: b8 7f 00 00 00              	movl	$127, %eax
100002aa8: 44 0f 4d c8                 	cmovgel	%eax, %r9d
100002aac: 89 d8                       	movl	%ebx, %eax
100002aae: 31 d2                       	xorl	%edx, %edx
100002ab0: 44 8b 65 30                 	movl	48(%rbp), %r12d
100002ab4: 41 f7 f4                    	divl	%r12d
100002ab7: 01 f8                       	addl	%edi, %eax
100002ab9: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002abd: 44 01 f8                    	addl	%r15d, %eax
100002ac0: 41 83 f9 81                 	cmpl	$-127, %r9d
100002ac4: ba 81 00 00 00              	movl	$129, %edx
100002ac9: 44 0f 4e ca                 	cmovlel	%edx, %r9d
100002acd: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100002ad1: 44 88 0c 02                 	movb	%r9b, (%rdx,%rax)
100002ad5: 44 01 e3                    	addl	%r12d, %ebx
100002ad8: 45 01 da                    	addl	%r11d, %r10d
100002adb: 44 39 c3                    	cmpl	%r8d, %ebx
100002ade: 0f 82 6c ff ff ff           	jb	-148 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x460>
100002ae4: 8b 45 30                    	movl	48(%rbp), %eax
100002ae7: 8b 4d c4                    	movl	-60(%rbp), %ecx
100002aea: 01 c1                       	addl	%eax, %ecx
100002aec: 89 c8                       	movl	%ecx, %eax
100002aee: 44 8b 55 90                 	movl	-112(%rbp), %r10d
100002af2: 44 03 95 74 ff ff ff        	addl	-140(%rbp), %r10d
100002af9: 3b 4d c8                    	cmpl	-56(%rbp), %ecx
100002afc: 0f 82 1e ff ff ff           	jb	-226 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x430>
100002b02: e9 c9 fe ff ff              	jmp	-311 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3e0>
100002b07: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002b10: 31 c0                       	xorl	%eax, %eax
100002b12: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100002b16: 8b 75 30                    	movl	48(%rbp), %esi
100002b19: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002b20: 01 f0                       	addl	%esi, %eax
100002b22: 39 d0                       	cmpl	%edx, %eax
100002b24: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x530>
100002b26: e9 a5 fe ff ff              	jmp	-347 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3e0>
100002b2b: 48 83 ec 08                 	subq	$8, %rsp
100002b2f: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002b33: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002b37: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002b3b: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002b3f: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002b43: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002b47: 8b 45 30                    	movl	48(%rbp), %eax
100002b4a: 50                          	pushq	%rax
100002b4b: 8b 45 20                    	movl	32(%rbp), %eax
100002b4e: 50                          	pushq	%rax
100002b4f: 8b 45 18                    	movl	24(%rbp), %eax
100002b52: 50                          	pushq	%rax
100002b53: e8 e8 05 00 00              	callq	1512 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
100002b58: e9 ff 03 00 00              	jmp	1023 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100002b5d: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002b61: 0f 84 c4 04 00 00           	je	1220 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002b67: 8b 45 30                    	movl	48(%rbp), %eax
100002b6a: 48 89 c1                    	movq	%rax, %rcx
100002b6d: 89 ce                       	movl	%ecx, %esi
100002b6f: d1 ee                       	shrl	%esi
100002b71: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002b75: 29 f0                       	subl	%esi, %eax
100002b77: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002b7b: 8b 45 20                    	movl	32(%rbp), %eax
100002b7e: 89 c2                       	movl	%eax, %edx
100002b80: 29 f2                       	subl	%esi, %edx
100002b82: 89 55 bc                    	movl	%edx, -68(%rbp)
100002b85: 89 ca                       	movl	%ecx, %edx
100002b87: 0f af d0                    	imull	%eax, %edx
100002b8a: c1 e2 04                    	shll	$4, %edx
100002b8d: 89 95 74 ff ff ff           	movl	%edx, -140(%rbp)
100002b93: 89 cf                       	movl	%ecx, %edi
100002b95: c1 e7 04                    	shll	$4, %edi
100002b98: 31 c0                       	xorl	%eax, %eax
100002b9a: 89 75 90                    	movl	%esi, -112(%rbp)
100002b9d: 4c 8b 75 a8                 	movq	-88(%rbp), %r14
100002ba1: 4c 8b 55 b0                 	movq	-80(%rbp), %r10
100002ba5: 44 8b 7d bc                 	movl	-68(%rbp), %r15d
100002ba9: eb 16                       	jmp	22 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5d1>
100002bab: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002bb0: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002bb4: 48 ff c0                    	incq	%rax
100002bb7: 48 3b 45 80                 	cmpq	-128(%rbp), %rax
100002bbb: 0f 84 6a 04 00 00           	je	1130 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002bc1: 48 89 45 88                 	movq	%rax, -120(%rbp)
100002bc5: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002bc9: 85 c9                       	testl	%ecx, %ecx
100002bcb: 44 8b 4d 30                 	movl	48(%rbp), %r9d
100002bcf: 74 df                       	je	-33 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002bd1: 83 7d bc 00                 	cmpl	$0, -68(%rbp)
100002bd5: 0f 84 35 01 00 00           	je	309 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x720>
100002bdb: 8b 45 20                    	movl	32(%rbp), %eax
100002bde: 31 d2                       	xorl	%edx, %edx
100002be0: 41 f7 f1                    	divl	%r9d
100002be3: 89 45 c0                    	movl	%eax, -64(%rbp)
100002be6: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100002bea: c1 e1 04                    	shll	$4, %ecx
100002bed: 45 31 ed                    	xorl	%r13d, %r13d
100002bf0: 31 c0                       	xorl	%eax, %eax
100002bf2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002bfc: 0f 1f 40 00                 	nopl	(%rax)
100002c00: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100002c06: 31 d2                       	xorl	%edx, %edx
100002c08: 41 f7 f1                    	divl	%r9d
100002c0b: 41 89 c4                    	movl	%eax, %r12d
100002c0e: 41 29 f4                    	subl	%esi, %r12d
100002c11: 44 0f af 65 c0              	imull	-64(%rbp), %r12d
100002c16: 44 89 6d c4                 	movl	%r13d, -60(%rbp)
100002c1a: 31 db                       	xorl	%ebx, %ebx
100002c1c: 48 8b 75 98                 	movq	-104(%rbp), %rsi
100002c20: 4c 8b 5d 88                 	movq	-120(%rbp), %r11
100002c24: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002c2e: 66 90                       	nop
100002c30: 44 89 e8                    	movl	%r13d, %eax
100002c33: c4 e2 7d 21 04 0e           	vpmovsxbd	(%rsi,%rcx), %ymm0
100002c39: c4 e2 7d 21 4c 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm1
100002c40: c4 c2 7d 21 14 02           	vpmovsxbd	(%r10,%rax), %ymm2
100002c46: c4 e2 6d 40 c0              	vpmulld	%ymm0, %ymm2, %ymm0
100002c4b: c4 c2 7d 21 54 02 08        	vpmovsxbd	8(%r10,%rax), %ymm2
100002c52: c4 e2 6d 40 c9              	vpmulld	%ymm1, %ymm2, %ymm1
100002c57: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100002c5b: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002c61: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002c65: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002c6a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002c6e: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002c73: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002c77: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002c7b: 98                          	cwtl
100002c7c: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002c80: 0f be 14 0a                 	movsbl	(%rdx,%rcx), %edx
100002c84: 01 c2                       	addl	%eax, %edx
100002c86: 0f af 55 d0                 	imull	-48(%rbp), %edx
100002c8a: 41 89 d0                    	movl	%edx, %r8d
100002c8d: 41 c1 f8 1f                 	sarl	$31, %r8d
100002c91: 41 c1 e8 12                 	shrl	$18, %r8d
100002c95: 41 01 d0                    	addl	%edx, %r8d
100002c98: 41 c1 f8 0e                 	sarl	$14, %r8d
100002c9c: 41 81 f8 80 00 00 00        	cmpl	$128, %r8d
100002ca3: b8 7f 00 00 00              	movl	$127, %eax
100002ca8: 44 0f 4d c0                 	cmovgel	%eax, %r8d
100002cac: 89 d8                       	movl	%ebx, %eax
100002cae: 31 d2                       	xorl	%edx, %edx
100002cb0: 41 f7 f1                    	divl	%r9d
100002cb3: 2b 45 90                    	subl	-112(%rbp), %eax
100002cb6: 44 01 e0                    	addl	%r12d, %eax
100002cb9: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002cbd: 44 01 d8                    	addl	%r11d, %eax
100002cc0: 41 83 f8 81                 	cmpl	$-127, %r8d
100002cc4: ba 81 00 00 00              	movl	$129, %edx
100002cc9: 44 0f 4e c2                 	cmovlel	%edx, %r8d
100002ccd: 45 88 04 06                 	movb	%r8b, (%r14,%rax)
100002cd1: 44 01 cb                    	addl	%r9d, %ebx
100002cd4: 41 01 fd                    	addl	%edi, %r13d
100002cd7: 44 39 fb                    	cmpl	%r15d, %ebx
100002cda: 0f 82 50 ff ff ff           	jb	-176 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x640>
100002ce0: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100002ce6: 44 01 c8                    	addl	%r9d, %eax
100002ce9: 44 8b 6d c4                 	movl	-60(%rbp), %r13d
100002ced: 44 03 ad 74 ff ff ff        	addl	-140(%rbp), %r13d
100002cf4: 3b 45 c8                    	cmpl	-56(%rbp), %eax
100002cf7: 8b 75 90                    	movl	-112(%rbp), %esi
100002cfa: 0f 82 00 ff ff ff           	jb	-256 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x610>
100002d00: e9 ab fe ff ff              	jmp	-341 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002d05: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002d0f: 90                          	nop
100002d10: 31 c0                       	xorl	%eax, %eax
100002d12: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002d1c: 0f 1f 40 00                 	nopl	(%rax)
100002d20: 44 01 c8                    	addl	%r9d, %eax
100002d23: 39 c8                       	cmpl	%ecx, %eax
100002d25: 72 f9                       	jb	-7 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x730>
100002d27: e9 84 fe ff ff              	jmp	-380 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002d2c: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002d30: 0f 84 f5 02 00 00           	je	757 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002d36: 8b 45 30                    	movl	48(%rbp), %eax
100002d39: 89 c1                       	movl	%eax, %ecx
100002d3b: d1 e9                       	shrl	%ecx
100002d3d: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002d41: 29 c8                       	subl	%ecx, %eax
100002d43: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002d47: 0f 84 de 02 00 00           	je	734 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002d4d: 8b 45 20                    	movl	32(%rbp), %eax
100002d50: 48 89 c7                    	movq	%rax, %rdi
100002d53: 41 89 fa                    	movl	%edi, %r10d
100002d56: 41 29 ca                    	subl	%ecx, %r10d
100002d59: 8b 45 30                    	movl	48(%rbp), %eax
100002d5c: 89 c2                       	movl	%eax, %edx
100002d5e: 0f af d7                    	imull	%edi, %edx
100002d61: c1 e2 05                    	shll	$5, %edx
100002d64: 89 55 c0                    	movl	%edx, -64(%rbp)
100002d67: 89 c7                       	movl	%eax, %edi
100002d69: c1 e7 05                    	shll	$5, %edi
100002d6c: 31 db                       	xorl	%ebx, %ebx
100002d6e: 89 4d c4                    	movl	%ecx, -60(%rbp)
100002d71: 89 bd 78 ff ff ff           	movl	%edi, -136(%rbp)
100002d77: 44 89 55 88                 	movl	%r10d, -120(%rbp)
100002d7b: 45 85 d2                    	testl	%r10d, %r10d
100002d7e: 75 26                       	jne	38 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7b6>
100002d80: e9 0b 01 00 00              	jmp	267 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8a0>
100002d85: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002d8f: 90                          	nop
100002d90: 48 ff c3                    	incq	%rbx
100002d93: 48 3b 5d 80                 	cmpq	-128(%rbp), %rbx
100002d97: 0f 84 8e 02 00 00           	je	654 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002d9d: 45 85 d2                    	testl	%r10d, %r10d
100002da0: 0f 84 ea 00 00 00           	je	234 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8a0>
100002da6: 41 89 d9                    	movl	%ebx, %r9d
100002da9: 41 c1 e1 05                 	shll	$5, %r9d
100002dad: 48 8b 45 98                 	movq	-104(%rbp), %rax
100002db1: 4a 8d 34 08                 	leaq	(%rax,%r9), %rsi
100002db5: 45 31 f6                    	xorl	%r14d, %r14d
100002db8: 45 31 ed                    	xorl	%r13d, %r13d
100002dbb: 48 89 75 90                 	movq	%rsi, -112(%rbp)
100002dbf: 90                          	nop
100002dc0: 44 89 75 bc                 	movl	%r14d, -68(%rbp)
100002dc4: 45 31 e4                    	xorl	%r12d, %r12d
100002dc7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002dd0: 44 89 f7                    	movl	%r14d, %edi
100002dd3: 48 03 7d b0                 	addq	-80(%rbp), %rdi
100002dd7: 4d 89 cf                    	movq	%r9, %r15
100002dda: e8 91 13 00 00              	callq	5009 <__Z11microkernelILj1ELj32EasET2_PKT1_S3_>
100002ddf: 4d 89 f9                    	movq	%r15, %r9
100002de2: 41 b8 81 00 00 00           	movl	$129, %r8d
100002de8: ba 7f 00 00 00              	movl	$127, %edx
100002ded: 98                          	cwtl
100002dee: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002df2: 42 0f be 0c 39              	movsbl	(%rcx,%r15), %ecx
100002df7: 01 c1                       	addl	%eax, %ecx
100002df9: 0f af 4d d0                 	imull	-48(%rbp), %ecx
100002dfd: 89 cf                       	movl	%ecx, %edi
100002dff: c1 ff 1f                    	sarl	$31, %edi
100002e02: c1 ef 12                    	shrl	$18, %edi
100002e05: 01 cf                       	addl	%ecx, %edi
100002e07: c1 ff 0e                    	sarl	$14, %edi
100002e0a: 81 ff 80 00 00 00           	cmpl	$128, %edi
100002e10: 0f 4d fa                    	cmovgel	%edx, %edi
100002e13: 44 89 e0                    	movl	%r12d, %eax
100002e16: 31 d2                       	xorl	%edx, %edx
100002e18: 8b 4d 30                    	movl	48(%rbp), %ecx
100002e1b: 49 89 cf                    	movq	%rcx, %r15
100002e1e: 41 f7 f7                    	divl	%r15d
100002e21: 89 c1                       	movl	%eax, %ecx
100002e23: 44 89 e8                    	movl	%r13d, %eax
100002e26: 31 d2                       	xorl	%edx, %edx
100002e28: 41 f7 f7                    	divl	%r15d
100002e2b: 89 c6                       	movl	%eax, %esi
100002e2d: 8b 45 20                    	movl	32(%rbp), %eax
100002e30: 31 d2                       	xorl	%edx, %edx
100002e32: 41 f7 f7                    	divl	%r15d
100002e35: 8b 55 c4                    	movl	-60(%rbp), %edx
100002e38: 29 d6                       	subl	%edx, %esi
100002e3a: 0f af c6                    	imull	%esi, %eax
100002e3d: 44 8b 55 88                 	movl	-120(%rbp), %r10d
100002e41: 29 d1                       	subl	%edx, %ecx
100002e43: 01 c8                       	addl	%ecx, %eax
100002e45: 48 8b 75 90                 	movq	-112(%rbp), %rsi
100002e49: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002e4d: 01 d8                       	addl	%ebx, %eax
100002e4f: 83 ff 81                    	cmpl	$-127, %edi
100002e52: 41 0f 4e f8                 	cmovlel	%r8d, %edi
100002e56: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100002e5a: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100002e5e: 8b bd 78 ff ff ff           	movl	-136(%rbp), %edi
100002e64: 45 01 fc                    	addl	%r15d, %r12d
100002e67: 41 01 fe                    	addl	%edi, %r14d
100002e6a: 45 39 d4                    	cmpl	%r10d, %r12d
100002e6d: 0f 82 5d ff ff ff           	jb	-163 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7e0>
100002e73: 8b 45 30                    	movl	48(%rbp), %eax
100002e76: 41 01 c5                    	addl	%eax, %r13d
100002e79: 44 8b 75 bc                 	movl	-68(%rbp), %r14d
100002e7d: 44 03 75 c0                 	addl	-64(%rbp), %r14d
100002e81: 44 3b 6d c8                 	cmpl	-56(%rbp), %r13d
100002e85: 0f 82 35 ff ff ff           	jb	-203 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7d0>
100002e8b: e9 00 ff ff ff              	jmp	-256 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7a0>
100002e90: 31 c0                       	xorl	%eax, %eax
100002e92: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002e96: 8b 55 30                    	movl	48(%rbp), %edx
100002e99: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002ea0: 01 d0                       	addl	%edx, %eax
100002ea2: 39 c8                       	cmpl	%ecx, %eax
100002ea4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8b0>
100002ea6: e9 e5 fe ff ff              	jmp	-283 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7a0>
100002eab: 48 83 ec 08                 	subq	$8, %rsp
100002eaf: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002eb3: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002eb7: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002ebb: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002ebf: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002ec3: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002ec7: 8b 45 30                    	movl	48(%rbp), %eax
100002eca: 50                          	pushq	%rax
100002ecb: 8b 45 20                    	movl	32(%rbp), %eax
100002ece: 50                          	pushq	%rax
100002ecf: 53                          	pushq	%rbx
100002ed0: e8 bb 06 00 00              	callq	1723 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj>
100002ed5: e9 82 00 00 00              	jmp	130 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100002eda: 48 83 ec 08                 	subq	$8, %rsp
100002ede: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002ee2: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002ee6: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002eea: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002eee: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002ef2: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002ef6: 8b 45 30                    	movl	48(%rbp), %eax
100002ef9: 50                          	pushq	%rax
100002efa: 8b 45 20                    	movl	32(%rbp), %eax
100002efd: 50                          	pushq	%rax
100002efe: 53                          	pushq	%rbx
100002eff: e8 fc 08 00 00              	callq	2300 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
100002f04: eb 56                       	jmp	86 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100002f06: 48 83 ec 08                 	subq	$8, %rsp
100002f0a: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002f0e: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002f12: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002f16: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002f1a: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002f1e: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002f22: 8b 45 30                    	movl	48(%rbp), %eax
100002f25: 50                          	pushq	%rax
100002f26: 8b 45 20                    	movl	32(%rbp), %eax
100002f29: 50                          	pushq	%rax
100002f2a: 53                          	pushq	%rbx
100002f2b: e8 40 0b 00 00              	callq	2880 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj>
100002f30: eb 2a                       	jmp	42 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100002f32: 48 83 ec 08                 	subq	$8, %rsp
100002f36: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002f3a: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002f3e: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002f42: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002f46: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002f4a: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002f4e: 8b 45 30                    	movl	48(%rbp), %eax
100002f51: 50                          	pushq	%rax
100002f52: 8b 45 20                    	movl	32(%rbp), %eax
100002f55: 50                          	pushq	%rax
100002f56: 53                          	pushq	%rbx
100002f57: e8 64 0d 00 00              	callq	3428 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj>
100002f5c: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100002f63: e9 c7 00 00 00              	jmp	199 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3f>
100002f68: 48 8b 45 80                 	movq	-128(%rbp), %rax
100002f6c: 48 8d 48 ff                 	leaq	-1(%rax), %rcx
100002f70: 83 e0 07                    	andl	$7, %eax
100002f73: 48 83 f9 07                 	cmpq	$7, %rcx
100002f77: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100002f7b: 8b 75 30                    	movl	48(%rbp), %esi
100002f7e: 0f 82 8d 00 00 00           	jb	141 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa21>
100002f84: 48 29 45 80                 	subq	%rax, -128(%rbp)
100002f88: 31 c9                       	xorl	%ecx, %ecx
100002f8a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100002f90: 01 f1                       	addl	%esi, %ecx
100002f92: 39 d1                       	cmpl	%edx, %ecx
100002f94: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9a0>
100002f96: 31 c9                       	xorl	%ecx, %ecx
100002f98: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002fa0: 01 f1                       	addl	%esi, %ecx
100002fa2: 39 d1                       	cmpl	%edx, %ecx
100002fa4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9b0>
100002fa6: 31 c9                       	xorl	%ecx, %ecx
100002fa8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002fb0: 01 f1                       	addl	%esi, %ecx
100002fb2: 39 d1                       	cmpl	%edx, %ecx
100002fb4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9c0>
100002fb6: 31 c9                       	xorl	%ecx, %ecx
100002fb8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002fc0: 01 f1                       	addl	%esi, %ecx
100002fc2: 39 d1                       	cmpl	%edx, %ecx
100002fc4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9d0>
100002fc6: 31 c9                       	xorl	%ecx, %ecx
100002fc8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002fd0: 01 f1                       	addl	%esi, %ecx
100002fd2: 39 d1                       	cmpl	%edx, %ecx
100002fd4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9e0>
100002fd6: 31 c9                       	xorl	%ecx, %ecx
100002fd8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002fe0: 01 f1                       	addl	%esi, %ecx
100002fe2: 39 d1                       	cmpl	%edx, %ecx
100002fe4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9f0>
100002fe6: 31 c9                       	xorl	%ecx, %ecx
100002fe8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002ff0: 01 f1                       	addl	%esi, %ecx
100002ff2: 39 d1                       	cmpl	%edx, %ecx
100002ff4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa00>
100002ff6: 31 c9                       	xorl	%ecx, %ecx
100002ff8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100003000: 01 f1                       	addl	%esi, %ecx
100003002: 39 d1                       	cmpl	%edx, %ecx
100003004: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa10>
100003006: 48 83 45 80 f8              	addq	$-8, -128(%rbp)
10000300b: 0f 85 77 ff ff ff           	jne	-137 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
100003011: 48 85 c0                    	testq	%rax, %rax
100003014: 74 15                       	je	21 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100003016: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000301a: 31 c9                       	xorl	%ecx, %ecx
10000301c: 8b 75 30                    	movl	48(%rbp), %esi
10000301f: 90                          	nop
100003020: 01 f1                       	addl	%esi, %ecx
100003022: 39 d1                       	cmpl	%edx, %ecx
100003024: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa30>
100003026: 48 ff c8                    	decq	%rax
100003029: 75 ef                       	jne	-17 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa2a>
10000302b: 48 83 c4 68                 	addq	$104, %rsp
10000302f: 5b                          	popq	%rbx
100003030: 41 5c                       	popq	%r12
100003032: 41 5d                       	popq	%r13
100003034: 41 5e                       	popq	%r14
100003036: 41 5f                       	popq	%r15
100003038: 5d                          	popq	%rbp
100003039: c5 f8 77                    	vzeroupper
10000303c: c3                          	retq
10000303d: 0f 1f 00                    	nopl	(%rax)
100003040: 2b f7                       	subl	%edi, %esi
100003042: ff ff                       	<unknown>
100003044: eb ff                       	jmp	-1 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa55>
100003046: ff ff                       	<unknown>
100003048: eb ff                       	jmp	-1 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa59>
10000304a: ff ff                       	<unknown>
10000304c: 6b fe ff                    	imull	$-1, %esi, %edi
10000304f: ff eb                       	<unknown>
100003051: ff ff                       	<unknown>
100003053: ff eb                       	<unknown>
100003055: ff ff                       	<unknown>
100003057: ff eb                       	<unknown>
100003059: ff ff                       	<unknown>
10000305b: ff 9a fe ff ff eb           	lcalll	*-335544322(%rdx)
100003061: ff ff                       	<unknown>
100003063: ff eb                       	<unknown>
100003065: ff ff                       	<unknown>
100003067: ff eb                       	<unknown>
100003069: ff ff                       	<unknown>
10000306b: ff eb                       	<unknown>
10000306d: ff ff                       	<unknown>
10000306f: ff eb                       	<unknown>
100003071: ff ff                       	<unknown>
100003073: ff eb                       	<unknown>
100003075: ff ff                       	<unknown>
100003077: ff eb                       	<unknown>
100003079: ff ff                       	<unknown>
10000307b: ff c6                       	incl	%esi
10000307d: fe ff                       	<unknown>
10000307f: ff eb                       	<unknown>
100003081: ff ff                       	<unknown>
100003083: ff eb                       	<unknown>
100003085: ff ff                       	<unknown>
100003087: ff eb                       	<unknown>
100003089: ff ff                       	<unknown>
10000308b: ff eb                       	<unknown>
10000308d: ff ff                       	<unknown>
10000308f: ff eb                       	<unknown>
100003091: ff ff                       	<unknown>
100003093: ff eb                       	<unknown>
100003095: ff ff                       	<unknown>
100003097: ff eb                       	<unknown>
100003099: ff ff                       	<unknown>
10000309b: ff eb                       	<unknown>
10000309d: ff ff                       	<unknown>
10000309f: ff eb                       	<unknown>
1000030a1: ff ff                       	<unknown>
1000030a3: ff eb                       	<unknown>
1000030a5: ff ff                       	<unknown>
1000030a7: ff eb                       	<unknown>
1000030a9: ff ff                       	<unknown>
1000030ab: ff eb                       	<unknown>
1000030ad: ff ff                       	<unknown>
1000030af: ff eb                       	<unknown>
1000030b1: ff ff                       	<unknown>
1000030b3: ff eb                       	<unknown>
1000030b5: ff ff                       	<unknown>
1000030b7: ff eb                       	<unknown>
1000030b9: ff ff                       	<unknown>
1000030bb: ff f2                       	pushq	%rdx
1000030bd: fe ff                       	<unknown>
1000030bf: ff 9b f5 ff ff 6b           	lcalll	*1811939317(%rbx)
1000030c5: ff ff                       	<unknown>
1000030c7: ff 6b ff                    	ljmpl	*-1(%rbx)
1000030ca: ff ff                       	<unknown>
1000030cc: 93                          	xchgl	%ebx, %eax
1000030cd: f8                          	clc
1000030ce: ff ff                       	<unknown>
1000030d0: 6b ff ff                    	imull	$-1, %edi, %edi
1000030d3: ff 6b ff                    	ljmpl	*-1(%rbx)
1000030d6: ff ff                       	<unknown>
1000030d8: 6b ff ff                    	imull	$-1, %edi, %edi
1000030db: ff 6b fa                    	ljmpl	*-6(%rbx)
1000030de: ff ff                       	<unknown>
1000030e0: 6b ff ff                    	imull	$-1, %edi, %edi
1000030e3: ff 6b ff                    	ljmpl	*-1(%rbx)
1000030e6: ff ff                       	<unknown>
1000030e8: 6b ff ff                    	imull	$-1, %edi, %edi
1000030eb: ff 6b ff                    	ljmpl	*-1(%rbx)
1000030ee: ff ff                       	<unknown>
1000030f0: 6b ff ff                    	imull	$-1, %edi, %edi
1000030f3: ff 6b ff                    	ljmpl	*-1(%rbx)
1000030f6: ff ff                       	<unknown>
1000030f8: 6b ff ff                    	imull	$-1, %edi, %edi
1000030fb: ff 9d fa ff ff 6b           	lcalll	*1811939322(%rbp)
100003101: ff ff                       	<unknown>
100003103: ff 6b ff                    	ljmpl	*-1(%rbx)
100003106: ff ff                       	<unknown>
100003108: 6b ff ff                    	imull	$-1, %edi, %edi
10000310b: ff 6b ff                    	ljmpl	*-1(%rbx)
10000310e: ff ff                       	<unknown>
100003110: 6b ff ff                    	imull	$-1, %edi, %edi
100003113: ff 6b ff                    	ljmpl	*-1(%rbx)
100003116: ff ff                       	<unknown>
100003118: 6b ff ff                    	imull	$-1, %edi, %edi
10000311b: ff 6b ff                    	ljmpl	*-1(%rbx)
10000311e: ff ff                       	<unknown>
100003120: 6b ff ff                    	imull	$-1, %edi, %edi
100003123: ff 6b ff                    	ljmpl	*-1(%rbx)
100003126: ff ff                       	<unknown>
100003128: 6b ff ff                    	imull	$-1, %edi, %edi
10000312b: ff 6b ff                    	ljmpl	*-1(%rbx)
10000312e: ff ff                       	<unknown>
100003130: 6b ff ff                    	imull	$-1, %edi, %edi
100003133: ff 6b ff                    	ljmpl	*-1(%rbx)
100003136: ff ff                       	<unknown>
100003138: 6b ff ff                    	imull	$-1, %edi, %edi
10000313b: ff 6c fc ff                 	ljmpl	*-1(%rsp,%rdi,8)
10000313f: ff 55 48                    	callq	*72(%rbp)

0000000100003140 __Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003140: 55                          	pushq	%rbp
100003141: 48 89 e5                    	movq	%rsp, %rbp
100003144: 41 57                       	pushq	%r15
100003146: 41 56                       	pushq	%r14
100003148: 41 55                       	pushq	%r13
10000314a: 41 54                       	pushq	%r12
10000314c: 53                          	pushq	%rbx
10000314d: 44 89 45 a8                 	movl	%r8d, -88(%rbp)
100003151: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003155: 48 89 55 90                 	movq	%rdx, -112(%rbp)
100003159: 48 89 75 98                 	movq	%rsi, -104(%rbp)
10000315d: 44 89 4d cc                 	movl	%r9d, -52(%rbp)
100003161: 45 85 c9                    	testl	%r9d, %r9d
100003164: 0f 84 a3 01 00 00           	je	419 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1cd>
10000316a: 44 8b 7d 20                 	movl	32(%rbp), %r15d
10000316e: 8b 45 18                    	movl	24(%rbp), %eax
100003171: 8b 55 10                    	movl	16(%rbp), %edx
100003174: 44 89 fe                    	movl	%r15d, %esi
100003177: d1 ee                       	shrl	%esi
100003179: 29 f2                       	subl	%esi, %edx
10000317b: 89 55 d4                    	movl	%edx, -44(%rbp)
10000317e: 89 c2                       	movl	%eax, %edx
100003180: 29 f2                       	subl	%esi, %edx
100003182: 89 55 d0                    	movl	%edx, -48(%rbp)
100003185: 8b 55 cc                    	movl	-52(%rbp), %edx
100003188: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
10000318c: 44 89 fa                    	movl	%r15d, %edx
10000318f: 0f af d0                    	imull	%eax, %edx
100003192: c1 e2 03                    	shll	$3, %edx
100003195: 89 55 b8                    	movl	%edx, -72(%rbp)
100003198: 42 8d 04 fd 00 00 00 00     	leal	(,%r15,8), %eax
1000031a0: 89 45 bc                    	movl	%eax, -68(%rbp)
1000031a3: 31 c0                       	xorl	%eax, %eax
1000031a5: 89 75 c8                    	movl	%esi, -56(%rbp)
1000031a8: 4c 8b 5d 90                 	movq	-112(%rbp), %r11
1000031ac: 4c 8b 75 98                 	movq	-104(%rbp), %r14
1000031b0: 44 8b 55 d0                 	movl	-48(%rbp), %r10d
1000031b4: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
1000031b8: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000031bc: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000031c0: 75 29                       	jne	41 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xab>
1000031c2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000031cc: 0f 1f 40 00                 	nopl	(%rax)
1000031d0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000031d4: 48 ff c0                    	incq	%rax
1000031d7: 48 3b 45 a0                 	cmpq	-96(%rbp), %rax
1000031db: 0f 84 2c 01 00 00           	je	300 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1cd>
1000031e1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000031e5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000031e9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x90>
1000031eb: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
1000031ef: 0f 84 fb 00 00 00           	je	251 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1b0>
1000031f5: 8b 45 18                    	movl	24(%rbp), %eax
1000031f8: 31 d2                       	xorl	%edx, %edx
1000031fa: 41 f7 f7                    	divl	%r15d
1000031fd: 89 45 b4                    	movl	%eax, -76(%rbp)
100003200: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003204: 44 8d 0c c5 00 00 00 00     	leal	(,%rax,8), %r9d
10000320c: 45 31 c0                    	xorl	%r8d, %r8d
10000320f: 31 c0                       	xorl	%eax, %eax
100003211: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000321b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003220: 89 45 b0                    	movl	%eax, -80(%rbp)
100003223: 31 d2                       	xorl	%edx, %edx
100003225: 41 f7 f7                    	divl	%r15d
100003228: 41 89 c4                    	movl	%eax, %r12d
10000322b: 41 29 f4                    	subl	%esi, %r12d
10000322e: 44 0f af 65 b4              	imull	-76(%rbp), %r12d
100003233: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003237: 31 db                       	xorl	%ebx, %ebx
100003239: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
10000323d: 0f 1f 00                    	nopl	(%rax)
100003240: 44 89 c0                    	movl	%r8d, %eax
100003243: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003247: c4 a2 7d 21 04 09           	vpmovsxbd	(%rcx,%r9), %ymm0
10000324d: c4 c2 7d 21 0c 06           	vpmovsxbd	(%r14,%rax), %ymm1
100003253: c4 e2 75 40 c0              	vpmulld	%ymm0, %ymm1, %ymm0
100003258: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000325e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003262: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100003267: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000326b: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100003270: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003274: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100003278: 98                          	cwtl
100003279: 43 0f be 14 0b              	movsbl	(%r11,%r9), %edx
10000327e: 01 c2                       	addl	%eax, %edx
100003280: 0f af 55 a8                 	imull	-88(%rbp), %edx
100003284: 89 d1                       	movl	%edx, %ecx
100003286: c1 f9 1f                    	sarl	$31, %ecx
100003289: c1 e9 12                    	shrl	$18, %ecx
10000328c: 01 d1                       	addl	%edx, %ecx
10000328e: c1 f9 0e                    	sarl	$14, %ecx
100003291: 81 f9 80 00 00 00           	cmpl	$128, %ecx
100003297: b8 7f 00 00 00              	movl	$127, %eax
10000329c: 0f 4d c8                    	cmovgel	%eax, %ecx
10000329f: 89 d8                       	movl	%ebx, %eax
1000032a1: 31 d2                       	xorl	%edx, %edx
1000032a3: 41 f7 f7                    	divl	%r15d
1000032a6: 2b 45 c8                    	subl	-56(%rbp), %eax
1000032a9: 44 01 e0                    	addl	%r12d, %eax
1000032ac: 0f af 45 cc                 	imull	-52(%rbp), %eax
1000032b0: 01 f0                       	addl	%esi, %eax
1000032b2: 83 f9 81                    	cmpl	$-127, %ecx
1000032b5: ba 81 00 00 00              	movl	$129, %edx
1000032ba: 0f 4e ca                    	cmovlel	%edx, %ecx
1000032bd: 88 0c 07                    	movb	%cl, (%rdi,%rax)
1000032c0: 44 01 fb                    	addl	%r15d, %ebx
1000032c3: 45 01 e8                    	addl	%r13d, %r8d
1000032c6: 44 39 d3                    	cmpl	%r10d, %ebx
1000032c9: 0f 82 71 ff ff ff           	jb	-143 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x100>
1000032cf: 8b 45 b0                    	movl	-80(%rbp), %eax
1000032d2: 44 01 f8                    	addl	%r15d, %eax
1000032d5: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
1000032d9: 44 03 45 b8                 	addl	-72(%rbp), %r8d
1000032dd: 3b 45 d4                    	cmpl	-44(%rbp), %eax
1000032e0: 8b 75 c8                    	movl	-56(%rbp), %esi
1000032e3: 0f 82 37 ff ff ff           	jb	-201 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xe0>
1000032e9: e9 e2 fe ff ff              	jmp	-286 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x90>
1000032ee: 66 90                       	nop
1000032f0: 31 c0                       	xorl	%eax, %eax
1000032f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000032fc: 0f 1f 40 00                 	nopl	(%rax)
100003300: 44 01 f8                    	addl	%r15d, %eax
100003303: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003306: 72 f8                       	jb	-8 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1c0>
100003308: e9 c3 fe ff ff              	jmp	-317 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x90>
10000330d: 5b                          	popq	%rbx
10000330e: 41 5c                       	popq	%r12
100003310: 41 5d                       	popq	%r13
100003312: 41 5e                       	popq	%r14
100003314: 41 5f                       	popq	%r15
100003316: 5d                          	popq	%rbp
100003317: c5 f8 77                    	vzeroupper
10000331a: c3                          	retq
10000331b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003320 __Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj:
100003320: 55                          	pushq	%rbp
100003321: 48 89 e5                    	movq	%rsp, %rbp
100003324: 41 57                       	pushq	%r15
100003326: 41 56                       	pushq	%r14
100003328: 41 55                       	pushq	%r13
10000332a: 41 54                       	pushq	%r12
10000332c: 53                          	pushq	%rbx
10000332d: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003331: 45 85 c9                    	testl	%r9d, %r9d
100003334: 0f 84 43 02 00 00           	je	579 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x25d>
10000333a: 49 89 d2                    	movq	%rdx, %r10
10000333d: 49 89 fe                    	movq	%rdi, %r14
100003340: 44 8b 6d 20                 	movl	32(%rbp), %r13d
100003344: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003348: 8b 55 10                    	movl	16(%rbp), %edx
10000334b: 44 89 e8                    	movl	%r13d, %eax
10000334e: d1 e8                       	shrl	%eax
100003350: 29 c2                       	subl	%eax, %edx
100003352: 83 c2 fe                    	addl	$-2, %edx
100003355: 89 55 d4                    	movl	%edx, -44(%rbp)
100003358: 44 89 d9                    	movl	%r11d, %ecx
10000335b: 29 c1                       	subl	%eax, %ecx
10000335d: 83 c1 fe                    	addl	$-2, %ecx
100003360: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003363: 44 89 d9                    	movl	%r11d, %ecx
100003366: 48 89 8d 68 ff ff ff        	movq	%rcx, -152(%rbp)
10000336d: 41 8d 4b 01                 	leal	1(%r11), %ecx
100003371: 48 89 8d 70 ff ff ff        	movq	%rcx, -144(%rbp)
100003378: 41 8d 4b 02                 	leal	2(%r11), %ecx
10000337c: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
100003383: 43 8d 0c 1b                 	leal	(%r11,%r11), %ecx
100003387: 48 89 4d 80                 	movq	%rcx, -128(%rbp)
10000338b: 48 8d 49 01                 	leaq	1(%rcx), %rcx
10000338f: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003393: 43 8d 0c 1b                 	leal	(%r11,%r11), %ecx
100003397: 83 c1 02                    	addl	$2, %ecx
10000339a: 48 89 4d 90                 	movq	%rcx, -112(%rbp)
10000339e: b9 01 00 00 00              	movl	$1, %ecx
1000033a3: 29 c1                       	subl	%eax, %ecx
1000033a5: 44 89 c8                    	movl	%r9d, %eax
1000033a8: 48 89 45 a0                 	movq	%rax, -96(%rbp)
1000033ac: 44 89 e8                    	movl	%r13d, %eax
1000033af: 41 0f af c3                 	imull	%r11d, %eax
1000033b3: 89 45 bc                    	movl	%eax, -68(%rbp)
1000033b6: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000033ba: 31 c0                       	xorl	%eax, %eax
1000033bc: 89 4d cc                    	movl	%ecx, -52(%rbp)
1000033bf: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000033c3: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000033c7: 75 22                       	jne	34 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xcb>
1000033c9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000033d0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000033d4: 48 ff c0                    	incq	%rax
1000033d7: 48 3b 45 a0                 	cmpq	-96(%rbp), %rax
1000033db: 0f 84 9c 01 00 00           	je	412 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x25d>
1000033e1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000033e5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000033e9: 74 e5                       	je	-27 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
1000033eb: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
1000033ef: 0f 84 6b 01 00 00           	je	363 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x240>
1000033f5: 8b 45 18                    	movl	24(%rbp), %eax
1000033f8: 31 d2                       	xorl	%edx, %edx
1000033fa: 41 f7 f5                    	divl	%r13d
1000033fd: 89 45 b8                    	movl	%eax, -72(%rbp)
100003400: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003404: 44 8d 1c c0                 	leal	(%rax,%rax,8), %r11d
100003408: 31 d2                       	xorl	%edx, %edx
10000340a: 31 c0                       	xorl	%eax, %eax
10000340c: 0f 1f 40 00                 	nopl	(%rax)
100003410: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100003414: 89 45 b4                    	movl	%eax, -76(%rbp)
100003417: 31 d2                       	xorl	%edx, %edx
100003419: 41 f7 f5                    	divl	%r13d
10000341c: 41 89 c4                    	movl	%eax, %r12d
10000341f: 41 01 cc                    	addl	%ecx, %r12d
100003422: 44 0f af 65 b8              	imull	-72(%rbp), %r12d
100003427: 31 db                       	xorl	%ebx, %ebx
100003429: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
10000342d: 4c 8b 7d c0                 	movq	-64(%rbp), %r15
100003431: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000343b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003440: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100003444: 01 d8                       	addl	%ebx, %eax
100003446: 48 8d 14 06                 	leaq	(%rsi,%rax), %rdx
10000344a: 4c 89 d7                    	movq	%r10, %rdi
10000344d: 44 0f b7 14 06              	movzwl	(%rsi,%rax), %r10d
100003452: c4 c1 79 6e ca              	vmovd	%r10d, %xmm1
100003457: 49 89 fa                    	movq	%rdi, %r10
10000345a: c4 e3 71 0e c8 fe           	vpblendw	$254, %xmm0, %xmm1, %xmm1
100003460: c4 a2 7d 21 14 19           	vpmovsxbd	(%rcx,%r11), %ymm2
100003466: c4 e3 71 20 4c 06 02 02     	vpinsrb	$2, 2(%rsi,%rax), %xmm1, %xmm1
10000346e: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
100003475: c4 e3 71 20 0c 10 03        	vpinsrb	$3, (%rax,%rdx), %xmm1, %xmm1
10000347c: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
100003483: c4 e3 71 20 0c 10 04        	vpinsrb	$4, (%rax,%rdx), %xmm1, %xmm1
10000348a: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100003491: c4 e3 71 20 0c 10 05        	vpinsrb	$5, (%rax,%rdx), %xmm1, %xmm1
100003498: 48 8b 45 80                 	movq	-128(%rbp), %rax
10000349c: c4 e3 71 20 0c 10 06        	vpinsrb	$6, (%rax,%rdx), %xmm1, %xmm1
1000034a3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000034a7: c4 e3 71 20 0c 10 07        	vpinsrb	$7, (%rax,%rdx), %xmm1, %xmm1
1000034ae: c4 e2 7d 21 c9              	vpmovsxbd	%xmm1, %ymm1
1000034b3: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
1000034b8: 42 0f be 44 19 08           	movsbl	8(%rcx,%r11), %eax
1000034be: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
1000034c2: 0f be 14 17                 	movsbl	(%rdi,%rdx), %edx
1000034c6: 0f af d0                    	imull	%eax, %edx
1000034c9: 43 0f be 3c 1a              	movsbl	(%r10,%r11), %edi
1000034ce: c4 e3 7d 39 ca 01           	vextracti128	$1, %ymm1, %xmm2
1000034d4: c5 f1 fe ca                 	vpaddd	%xmm2, %xmm1, %xmm1
1000034d8: c5 f9 70 d1 4e              	vpshufd	$78, %xmm1, %xmm2
1000034dd: c5 f1 fe ca                 	vpaddd	%xmm2, %xmm1, %xmm1
1000034e1: c5 f9 70 d1 e5              	vpshufd	$229, %xmm1, %xmm2
1000034e6: c5 f1 fe ca                 	vpaddd	%xmm2, %xmm1, %xmm1
1000034ea: c5 f9 7e c8                 	vmovd	%xmm1, %eax
1000034ee: 01 d0                       	addl	%edx, %eax
1000034f0: 01 f8                       	addl	%edi, %eax
1000034f2: 41 0f af c0                 	imull	%r8d, %eax
1000034f6: 89 c7                       	movl	%eax, %edi
1000034f8: c1 ff 1f                    	sarl	$31, %edi
1000034fb: c1 ef 12                    	shrl	$18, %edi
1000034fe: 01 c7                       	addl	%eax, %edi
100003500: c1 ff 0e                    	sarl	$14, %edi
100003503: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003509: b8 7f 00 00 00              	movl	$127, %eax
10000350e: 0f 4d f8                    	cmovgel	%eax, %edi
100003511: 89 d8                       	movl	%ebx, %eax
100003513: 31 d2                       	xorl	%edx, %edx
100003515: 41 f7 f5                    	divl	%r13d
100003518: 03 45 cc                    	addl	-52(%rbp), %eax
10000351b: 44 01 e0                    	addl	%r12d, %eax
10000351e: 41 0f af c1                 	imull	%r9d, %eax
100003522: 44 01 f8                    	addl	%r15d, %eax
100003525: 83 ff 81                    	cmpl	$-127, %edi
100003528: ba 81 00 00 00              	movl	$129, %edx
10000352d: 0f 4e fa                    	cmovlel	%edx, %edi
100003530: 41 88 3c 06                 	movb	%dil, (%r14,%rax)
100003534: 44 01 eb                    	addl	%r13d, %ebx
100003537: 3b 5d d0                    	cmpl	-48(%rbp), %ebx
10000353a: 0f 82 00 ff ff ff           	jb	-256 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x120>
100003540: 8b 45 b4                    	movl	-76(%rbp), %eax
100003543: 44 01 e8                    	addl	%r13d, %eax
100003546: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
10000354a: 03 55 bc                    	addl	-68(%rbp), %edx
10000354d: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003550: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003553: 0f 82 b7 fe ff ff           	jb	-329 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xf0>
100003559: e9 72 fe ff ff              	jmp	-398 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
10000355e: 66 90                       	nop
100003560: 31 c0                       	xorl	%eax, %eax
100003562: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000356c: 0f 1f 40 00                 	nopl	(%rax)
100003570: 44 01 e8                    	addl	%r13d, %eax
100003573: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003576: 72 f8                       	jb	-8 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x250>
100003578: e9 53 fe ff ff              	jmp	-429 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
10000357d: 5b                          	popq	%rbx
10000357e: 41 5c                       	popq	%r12
100003580: 41 5d                       	popq	%r13
100003582: 41 5e                       	popq	%r14
100003584: 41 5f                       	popq	%r15
100003586: 5d                          	popq	%rbp
100003587: c5 f8 77                    	vzeroupper
10000358a: c3                          	retq
10000358b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003590 __Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj:
100003590: 55                          	pushq	%rbp
100003591: 48 89 e5                    	movq	%rsp, %rbp
100003594: 41 57                       	pushq	%r15
100003596: 41 56                       	pushq	%r14
100003598: 41 55                       	pushq	%r13
10000359a: 41 54                       	pushq	%r12
10000359c: 53                          	pushq	%rbx
10000359d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
1000035a4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
1000035a8: 45 85 c9                    	testl	%r9d, %r9d
1000035ab: 0f 84 3b 02 00 00           	je	571 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
1000035b1: 49 89 d2                    	movq	%rdx, %r10
1000035b4: 49 89 f4                    	movq	%rsi, %r12
1000035b7: 8b 5d 20                    	movl	32(%rbp), %ebx
1000035ba: 8b 45 18                    	movl	24(%rbp), %eax
1000035bd: 8b 55 10                    	movl	16(%rbp), %edx
1000035c0: 89 d9                       	movl	%ebx, %ecx
1000035c2: d1 e9                       	shrl	%ecx
1000035c4: 29 ca                       	subl	%ecx, %edx
1000035c6: 83 c2 fe                    	addl	$-2, %edx
1000035c9: 89 55 d4                    	movl	%edx, -44(%rbp)
1000035cc: 89 c2                       	movl	%eax, %edx
1000035ce: 29 ca                       	subl	%ecx, %edx
1000035d0: 83 c2 fe                    	addl	$-2, %edx
1000035d3: 41 bb 01 00 00 00           	movl	$1, %r11d
1000035d9: 41 29 cb                    	subl	%ecx, %r11d
1000035dc: 44 89 c9                    	movl	%r9d, %ecx
1000035df: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000035e3: 8d 0c c5 00 00 00 00        	leal	(,%rax,8), %ecx
1000035ea: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000035ee: 89 d9                       	movl	%ebx, %ecx
1000035f0: 0f af c8                    	imull	%eax, %ecx
1000035f3: c1 e1 02                    	shll	$2, %ecx
1000035f6: 89 4d c4                    	movl	%ecx, -60(%rbp)
1000035f9: 44 8d 2c 9d 00 00 00 00     	leal	(,%rbx,4), %r13d
100003601: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
100003608: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000360c: 31 c0                       	xorl	%eax, %eax
10000360e: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003612: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003616: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
10000361d: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003621: 89 55 b4                    	movl	%edx, -76(%rbp)
100003624: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003628: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
10000362c: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003630: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003634: 75 25                       	jne	37 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xcb>
100003636: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003640: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003644: 48 ff c0                    	incq	%rax
100003647: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
10000364b: 0f 84 9b 01 00 00           	je	411 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
100003651: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003655: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003659: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
10000365b: 85 d2                       	testl	%edx, %edx
10000365d: 0f 84 6d 01 00 00           	je	365 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x240>
100003663: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003667: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
10000366e: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003671: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003675: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
10000367c: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003680: 48 8d 46 0c                 	leaq	12(%rsi), %rax
100003684: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000368b: 48 8d 46 18                 	leaq	24(%rsi), %rax
10000368f: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003696: 31 c0                       	xorl	%eax, %eax
100003698: 31 c9                       	xorl	%ecx, %ecx
10000369a: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
1000036a1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000036ab: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000036b0: 89 4d d0                    	movl	%ecx, -48(%rbp)
1000036b3: 89 45 c0                    	movl	%eax, -64(%rbp)
1000036b6: 41 89 c7                    	movl	%eax, %r15d
1000036b9: 45 31 f6                    	xorl	%r14d, %r14d
1000036bc: 0f 1f 40 00                 	nopl	(%rax)
1000036c0: 44 89 ff                    	movl	%r15d, %edi
1000036c3: 4c 01 e7                    	addq	%r12, %rdi
1000036c6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
1000036cd: e8 7e 0b 00 00              	callq	2942 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000036d2: 0f bf d8                    	movswl	%ax, %ebx
1000036d5: 48 8b 45 90                 	movq	-112(%rbp), %rax
1000036d9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000036dd: 4c 01 e7                    	addq	%r12, %rdi
1000036e0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
1000036e7: e8 64 0b 00 00              	callq	2916 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000036ec: 44 0f bf e8                 	movswl	%ax, %r13d
1000036f0: 41 01 dd                    	addl	%ebx, %r13d
1000036f3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000036f7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000036fb: 4c 01 e7                    	addq	%r12, %rdi
1000036fe: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003705: e8 46 0b 00 00              	callq	2886 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
10000370a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
10000370e: 8b 5d 20                    	movl	32(%rbp), %ebx
100003711: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003718: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
10000371c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003720: 98                          	cwtl
100003721: 44 01 e8                    	addl	%r13d, %eax
100003724: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100003728: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000372f: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003734: 01 c1                       	addl	%eax, %ecx
100003736: 41 0f af c8                 	imull	%r8d, %ecx
10000373a: 89 cf                       	movl	%ecx, %edi
10000373c: c1 ff 1f                    	sarl	$31, %edi
10000373f: c1 ef 12                    	shrl	$18, %edi
100003742: 01 cf                       	addl	%ecx, %edi
100003744: c1 ff 0e                    	sarl	$14, %edi
100003747: 81 ff 80 00 00 00           	cmpl	$128, %edi
10000374d: b8 7f 00 00 00              	movl	$127, %eax
100003752: 0f 4d f8                    	cmovgel	%eax, %edi
100003755: 44 89 f0                    	movl	%r14d, %eax
100003758: 31 d2                       	xorl	%edx, %edx
10000375a: f7 f3                       	divl	%ebx
10000375c: 89 c1                       	movl	%eax, %ecx
10000375e: 8b 45 d0                    	movl	-48(%rbp), %eax
100003761: 31 d2                       	xorl	%edx, %edx
100003763: f7 f3                       	divl	%ebx
100003765: 89 c6                       	movl	%eax, %esi
100003767: 44 89 d8                    	movl	%r11d, %eax
10000376a: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
10000376e: 31 d2                       	xorl	%edx, %edx
100003770: f7 f3                       	divl	%ebx
100003772: 8b 55 b4                    	movl	-76(%rbp), %edx
100003775: 44 01 de                    	addl	%r11d, %esi
100003778: 0f af c6                    	imull	%esi, %eax
10000377b: be 81 00 00 00              	movl	$129, %esi
100003780: 44 01 d9                    	addl	%r11d, %ecx
100003783: 01 c1                       	addl	%eax, %ecx
100003785: 41 0f af c9                 	imull	%r9d, %ecx
100003789: 03 4d c8                    	addl	-56(%rbp), %ecx
10000378c: 83 ff 81                    	cmpl	$-127, %edi
10000378f: 0f 4e fe                    	cmovlel	%esi, %edi
100003792: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003796: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
10000379a: 41 01 de                    	addl	%ebx, %r14d
10000379d: 45 01 ef                    	addl	%r13d, %r15d
1000037a0: 41 39 d6                    	cmpl	%edx, %r14d
1000037a3: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x130>
1000037a9: 8b 4d d0                    	movl	-48(%rbp), %ecx
1000037ac: 01 d9                       	addl	%ebx, %ecx
1000037ae: 8b 45 c0                    	movl	-64(%rbp), %eax
1000037b1: 03 45 c4                    	addl	-60(%rbp), %eax
1000037b4: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
1000037b7: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x120>
1000037bd: e9 7e fe ff ff              	jmp	-386 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
1000037c2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000037cc: 0f 1f 40 00                 	nopl	(%rax)
1000037d0: 31 c0                       	xorl	%eax, %eax
1000037d2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000037dc: 0f 1f 40 00                 	nopl	(%rax)
1000037e0: 01 d8                       	addl	%ebx, %eax
1000037e2: 3b 45 d4                    	cmpl	-44(%rbp), %eax
1000037e5: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x250>
1000037e7: e9 54 fe ff ff              	jmp	-428 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
1000037ec: 48 81 c4 88 00 00 00        	addq	$136, %rsp
1000037f3: 5b                          	popq	%rbx
1000037f4: 41 5c                       	popq	%r12
1000037f6: 41 5d                       	popq	%r13
1000037f8: 41 5e                       	popq	%r14
1000037fa: 41 5f                       	popq	%r15
1000037fc: 5d                          	popq	%rbp
1000037fd: c3                          	retq
1000037fe: 66 90                       	nop

0000000100003800 __Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003800: 55                          	pushq	%rbp
100003801: 48 89 e5                    	movq	%rsp, %rbp
100003804: 41 57                       	pushq	%r15
100003806: 41 56                       	pushq	%r14
100003808: 41 55                       	pushq	%r13
10000380a: 41 54                       	pushq	%r12
10000380c: 53                          	pushq	%rbx
10000380d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003814: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003818: 45 85 c9                    	testl	%r9d, %r9d
10000381b: 0f 84 3b 02 00 00           	je	571 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
100003821: 49 89 d2                    	movq	%rdx, %r10
100003824: 49 89 f4                    	movq	%rsi, %r12
100003827: 8b 5d 20                    	movl	32(%rbp), %ebx
10000382a: 8b 45 18                    	movl	24(%rbp), %eax
10000382d: 8b 55 10                    	movl	16(%rbp), %edx
100003830: 89 d9                       	movl	%ebx, %ecx
100003832: d1 e9                       	shrl	%ecx
100003834: 29 ca                       	subl	%ecx, %edx
100003836: 83 c2 fe                    	addl	$-2, %edx
100003839: 89 55 d4                    	movl	%edx, -44(%rbp)
10000383c: 89 c2                       	movl	%eax, %edx
10000383e: 29 ca                       	subl	%ecx, %edx
100003840: 83 c2 fe                    	addl	$-2, %edx
100003843: 41 bb 01 00 00 00           	movl	$1, %r11d
100003849: 41 29 cb                    	subl	%ecx, %r11d
10000384c: 44 89 c9                    	movl	%r9d, %ecx
10000384f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003853: 89 c1                       	movl	%eax, %ecx
100003855: c1 e1 04                    	shll	$4, %ecx
100003858: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
10000385c: 89 d9                       	movl	%ebx, %ecx
10000385e: 0f af c8                    	imull	%eax, %ecx
100003861: c1 e1 03                    	shll	$3, %ecx
100003864: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003867: 44 8d 2c dd 00 00 00 00     	leal	(,%rbx,8), %r13d
10000386f: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003876: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000387a: 31 c0                       	xorl	%eax, %eax
10000387c: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003880: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003884: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
10000388b: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
10000388f: 89 55 b4                    	movl	%edx, -76(%rbp)
100003892: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003896: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
10000389a: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000389e: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000038a2: 75 27                       	jne	39 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xcb>
1000038a4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000038ae: 66 90                       	nop
1000038b0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000038b4: 48 ff c0                    	incq	%rax
1000038b7: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
1000038bb: 0f 84 9b 01 00 00           	je	411 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
1000038c1: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000038c5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000038c9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
1000038cb: 85 d2                       	testl	%edx, %edx
1000038cd: 0f 84 6d 01 00 00           	je	365 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x240>
1000038d3: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000038d7: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
1000038de: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
1000038e1: 48 8b 45 a0                 	movq	-96(%rbp), %rax
1000038e5: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
1000038ec: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
1000038f0: 48 8d 46 18                 	leaq	24(%rsi), %rax
1000038f4: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
1000038fb: 48 8d 46 30                 	leaq	48(%rsi), %rax
1000038ff: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003906: 31 c0                       	xorl	%eax, %eax
100003908: 31 c9                       	xorl	%ecx, %ecx
10000390a: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003911: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000391b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003920: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003923: 89 45 c0                    	movl	%eax, -64(%rbp)
100003926: 41 89 c7                    	movl	%eax, %r15d
100003929: 45 31 f6                    	xorl	%r14d, %r14d
10000392c: 0f 1f 40 00                 	nopl	(%rax)
100003930: 44 89 ff                    	movl	%r15d, %edi
100003933: 4c 01 e7                    	addq	%r12, %rdi
100003936: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
10000393d: e8 7e 09 00 00              	callq	2430 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003942: 0f bf d8                    	movswl	%ax, %ebx
100003945: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003949: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000394d: 4c 01 e7                    	addq	%r12, %rdi
100003950: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003957: e8 64 09 00 00              	callq	2404 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
10000395c: 44 0f bf e8                 	movswl	%ax, %r13d
100003960: 41 01 dd                    	addl	%ebx, %r13d
100003963: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003967: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000396b: 4c 01 e7                    	addq	%r12, %rdi
10000396e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003975: e8 46 09 00 00              	callq	2374 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
10000397a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
10000397e: 8b 5d 20                    	movl	32(%rbp), %ebx
100003981: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003988: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
10000398c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003990: 98                          	cwtl
100003991: 44 01 e8                    	addl	%r13d, %eax
100003994: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100003998: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000399f: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
1000039a4: 01 c1                       	addl	%eax, %ecx
1000039a6: 41 0f af c8                 	imull	%r8d, %ecx
1000039aa: 89 cf                       	movl	%ecx, %edi
1000039ac: c1 ff 1f                    	sarl	$31, %edi
1000039af: c1 ef 12                    	shrl	$18, %edi
1000039b2: 01 cf                       	addl	%ecx, %edi
1000039b4: c1 ff 0e                    	sarl	$14, %edi
1000039b7: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000039bd: b8 7f 00 00 00              	movl	$127, %eax
1000039c2: 0f 4d f8                    	cmovgel	%eax, %edi
1000039c5: 44 89 f0                    	movl	%r14d, %eax
1000039c8: 31 d2                       	xorl	%edx, %edx
1000039ca: f7 f3                       	divl	%ebx
1000039cc: 89 c1                       	movl	%eax, %ecx
1000039ce: 8b 45 d0                    	movl	-48(%rbp), %eax
1000039d1: 31 d2                       	xorl	%edx, %edx
1000039d3: f7 f3                       	divl	%ebx
1000039d5: 89 c6                       	movl	%eax, %esi
1000039d7: 44 89 d8                    	movl	%r11d, %eax
1000039da: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
1000039de: 31 d2                       	xorl	%edx, %edx
1000039e0: f7 f3                       	divl	%ebx
1000039e2: 8b 55 b4                    	movl	-76(%rbp), %edx
1000039e5: 44 01 de                    	addl	%r11d, %esi
1000039e8: 0f af c6                    	imull	%esi, %eax
1000039eb: be 81 00 00 00              	movl	$129, %esi
1000039f0: 44 01 d9                    	addl	%r11d, %ecx
1000039f3: 01 c1                       	addl	%eax, %ecx
1000039f5: 41 0f af c9                 	imull	%r9d, %ecx
1000039f9: 03 4d c8                    	addl	-56(%rbp), %ecx
1000039fc: 83 ff 81                    	cmpl	$-127, %edi
1000039ff: 0f 4e fe                    	cmovlel	%esi, %edi
100003a02: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003a06: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003a0a: 41 01 de                    	addl	%ebx, %r14d
100003a0d: 45 01 ef                    	addl	%r13d, %r15d
100003a10: 41 39 d6                    	cmpl	%edx, %r14d
100003a13: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x130>
100003a19: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003a1c: 01 d9                       	addl	%ebx, %ecx
100003a1e: 8b 45 c0                    	movl	-64(%rbp), %eax
100003a21: 03 45 c4                    	addl	-60(%rbp), %eax
100003a24: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
100003a27: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x120>
100003a2d: e9 7e fe ff ff              	jmp	-386 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
100003a32: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003a3c: 0f 1f 40 00                 	nopl	(%rax)
100003a40: 31 c0                       	xorl	%eax, %eax
100003a42: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003a4c: 0f 1f 40 00                 	nopl	(%rax)
100003a50: 01 d8                       	addl	%ebx, %eax
100003a52: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003a55: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x250>
100003a57: e9 54 fe ff ff              	jmp	-428 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
100003a5c: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003a63: 5b                          	popq	%rbx
100003a64: 41 5c                       	popq	%r12
100003a66: 41 5d                       	popq	%r13
100003a68: 41 5e                       	popq	%r14
100003a6a: 41 5f                       	popq	%r15
100003a6c: 5d                          	popq	%rbp
100003a6d: c3                          	retq
100003a6e: 66 90                       	nop

0000000100003a70 __Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj:
100003a70: 55                          	pushq	%rbp
100003a71: 48 89 e5                    	movq	%rsp, %rbp
100003a74: 41 57                       	pushq	%r15
100003a76: 41 56                       	pushq	%r14
100003a78: 41 55                       	pushq	%r13
100003a7a: 41 54                       	pushq	%r12
100003a7c: 53                          	pushq	%rbx
100003a7d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003a84: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003a88: 45 85 c9                    	testl	%r9d, %r9d
100003a8b: 0f 84 1b 02 00 00           	je	539 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003a91: 49 89 d2                    	movq	%rdx, %r10
100003a94: 49 89 f4                    	movq	%rsi, %r12
100003a97: 8b 5d 20                    	movl	32(%rbp), %ebx
100003a9a: 8b 45 18                    	movl	24(%rbp), %eax
100003a9d: 8b 55 10                    	movl	16(%rbp), %edx
100003aa0: 89 d9                       	movl	%ebx, %ecx
100003aa2: d1 e9                       	shrl	%ecx
100003aa4: 29 ca                       	subl	%ecx, %edx
100003aa6: 83 c2 fe                    	addl	$-2, %edx
100003aa9: 89 55 d4                    	movl	%edx, -44(%rbp)
100003aac: 89 c2                       	movl	%eax, %edx
100003aae: 29 ca                       	subl	%ecx, %edx
100003ab0: 83 c2 fe                    	addl	$-2, %edx
100003ab3: 41 bb 01 00 00 00           	movl	$1, %r11d
100003ab9: 41 29 cb                    	subl	%ecx, %r11d
100003abc: 44 89 c9                    	movl	%r9d, %ecx
100003abf: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003ac3: 89 c1                       	movl	%eax, %ecx
100003ac5: c1 e1 05                    	shll	$5, %ecx
100003ac8: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003acc: 89 d9                       	movl	%ebx, %ecx
100003ace: 0f af c8                    	imull	%eax, %ecx
100003ad1: c1 e1 04                    	shll	$4, %ecx
100003ad4: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003ad7: 41 89 dd                    	movl	%ebx, %r13d
100003ada: 41 c1 e5 04                 	shll	$4, %r13d
100003ade: c1 e0 04                    	shll	$4, %eax
100003ae1: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003ae5: 31 c0                       	xorl	%eax, %eax
100003ae7: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003aeb: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003aef: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003af6: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003afa: 89 55 b4                    	movl	%edx, -76(%rbp)
100003afd: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003b01: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100003b05: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003b09: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003b0d: 75 1c                       	jne	28 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xbb>
100003b0f: 90                          	nop
100003b10: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003b14: 48 ff c0                    	incq	%rax
100003b17: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003b1b: 0f 84 8b 01 00 00           	je	395 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003b21: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003b25: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003b29: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003b2b: 85 d2                       	testl	%edx, %edx
100003b2d: 0f 84 5d 01 00 00           	je	349 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x220>
100003b33: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003b37: c1 e0 04                    	shll	$4, %eax
100003b3a: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003b3d: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003b41: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003b48: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003b4c: 48 8d 46 30                 	leaq	48(%rsi), %rax
100003b50: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003b57: 48 8d 46 60                 	leaq	96(%rsi), %rax
100003b5b: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003b62: 31 c0                       	xorl	%eax, %eax
100003b64: 31 c9                       	xorl	%ecx, %ecx
100003b66: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003b6d: 0f 1f 00                    	nopl	(%rax)
100003b70: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003b73: 89 45 c0                    	movl	%eax, -64(%rbp)
100003b76: 41 89 c7                    	movl	%eax, %r15d
100003b79: 45 31 f6                    	xorl	%r14d, %r14d
100003b7c: 0f 1f 40 00                 	nopl	(%rax)
100003b80: 44 89 ff                    	movl	%r15d, %edi
100003b83: 4c 01 e7                    	addq	%r12, %rdi
100003b86: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003b8d: e8 de 07 00 00              	callq	2014 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003b92: 0f bf d8                    	movswl	%ax, %ebx
100003b95: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003b99: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003b9d: 4c 01 e7                    	addq	%r12, %rdi
100003ba0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003ba7: e8 c4 07 00 00              	callq	1988 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003bac: 44 0f bf e8                 	movswl	%ax, %r13d
100003bb0: 41 01 dd                    	addl	%ebx, %r13d
100003bb3: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003bb7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003bbb: 4c 01 e7                    	addq	%r12, %rdi
100003bbe: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003bc5: e8 a6 07 00 00              	callq	1958 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003bca: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003bce: 8b 5d 20                    	movl	32(%rbp), %ebx
100003bd1: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003bd8: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
100003bdc: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003be0: 98                          	cwtl
100003be1: 44 01 e8                    	addl	%r13d, %eax
100003be4: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100003be8: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003bef: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003bf4: 01 c1                       	addl	%eax, %ecx
100003bf6: 41 0f af c8                 	imull	%r8d, %ecx
100003bfa: 89 cf                       	movl	%ecx, %edi
100003bfc: c1 ff 1f                    	sarl	$31, %edi
100003bff: c1 ef 12                    	shrl	$18, %edi
100003c02: 01 cf                       	addl	%ecx, %edi
100003c04: c1 ff 0e                    	sarl	$14, %edi
100003c07: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003c0d: b8 7f 00 00 00              	movl	$127, %eax
100003c12: 0f 4d f8                    	cmovgel	%eax, %edi
100003c15: 44 89 f0                    	movl	%r14d, %eax
100003c18: 31 d2                       	xorl	%edx, %edx
100003c1a: f7 f3                       	divl	%ebx
100003c1c: 89 c1                       	movl	%eax, %ecx
100003c1e: 8b 45 d0                    	movl	-48(%rbp), %eax
100003c21: 31 d2                       	xorl	%edx, %edx
100003c23: f7 f3                       	divl	%ebx
100003c25: 89 c6                       	movl	%eax, %esi
100003c27: 44 89 d8                    	movl	%r11d, %eax
100003c2a: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
100003c2e: 31 d2                       	xorl	%edx, %edx
100003c30: f7 f3                       	divl	%ebx
100003c32: 8b 55 b4                    	movl	-76(%rbp), %edx
100003c35: 44 01 de                    	addl	%r11d, %esi
100003c38: 0f af c6                    	imull	%esi, %eax
100003c3b: be 81 00 00 00              	movl	$129, %esi
100003c40: 44 01 d9                    	addl	%r11d, %ecx
100003c43: 01 c1                       	addl	%eax, %ecx
100003c45: 41 0f af c9                 	imull	%r9d, %ecx
100003c49: 03 4d c8                    	addl	-56(%rbp), %ecx
100003c4c: 83 ff 81                    	cmpl	$-127, %edi
100003c4f: 0f 4e fe                    	cmovlel	%esi, %edi
100003c52: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003c56: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003c5a: 41 01 de                    	addl	%ebx, %r14d
100003c5d: 45 01 ef                    	addl	%r13d, %r15d
100003c60: 41 39 d6                    	cmpl	%edx, %r14d
100003c63: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003c69: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003c6c: 01 d9                       	addl	%ebx, %ecx
100003c6e: 8b 45 c0                    	movl	-64(%rbp), %eax
100003c71: 03 45 c4                    	addl	-60(%rbp), %eax
100003c74: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
100003c77: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003c7d: e9 8e fe ff ff              	jmp	-370 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003c82: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003c8c: 0f 1f 40 00                 	nopl	(%rax)
100003c90: 31 c0                       	xorl	%eax, %eax
100003c92: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003c9c: 0f 1f 40 00                 	nopl	(%rax)
100003ca0: 01 d8                       	addl	%ebx, %eax
100003ca2: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003ca5: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x230>
100003ca7: e9 64 fe ff ff              	jmp	-412 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003cac: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003cb3: 5b                          	popq	%rbx
100003cb4: 41 5c                       	popq	%r12
100003cb6: 41 5d                       	popq	%r13
100003cb8: 41 5e                       	popq	%r14
100003cba: 41 5f                       	popq	%r15
100003cbc: 5d                          	popq	%rbp
100003cbd: c3                          	retq
100003cbe: 66 90                       	nop

0000000100003cc0 __Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj:
100003cc0: 55                          	pushq	%rbp
100003cc1: 48 89 e5                    	movq	%rsp, %rbp
100003cc4: 41 57                       	pushq	%r15
100003cc6: 41 56                       	pushq	%r14
100003cc8: 41 55                       	pushq	%r13
100003cca: 41 54                       	pushq	%r12
100003ccc: 53                          	pushq	%rbx
100003ccd: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003cd4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003cd8: 45 85 c9                    	testl	%r9d, %r9d
100003cdb: 0f 84 1b 02 00 00           	je	539 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003ce1: 49 89 d2                    	movq	%rdx, %r10
100003ce4: 49 89 f4                    	movq	%rsi, %r12
100003ce7: 8b 5d 20                    	movl	32(%rbp), %ebx
100003cea: 8b 45 18                    	movl	24(%rbp), %eax
100003ced: 8b 55 10                    	movl	16(%rbp), %edx
100003cf0: 89 d9                       	movl	%ebx, %ecx
100003cf2: d1 e9                       	shrl	%ecx
100003cf4: 29 ca                       	subl	%ecx, %edx
100003cf6: 83 c2 fe                    	addl	$-2, %edx
100003cf9: 89 55 d4                    	movl	%edx, -44(%rbp)
100003cfc: 89 c2                       	movl	%eax, %edx
100003cfe: 29 ca                       	subl	%ecx, %edx
100003d00: 83 c2 fe                    	addl	$-2, %edx
100003d03: 41 bb 01 00 00 00           	movl	$1, %r11d
100003d09: 41 29 cb                    	subl	%ecx, %r11d
100003d0c: 44 89 c9                    	movl	%r9d, %ecx
100003d0f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003d13: 89 c1                       	movl	%eax, %ecx
100003d15: c1 e1 06                    	shll	$6, %ecx
100003d18: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003d1c: 89 d9                       	movl	%ebx, %ecx
100003d1e: 0f af c8                    	imull	%eax, %ecx
100003d21: c1 e1 05                    	shll	$5, %ecx
100003d24: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003d27: 41 89 dd                    	movl	%ebx, %r13d
100003d2a: 41 c1 e5 05                 	shll	$5, %r13d
100003d2e: c1 e0 05                    	shll	$5, %eax
100003d31: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003d35: 31 c0                       	xorl	%eax, %eax
100003d37: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003d3b: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003d3f: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003d46: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003d4a: 89 55 b4                    	movl	%edx, -76(%rbp)
100003d4d: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003d51: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100003d55: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003d59: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003d5d: 75 1c                       	jne	28 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xbb>
100003d5f: 90                          	nop
100003d60: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003d64: 48 ff c0                    	incq	%rax
100003d67: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003d6b: 0f 84 8b 01 00 00           	je	395 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003d71: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003d75: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003d79: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003d7b: 85 d2                       	testl	%edx, %edx
100003d7d: 0f 84 5d 01 00 00           	je	349 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x220>
100003d83: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003d87: c1 e0 05                    	shll	$5, %eax
100003d8a: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003d8d: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003d91: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003d98: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003d9c: 48 8d 46 60                 	leaq	96(%rsi), %rax
100003da0: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003da7: 48 8d 86 c0 00 00 00        	leaq	192(%rsi), %rax
100003dae: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003db5: 31 c0                       	xorl	%eax, %eax
100003db7: 31 c9                       	xorl	%ecx, %ecx
100003db9: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003dc0: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003dc3: 89 45 c0                    	movl	%eax, -64(%rbp)
100003dc6: 41 89 c7                    	movl	%eax, %r15d
100003dc9: 45 31 f6                    	xorl	%r14d, %r14d
100003dcc: 0f 1f 40 00                 	nopl	(%rax)
100003dd0: 44 89 ff                    	movl	%r15d, %edi
100003dd3: 4c 01 e7                    	addq	%r12, %rdi
100003dd6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003ddd: e8 0e 08 00 00              	callq	2062 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100003de2: 0f bf d8                    	movswl	%ax, %ebx
100003de5: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003de9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003ded: 4c 01 e7                    	addq	%r12, %rdi
100003df0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003df7: e8 f4 07 00 00              	callq	2036 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100003dfc: 44 0f bf e8                 	movswl	%ax, %r13d
100003e00: 41 01 dd                    	addl	%ebx, %r13d
100003e03: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003e07: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003e0b: 4c 01 e7                    	addq	%r12, %rdi
100003e0e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003e15: e8 d6 07 00 00              	callq	2006 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100003e1a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003e1e: 8b 5d 20                    	movl	32(%rbp), %ebx
100003e21: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003e28: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
100003e2c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003e30: 98                          	cwtl
100003e31: 44 01 e8                    	addl	%r13d, %eax
100003e34: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100003e38: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003e3f: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003e44: 01 c1                       	addl	%eax, %ecx
100003e46: 41 0f af c8                 	imull	%r8d, %ecx
100003e4a: 89 cf                       	movl	%ecx, %edi
100003e4c: c1 ff 1f                    	sarl	$31, %edi
100003e4f: c1 ef 12                    	shrl	$18, %edi
100003e52: 01 cf                       	addl	%ecx, %edi
100003e54: c1 ff 0e                    	sarl	$14, %edi
100003e57: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003e5d: b8 7f 00 00 00              	movl	$127, %eax
100003e62: 0f 4d f8                    	cmovgel	%eax, %edi
100003e65: 44 89 f0                    	movl	%r14d, %eax
100003e68: 31 d2                       	xorl	%edx, %edx
100003e6a: f7 f3                       	divl	%ebx
100003e6c: 89 c1                       	movl	%eax, %ecx
100003e6e: 8b 45 d0                    	movl	-48(%rbp), %eax
100003e71: 31 d2                       	xorl	%edx, %edx
100003e73: f7 f3                       	divl	%ebx
100003e75: 89 c6                       	movl	%eax, %esi
100003e77: 44 89 d8                    	movl	%r11d, %eax
100003e7a: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
100003e7e: 31 d2                       	xorl	%edx, %edx
100003e80: f7 f3                       	divl	%ebx
100003e82: 8b 55 b4                    	movl	-76(%rbp), %edx
100003e85: 44 01 de                    	addl	%r11d, %esi
100003e88: 0f af c6                    	imull	%esi, %eax
100003e8b: be 81 00 00 00              	movl	$129, %esi
100003e90: 44 01 d9                    	addl	%r11d, %ecx
100003e93: 01 c1                       	addl	%eax, %ecx
100003e95: 41 0f af c9                 	imull	%r9d, %ecx
100003e99: 03 4d c8                    	addl	-56(%rbp), %ecx
100003e9c: 83 ff 81                    	cmpl	$-127, %edi
100003e9f: 0f 4e fe                    	cmovlel	%esi, %edi
100003ea2: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003ea6: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003eaa: 41 01 de                    	addl	%ebx, %r14d
100003ead: 45 01 ef                    	addl	%r13d, %r15d
100003eb0: 41 39 d6                    	cmpl	%edx, %r14d
100003eb3: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003eb9: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003ebc: 01 d9                       	addl	%ebx, %ecx
100003ebe: 8b 45 c0                    	movl	-64(%rbp), %eax
100003ec1: 03 45 c4                    	addl	-60(%rbp), %eax
100003ec4: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
100003ec7: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003ecd: e9 8e fe ff ff              	jmp	-370 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003ed2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003edc: 0f 1f 40 00                 	nopl	(%rax)
100003ee0: 31 c0                       	xorl	%eax, %eax
100003ee2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003eec: 0f 1f 40 00                 	nopl	(%rax)
100003ef0: 01 d8                       	addl	%ebx, %eax
100003ef2: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003ef5: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x230>
100003ef7: e9 64 fe ff ff              	jmp	-412 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003efc: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003f03: 5b                          	popq	%rbx
100003f04: 41 5c                       	popq	%r12
100003f06: 41 5d                       	popq	%r13
100003f08: 41 5e                       	popq	%r14
100003f0a: 41 5f                       	popq	%r15
100003f0c: 5d                          	popq	%rbp
100003f0d: c3                          	retq
100003f0e: 66 90                       	nop

0000000100003f10 __Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj:
100003f10: 55                          	pushq	%rbp
100003f11: 48 89 e5                    	movq	%rsp, %rbp
100003f14: 41 57                       	pushq	%r15
100003f16: 41 56                       	pushq	%r14
100003f18: 41 55                       	pushq	%r13
100003f1a: 41 54                       	pushq	%r12
100003f1c: 53                          	pushq	%rbx
100003f1d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003f24: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003f28: 45 85 c9                    	testl	%r9d, %r9d
100003f2b: 0f 84 2b 02 00 00           	je	555 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x24c>
100003f31: 49 89 d2                    	movq	%rdx, %r10
100003f34: 49 89 f4                    	movq	%rsi, %r12
100003f37: 8b 5d 20                    	movl	32(%rbp), %ebx
100003f3a: 8b 45 18                    	movl	24(%rbp), %eax
100003f3d: 8b 55 10                    	movl	16(%rbp), %edx
100003f40: 89 d9                       	movl	%ebx, %ecx
100003f42: d1 e9                       	shrl	%ecx
100003f44: 29 ca                       	subl	%ecx, %edx
100003f46: 83 c2 fe                    	addl	$-2, %edx
100003f49: 89 55 d4                    	movl	%edx, -44(%rbp)
100003f4c: 89 c2                       	movl	%eax, %edx
100003f4e: 29 ca                       	subl	%ecx, %edx
100003f50: 83 c2 fe                    	addl	$-2, %edx
100003f53: 41 bb 01 00 00 00           	movl	$1, %r11d
100003f59: 41 29 cb                    	subl	%ecx, %r11d
100003f5c: 44 89 c9                    	movl	%r9d, %ecx
100003f5f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003f63: 89 c1                       	movl	%eax, %ecx
100003f65: c1 e1 07                    	shll	$7, %ecx
100003f68: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003f6c: 89 d9                       	movl	%ebx, %ecx
100003f6e: 0f af c8                    	imull	%eax, %ecx
100003f71: c1 e1 06                    	shll	$6, %ecx
100003f74: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003f77: 41 89 dd                    	movl	%ebx, %r13d
100003f7a: 41 c1 e5 06                 	shll	$6, %r13d
100003f7e: c1 e0 06                    	shll	$6, %eax
100003f81: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003f85: 31 c0                       	xorl	%eax, %eax
100003f87: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003f8b: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003f8f: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003f96: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003f9a: 89 55 b4                    	movl	%edx, -76(%rbp)
100003f9d: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003fa1: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100003fa5: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003fa9: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003fad: 75 1c                       	jne	28 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xbb>
100003faf: 90                          	nop
100003fb0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003fb4: 48 ff c0                    	incq	%rax
100003fb7: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003fbb: 0f 84 9b 01 00 00           	je	411 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x24c>
100003fc1: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003fc5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003fc9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003fcb: 85 d2                       	testl	%edx, %edx
100003fcd: 0f 84 6d 01 00 00           	je	365 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x230>
100003fd3: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003fd7: c1 e0 06                    	shll	$6, %eax
100003fda: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003fdd: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003fe1: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003fe8: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003fec: 48 8d 86 c0 00 00 00        	leaq	192(%rsi), %rax
100003ff3: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003ffa: 48 8d 86 80 01 00 00        	leaq	384(%rsi), %rax
100004001: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100004008: 31 c0                       	xorl	%eax, %eax
10000400a: 31 c9                       	xorl	%ecx, %ecx
10000400c: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100004013: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000401d: 0f 1f 00                    	nopl	(%rax)
100004020: 89 4d d0                    	movl	%ecx, -48(%rbp)
100004023: 89 45 c0                    	movl	%eax, -64(%rbp)
100004026: 41 89 c7                    	movl	%eax, %r15d
100004029: 45 31 f6                    	xorl	%r14d, %r14d
10000402c: 0f 1f 40 00                 	nopl	(%rax)
100004030: 44 89 ff                    	movl	%r15d, %edi
100004033: 4c 01 e7                    	addq	%r12, %rdi
100004036: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
10000403d: e8 9e 0a 00 00              	callq	2718 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
100004042: 0f bf d8                    	movswl	%ax, %ebx
100004045: 48 8b 45 90                 	movq	-112(%rbp), %rax
100004049: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000404d: 4c 01 e7                    	addq	%r12, %rdi
100004050: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100004057: e8 84 0a 00 00              	callq	2692 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
10000405c: 44 0f bf e8                 	movswl	%ax, %r13d
100004060: 41 01 dd                    	addl	%ebx, %r13d
100004063: 48 8b 45 88                 	movq	-120(%rbp), %rax
100004067: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000406b: 4c 01 e7                    	addq	%r12, %rdi
10000406e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100004075: e8 66 0a 00 00              	callq	2662 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
10000407a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
10000407e: 8b 5d 20                    	movl	32(%rbp), %ebx
100004081: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100004088: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
10000408c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100004090: 98                          	cwtl
100004091: 44 01 e8                    	addl	%r13d, %eax
100004094: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100004098: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000409f: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
1000040a4: 01 c1                       	addl	%eax, %ecx
1000040a6: 41 0f af c8                 	imull	%r8d, %ecx
1000040aa: 89 cf                       	movl	%ecx, %edi
1000040ac: c1 ff 1f                    	sarl	$31, %edi
1000040af: c1 ef 12                    	shrl	$18, %edi
1000040b2: 01 cf                       	addl	%ecx, %edi
1000040b4: c1 ff 0e                    	sarl	$14, %edi
1000040b7: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000040bd: b8 7f 00 00 00              	movl	$127, %eax
1000040c2: 0f 4d f8                    	cmovgel	%eax, %edi
1000040c5: 44 89 f0                    	movl	%r14d, %eax
1000040c8: 31 d2                       	xorl	%edx, %edx
1000040ca: f7 f3                       	divl	%ebx
1000040cc: 89 c1                       	movl	%eax, %ecx
1000040ce: 8b 45 d0                    	movl	-48(%rbp), %eax
1000040d1: 31 d2                       	xorl	%edx, %edx
1000040d3: f7 f3                       	divl	%ebx
1000040d5: 89 c6                       	movl	%eax, %esi
1000040d7: 44 89 d8                    	movl	%r11d, %eax
1000040da: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
1000040de: 31 d2                       	xorl	%edx, %edx
1000040e0: f7 f3                       	divl	%ebx
1000040e2: 8b 55 b4                    	movl	-76(%rbp), %edx
1000040e5: 44 01 de                    	addl	%r11d, %esi
1000040e8: 0f af c6                    	imull	%esi, %eax
1000040eb: be 81 00 00 00              	movl	$129, %esi
1000040f0: 44 01 d9                    	addl	%r11d, %ecx
1000040f3: 01 c1                       	addl	%eax, %ecx
1000040f5: 41 0f af c9                 	imull	%r9d, %ecx
1000040f9: 03 4d c8                    	addl	-56(%rbp), %ecx
1000040fc: 83 ff 81                    	cmpl	$-127, %edi
1000040ff: 0f 4e fe                    	cmovlel	%esi, %edi
100004102: 48 8b 45 80                 	movq	-128(%rbp), %rax
100004106: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
10000410a: 41 01 de                    	addl	%ebx, %r14d
10000410d: 45 01 ef                    	addl	%r13d, %r15d
100004110: 41 39 d6                    	cmpl	%edx, %r14d
100004113: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x120>
100004119: 8b 4d d0                    	movl	-48(%rbp), %ecx
10000411c: 01 d9                       	addl	%ebx, %ecx
10000411e: 8b 45 c0                    	movl	-64(%rbp), %eax
100004121: 03 45 c4                    	addl	-60(%rbp), %eax
100004124: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
100004127: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000412d: e9 7e fe ff ff              	jmp	-386 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100004132: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000413c: 0f 1f 40 00                 	nopl	(%rax)
100004140: 31 c0                       	xorl	%eax, %eax
100004142: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000414c: 0f 1f 40 00                 	nopl	(%rax)
100004150: 01 d8                       	addl	%ebx, %eax
100004152: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100004155: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x240>
100004157: e9 54 fe ff ff              	jmp	-428 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000415c: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100004163: 5b                          	popq	%rbx
100004164: 41 5c                       	popq	%r12
100004166: 41 5d                       	popq	%r13
100004168: 41 5e                       	popq	%r14
10000416a: 41 5f                       	popq	%r15
10000416c: 5d                          	popq	%rbp
10000416d: c3                          	retq
10000416e: 66 90                       	nop

0000000100004170 __Z11microkernelILj1ELj32EasET2_PKT1_S3_:
100004170: 55                          	pushq	%rbp
100004171: 48 89 e5                    	movq	%rsp, %rbp
100004174: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004179: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000417f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004184: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004188: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000418e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004192: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004196: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000419c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041a0: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000041a5: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041a9: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000041ae: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041b2: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000041b7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000041bb: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000041bf: 98                          	cwtl
1000041c0: 5d                          	popq	%rbp
1000041c1: c5 f8 77                    	vzeroupper
1000041c4: c3                          	retq
1000041c5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000041cf: 90                          	nop

00000001000041d0 __Z11microkernelILj1ELj64EasET2_PKT1_S3_:
1000041d0: 55                          	pushq	%rbp
1000041d1: 48 89 e5                    	movq	%rsp, %rbp
1000041d4: c4 e2 7d 20 46 10           	vpmovsxbw	16(%rsi), %ymm0
1000041da: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
1000041e0: c4 e2 7d 20 16              	vpmovsxbw	(%rsi), %ymm2
1000041e5: c4 e2 7d 20 5e 20           	vpmovsxbw	32(%rsi), %ymm3
1000041eb: c4 e2 7d 20 67 10           	vpmovsxbw	16(%rdi), %ymm4
1000041f1: c5 dd d5 c0                 	vpmullw	%ymm0, %ymm4, %ymm0
1000041f5: c4 e2 7d 20 67 30           	vpmovsxbw	48(%rdi), %ymm4
1000041fb: c5 dd d5 c9                 	vpmullw	%ymm1, %ymm4, %ymm1
1000041ff: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004203: c4 e2 7d 20 0f              	vpmovsxbw	(%rdi), %ymm1
100004208: c5 f5 d5 ca                 	vpmullw	%ymm2, %ymm1, %ymm1
10000420c: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004212: c5 ed d5 d3                 	vpmullw	%ymm3, %ymm2, %ymm2
100004216: c5 f5 fd ca                 	vpaddw	%ymm2, %ymm1, %ymm1
10000421a: c5 f5 fd c0                 	vpaddw	%ymm0, %ymm1, %ymm0
10000421e: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004224: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004228: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
10000422d: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004231: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004236: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000423a: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
10000423f: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004243: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004247: 98                          	cwtl
100004248: 5d                          	popq	%rbp
100004249: c5 f8 77                    	vzeroupper
10000424c: c3                          	retq
10000424d: 0f 1f 00                    	nopl	(%rax)

0000000100004250 __Z11microkernelILj3ELj4EasET2_PKT1_S3_:
100004250: 55                          	pushq	%rbp
100004251: 48 89 e5                    	movq	%rsp, %rbp
100004254: c4 e2 79 20 06              	vpmovsxbw	(%rsi), %xmm0
100004259: c4 e2 79 20 0f              	vpmovsxbw	(%rdi), %xmm1
10000425e: c5 f1 d5 c0                 	vpmullw	%xmm0, %xmm1, %xmm0
100004262: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004267: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000426b: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004270: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004274: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004279: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000427d: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004281: 0f be 4e 08                 	movsbl	8(%rsi), %ecx
100004285: 0f be 57 08                 	movsbl	8(%rdi), %edx
100004289: 0f af d1                    	imull	%ecx, %edx
10000428c: 01 c2                       	addl	%eax, %edx
10000428e: 0f be 46 09                 	movsbl	9(%rsi), %eax
100004292: 0f be 4f 09                 	movsbl	9(%rdi), %ecx
100004296: 0f af c8                    	imull	%eax, %ecx
100004299: 01 d1                       	addl	%edx, %ecx
10000429b: 0f be 46 0a                 	movsbl	10(%rsi), %eax
10000429f: 0f be 57 0a                 	movsbl	10(%rdi), %edx
1000042a3: 0f af d0                    	imull	%eax, %edx
1000042a6: 01 ca                       	addl	%ecx, %edx
1000042a8: 0f be 46 0b                 	movsbl	11(%rsi), %eax
1000042ac: 0f be 4f 0b                 	movsbl	11(%rdi), %ecx
1000042b0: 0f af c8                    	imull	%eax, %ecx
1000042b3: 01 d1                       	addl	%edx, %ecx
1000042b5: 0f bf c1                    	movswl	%cx, %eax
1000042b8: 5d                          	popq	%rbp
1000042b9: c3                          	retq
1000042ba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000042c0 __Z11microkernelILj3ELj8EasET2_PKT1_S3_:
1000042c0: 55                          	pushq	%rbp
1000042c1: 48 89 e5                    	movq	%rsp, %rbp
1000042c4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
1000042c9: c4 e2 7d 20 0f              	vpmovsxbw	(%rdi), %ymm1
1000042ce: c5 f5 d5 c0                 	vpmullw	%ymm0, %ymm1, %ymm0
1000042d2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000042d8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000042dc: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000042e1: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000042e5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000042ea: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000042ee: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000042f3: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000042f7: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000042fb: 0f be 4e 10                 	movsbl	16(%rsi), %ecx
1000042ff: 0f be 57 10                 	movsbl	16(%rdi), %edx
100004303: 0f af d1                    	imull	%ecx, %edx
100004306: 01 c2                       	addl	%eax, %edx
100004308: 0f be 46 11                 	movsbl	17(%rsi), %eax
10000430c: 0f be 4f 11                 	movsbl	17(%rdi), %ecx
100004310: 0f af c8                    	imull	%eax, %ecx
100004313: 01 d1                       	addl	%edx, %ecx
100004315: 0f be 46 12                 	movsbl	18(%rsi), %eax
100004319: 0f be 57 12                 	movsbl	18(%rdi), %edx
10000431d: 0f af d0                    	imull	%eax, %edx
100004320: 01 ca                       	addl	%ecx, %edx
100004322: 0f be 46 13                 	movsbl	19(%rsi), %eax
100004326: 0f be 4f 13                 	movsbl	19(%rdi), %ecx
10000432a: 0f af c8                    	imull	%eax, %ecx
10000432d: 01 d1                       	addl	%edx, %ecx
10000432f: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004333: 0f be 57 14                 	movsbl	20(%rdi), %edx
100004337: 0f af d0                    	imull	%eax, %edx
10000433a: 01 ca                       	addl	%ecx, %edx
10000433c: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004340: 0f be 4f 15                 	movsbl	21(%rdi), %ecx
100004344: 0f af c8                    	imull	%eax, %ecx
100004347: 01 d1                       	addl	%edx, %ecx
100004349: 0f be 46 16                 	movsbl	22(%rsi), %eax
10000434d: 0f be 57 16                 	movsbl	22(%rdi), %edx
100004351: 0f af d0                    	imull	%eax, %edx
100004354: 01 ca                       	addl	%ecx, %edx
100004356: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000435a: 0f be 4f 17                 	movsbl	23(%rdi), %ecx
10000435e: 0f af c8                    	imull	%eax, %ecx
100004361: 01 d1                       	addl	%edx, %ecx
100004363: 0f bf c1                    	movswl	%cx, %eax
100004366: 5d                          	popq	%rbp
100004367: c5 f8 77                    	vzeroupper
10000436a: c3                          	retq
10000436b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004370 __Z11microkernelILj3ELj16EasET2_PKT1_S3_:
100004370: 55                          	pushq	%rbp
100004371: 48 89 e5                    	movq	%rsp, %rbp
100004374: 0f be 06                    	movsbl	(%rsi), %eax
100004377: 0f be 0f                    	movsbl	(%rdi), %ecx
10000437a: 0f af c8                    	imull	%eax, %ecx
10000437d: 0f be 46 01                 	movsbl	1(%rsi), %eax
100004381: 0f be 57 01                 	movsbl	1(%rdi), %edx
100004385: 0f af d0                    	imull	%eax, %edx
100004388: 01 ca                       	addl	%ecx, %edx
10000438a: 0f be 46 02                 	movsbl	2(%rsi), %eax
10000438e: 0f be 4f 02                 	movsbl	2(%rdi), %ecx
100004392: 0f af c8                    	imull	%eax, %ecx
100004395: 01 d1                       	addl	%edx, %ecx
100004397: 0f be 46 03                 	movsbl	3(%rsi), %eax
10000439b: 0f be 57 03                 	movsbl	3(%rdi), %edx
10000439f: 0f af d0                    	imull	%eax, %edx
1000043a2: 01 ca                       	addl	%ecx, %edx
1000043a4: 0f be 46 04                 	movsbl	4(%rsi), %eax
1000043a8: 0f be 4f 04                 	movsbl	4(%rdi), %ecx
1000043ac: 0f af c8                    	imull	%eax, %ecx
1000043af: 01 d1                       	addl	%edx, %ecx
1000043b1: 0f be 46 05                 	movsbl	5(%rsi), %eax
1000043b5: 0f be 57 05                 	movsbl	5(%rdi), %edx
1000043b9: 0f af d0                    	imull	%eax, %edx
1000043bc: 01 ca                       	addl	%ecx, %edx
1000043be: 0f be 46 06                 	movsbl	6(%rsi), %eax
1000043c2: 0f be 4f 06                 	movsbl	6(%rdi), %ecx
1000043c6: 0f af c8                    	imull	%eax, %ecx
1000043c9: 01 d1                       	addl	%edx, %ecx
1000043cb: 0f be 46 07                 	movsbl	7(%rsi), %eax
1000043cf: 0f be 57 07                 	movsbl	7(%rdi), %edx
1000043d3: 0f af d0                    	imull	%eax, %edx
1000043d6: 01 ca                       	addl	%ecx, %edx
1000043d8: 0f be 46 08                 	movsbl	8(%rsi), %eax
1000043dc: 0f be 4f 08                 	movsbl	8(%rdi), %ecx
1000043e0: 0f af c8                    	imull	%eax, %ecx
1000043e3: 01 d1                       	addl	%edx, %ecx
1000043e5: 0f be 46 09                 	movsbl	9(%rsi), %eax
1000043e9: 0f be 57 09                 	movsbl	9(%rdi), %edx
1000043ed: 0f af d0                    	imull	%eax, %edx
1000043f0: 01 ca                       	addl	%ecx, %edx
1000043f2: 0f be 46 0a                 	movsbl	10(%rsi), %eax
1000043f6: 0f be 4f 0a                 	movsbl	10(%rdi), %ecx
1000043fa: 0f af c8                    	imull	%eax, %ecx
1000043fd: 01 d1                       	addl	%edx, %ecx
1000043ff: 0f be 46 0b                 	movsbl	11(%rsi), %eax
100004403: 0f be 57 0b                 	movsbl	11(%rdi), %edx
100004407: 0f af d0                    	imull	%eax, %edx
10000440a: 01 ca                       	addl	%ecx, %edx
10000440c: 0f be 46 0c                 	movsbl	12(%rsi), %eax
100004410: 0f be 4f 0c                 	movsbl	12(%rdi), %ecx
100004414: 0f af c8                    	imull	%eax, %ecx
100004417: 01 d1                       	addl	%edx, %ecx
100004419: 0f be 46 0d                 	movsbl	13(%rsi), %eax
10000441d: 0f be 57 0d                 	movsbl	13(%rdi), %edx
100004421: 0f af d0                    	imull	%eax, %edx
100004424: 01 ca                       	addl	%ecx, %edx
100004426: 0f be 46 0e                 	movsbl	14(%rsi), %eax
10000442a: 0f be 4f 0e                 	movsbl	14(%rdi), %ecx
10000442e: 0f af c8                    	imull	%eax, %ecx
100004431: 01 d1                       	addl	%edx, %ecx
100004433: 0f be 46 0f                 	movsbl	15(%rsi), %eax
100004437: 0f be 57 0f                 	movsbl	15(%rdi), %edx
10000443b: 0f af d0                    	imull	%eax, %edx
10000443e: 01 ca                       	addl	%ecx, %edx
100004440: 0f be 46 10                 	movsbl	16(%rsi), %eax
100004444: 0f be 4f 10                 	movsbl	16(%rdi), %ecx
100004448: 0f af c8                    	imull	%eax, %ecx
10000444b: 01 d1                       	addl	%edx, %ecx
10000444d: 0f be 46 11                 	movsbl	17(%rsi), %eax
100004451: 0f be 57 11                 	movsbl	17(%rdi), %edx
100004455: 0f af d0                    	imull	%eax, %edx
100004458: 01 ca                       	addl	%ecx, %edx
10000445a: 0f be 46 12                 	movsbl	18(%rsi), %eax
10000445e: 0f be 4f 12                 	movsbl	18(%rdi), %ecx
100004462: 0f af c8                    	imull	%eax, %ecx
100004465: 01 d1                       	addl	%edx, %ecx
100004467: 0f be 46 13                 	movsbl	19(%rsi), %eax
10000446b: 0f be 57 13                 	movsbl	19(%rdi), %edx
10000446f: 0f af d0                    	imull	%eax, %edx
100004472: 01 ca                       	addl	%ecx, %edx
100004474: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004478: 0f be 4f 14                 	movsbl	20(%rdi), %ecx
10000447c: 0f af c8                    	imull	%eax, %ecx
10000447f: 01 d1                       	addl	%edx, %ecx
100004481: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004485: 0f be 57 15                 	movsbl	21(%rdi), %edx
100004489: 0f af d0                    	imull	%eax, %edx
10000448c: 01 ca                       	addl	%ecx, %edx
10000448e: 0f be 46 16                 	movsbl	22(%rsi), %eax
100004492: 0f be 4f 16                 	movsbl	22(%rdi), %ecx
100004496: 0f af c8                    	imull	%eax, %ecx
100004499: 01 d1                       	addl	%edx, %ecx
10000449b: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000449f: 0f be 57 17                 	movsbl	23(%rdi), %edx
1000044a3: 0f af d0                    	imull	%eax, %edx
1000044a6: 01 ca                       	addl	%ecx, %edx
1000044a8: 0f be 46 18                 	movsbl	24(%rsi), %eax
1000044ac: 0f be 4f 18                 	movsbl	24(%rdi), %ecx
1000044b0: 0f af c8                    	imull	%eax, %ecx
1000044b3: 01 d1                       	addl	%edx, %ecx
1000044b5: 0f be 46 19                 	movsbl	25(%rsi), %eax
1000044b9: 0f be 57 19                 	movsbl	25(%rdi), %edx
1000044bd: 0f af d0                    	imull	%eax, %edx
1000044c0: 01 ca                       	addl	%ecx, %edx
1000044c2: 0f be 46 1a                 	movsbl	26(%rsi), %eax
1000044c6: 0f be 4f 1a                 	movsbl	26(%rdi), %ecx
1000044ca: 0f af c8                    	imull	%eax, %ecx
1000044cd: 01 d1                       	addl	%edx, %ecx
1000044cf: 0f be 46 1b                 	movsbl	27(%rsi), %eax
1000044d3: 0f be 57 1b                 	movsbl	27(%rdi), %edx
1000044d7: 0f af d0                    	imull	%eax, %edx
1000044da: 01 ca                       	addl	%ecx, %edx
1000044dc: 0f be 46 1c                 	movsbl	28(%rsi), %eax
1000044e0: 0f be 4f 1c                 	movsbl	28(%rdi), %ecx
1000044e4: 0f af c8                    	imull	%eax, %ecx
1000044e7: 01 d1                       	addl	%edx, %ecx
1000044e9: 0f be 46 1d                 	movsbl	29(%rsi), %eax
1000044ed: 0f be 57 1d                 	movsbl	29(%rdi), %edx
1000044f1: 0f af d0                    	imull	%eax, %edx
1000044f4: 01 ca                       	addl	%ecx, %edx
1000044f6: 0f be 46 1e                 	movsbl	30(%rsi), %eax
1000044fa: 0f be 4f 1e                 	movsbl	30(%rdi), %ecx
1000044fe: 0f af c8                    	imull	%eax, %ecx
100004501: 01 d1                       	addl	%edx, %ecx
100004503: 0f be 46 1f                 	movsbl	31(%rsi), %eax
100004507: 0f be 57 1f                 	movsbl	31(%rdi), %edx
10000450b: 0f af d0                    	imull	%eax, %edx
10000450e: 01 ca                       	addl	%ecx, %edx
100004510: 0f be 46 20                 	movsbl	32(%rsi), %eax
100004514: 0f be 4f 20                 	movsbl	32(%rdi), %ecx
100004518: 0f af c8                    	imull	%eax, %ecx
10000451b: 01 d1                       	addl	%edx, %ecx
10000451d: 0f be 46 21                 	movsbl	33(%rsi), %eax
100004521: 0f be 57 21                 	movsbl	33(%rdi), %edx
100004525: 0f af d0                    	imull	%eax, %edx
100004528: 01 ca                       	addl	%ecx, %edx
10000452a: 0f be 46 22                 	movsbl	34(%rsi), %eax
10000452e: 0f be 4f 22                 	movsbl	34(%rdi), %ecx
100004532: 0f af c8                    	imull	%eax, %ecx
100004535: 01 d1                       	addl	%edx, %ecx
100004537: 0f be 46 23                 	movsbl	35(%rsi), %eax
10000453b: 0f be 57 23                 	movsbl	35(%rdi), %edx
10000453f: 0f af d0                    	imull	%eax, %edx
100004542: 01 ca                       	addl	%ecx, %edx
100004544: 0f be 46 24                 	movsbl	36(%rsi), %eax
100004548: 0f be 4f 24                 	movsbl	36(%rdi), %ecx
10000454c: 0f af c8                    	imull	%eax, %ecx
10000454f: 01 d1                       	addl	%edx, %ecx
100004551: 0f be 46 25                 	movsbl	37(%rsi), %eax
100004555: 0f be 57 25                 	movsbl	37(%rdi), %edx
100004559: 0f af d0                    	imull	%eax, %edx
10000455c: 01 ca                       	addl	%ecx, %edx
10000455e: 0f be 46 26                 	movsbl	38(%rsi), %eax
100004562: 0f be 4f 26                 	movsbl	38(%rdi), %ecx
100004566: 0f af c8                    	imull	%eax, %ecx
100004569: 01 d1                       	addl	%edx, %ecx
10000456b: 0f be 46 27                 	movsbl	39(%rsi), %eax
10000456f: 0f be 57 27                 	movsbl	39(%rdi), %edx
100004573: 0f af d0                    	imull	%eax, %edx
100004576: 01 ca                       	addl	%ecx, %edx
100004578: 0f be 46 28                 	movsbl	40(%rsi), %eax
10000457c: 0f be 4f 28                 	movsbl	40(%rdi), %ecx
100004580: 0f af c8                    	imull	%eax, %ecx
100004583: 01 d1                       	addl	%edx, %ecx
100004585: 0f be 46 29                 	movsbl	41(%rsi), %eax
100004589: 0f be 57 29                 	movsbl	41(%rdi), %edx
10000458d: 0f af d0                    	imull	%eax, %edx
100004590: 01 ca                       	addl	%ecx, %edx
100004592: 0f be 46 2a                 	movsbl	42(%rsi), %eax
100004596: 0f be 4f 2a                 	movsbl	42(%rdi), %ecx
10000459a: 0f af c8                    	imull	%eax, %ecx
10000459d: 01 d1                       	addl	%edx, %ecx
10000459f: 0f be 46 2b                 	movsbl	43(%rsi), %eax
1000045a3: 0f be 57 2b                 	movsbl	43(%rdi), %edx
1000045a7: 0f af d0                    	imull	%eax, %edx
1000045aa: 01 ca                       	addl	%ecx, %edx
1000045ac: 0f be 46 2c                 	movsbl	44(%rsi), %eax
1000045b0: 0f be 4f 2c                 	movsbl	44(%rdi), %ecx
1000045b4: 0f af c8                    	imull	%eax, %ecx
1000045b7: 01 d1                       	addl	%edx, %ecx
1000045b9: 0f be 46 2d                 	movsbl	45(%rsi), %eax
1000045bd: 0f be 57 2d                 	movsbl	45(%rdi), %edx
1000045c1: 0f af d0                    	imull	%eax, %edx
1000045c4: 01 ca                       	addl	%ecx, %edx
1000045c6: 0f be 46 2e                 	movsbl	46(%rsi), %eax
1000045ca: 0f be 4f 2e                 	movsbl	46(%rdi), %ecx
1000045ce: 0f af c8                    	imull	%eax, %ecx
1000045d1: 01 d1                       	addl	%edx, %ecx
1000045d3: 0f be 46 2f                 	movsbl	47(%rsi), %eax
1000045d7: 0f be 57 2f                 	movsbl	47(%rdi), %edx
1000045db: 0f af d0                    	imull	%eax, %edx
1000045de: 01 ca                       	addl	%ecx, %edx
1000045e0: 0f bf c2                    	movswl	%dx, %eax
1000045e3: 5d                          	popq	%rbp
1000045e4: c3                          	retq
1000045e5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000045ef: 90                          	nop

00000001000045f0 __Z11microkernelILj3ELj32EasET2_PKT1_S3_:
1000045f0: 55                          	pushq	%rbp
1000045f1: 48 89 e5                    	movq	%rsp, %rbp
1000045f4: 0f be 06                    	movsbl	(%rsi), %eax
1000045f7: 0f be 0f                    	movsbl	(%rdi), %ecx
1000045fa: 0f af c8                    	imull	%eax, %ecx
1000045fd: 0f be 46 01                 	movsbl	1(%rsi), %eax
100004601: 0f be 57 01                 	movsbl	1(%rdi), %edx
100004605: 0f af d0                    	imull	%eax, %edx
100004608: 01 ca                       	addl	%ecx, %edx
10000460a: 0f be 46 02                 	movsbl	2(%rsi), %eax
10000460e: 0f be 4f 02                 	movsbl	2(%rdi), %ecx
100004612: 0f af c8                    	imull	%eax, %ecx
100004615: 01 d1                       	addl	%edx, %ecx
100004617: 0f be 46 03                 	movsbl	3(%rsi), %eax
10000461b: 0f be 57 03                 	movsbl	3(%rdi), %edx
10000461f: 0f af d0                    	imull	%eax, %edx
100004622: 01 ca                       	addl	%ecx, %edx
100004624: 0f be 46 04                 	movsbl	4(%rsi), %eax
100004628: 0f be 4f 04                 	movsbl	4(%rdi), %ecx
10000462c: 0f af c8                    	imull	%eax, %ecx
10000462f: 01 d1                       	addl	%edx, %ecx
100004631: 0f be 46 05                 	movsbl	5(%rsi), %eax
100004635: 0f be 57 05                 	movsbl	5(%rdi), %edx
100004639: 0f af d0                    	imull	%eax, %edx
10000463c: 01 ca                       	addl	%ecx, %edx
10000463e: 0f be 46 06                 	movsbl	6(%rsi), %eax
100004642: 0f be 4f 06                 	movsbl	6(%rdi), %ecx
100004646: 0f af c8                    	imull	%eax, %ecx
100004649: 01 d1                       	addl	%edx, %ecx
10000464b: 0f be 46 07                 	movsbl	7(%rsi), %eax
10000464f: 0f be 57 07                 	movsbl	7(%rdi), %edx
100004653: 0f af d0                    	imull	%eax, %edx
100004656: 01 ca                       	addl	%ecx, %edx
100004658: 0f be 46 08                 	movsbl	8(%rsi), %eax
10000465c: 0f be 4f 08                 	movsbl	8(%rdi), %ecx
100004660: 0f af c8                    	imull	%eax, %ecx
100004663: 01 d1                       	addl	%edx, %ecx
100004665: 0f be 46 09                 	movsbl	9(%rsi), %eax
100004669: 0f be 57 09                 	movsbl	9(%rdi), %edx
10000466d: 0f af d0                    	imull	%eax, %edx
100004670: 01 ca                       	addl	%ecx, %edx
100004672: 0f be 46 0a                 	movsbl	10(%rsi), %eax
100004676: 0f be 4f 0a                 	movsbl	10(%rdi), %ecx
10000467a: 0f af c8                    	imull	%eax, %ecx
10000467d: 01 d1                       	addl	%edx, %ecx
10000467f: 0f be 46 0b                 	movsbl	11(%rsi), %eax
100004683: 0f be 57 0b                 	movsbl	11(%rdi), %edx
100004687: 0f af d0                    	imull	%eax, %edx
10000468a: 01 ca                       	addl	%ecx, %edx
10000468c: 0f be 46 0c                 	movsbl	12(%rsi), %eax
100004690: 0f be 4f 0c                 	movsbl	12(%rdi), %ecx
100004694: 0f af c8                    	imull	%eax, %ecx
100004697: 01 d1                       	addl	%edx, %ecx
100004699: 0f be 46 0d                 	movsbl	13(%rsi), %eax
10000469d: 0f be 57 0d                 	movsbl	13(%rdi), %edx
1000046a1: 0f af d0                    	imull	%eax, %edx
1000046a4: 01 ca                       	addl	%ecx, %edx
1000046a6: 0f be 46 0e                 	movsbl	14(%rsi), %eax
1000046aa: 0f be 4f 0e                 	movsbl	14(%rdi), %ecx
1000046ae: 0f af c8                    	imull	%eax, %ecx
1000046b1: 01 d1                       	addl	%edx, %ecx
1000046b3: 0f be 46 0f                 	movsbl	15(%rsi), %eax
1000046b7: 0f be 57 0f                 	movsbl	15(%rdi), %edx
1000046bb: 0f af d0                    	imull	%eax, %edx
1000046be: 01 ca                       	addl	%ecx, %edx
1000046c0: 0f be 46 10                 	movsbl	16(%rsi), %eax
1000046c4: 0f be 4f 10                 	movsbl	16(%rdi), %ecx
1000046c8: 0f af c8                    	imull	%eax, %ecx
1000046cb: 01 d1                       	addl	%edx, %ecx
1000046cd: 0f be 46 11                 	movsbl	17(%rsi), %eax
1000046d1: 0f be 57 11                 	movsbl	17(%rdi), %edx
1000046d5: 0f af d0                    	imull	%eax, %edx
1000046d8: 01 ca                       	addl	%ecx, %edx
1000046da: 0f be 46 12                 	movsbl	18(%rsi), %eax
1000046de: 0f be 4f 12                 	movsbl	18(%rdi), %ecx
1000046e2: 0f af c8                    	imull	%eax, %ecx
1000046e5: 01 d1                       	addl	%edx, %ecx
1000046e7: 0f be 46 13                 	movsbl	19(%rsi), %eax
1000046eb: 0f be 57 13                 	movsbl	19(%rdi), %edx
1000046ef: 0f af d0                    	imull	%eax, %edx
1000046f2: 01 ca                       	addl	%ecx, %edx
1000046f4: 0f be 46 14                 	movsbl	20(%rsi), %eax
1000046f8: 0f be 4f 14                 	movsbl	20(%rdi), %ecx
1000046fc: 0f af c8                    	imull	%eax, %ecx
1000046ff: 01 d1                       	addl	%edx, %ecx
100004701: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004705: 0f be 57 15                 	movsbl	21(%rdi), %edx
100004709: 0f af d0                    	imull	%eax, %edx
10000470c: 01 ca                       	addl	%ecx, %edx
10000470e: 0f be 46 16                 	movsbl	22(%rsi), %eax
100004712: 0f be 4f 16                 	movsbl	22(%rdi), %ecx
100004716: 0f af c8                    	imull	%eax, %ecx
100004719: 01 d1                       	addl	%edx, %ecx
10000471b: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000471f: 0f be 57 17                 	movsbl	23(%rdi), %edx
100004723: 0f af d0                    	imull	%eax, %edx
100004726: 01 ca                       	addl	%ecx, %edx
100004728: 0f be 46 18                 	movsbl	24(%rsi), %eax
10000472c: 0f be 4f 18                 	movsbl	24(%rdi), %ecx
100004730: 0f af c8                    	imull	%eax, %ecx
100004733: 01 d1                       	addl	%edx, %ecx
100004735: 0f be 46 19                 	movsbl	25(%rsi), %eax
100004739: 0f be 57 19                 	movsbl	25(%rdi), %edx
10000473d: 0f af d0                    	imull	%eax, %edx
100004740: 01 ca                       	addl	%ecx, %edx
100004742: 0f be 46 1a                 	movsbl	26(%rsi), %eax
100004746: 0f be 4f 1a                 	movsbl	26(%rdi), %ecx
10000474a: 0f af c8                    	imull	%eax, %ecx
10000474d: 01 d1                       	addl	%edx, %ecx
10000474f: 0f be 46 1b                 	movsbl	27(%rsi), %eax
100004753: 0f be 57 1b                 	movsbl	27(%rdi), %edx
100004757: 0f af d0                    	imull	%eax, %edx
10000475a: 01 ca                       	addl	%ecx, %edx
10000475c: 0f be 46 1c                 	movsbl	28(%rsi), %eax
100004760: 0f be 4f 1c                 	movsbl	28(%rdi), %ecx
100004764: 0f af c8                    	imull	%eax, %ecx
100004767: 01 d1                       	addl	%edx, %ecx
100004769: 0f be 46 1d                 	movsbl	29(%rsi), %eax
10000476d: 0f be 57 1d                 	movsbl	29(%rdi), %edx
100004771: 0f af d0                    	imull	%eax, %edx
100004774: 01 ca                       	addl	%ecx, %edx
100004776: 0f be 46 1e                 	movsbl	30(%rsi), %eax
10000477a: 0f be 4f 1e                 	movsbl	30(%rdi), %ecx
10000477e: 0f af c8                    	imull	%eax, %ecx
100004781: 01 d1                       	addl	%edx, %ecx
100004783: 0f be 46 1f                 	movsbl	31(%rsi), %eax
100004787: 0f be 57 1f                 	movsbl	31(%rdi), %edx
10000478b: 0f af d0                    	imull	%eax, %edx
10000478e: 01 ca                       	addl	%ecx, %edx
100004790: 0f be 46 20                 	movsbl	32(%rsi), %eax
100004794: 0f be 4f 20                 	movsbl	32(%rdi), %ecx
100004798: 0f af c8                    	imull	%eax, %ecx
10000479b: 01 d1                       	addl	%edx, %ecx
10000479d: 0f be 46 21                 	movsbl	33(%rsi), %eax
1000047a1: 0f be 57 21                 	movsbl	33(%rdi), %edx
1000047a5: 0f af d0                    	imull	%eax, %edx
1000047a8: 01 ca                       	addl	%ecx, %edx
1000047aa: 0f be 46 22                 	movsbl	34(%rsi), %eax
1000047ae: 0f be 4f 22                 	movsbl	34(%rdi), %ecx
1000047b2: 0f af c8                    	imull	%eax, %ecx
1000047b5: 01 d1                       	addl	%edx, %ecx
1000047b7: 0f be 46 23                 	movsbl	35(%rsi), %eax
1000047bb: 0f be 57 23                 	movsbl	35(%rdi), %edx
1000047bf: 0f af d0                    	imull	%eax, %edx
1000047c2: 01 ca                       	addl	%ecx, %edx
1000047c4: 0f be 46 24                 	movsbl	36(%rsi), %eax
1000047c8: 0f be 4f 24                 	movsbl	36(%rdi), %ecx
1000047cc: 0f af c8                    	imull	%eax, %ecx
1000047cf: 01 d1                       	addl	%edx, %ecx
1000047d1: 0f be 46 25                 	movsbl	37(%rsi), %eax
1000047d5: 0f be 57 25                 	movsbl	37(%rdi), %edx
1000047d9: 0f af d0                    	imull	%eax, %edx
1000047dc: 01 ca                       	addl	%ecx, %edx
1000047de: 0f be 46 26                 	movsbl	38(%rsi), %eax
1000047e2: 0f be 4f 26                 	movsbl	38(%rdi), %ecx
1000047e6: 0f af c8                    	imull	%eax, %ecx
1000047e9: 01 d1                       	addl	%edx, %ecx
1000047eb: 0f be 46 27                 	movsbl	39(%rsi), %eax
1000047ef: 0f be 57 27                 	movsbl	39(%rdi), %edx
1000047f3: 0f af d0                    	imull	%eax, %edx
1000047f6: 01 ca                       	addl	%ecx, %edx
1000047f8: 0f be 46 28                 	movsbl	40(%rsi), %eax
1000047fc: 0f be 4f 28                 	movsbl	40(%rdi), %ecx
100004800: 0f af c8                    	imull	%eax, %ecx
100004803: 01 d1                       	addl	%edx, %ecx
100004805: 0f be 46 29                 	movsbl	41(%rsi), %eax
100004809: 0f be 57 29                 	movsbl	41(%rdi), %edx
10000480d: 0f af d0                    	imull	%eax, %edx
100004810: 01 ca                       	addl	%ecx, %edx
100004812: 0f be 46 2a                 	movsbl	42(%rsi), %eax
100004816: 0f be 4f 2a                 	movsbl	42(%rdi), %ecx
10000481a: 0f af c8                    	imull	%eax, %ecx
10000481d: 01 d1                       	addl	%edx, %ecx
10000481f: 0f be 46 2b                 	movsbl	43(%rsi), %eax
100004823: 0f be 57 2b                 	movsbl	43(%rdi), %edx
100004827: 0f af d0                    	imull	%eax, %edx
10000482a: 01 ca                       	addl	%ecx, %edx
10000482c: 0f be 46 2c                 	movsbl	44(%rsi), %eax
100004830: 0f be 4f 2c                 	movsbl	44(%rdi), %ecx
100004834: 0f af c8                    	imull	%eax, %ecx
100004837: 01 d1                       	addl	%edx, %ecx
100004839: 0f be 46 2d                 	movsbl	45(%rsi), %eax
10000483d: 0f be 57 2d                 	movsbl	45(%rdi), %edx
100004841: 0f af d0                    	imull	%eax, %edx
100004844: 01 ca                       	addl	%ecx, %edx
100004846: 0f be 46 2e                 	movsbl	46(%rsi), %eax
10000484a: 0f be 4f 2e                 	movsbl	46(%rdi), %ecx
10000484e: 0f af c8                    	imull	%eax, %ecx
100004851: 01 d1                       	addl	%edx, %ecx
100004853: 0f be 46 2f                 	movsbl	47(%rsi), %eax
100004857: 0f be 57 2f                 	movsbl	47(%rdi), %edx
10000485b: 0f af d0                    	imull	%eax, %edx
10000485e: 01 ca                       	addl	%ecx, %edx
100004860: 0f be 46 30                 	movsbl	48(%rsi), %eax
100004864: 0f be 4f 30                 	movsbl	48(%rdi), %ecx
100004868: 0f af c8                    	imull	%eax, %ecx
10000486b: 01 d1                       	addl	%edx, %ecx
10000486d: 0f be 46 31                 	movsbl	49(%rsi), %eax
100004871: 0f be 57 31                 	movsbl	49(%rdi), %edx
100004875: 0f af d0                    	imull	%eax, %edx
100004878: 01 ca                       	addl	%ecx, %edx
10000487a: 0f be 46 32                 	movsbl	50(%rsi), %eax
10000487e: 0f be 4f 32                 	movsbl	50(%rdi), %ecx
100004882: 0f af c8                    	imull	%eax, %ecx
100004885: 01 d1                       	addl	%edx, %ecx
100004887: 0f be 46 33                 	movsbl	51(%rsi), %eax
10000488b: 0f be 57 33                 	movsbl	51(%rdi), %edx
10000488f: 0f af d0                    	imull	%eax, %edx
100004892: 01 ca                       	addl	%ecx, %edx
100004894: 0f be 46 34                 	movsbl	52(%rsi), %eax
100004898: 0f be 4f 34                 	movsbl	52(%rdi), %ecx
10000489c: 0f af c8                    	imull	%eax, %ecx
10000489f: 01 d1                       	addl	%edx, %ecx
1000048a1: 0f be 46 35                 	movsbl	53(%rsi), %eax
1000048a5: 0f be 57 35                 	movsbl	53(%rdi), %edx
1000048a9: 0f af d0                    	imull	%eax, %edx
1000048ac: 01 ca                       	addl	%ecx, %edx
1000048ae: 0f be 46 36                 	movsbl	54(%rsi), %eax
1000048b2: 0f be 4f 36                 	movsbl	54(%rdi), %ecx
1000048b6: 0f af c8                    	imull	%eax, %ecx
1000048b9: 01 d1                       	addl	%edx, %ecx
1000048bb: 0f be 46 37                 	movsbl	55(%rsi), %eax
1000048bf: 0f be 57 37                 	movsbl	55(%rdi), %edx
1000048c3: 0f af d0                    	imull	%eax, %edx
1000048c6: 01 ca                       	addl	%ecx, %edx
1000048c8: 0f be 46 38                 	movsbl	56(%rsi), %eax
1000048cc: 0f be 4f 38                 	movsbl	56(%rdi), %ecx
1000048d0: 0f af c8                    	imull	%eax, %ecx
1000048d3: 01 d1                       	addl	%edx, %ecx
1000048d5: 0f be 46 39                 	movsbl	57(%rsi), %eax
1000048d9: 0f be 57 39                 	movsbl	57(%rdi), %edx
1000048dd: 0f af d0                    	imull	%eax, %edx
1000048e0: 01 ca                       	addl	%ecx, %edx
1000048e2: 0f be 46 3a                 	movsbl	58(%rsi), %eax
1000048e6: 0f be 4f 3a                 	movsbl	58(%rdi), %ecx
1000048ea: 0f af c8                    	imull	%eax, %ecx
1000048ed: 01 d1                       	addl	%edx, %ecx
1000048ef: 0f be 46 3b                 	movsbl	59(%rsi), %eax
1000048f3: 0f be 57 3b                 	movsbl	59(%rdi), %edx
1000048f7: 0f af d0                    	imull	%eax, %edx
1000048fa: 01 ca                       	addl	%ecx, %edx
1000048fc: 0f be 46 3c                 	movsbl	60(%rsi), %eax
100004900: 0f be 4f 3c                 	movsbl	60(%rdi), %ecx
100004904: 0f af c8                    	imull	%eax, %ecx
100004907: 01 d1                       	addl	%edx, %ecx
100004909: 0f be 46 3d                 	movsbl	61(%rsi), %eax
10000490d: 0f be 57 3d                 	movsbl	61(%rdi), %edx
100004911: 0f af d0                    	imull	%eax, %edx
100004914: 01 ca                       	addl	%ecx, %edx
100004916: 0f be 46 3e                 	movsbl	62(%rsi), %eax
10000491a: 0f be 4f 3e                 	movsbl	62(%rdi), %ecx
10000491e: 0f af c8                    	imull	%eax, %ecx
100004921: 01 d1                       	addl	%edx, %ecx
100004923: 0f be 46 3f                 	movsbl	63(%rsi), %eax
100004927: 0f be 57 3f                 	movsbl	63(%rdi), %edx
10000492b: 0f af d0                    	imull	%eax, %edx
10000492e: 01 ca                       	addl	%ecx, %edx
100004930: 0f be 46 40                 	movsbl	64(%rsi), %eax
100004934: 0f be 4f 40                 	movsbl	64(%rdi), %ecx
100004938: 0f af c8                    	imull	%eax, %ecx
10000493b: 01 d1                       	addl	%edx, %ecx
10000493d: 0f be 46 41                 	movsbl	65(%rsi), %eax
100004941: 0f be 57 41                 	movsbl	65(%rdi), %edx
100004945: 0f af d0                    	imull	%eax, %edx
100004948: 01 ca                       	addl	%ecx, %edx
10000494a: 0f be 46 42                 	movsbl	66(%rsi), %eax
10000494e: 0f be 4f 42                 	movsbl	66(%rdi), %ecx
100004952: 0f af c8                    	imull	%eax, %ecx
100004955: 01 d1                       	addl	%edx, %ecx
100004957: 0f be 46 43                 	movsbl	67(%rsi), %eax
10000495b: 0f be 57 43                 	movsbl	67(%rdi), %edx
10000495f: 0f af d0                    	imull	%eax, %edx
100004962: 01 ca                       	addl	%ecx, %edx
100004964: 0f be 46 44                 	movsbl	68(%rsi), %eax
100004968: 0f be 4f 44                 	movsbl	68(%rdi), %ecx
10000496c: 0f af c8                    	imull	%eax, %ecx
10000496f: 01 d1                       	addl	%edx, %ecx
100004971: 0f be 46 45                 	movsbl	69(%rsi), %eax
100004975: 0f be 57 45                 	movsbl	69(%rdi), %edx
100004979: 0f af d0                    	imull	%eax, %edx
10000497c: 01 ca                       	addl	%ecx, %edx
10000497e: 0f be 46 46                 	movsbl	70(%rsi), %eax
100004982: 0f be 4f 46                 	movsbl	70(%rdi), %ecx
100004986: 0f af c8                    	imull	%eax, %ecx
100004989: 01 d1                       	addl	%edx, %ecx
10000498b: 0f be 46 47                 	movsbl	71(%rsi), %eax
10000498f: 0f be 57 47                 	movsbl	71(%rdi), %edx
100004993: 0f af d0                    	imull	%eax, %edx
100004996: 01 ca                       	addl	%ecx, %edx
100004998: 0f be 46 48                 	movsbl	72(%rsi), %eax
10000499c: 0f be 4f 48                 	movsbl	72(%rdi), %ecx
1000049a0: 0f af c8                    	imull	%eax, %ecx
1000049a3: 01 d1                       	addl	%edx, %ecx
1000049a5: 0f be 46 49                 	movsbl	73(%rsi), %eax
1000049a9: 0f be 57 49                 	movsbl	73(%rdi), %edx
1000049ad: 0f af d0                    	imull	%eax, %edx
1000049b0: 01 ca                       	addl	%ecx, %edx
1000049b2: 0f be 46 4a                 	movsbl	74(%rsi), %eax
1000049b6: 0f be 4f 4a                 	movsbl	74(%rdi), %ecx
1000049ba: 0f af c8                    	imull	%eax, %ecx
1000049bd: 01 d1                       	addl	%edx, %ecx
1000049bf: 0f be 46 4b                 	movsbl	75(%rsi), %eax
1000049c3: 0f be 57 4b                 	movsbl	75(%rdi), %edx
1000049c7: 0f af d0                    	imull	%eax, %edx
1000049ca: 01 ca                       	addl	%ecx, %edx
1000049cc: 0f be 46 4c                 	movsbl	76(%rsi), %eax
1000049d0: 0f be 4f 4c                 	movsbl	76(%rdi), %ecx
1000049d4: 0f af c8                    	imull	%eax, %ecx
1000049d7: 01 d1                       	addl	%edx, %ecx
1000049d9: 0f be 46 4d                 	movsbl	77(%rsi), %eax
1000049dd: 0f be 57 4d                 	movsbl	77(%rdi), %edx
1000049e1: 0f af d0                    	imull	%eax, %edx
1000049e4: 01 ca                       	addl	%ecx, %edx
1000049e6: 0f be 46 4e                 	movsbl	78(%rsi), %eax
1000049ea: 0f be 4f 4e                 	movsbl	78(%rdi), %ecx
1000049ee: 0f af c8                    	imull	%eax, %ecx
1000049f1: 01 d1                       	addl	%edx, %ecx
1000049f3: 0f be 46 4f                 	movsbl	79(%rsi), %eax
1000049f7: 0f be 57 4f                 	movsbl	79(%rdi), %edx
1000049fb: 0f af d0                    	imull	%eax, %edx
1000049fe: 01 ca                       	addl	%ecx, %edx
100004a00: 0f be 46 50                 	movsbl	80(%rsi), %eax
100004a04: 0f be 4f 50                 	movsbl	80(%rdi), %ecx
100004a08: 0f af c8                    	imull	%eax, %ecx
100004a0b: 01 d1                       	addl	%edx, %ecx
100004a0d: 0f be 46 51                 	movsbl	81(%rsi), %eax
100004a11: 0f be 57 51                 	movsbl	81(%rdi), %edx
100004a15: 0f af d0                    	imull	%eax, %edx
100004a18: 01 ca                       	addl	%ecx, %edx
100004a1a: 0f be 46 52                 	movsbl	82(%rsi), %eax
100004a1e: 0f be 4f 52                 	movsbl	82(%rdi), %ecx
100004a22: 0f af c8                    	imull	%eax, %ecx
100004a25: 01 d1                       	addl	%edx, %ecx
100004a27: 0f be 46 53                 	movsbl	83(%rsi), %eax
100004a2b: 0f be 57 53                 	movsbl	83(%rdi), %edx
100004a2f: 0f af d0                    	imull	%eax, %edx
100004a32: 01 ca                       	addl	%ecx, %edx
100004a34: 0f be 46 54                 	movsbl	84(%rsi), %eax
100004a38: 0f be 4f 54                 	movsbl	84(%rdi), %ecx
100004a3c: 0f af c8                    	imull	%eax, %ecx
100004a3f: 01 d1                       	addl	%edx, %ecx
100004a41: 0f be 46 55                 	movsbl	85(%rsi), %eax
100004a45: 0f be 57 55                 	movsbl	85(%rdi), %edx
100004a49: 0f af d0                    	imull	%eax, %edx
100004a4c: 01 ca                       	addl	%ecx, %edx
100004a4e: 0f be 46 56                 	movsbl	86(%rsi), %eax
100004a52: 0f be 4f 56                 	movsbl	86(%rdi), %ecx
100004a56: 0f af c8                    	imull	%eax, %ecx
100004a59: 01 d1                       	addl	%edx, %ecx
100004a5b: 0f be 46 57                 	movsbl	87(%rsi), %eax
100004a5f: 0f be 57 57                 	movsbl	87(%rdi), %edx
100004a63: 0f af d0                    	imull	%eax, %edx
100004a66: 01 ca                       	addl	%ecx, %edx
100004a68: 0f be 46 58                 	movsbl	88(%rsi), %eax
100004a6c: 0f be 4f 58                 	movsbl	88(%rdi), %ecx
100004a70: 0f af c8                    	imull	%eax, %ecx
100004a73: 01 d1                       	addl	%edx, %ecx
100004a75: 0f be 46 59                 	movsbl	89(%rsi), %eax
100004a79: 0f be 57 59                 	movsbl	89(%rdi), %edx
100004a7d: 0f af d0                    	imull	%eax, %edx
100004a80: 01 ca                       	addl	%ecx, %edx
100004a82: 0f be 46 5a                 	movsbl	90(%rsi), %eax
100004a86: 0f be 4f 5a                 	movsbl	90(%rdi), %ecx
100004a8a: 0f af c8                    	imull	%eax, %ecx
100004a8d: 01 d1                       	addl	%edx, %ecx
100004a8f: 0f be 46 5b                 	movsbl	91(%rsi), %eax
100004a93: 0f be 57 5b                 	movsbl	91(%rdi), %edx
100004a97: 0f af d0                    	imull	%eax, %edx
100004a9a: 01 ca                       	addl	%ecx, %edx
100004a9c: 0f be 46 5c                 	movsbl	92(%rsi), %eax
100004aa0: 0f be 4f 5c                 	movsbl	92(%rdi), %ecx
100004aa4: 0f af c8                    	imull	%eax, %ecx
100004aa7: 01 d1                       	addl	%edx, %ecx
100004aa9: 0f be 46 5d                 	movsbl	93(%rsi), %eax
100004aad: 0f be 57 5d                 	movsbl	93(%rdi), %edx
100004ab1: 0f af d0                    	imull	%eax, %edx
100004ab4: 01 ca                       	addl	%ecx, %edx
100004ab6: 0f be 46 5e                 	movsbl	94(%rsi), %eax
100004aba: 0f be 4f 5e                 	movsbl	94(%rdi), %ecx
100004abe: 0f af c8                    	imull	%eax, %ecx
100004ac1: 01 d1                       	addl	%edx, %ecx
100004ac3: 0f be 46 5f                 	movsbl	95(%rsi), %eax
100004ac7: 0f be 57 5f                 	movsbl	95(%rdi), %edx
100004acb: 0f af d0                    	imull	%eax, %edx
100004ace: 01 ca                       	addl	%ecx, %edx
100004ad0: 0f bf c2                    	movswl	%dx, %eax
100004ad3: 5d                          	popq	%rbp
100004ad4: c3                          	retq
100004ad5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004adf: 90                          	nop

0000000100004ae0 __Z11microkernelILj3ELj64EasET2_PKT1_S3_:
100004ae0: 55                          	pushq	%rbp
100004ae1: 48 89 e5                    	movq	%rsp, %rbp
100004ae4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004ae9: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
100004aef: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004af4: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004af8: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
100004afe: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004b02: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004b06: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004b0c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b10: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004b15: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b19: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004b1e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b22: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004b27: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b2b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004b2f: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
100004b35: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
100004b3b: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004b41: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004b45: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
100004b4b: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004b4f: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004b53: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004b59: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b5d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004b62: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b66: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004b6b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b6f: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004b74: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004b78: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004b7c: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
100004b82: 01 c1                       	addl	%eax, %ecx
100004b84: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
100004b8a: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004b90: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004b94: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
100004b9a: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004b9e: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004ba2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004ba8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004bac: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004bb1: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004bb5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004bba: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004bbe: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004bc3: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004bc7: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004bcb: 01 c8                       	addl	%ecx, %eax
100004bcd: c4 e2 7d 20 46 60           	vpmovsxbw	96(%rsi), %ymm0
100004bd3: c4 e2 7d 20 4e 70           	vpmovsxbw	112(%rsi), %ymm1
100004bd9: c4 e2 7d 20 57 60           	vpmovsxbw	96(%rdi), %ymm2
100004bdf: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004be3: c4 e2 7d 20 57 70           	vpmovsxbw	112(%rdi), %ymm2
100004be9: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004bed: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004bf1: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004bf7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004bfb: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004c00: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004c04: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004c09: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004c0d: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004c12: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004c16: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004c1a: c4 e2 7d 20 86 80 00 00 00  	vpmovsxbw	128(%rsi), %ymm0
100004c23: 01 c1                       	addl	%eax, %ecx
100004c25: c4 e2 7d 20 8e 90 00 00 00  	vpmovsxbw	144(%rsi), %ymm1
100004c2e: c4 e2 7d 20 97 80 00 00 00  	vpmovsxbw	128(%rdi), %ymm2
100004c37: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004c3b: c4 e2 7d 20 97 90 00 00 00  	vpmovsxbw	144(%rdi), %ymm2
100004c44: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004c48: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004c4c: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004c52: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004c56: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004c5b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004c5f: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004c64: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004c68: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004c6d: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004c71: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004c75: 01 c8                       	addl	%ecx, %eax
100004c77: c4 e2 7d 20 86 a0 00 00 00  	vpmovsxbw	160(%rsi), %ymm0
100004c80: c4 e2 7d 20 8e b0 00 00 00  	vpmovsxbw	176(%rsi), %ymm1
100004c89: c4 e2 7d 20 97 a0 00 00 00  	vpmovsxbw	160(%rdi), %ymm2
100004c92: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004c96: c4 e2 7d 20 97 b0 00 00 00  	vpmovsxbw	176(%rdi), %ymm2
100004c9f: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004ca3: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004ca7: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004cad: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004cb1: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004cb6: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004cba: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004cbf: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004cc3: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004cc8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ccc: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004cd0: 01 c1                       	addl	%eax, %ecx
100004cd2: 0f bf c1                    	movswl	%cx, %eax
100004cd5: 5d                          	popq	%rbp
100004cd6: c5 f8 77                    	vzeroupper
100004cd9: c3                          	retq
100004cda: 90                          	nop
100004cdb: 90                          	nop
100004cdc: 90                          	nop
100004cdd: 90                          	nop
100004cde: 90                          	nop
100004cdf: 90                          	nop

0000000100004ce0 __ZN14ModelInterfaceC2Ev:
100004ce0: 55                          	pushq	%rbp
100004ce1: 48 89 e5                    	movq	%rsp, %rbp
100004ce4: 48 8d 05 dd 53 00 00        	leaq	21469(%rip), %rax
100004ceb: 48 89 07                    	movq	%rax, (%rdi)
100004cee: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004cf2: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004cf7: 5d                          	popq	%rbp
100004cf8: c3                          	retq
100004cf9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004d00 __ZN14ModelInterfaceC1Ev:
100004d00: 55                          	pushq	%rbp
100004d01: 48 89 e5                    	movq	%rsp, %rbp
100004d04: 48 8d 05 bd 53 00 00        	leaq	21437(%rip), %rax
100004d0b: 48 89 07                    	movq	%rax, (%rdi)
100004d0e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004d12: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004d17: 5d                          	popq	%rbp
100004d18: c3                          	retq
100004d19: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004d20 __ZN14ModelInterfaceD2Ev:
100004d20: 55                          	pushq	%rbp
100004d21: 48 89 e5                    	movq	%rsp, %rbp
100004d24: 53                          	pushq	%rbx
100004d25: 50                          	pushq	%rax
100004d26: 48 89 fb                    	movq	%rdi, %rbx
100004d29: 48 8d 05 98 53 00 00        	leaq	21400(%rip), %rax
100004d30: 48 89 07                    	movq	%rax, (%rdi)
100004d33: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004d37: 48 85 ff                    	testq	%rdi, %rdi
100004d3a: 74 05                       	je	5 <__ZN14ModelInterfaceD2Ev+0x21>
100004d3c: e8 ff 32 00 00              	callq	13055 <dyld_stub_binder+0x100008040>
100004d41: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004d45: 48 83 c4 08                 	addq	$8, %rsp
100004d49: 48 85 ff                    	testq	%rdi, %rdi
100004d4c: 74 07                       	je	7 <__ZN14ModelInterfaceD2Ev+0x35>
100004d4e: 5b                          	popq	%rbx
100004d4f: 5d                          	popq	%rbp
100004d50: e9 eb 32 00 00              	jmp	13035 <dyld_stub_binder+0x100008040>
100004d55: 5b                          	popq	%rbx
100004d56: 5d                          	popq	%rbp
100004d57: c3                          	retq
100004d58: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004d60 __ZN14ModelInterfaceD1Ev:
100004d60: 55                          	pushq	%rbp
100004d61: 48 89 e5                    	movq	%rsp, %rbp
100004d64: 53                          	pushq	%rbx
100004d65: 50                          	pushq	%rax
100004d66: 48 89 fb                    	movq	%rdi, %rbx
100004d69: 48 8d 05 58 53 00 00        	leaq	21336(%rip), %rax
100004d70: 48 89 07                    	movq	%rax, (%rdi)
100004d73: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004d77: 48 85 ff                    	testq	%rdi, %rdi
100004d7a: 74 05                       	je	5 <__ZN14ModelInterfaceD1Ev+0x21>
100004d7c: e8 bf 32 00 00              	callq	12991 <dyld_stub_binder+0x100008040>
100004d81: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004d85: 48 83 c4 08                 	addq	$8, %rsp
100004d89: 48 85 ff                    	testq	%rdi, %rdi
100004d8c: 74 07                       	je	7 <__ZN14ModelInterfaceD1Ev+0x35>
100004d8e: 5b                          	popq	%rbx
100004d8f: 5d                          	popq	%rbp
100004d90: e9 ab 32 00 00              	jmp	12971 <dyld_stub_binder+0x100008040>
100004d95: 5b                          	popq	%rbx
100004d96: 5d                          	popq	%rbp
100004d97: c3                          	retq
100004d98: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004da0 __ZN14ModelInterfaceD0Ev:
100004da0: 55                          	pushq	%rbp
100004da1: 48 89 e5                    	movq	%rsp, %rbp
100004da4: 53                          	pushq	%rbx
100004da5: 50                          	pushq	%rax
100004da6: 48 89 fb                    	movq	%rdi, %rbx
100004da9: 48 8d 05 18 53 00 00        	leaq	21272(%rip), %rax
100004db0: 48 89 07                    	movq	%rax, (%rdi)
100004db3: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004db7: 48 85 ff                    	testq	%rdi, %rdi
100004dba: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x21>
100004dbc: e8 7f 32 00 00              	callq	12927 <dyld_stub_binder+0x100008040>
100004dc1: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004dc5: 48 85 ff                    	testq	%rdi, %rdi
100004dc8: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x2f>
100004dca: e8 71 32 00 00              	callq	12913 <dyld_stub_binder+0x100008040>
100004dcf: 48 89 df                    	movq	%rbx, %rdi
100004dd2: 48 83 c4 08                 	addq	$8, %rsp
100004dd6: 5b                          	popq	%rbx
100004dd7: 5d                          	popq	%rbp
100004dd8: e9 63 32 00 00              	jmp	12899 <dyld_stub_binder+0x100008040>
100004ddd: 0f 1f 00                    	nopl	(%rax)

0000000100004de0 __ZN14ModelInterface7forwardEv:
100004de0: 55                          	pushq	%rbp
100004de1: 48 89 e5                    	movq	%rsp, %rbp
100004de4: 5d                          	popq	%rbp
100004de5: c3                          	retq
100004de6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004df0 __ZN14ModelInterface12input_bufferEv:
100004df0: 55                          	pushq	%rbp
100004df1: 48 89 e5                    	movq	%rsp, %rbp
100004df4: 0f b6 47 24                 	movzbl	36(%rdi), %eax
100004df8: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100004dfd: 5d                          	popq	%rbp
100004dfe: c3                          	retq
100004dff: 90                          	nop

0000000100004e00 __ZN14ModelInterface13output_bufferEv:
100004e00: 55                          	pushq	%rbp
100004e01: 48 89 e5                    	movq	%rsp, %rbp
100004e04: 31 c0                       	xorl	%eax, %eax
100004e06: 80 7f 24 00                 	cmpb	$0, 36(%rdi)
100004e0a: 0f 94 c0                    	sete	%al
100004e0d: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100004e12: 5d                          	popq	%rbp
100004e13: c3                          	retq
100004e14: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004e1e: 66 90                       	nop

0000000100004e20 __ZN14ModelInterface11init_bufferEj:
100004e20: 55                          	pushq	%rbp
100004e21: 48 89 e5                    	movq	%rsp, %rbp
100004e24: 41 57                       	pushq	%r15
100004e26: 41 56                       	pushq	%r14
100004e28: 41 54                       	pushq	%r12
100004e2a: 53                          	pushq	%rbx
100004e2b: 41 89 f7                    	movl	%esi, %r15d
100004e2e: 48 89 fb                    	movq	%rdi, %rbx
100004e31: c6 47 24 00                 	movb	$0, 36(%rdi)
100004e35: 41 89 f6                    	movl	%esi, %r14d
100004e38: 4c 89 f7                    	movq	%r14, %rdi
100004e3b: e8 06 32 00 00              	callq	12806 <dyld_stub_binder+0x100008046>
100004e40: 49 89 c4                    	movq	%rax, %r12
100004e43: 48 89 43 28                 	movq	%rax, 40(%rbx)
100004e47: 4c 89 f7                    	movq	%r14, %rdi
100004e4a: e8 f7 31 00 00              	callq	12791 <dyld_stub_binder+0x100008046>
100004e4f: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004e53: 45 85 ff                    	testl	%r15d, %r15d
100004e56: 0f 84 44 01 00 00           	je	324 <__ZN14ModelInterface11init_bufferEj+0x180>
100004e5c: 41 c6 04 24 00              	movb	$0, (%r12)
100004e61: 41 83 ff 01                 	cmpl	$1, %r15d
100004e65: 0f 84 95 00 00 00           	je	149 <__ZN14ModelInterface11init_bufferEj+0xe0>
100004e6b: 41 8d 46 ff                 	leal	-1(%r14), %eax
100004e6f: 49 8d 56 fe                 	leaq	-2(%r14), %rdx
100004e73: 83 e0 07                    	andl	$7, %eax
100004e76: b9 01 00 00 00              	movl	$1, %ecx
100004e7b: 48 83 fa 07                 	cmpq	$7, %rdx
100004e7f: 72 63                       	jb	99 <__ZN14ModelInterface11init_bufferEj+0xc4>
100004e81: 48 89 c2                    	movq	%rax, %rdx
100004e84: 48 f7 d2                    	notq	%rdx
100004e87: 4c 01 f2                    	addq	%r14, %rdx
100004e8a: 31 c9                       	xorl	%ecx, %ecx
100004e8c: 0f 1f 40 00                 	nopl	(%rax)
100004e90: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004e94: c6 44 0e 01 00              	movb	$0, 1(%rsi,%rcx)
100004e99: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004e9d: c6 44 0e 02 00              	movb	$0, 2(%rsi,%rcx)
100004ea2: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004ea6: c6 44 0e 03 00              	movb	$0, 3(%rsi,%rcx)
100004eab: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004eaf: c6 44 0e 04 00              	movb	$0, 4(%rsi,%rcx)
100004eb4: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004eb8: c6 44 0e 05 00              	movb	$0, 5(%rsi,%rcx)
100004ebd: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004ec1: c6 44 0e 06 00              	movb	$0, 6(%rsi,%rcx)
100004ec6: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004eca: c6 44 0e 07 00              	movb	$0, 7(%rsi,%rcx)
100004ecf: 48 8b 73 28                 	movq	40(%rbx), %rsi
100004ed3: c6 44 0e 08 00              	movb	$0, 8(%rsi,%rcx)
100004ed8: 48 83 c1 08                 	addq	$8, %rcx
100004edc: 48 39 ca                    	cmpq	%rcx, %rdx
100004edf: 75 af                       	jne	-81 <__ZN14ModelInterface11init_bufferEj+0x70>
100004ee1: 48 ff c1                    	incq	%rcx
100004ee4: 48 85 c0                    	testq	%rax, %rax
100004ee7: 74 17                       	je	23 <__ZN14ModelInterface11init_bufferEj+0xe0>
100004ee9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004ef0: 48 8b 53 28                 	movq	40(%rbx), %rdx
100004ef4: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004ef8: 48 ff c1                    	incq	%rcx
100004efb: 48 ff c8                    	decq	%rax
100004efe: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0xd0>
100004f00: 45 85 ff                    	testl	%r15d, %r15d
100004f03: 0f 84 97 00 00 00           	je	151 <__ZN14ModelInterface11init_bufferEj+0x180>
100004f09: 49 8d 4e ff                 	leaq	-1(%r14), %rcx
100004f0d: 44 89 f0                    	movl	%r14d, %eax
100004f10: 83 e0 07                    	andl	$7, %eax
100004f13: 48 83 f9 07                 	cmpq	$7, %rcx
100004f17: 73 0c                       	jae	12 <__ZN14ModelInterface11init_bufferEj+0x105>
100004f19: 31 c9                       	xorl	%ecx, %ecx
100004f1b: 48 85 c0                    	testq	%rax, %rax
100004f1e: 75 70                       	jne	112 <__ZN14ModelInterface11init_bufferEj+0x170>
100004f20: e9 7b 00 00 00              	jmp	123 <__ZN14ModelInterface11init_bufferEj+0x180>
100004f25: 49 29 c6                    	subq	%rax, %r14
100004f28: 31 c9                       	xorl	%ecx, %ecx
100004f2a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100004f30: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f34: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004f38: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f3c: c6 44 0a 01 00              	movb	$0, 1(%rdx,%rcx)
100004f41: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f45: c6 44 0a 02 00              	movb	$0, 2(%rdx,%rcx)
100004f4a: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f4e: c6 44 0a 03 00              	movb	$0, 3(%rdx,%rcx)
100004f53: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f57: c6 44 0a 04 00              	movb	$0, 4(%rdx,%rcx)
100004f5c: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f60: c6 44 0a 05 00              	movb	$0, 5(%rdx,%rcx)
100004f65: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f69: c6 44 0a 06 00              	movb	$0, 6(%rdx,%rcx)
100004f6e: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f72: c6 44 0a 07 00              	movb	$0, 7(%rdx,%rcx)
100004f77: 48 83 c1 08                 	addq	$8, %rcx
100004f7b: 49 39 ce                    	cmpq	%rcx, %r14
100004f7e: 75 b0                       	jne	-80 <__ZN14ModelInterface11init_bufferEj+0x110>
100004f80: 48 85 c0                    	testq	%rax, %rax
100004f83: 74 1b                       	je	27 <__ZN14ModelInterface11init_bufferEj+0x180>
100004f85: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004f8f: 90                          	nop
100004f90: 48 8b 53 30                 	movq	48(%rbx), %rdx
100004f94: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100004f98: 48 ff c1                    	incq	%rcx
100004f9b: 48 ff c8                    	decq	%rax
100004f9e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0x170>
100004fa0: 5b                          	popq	%rbx
100004fa1: 41 5c                       	popq	%r12
100004fa3: 41 5e                       	popq	%r14
100004fa5: 41 5f                       	popq	%r15
100004fa7: 5d                          	popq	%rbp
100004fa8: c3                          	retq
100004fa9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004fb0 __ZN14ModelInterface11swap_bufferEv:
100004fb0: 55                          	pushq	%rbp
100004fb1: 48 89 e5                    	movq	%rsp, %rbp
100004fb4: 80 77 24 01                 	xorb	$1, 36(%rdi)
100004fb8: 5d                          	popq	%rbp
100004fb9: c3                          	retq
100004fba: 90                          	nop
100004fbb: 90                          	nop
100004fbc: 90                          	nop
100004fbd: 90                          	nop
100004fbe: 90                          	nop
100004fbf: 90                          	nop

0000000100004fc0 __Z4ReLUPaS_j:
100004fc0: 55                          	pushq	%rbp
100004fc1: 48 89 e5                    	movq	%rsp, %rbp
100004fc4: 83 fa 04                    	cmpl	$4, %edx
100004fc7: 0f 82 88 00 00 00           	jb	136 <__Z4ReLUPaS_j+0x95>
100004fcd: 8d 42 fc                    	leal	-4(%rdx), %eax
100004fd0: 41 89 c2                    	movl	%eax, %r10d
100004fd3: 41 c1 ea 02                 	shrl	$2, %r10d
100004fd7: 41 ff c2                    	incl	%r10d
100004fda: 41 83 fa 1f                 	cmpl	$31, %r10d
100004fde: 76 24                       	jbe	36 <__Z4ReLUPaS_j+0x44>
100004fe0: 83 e0 fc                    	andl	$-4, %eax
100004fe3: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
100004fe7: 48 83 c1 04                 	addq	$4, %rcx
100004feb: 48 39 f9                    	cmpq	%rdi, %rcx
100004fee: 0f 86 78 02 00 00           	jbe	632 <__Z4ReLUPaS_j+0x2ac>
100004ff4: 48 01 f8                    	addq	%rdi, %rax
100004ff7: 48 83 c0 04                 	addq	$4, %rax
100004ffb: 48 39 f0                    	cmpq	%rsi, %rax
100004ffe: 0f 86 68 02 00 00           	jbe	616 <__Z4ReLUPaS_j+0x2ac>
100005004: 89 d0                       	movl	%edx, %eax
100005006: 45 31 c0                    	xorl	%r8d, %r8d
100005009: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100005010: 0f b6 0e                    	movzbl	(%rsi), %ecx
100005013: 84 c9                       	testb	%cl, %cl
100005015: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
100005019: 88 0f                       	movb	%cl, (%rdi)
10000501b: 0f b6 4e 01                 	movzbl	1(%rsi), %ecx
10000501f: 84 c9                       	testb	%cl, %cl
100005021: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
100005025: 88 4f 01                    	movb	%cl, 1(%rdi)
100005028: 0f b6 4e 02                 	movzbl	2(%rsi), %ecx
10000502c: 84 c9                       	testb	%cl, %cl
10000502e: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
100005032: 88 4f 02                    	movb	%cl, 2(%rdi)
100005035: 0f b6 4e 03                 	movzbl	3(%rsi), %ecx
100005039: 84 c9                       	testb	%cl, %cl
10000503b: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
10000503f: 88 4f 03                    	movb	%cl, 3(%rdi)
100005042: 48 83 c7 04                 	addq	$4, %rdi
100005046: 48 83 c6 04                 	addq	$4, %rsi
10000504a: 83 c0 fc                    	addl	$-4, %eax
10000504d: 83 f8 03                    	cmpl	$3, %eax
100005050: 77 be                       	ja	-66 <__Z4ReLUPaS_j+0x50>
100005052: 83 e2 03                    	andl	$3, %edx
100005055: 85 d2                       	testl	%edx, %edx
100005057: 0f 84 0a 02 00 00           	je	522 <__Z4ReLUPaS_j+0x2a7>
10000505d: 8d 42 ff                    	leal	-1(%rdx), %eax
100005060: 4c 8d 50 01                 	leaq	1(%rax), %r10
100005064: 49 83 fa 7f                 	cmpq	$127, %r10
100005068: 0f 86 2e 01 00 00           	jbe	302 <__Z4ReLUPaS_j+0x1dc>
10000506e: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
100005072: 48 83 c1 01                 	addq	$1, %rcx
100005076: 48 39 cf                    	cmpq	%rcx, %rdi
100005079: 73 10                       	jae	16 <__Z4ReLUPaS_j+0xcb>
10000507b: 48 01 f8                    	addq	%rdi, %rax
10000507e: 48 83 c0 01                 	addq	$1, %rax
100005082: 48 39 c6                    	cmpq	%rax, %rsi
100005085: 0f 82 11 01 00 00           	jb	273 <__Z4ReLUPaS_j+0x1dc>
10000508b: 4d 89 d0                    	movq	%r10, %r8
10000508e: 49 83 e0 80                 	andq	$-128, %r8
100005092: 49 8d 40 80                 	leaq	-128(%r8), %rax
100005096: 48 89 c1                    	movq	%rax, %rcx
100005099: 48 c1 e9 07                 	shrq	$7, %rcx
10000509d: 48 ff c1                    	incq	%rcx
1000050a0: 41 89 c9                    	movl	%ecx, %r9d
1000050a3: 41 83 e1 01                 	andl	$1, %r9d
1000050a7: 48 85 c0                    	testq	%rax, %rax
1000050aa: 0f 84 0f 09 00 00           	je	2319 <__Z4ReLUPaS_j+0x9ff>
1000050b0: 4c 89 c8                    	movq	%r9, %rax
1000050b3: 48 29 c8                    	subq	%rcx, %rax
1000050b6: 31 c9                       	xorl	%ecx, %ecx
1000050b8: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000050bc: 0f 1f 40 00                 	nopl	(%rax)
1000050c0: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
1000050c6: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
1000050cd: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
1000050d4: c4 e2 7d 3c 64 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm4
1000050db: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
1000050e0: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
1000050e6: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
1000050ec: c5 fe 7f 64 0f 60           	vmovdqu	%ymm4, 96(%rdi,%rcx)
1000050f2: c4 e2 7d 3c 8c 0e 80 00 00 00       	vpmaxsb	128(%rsi,%rcx), %ymm0, %ymm1
1000050fc: c4 e2 7d 3c 94 0e a0 00 00 00       	vpmaxsb	160(%rsi,%rcx), %ymm0, %ymm2
100005106: c4 e2 7d 3c 9c 0e c0 00 00 00       	vpmaxsb	192(%rsi,%rcx), %ymm0, %ymm3
100005110: c4 e2 7d 3c a4 0e e0 00 00 00       	vpmaxsb	224(%rsi,%rcx), %ymm0, %ymm4
10000511a: c5 fe 7f 8c 0f 80 00 00 00  	vmovdqu	%ymm1, 128(%rdi,%rcx)
100005123: c5 fe 7f 94 0f a0 00 00 00  	vmovdqu	%ymm2, 160(%rdi,%rcx)
10000512c: c5 fe 7f 9c 0f c0 00 00 00  	vmovdqu	%ymm3, 192(%rdi,%rcx)
100005135: c5 fe 7f a4 0f e0 00 00 00  	vmovdqu	%ymm4, 224(%rdi,%rcx)
10000513e: 48 81 c1 00 01 00 00        	addq	$256, %rcx
100005145: 48 83 c0 02                 	addq	$2, %rax
100005149: 0f 85 71 ff ff ff           	jne	-143 <__Z4ReLUPaS_j+0x100>
10000514f: 4d 85 c9                    	testq	%r9, %r9
100005152: 74 36                       	je	54 <__Z4ReLUPaS_j+0x1ca>
100005154: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005158: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
10000515e: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100005165: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
10000516c: c4 e2 7d 3c 44 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm0
100005173: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100005178: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
10000517e: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100005184: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
10000518a: 4d 39 c2                    	cmpq	%r8, %r10
10000518d: 0f 84 d4 00 00 00           	je	212 <__Z4ReLUPaS_j+0x2a7>
100005193: 44 29 c2                    	subl	%r8d, %edx
100005196: 4c 01 c6                    	addq	%r8, %rsi
100005199: 4c 01 c7                    	addq	%r8, %rdi
10000519c: 44 8d 42 ff                 	leal	-1(%rdx), %r8d
1000051a0: f6 c2 07                    	testb	$7, %dl
1000051a3: 74 38                       	je	56 <__Z4ReLUPaS_j+0x21d>
1000051a5: 41 89 d2                    	movl	%edx, %r10d
1000051a8: 41 83 e2 07                 	andl	$7, %r10d
1000051ac: 45 31 c9                    	xorl	%r9d, %r9d
1000051af: 31 c9                       	xorl	%ecx, %ecx
1000051b1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000051bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000051c0: 0f b6 04 0e                 	movzbl	(%rsi,%rcx), %eax
1000051c4: 84 c0                       	testb	%al, %al
1000051c6: 41 0f 48 c1                 	cmovsl	%r9d, %eax
1000051ca: 88 04 0f                    	movb	%al, (%rdi,%rcx)
1000051cd: 48 ff c1                    	incq	%rcx
1000051d0: 41 39 ca                    	cmpl	%ecx, %r10d
1000051d3: 75 eb                       	jne	-21 <__Z4ReLUPaS_j+0x200>
1000051d5: 29 ca                       	subl	%ecx, %edx
1000051d7: 48 01 ce                    	addq	%rcx, %rsi
1000051da: 48 01 cf                    	addq	%rcx, %rdi
1000051dd: 41 83 f8 07                 	cmpl	$7, %r8d
1000051e1: 0f 82 80 00 00 00           	jb	128 <__Z4ReLUPaS_j+0x2a7>
1000051e7: 41 89 d0                    	movl	%edx, %r8d
1000051ea: 31 c9                       	xorl	%ecx, %ecx
1000051ec: 31 d2                       	xorl	%edx, %edx
1000051ee: 66 90                       	nop
1000051f0: 0f b6 04 16                 	movzbl	(%rsi,%rdx), %eax
1000051f4: 84 c0                       	testb	%al, %al
1000051f6: 0f 48 c1                    	cmovsl	%ecx, %eax
1000051f9: 88 04 17                    	movb	%al, (%rdi,%rdx)
1000051fc: 0f b6 44 16 01              	movzbl	1(%rsi,%rdx), %eax
100005201: 84 c0                       	testb	%al, %al
100005203: 0f 48 c1                    	cmovsl	%ecx, %eax
100005206: 88 44 17 01                 	movb	%al, 1(%rdi,%rdx)
10000520a: 0f b6 44 16 02              	movzbl	2(%rsi,%rdx), %eax
10000520f: 84 c0                       	testb	%al, %al
100005211: 0f 48 c1                    	cmovsl	%ecx, %eax
100005214: 88 44 17 02                 	movb	%al, 2(%rdi,%rdx)
100005218: 0f b6 44 16 03              	movzbl	3(%rsi,%rdx), %eax
10000521d: 84 c0                       	testb	%al, %al
10000521f: 0f 48 c1                    	cmovsl	%ecx, %eax
100005222: 88 44 17 03                 	movb	%al, 3(%rdi,%rdx)
100005226: 0f b6 44 16 04              	movzbl	4(%rsi,%rdx), %eax
10000522b: 84 c0                       	testb	%al, %al
10000522d: 0f 48 c1                    	cmovsl	%ecx, %eax
100005230: 88 44 17 04                 	movb	%al, 4(%rdi,%rdx)
100005234: 0f b6 44 16 05              	movzbl	5(%rsi,%rdx), %eax
100005239: 84 c0                       	testb	%al, %al
10000523b: 0f 48 c1                    	cmovsl	%ecx, %eax
10000523e: 88 44 17 05                 	movb	%al, 5(%rdi,%rdx)
100005242: 0f b6 44 16 06              	movzbl	6(%rsi,%rdx), %eax
100005247: 84 c0                       	testb	%al, %al
100005249: 0f 48 c1                    	cmovsl	%ecx, %eax
10000524c: 88 44 17 06                 	movb	%al, 6(%rdi,%rdx)
100005250: 0f b6 44 16 07              	movzbl	7(%rsi,%rdx), %eax
100005255: 84 c0                       	testb	%al, %al
100005257: 0f 48 c1                    	cmovsl	%ecx, %eax
10000525a: 88 44 17 07                 	movb	%al, 7(%rdi,%rdx)
10000525e: 48 83 c2 08                 	addq	$8, %rdx
100005262: 41 39 d0                    	cmpl	%edx, %r8d
100005265: 75 89                       	jne	-119 <__Z4ReLUPaS_j+0x230>
100005267: 5d                          	popq	%rbp
100005268: c5 f8 77                    	vzeroupper
10000526b: c3                          	retq
10000526c: 45 89 d0                    	movl	%r10d, %r8d
10000526f: 41 83 e0 e0                 	andl	$-32, %r8d
100005273: 49 8d 40 e0                 	leaq	-32(%r8), %rax
100005277: 48 89 c1                    	movq	%rax, %rcx
10000527a: 48 c1 e9 05                 	shrq	$5, %rcx
10000527e: 48 ff c1                    	incq	%rcx
100005281: 41 89 c9                    	movl	%ecx, %r9d
100005284: 41 83 e1 01                 	andl	$1, %r9d
100005288: 48 85 c0                    	testq	%rax, %rax
10000528b: 0f 84 3e 07 00 00           	je	1854 <__Z4ReLUPaS_j+0xa0f>
100005291: 4c 89 c8                    	movq	%r9, %rax
100005294: 48 29 c8                    	subq	%rcx, %rax
100005297: 31 c9                       	xorl	%ecx, %ecx
100005299: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000052a0: c5 7a 6f 34 0e              	vmovdqu	(%rsi,%rcx), %xmm14
1000052a5: c5 7a 6f 7c 0e 10           	vmovdqu	16(%rsi,%rcx), %xmm15
1000052ab: c5 fa 6f 54 0e 20           	vmovdqu	32(%rsi,%rcx), %xmm2
1000052b1: c5 fa 6f 5c 0e 30           	vmovdqu	48(%rsi,%rcx), %xmm3
1000052b7: c5 79 6f 1d 41 2f 00 00     	vmovdqa	12097(%rip), %xmm11
1000052bf: c4 c2 61 00 e3              	vpshufb	%xmm11, %xmm3, %xmm4
1000052c4: c4 c2 69 00 eb              	vpshufb	%xmm11, %xmm2, %xmm5
1000052c9: c5 d1 62 e4                 	vpunpckldq	%xmm4, %xmm5, %xmm4
1000052cd: c5 79 6f 05 3b 2f 00 00     	vmovdqa	12091(%rip), %xmm8
1000052d5: c4 c2 01 00 e8              	vpshufb	%xmm8, %xmm15, %xmm5
1000052da: c4 c2 09 00 f0              	vpshufb	%xmm8, %xmm14, %xmm6
1000052df: c5 c9 62 ed                 	vpunpckldq	%xmm5, %xmm6, %xmm5
1000052e3: c4 63 51 02 d4 0c           	vpblendd	$12, %xmm4, %xmm5, %xmm10
1000052e9: c5 fa 6f 64 0e 70           	vmovdqu	112(%rsi,%rcx), %xmm4
1000052ef: c4 c2 59 00 f3              	vpshufb	%xmm11, %xmm4, %xmm6
1000052f4: c4 e3 fd 00 6c 0e 60 4e     	vpermq	$78, 96(%rsi,%rcx), %ymm5
1000052fc: c4 e3 7d 39 ed 01           	vextracti128	$1, %ymm5, %xmm5
100005302: c4 c2 51 00 fb              	vpshufb	%xmm11, %xmm5, %xmm7
100005307: c5 c1 62 f6                 	vpunpckldq	%xmm6, %xmm7, %xmm6
10000530b: c4 e3 7d 38 fe 01           	vinserti128	$1, %xmm6, %ymm0, %ymm7
100005311: c5 fa 6f 74 0e 50           	vmovdqu	80(%rsi,%rcx), %xmm6
100005317: c4 42 49 00 e0              	vpshufb	%xmm8, %xmm6, %xmm12
10000531c: c4 63 fd 00 4c 0e 40 4e     	vpermq	$78, 64(%rsi,%rcx), %ymm9
100005324: c4 43 7d 39 c9 01           	vextracti128	$1, %ymm9, %xmm9
10000532a: c4 42 31 00 e8              	vpshufb	%xmm8, %xmm9, %xmm13
10000532f: c4 c1 11 62 c4              	vpunpckldq	%xmm12, %xmm13, %xmm0
100005334: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
10000533a: c4 e3 7d 02 c7 c0           	vpblendd	$192, %ymm7, %ymm0, %ymm0
100005340: c4 63 2d 02 d0 f0           	vpblendd	$240, %ymm0, %ymm10, %ymm10
100005346: c5 79 6f 05 d2 2e 00 00     	vmovdqa	11986(%rip), %xmm8
10000534e: c4 c2 61 00 c0              	vpshufb	%xmm8, %xmm3, %xmm0
100005353: c4 c2 69 00 f8              	vpshufb	%xmm8, %xmm2, %xmm7
100005358: c5 c1 62 c0                 	vpunpckldq	%xmm0, %xmm7, %xmm0
10000535c: c5 79 6f 1d cc 2e 00 00     	vmovdqa	11980(%rip), %xmm11
100005364: c4 c2 01 00 fb              	vpshufb	%xmm11, %xmm15, %xmm7
100005369: c4 c2 09 00 cb              	vpshufb	%xmm11, %xmm14, %xmm1
10000536e: c5 f1 62 cf                 	vpunpckldq	%xmm7, %xmm1, %xmm1
100005372: c4 63 71 02 e0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm12
100005378: c4 c2 59 00 c8              	vpshufb	%xmm8, %xmm4, %xmm1
10000537d: c4 c2 51 00 f8              	vpshufb	%xmm8, %xmm5, %xmm7
100005382: c5 c1 62 c9                 	vpunpckldq	%xmm1, %xmm7, %xmm1
100005386: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
10000538c: c4 c2 49 00 fb              	vpshufb	%xmm11, %xmm6, %xmm7
100005391: c4 c2 31 00 c3              	vpshufb	%xmm11, %xmm9, %xmm0
100005396: c5 f9 62 c7                 	vpunpckldq	%xmm7, %xmm0, %xmm0
10000539a: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
1000053a0: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
1000053a6: c4 63 1d 02 e0 f0           	vpblendd	$240, %ymm0, %ymm12, %ymm12
1000053ac: c5 79 6f 1d 8c 2e 00 00     	vmovdqa	11916(%rip), %xmm11
1000053b4: c4 c2 61 00 c3              	vpshufb	%xmm11, %xmm3, %xmm0
1000053b9: c4 c2 69 00 cb              	vpshufb	%xmm11, %xmm2, %xmm1
1000053be: c5 71 62 c0                 	vpunpckldq	%xmm0, %xmm1, %xmm8
1000053c2: c5 f9 6f 0d 86 2e 00 00     	vmovdqa	11910(%rip), %xmm1
1000053ca: c5 f9 6f c1                 	vmovdqa	%xmm1, %xmm0
1000053ce: c4 e2 01 00 c9              	vpshufb	%xmm1, %xmm15, %xmm1
1000053d3: c4 e2 09 00 f8              	vpshufb	%xmm0, %xmm14, %xmm7
1000053d8: c5 c1 62 c9                 	vpunpckldq	%xmm1, %xmm7, %xmm1
1000053dc: c4 43 71 02 e8 0c           	vpblendd	$12, %xmm8, %xmm1, %xmm13
1000053e2: c4 c2 59 00 cb              	vpshufb	%xmm11, %xmm4, %xmm1
1000053e7: c4 c2 51 00 fb              	vpshufb	%xmm11, %xmm5, %xmm7
1000053ec: c5 c1 62 c9                 	vpunpckldq	%xmm1, %xmm7, %xmm1
1000053f0: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
1000053f6: c4 e2 49 00 f8              	vpshufb	%xmm0, %xmm6, %xmm7
1000053fb: c4 e2 31 00 c0              	vpshufb	%xmm0, %xmm9, %xmm0
100005400: c5 f9 62 c7                 	vpunpckldq	%xmm7, %xmm0, %xmm0
100005404: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
10000540a: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
100005410: c4 63 15 02 e8 f0           	vpblendd	$240, %ymm0, %ymm13, %ymm13
100005416: c5 f9 6f 0d 42 2e 00 00     	vmovdqa	11842(%rip), %xmm1
10000541e: c4 e2 61 00 d9              	vpshufb	%xmm1, %xmm3, %xmm3
100005423: c4 e2 69 00 d1              	vpshufb	%xmm1, %xmm2, %xmm2
100005428: c5 e9 62 c3                 	vpunpckldq	%xmm3, %xmm2, %xmm0
10000542c: c5 f9 6f 15 3c 2e 00 00     	vmovdqa	11836(%rip), %xmm2
100005434: c5 f9 6f fa                 	vmovdqa	%xmm2, %xmm7
100005438: c4 e2 01 00 d2              	vpshufb	%xmm2, %xmm15, %xmm2
10000543d: c4 e2 09 00 df              	vpshufb	%xmm7, %xmm14, %xmm3
100005442: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
100005446: c4 e3 69 02 c0 0c           	vpblendd	$12, %xmm0, %xmm2, %xmm0
10000544c: c4 e2 59 00 d1              	vpshufb	%xmm1, %xmm4, %xmm2
100005451: c4 e2 51 00 d9              	vpshufb	%xmm1, %xmm5, %xmm3
100005456: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
10000545a: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005460: c4 e2 49 00 df              	vpshufb	%xmm7, %xmm6, %xmm3
100005465: c4 e2 31 00 e7              	vpshufb	%xmm7, %xmm9, %xmm4
10000546a: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
10000546e: c4 e3 7d 38 db 01           	vinserti128	$1, %xmm3, %ymm0, %ymm3
100005474: c4 e3 65 02 d2 c0           	vpblendd	$192, %ymm2, %ymm3, %ymm2
10000547a: c4 e3 7d 02 ca f0           	vpblendd	$240, %ymm2, %ymm0, %ymm1
100005480: c4 41 39 ef c0              	vpxor	%xmm8, %xmm8, %xmm8
100005485: c4 c2 2d 3c d0              	vpmaxsb	%ymm8, %ymm10, %ymm2
10000548a: c4 c2 1d 3c d8              	vpmaxsb	%ymm8, %ymm12, %ymm3
10000548f: c4 c2 15 3c c0              	vpmaxsb	%ymm8, %ymm13, %ymm0
100005494: c4 c2 75 3c c8              	vpmaxsb	%ymm8, %ymm1, %ymm1
100005499: c5 ed 60 e3                 	vpunpcklbw	%ymm3, %ymm2, %ymm4
10000549d: c5 ed 68 d3                 	vpunpckhbw	%ymm3, %ymm2, %ymm2
1000054a1: c5 fd 60 d9                 	vpunpcklbw	%ymm1, %ymm0, %ymm3
1000054a5: c5 fd 68 c1                 	vpunpckhbw	%ymm1, %ymm0, %ymm0
1000054a9: c5 dd 61 cb                 	vpunpcklwd	%ymm3, %ymm4, %ymm1
1000054ad: c5 dd 69 db                 	vpunpckhwd	%ymm3, %ymm4, %ymm3
1000054b1: c5 ed 61 e0                 	vpunpcklwd	%ymm0, %ymm2, %ymm4
1000054b5: c5 ed 69 c0                 	vpunpckhwd	%ymm0, %ymm2, %ymm0
1000054b9: c4 e3 75 38 d3 01           	vinserti128	$1, %xmm3, %ymm1, %ymm2
1000054bf: c4 e3 5d 38 e8 01           	vinserti128	$1, %xmm0, %ymm4, %ymm5
1000054c5: c4 e3 75 46 cb 31           	vperm2i128	$49, %ymm3, %ymm1, %ymm1
1000054cb: c4 e3 5d 46 c0 31           	vperm2i128	$49, %ymm0, %ymm4, %ymm0
1000054d1: c5 fe 7f 4c 0f 40           	vmovdqu	%ymm1, 64(%rdi,%rcx)
1000054d7: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
1000054dd: c5 fe 7f 6c 0f 20           	vmovdqu	%ymm5, 32(%rdi,%rcx)
1000054e3: c5 fe 7f 14 0f              	vmovdqu	%ymm2, (%rdi,%rcx)
1000054e8: c5 7a 6f a4 0e 80 00 00 00  	vmovdqu	128(%rsi,%rcx), %xmm12
1000054f1: c5 7a 6f ac 0e 90 00 00 00  	vmovdqu	144(%rsi,%rcx), %xmm13
1000054fa: c5 7a 6f b4 0e a0 00 00 00  	vmovdqu	160(%rsi,%rcx), %xmm14
100005503: c5 fa 6f 9c 0e b0 00 00 00  	vmovdqu	176(%rsi,%rcx), %xmm3
10000550c: c5 f9 6f 05 ec 2c 00 00     	vmovdqa	11500(%rip), %xmm0
100005514: c4 e2 61 00 e0              	vpshufb	%xmm0, %xmm3, %xmm4
100005519: c4 e2 09 00 e8              	vpshufb	%xmm0, %xmm14, %xmm5
10000551e: c5 f9 6f d0                 	vmovdqa	%xmm0, %xmm2
100005522: c5 d1 62 e4                 	vpunpckldq	%xmm4, %xmm5, %xmm4
100005526: c5 f9 6f 05 e2 2c 00 00     	vmovdqa	11490(%rip), %xmm0
10000552e: c4 e2 11 00 e8              	vpshufb	%xmm0, %xmm13, %xmm5
100005533: c4 e2 19 00 f0              	vpshufb	%xmm0, %xmm12, %xmm6
100005538: c5 f9 6f c8                 	vmovdqa	%xmm0, %xmm1
10000553c: c5 c9 62 ed                 	vpunpckldq	%xmm5, %xmm6, %xmm5
100005540: c4 63 51 02 cc 0c           	vpblendd	$12, %xmm4, %xmm5, %xmm9
100005546: c5 fa 6f a4 0e f0 00 00 00  	vmovdqu	240(%rsi,%rcx), %xmm4
10000554f: c4 e2 59 00 f2              	vpshufb	%xmm2, %xmm4, %xmm6
100005554: c4 e3 fd 00 ac 0e e0 00 00 00 4e    	vpermq	$78, 224(%rsi,%rcx), %ymm5
10000555f: c4 e3 7d 39 ed 01           	vextracti128	$1, %ymm5, %xmm5
100005565: c4 e2 51 00 fa              	vpshufb	%xmm2, %xmm5, %xmm7
10000556a: c5 c1 62 f6                 	vpunpckldq	%xmm6, %xmm7, %xmm6
10000556e: c4 63 7d 38 d6 01           	vinserti128	$1, %xmm6, %ymm0, %ymm10
100005574: c5 fa 6f b4 0e d0 00 00 00  	vmovdqu	208(%rsi,%rcx), %xmm6
10000557d: c4 e3 fd 00 bc 0e c0 00 00 00 4e    	vpermq	$78, 192(%rsi,%rcx), %ymm7
100005588: c4 e2 49 00 c0              	vpshufb	%xmm0, %xmm6, %xmm0
10000558d: c4 e3 7d 39 ff 01           	vextracti128	$1, %ymm7, %xmm7
100005593: c4 e2 41 00 c9              	vpshufb	%xmm1, %xmm7, %xmm1
100005598: c5 f1 62 c0                 	vpunpckldq	%xmm0, %xmm1, %xmm0
10000559c: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
1000055a2: c4 c3 7d 02 c2 c0           	vpblendd	$192, %ymm10, %ymm0, %ymm0
1000055a8: c4 63 35 02 c8 f0           	vpblendd	$240, %ymm0, %ymm9, %ymm9
1000055ae: c5 79 6f 3d 6a 2c 00 00     	vmovdqa	11370(%rip), %xmm15
1000055b6: c4 c2 61 00 c7              	vpshufb	%xmm15, %xmm3, %xmm0
1000055bb: c4 c2 09 00 cf              	vpshufb	%xmm15, %xmm14, %xmm1
1000055c0: c5 71 62 d0                 	vpunpckldq	%xmm0, %xmm1, %xmm10
1000055c4: c5 f9 6f 05 64 2c 00 00     	vmovdqa	11364(%rip), %xmm0
1000055cc: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
1000055d1: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
1000055d6: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
1000055da: c4 43 71 02 d2 0c           	vpblendd	$12, %xmm10, %xmm1, %xmm10
1000055e0: c4 c2 59 00 cf              	vpshufb	%xmm15, %xmm4, %xmm1
1000055e5: c4 c2 51 00 d7              	vpshufb	%xmm15, %xmm5, %xmm2
1000055ea: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
1000055ee: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
1000055f4: c4 e2 49 00 d0              	vpshufb	%xmm0, %xmm6, %xmm2
1000055f9: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
1000055fe: c5 f9 62 c2                 	vpunpckldq	%xmm2, %xmm0, %xmm0
100005602: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100005608: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
10000560e: c4 63 2d 02 d0 f0           	vpblendd	$240, %ymm0, %ymm10, %ymm10
100005614: c4 c2 61 00 c3              	vpshufb	%xmm11, %xmm3, %xmm0
100005619: c4 c2 09 00 cb              	vpshufb	%xmm11, %xmm14, %xmm1
10000561e: c5 71 62 f8                 	vpunpckldq	%xmm0, %xmm1, %xmm15
100005622: c5 f9 6f 05 26 2c 00 00     	vmovdqa	11302(%rip), %xmm0
10000562a: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
10000562f: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
100005634: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
100005638: c4 43 71 02 ff 0c           	vpblendd	$12, %xmm15, %xmm1, %xmm15
10000563e: c4 c2 59 00 cb              	vpshufb	%xmm11, %xmm4, %xmm1
100005643: c4 c2 51 00 d3              	vpshufb	%xmm11, %xmm5, %xmm2
100005648: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
10000564c: c4 e2 49 00 d0              	vpshufb	%xmm0, %xmm6, %xmm2
100005651: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
100005656: c5 f9 62 c2                 	vpunpckldq	%xmm2, %xmm0, %xmm0
10000565a: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005660: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100005666: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
10000566c: c4 63 05 02 d8 f0           	vpblendd	$240, %ymm0, %ymm15, %ymm11
100005672: c5 79 6f 3d e6 2b 00 00     	vmovdqa	11238(%rip), %xmm15
10000567a: c4 c2 61 00 cf              	vpshufb	%xmm15, %xmm3, %xmm1
10000567f: c4 c2 09 00 d7              	vpshufb	%xmm15, %xmm14, %xmm2
100005684: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
100005688: c5 f9 6f 05 e0 2b 00 00     	vmovdqa	11232(%rip), %xmm0
100005690: c4 e2 11 00 d0              	vpshufb	%xmm0, %xmm13, %xmm2
100005695: c4 e2 19 00 d8              	vpshufb	%xmm0, %xmm12, %xmm3
10000569a: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
10000569e: c4 e3 69 02 c9 0c           	vpblendd	$12, %xmm1, %xmm2, %xmm1
1000056a4: c4 c2 59 00 d7              	vpshufb	%xmm15, %xmm4, %xmm2
1000056a9: c4 c2 51 00 df              	vpshufb	%xmm15, %xmm5, %xmm3
1000056ae: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
1000056b2: c4 e2 49 00 d8              	vpshufb	%xmm0, %xmm6, %xmm3
1000056b7: c4 e2 41 00 e0              	vpshufb	%xmm0, %xmm7, %xmm4
1000056bc: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
1000056c0: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000056c6: c4 e3 7d 38 db 01           	vinserti128	$1, %xmm3, %ymm0, %ymm3
1000056cc: c4 e3 65 02 d2 c0           	vpblendd	$192, %ymm2, %ymm3, %ymm2
1000056d2: c4 e3 75 02 ca f0           	vpblendd	$240, %ymm2, %ymm1, %ymm1
1000056d8: c4 c2 35 3c d0              	vpmaxsb	%ymm8, %ymm9, %ymm2
1000056dd: c4 c2 2d 3c d8              	vpmaxsb	%ymm8, %ymm10, %ymm3
1000056e2: c4 c2 25 3c c0              	vpmaxsb	%ymm8, %ymm11, %ymm0
1000056e7: c4 c2 75 3c c8              	vpmaxsb	%ymm8, %ymm1, %ymm1
1000056ec: c5 ed 60 e3                 	vpunpcklbw	%ymm3, %ymm2, %ymm4
1000056f0: c5 ed 68 d3                 	vpunpckhbw	%ymm3, %ymm2, %ymm2
1000056f4: c5 fd 60 d9                 	vpunpcklbw	%ymm1, %ymm0, %ymm3
1000056f8: c5 fd 68 c1                 	vpunpckhbw	%ymm1, %ymm0, %ymm0
1000056fc: c5 dd 61 cb                 	vpunpcklwd	%ymm3, %ymm4, %ymm1
100005700: c5 dd 69 db                 	vpunpckhwd	%ymm3, %ymm4, %ymm3
100005704: c5 ed 61 e0                 	vpunpcklwd	%ymm0, %ymm2, %ymm4
100005708: c5 ed 69 c0                 	vpunpckhwd	%ymm0, %ymm2, %ymm0
10000570c: c4 e3 75 38 d3 01           	vinserti128	$1, %xmm3, %ymm1, %ymm2
100005712: c4 e3 75 46 cb 31           	vperm2i128	$49, %ymm3, %ymm1, %ymm1
100005718: c4 e3 5d 38 d8 01           	vinserti128	$1, %xmm0, %ymm4, %ymm3
10000571e: c4 e3 5d 46 c0 31           	vperm2i128	$49, %ymm0, %ymm4, %ymm0
100005724: c5 fe 7f 8c 0f c0 00 00 00  	vmovdqu	%ymm1, 192(%rdi,%rcx)
10000572d: c5 fe 7f 84 0f e0 00 00 00  	vmovdqu	%ymm0, 224(%rdi,%rcx)
100005736: c5 fe 7f 9c 0f a0 00 00 00  	vmovdqu	%ymm3, 160(%rdi,%rcx)
10000573f: c5 fe 7f 94 0f 80 00 00 00  	vmovdqu	%ymm2, 128(%rdi,%rcx)
100005748: 48 81 c1 00 01 00 00        	addq	$256, %rcx
10000574f: 48 83 c0 02                 	addq	$2, %rax
100005753: 0f 85 47 fb ff ff           	jne	-1209 <__Z4ReLUPaS_j+0x2e0>
100005759: 4d 85 c9                    	testq	%r9, %r9
10000575c: 0f 84 3e 02 00 00           	je	574 <__Z4ReLUPaS_j+0x9e0>
100005762: c5 7a 6f 14 0e              	vmovdqu	(%rsi,%rcx), %xmm10
100005767: c5 7a 6f 5c 0e 10           	vmovdqu	16(%rsi,%rcx), %xmm11
10000576d: c5 7a 6f 64 0e 20           	vmovdqu	32(%rsi,%rcx), %xmm12
100005773: c5 7a 6f 6c 0e 30           	vmovdqu	48(%rsi,%rcx), %xmm13
100005779: c5 f9 6f 35 7f 2a 00 00     	vmovdqa	10879(%rip), %xmm6
100005781: c4 e2 11 00 e6              	vpshufb	%xmm6, %xmm13, %xmm4
100005786: c4 e2 19 00 ee              	vpshufb	%xmm6, %xmm12, %xmm5
10000578b: c5 d1 62 e4                 	vpunpckldq	%xmm4, %xmm5, %xmm4
10000578f: c5 f9 6f 05 79 2a 00 00     	vmovdqa	10873(%rip), %xmm0
100005797: c4 e2 21 00 e8              	vpshufb	%xmm0, %xmm11, %xmm5
10000579c: c4 e2 29 00 f8              	vpshufb	%xmm0, %xmm10, %xmm7
1000057a1: c5 c1 62 ed                 	vpunpckldq	%xmm5, %xmm7, %xmm5
1000057a5: c4 63 51 02 c4 0c           	vpblendd	$12, %xmm4, %xmm5, %xmm8
1000057ab: c5 7a 6f 74 0e 70           	vmovdqu	112(%rsi,%rcx), %xmm14
1000057b1: c4 e2 09 00 fe              	vpshufb	%xmm6, %xmm14, %xmm7
1000057b6: c4 e3 fd 00 6c 0e 60 4e     	vpermq	$78, 96(%rsi,%rcx), %ymm5
1000057be: c4 e3 7d 39 ed 01           	vextracti128	$1, %ymm5, %xmm5
1000057c4: c4 e2 51 00 f6              	vpshufb	%xmm6, %xmm5, %xmm6
1000057c9: c5 c9 62 f7                 	vpunpckldq	%xmm7, %xmm6, %xmm6
1000057cd: c4 63 7d 38 ce 01           	vinserti128	$1, %xmm6, %ymm0, %ymm9
1000057d3: c5 fa 6f 74 0e 50           	vmovdqu	80(%rsi,%rcx), %xmm6
1000057d9: c4 e2 49 00 c8              	vpshufb	%xmm0, %xmm6, %xmm1
1000057de: c4 e3 fd 00 7c 0e 40 4e     	vpermq	$78, 64(%rsi,%rcx), %ymm7
1000057e6: c4 e3 7d 39 ff 01           	vextracti128	$1, %ymm7, %xmm7
1000057ec: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
1000057f1: c5 f9 62 c1                 	vpunpckldq	%xmm1, %xmm0, %xmm0
1000057f5: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
1000057fb: c4 c3 7d 02 c1 c0           	vpblendd	$192, %ymm9, %ymm0, %ymm0
100005801: c4 63 3d 02 c0 f0           	vpblendd	$240, %ymm0, %ymm8, %ymm8
100005807: c5 f9 6f 05 11 2a 00 00     	vmovdqa	10769(%rip), %xmm0
10000580f: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
100005814: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
100005819: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
10000581d: c5 f9 6f 15 0b 2a 00 00     	vmovdqa	10763(%rip), %xmm2
100005825: c4 e2 21 00 da              	vpshufb	%xmm2, %xmm11, %xmm3
10000582a: c4 e2 29 00 e2              	vpshufb	%xmm2, %xmm10, %xmm4
10000582f: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
100005833: c4 e3 61 02 c9 0c           	vpblendd	$12, %xmm1, %xmm3, %xmm1
100005839: c4 e2 09 00 d8              	vpshufb	%xmm0, %xmm14, %xmm3
10000583e: c4 e2 51 00 c0              	vpshufb	%xmm0, %xmm5, %xmm0
100005843: c5 f9 62 c3                 	vpunpckldq	%xmm3, %xmm0, %xmm0
100005847: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
10000584d: c4 e2 49 00 da              	vpshufb	%xmm2, %xmm6, %xmm3
100005852: c4 e2 41 00 d2              	vpshufb	%xmm2, %xmm7, %xmm2
100005857: c5 e9 62 d3                 	vpunpckldq	%xmm3, %xmm2, %xmm2
10000585b: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005861: c4 e3 6d 02 c0 c0           	vpblendd	$192, %ymm0, %ymm2, %ymm0
100005867: c4 63 75 02 c8 f0           	vpblendd	$240, %ymm0, %ymm1, %ymm9
10000586d: c5 f9 6f 05 cb 29 00 00     	vmovdqa	10699(%rip), %xmm0
100005875: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
10000587a: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
10000587f: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
100005883: c5 f9 6f 15 c5 29 00 00     	vmovdqa	10693(%rip), %xmm2
10000588b: c4 e2 21 00 da              	vpshufb	%xmm2, %xmm11, %xmm3
100005890: c4 e2 29 00 e2              	vpshufb	%xmm2, %xmm10, %xmm4
100005895: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
100005899: c4 e3 61 02 c9 0c           	vpblendd	$12, %xmm1, %xmm3, %xmm1
10000589f: c4 e2 09 00 d8              	vpshufb	%xmm0, %xmm14, %xmm3
1000058a4: c4 e2 51 00 c0              	vpshufb	%xmm0, %xmm5, %xmm0
1000058a9: c5 f9 62 c3                 	vpunpckldq	%xmm3, %xmm0, %xmm0
1000058ad: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
1000058b3: c4 e2 49 00 da              	vpshufb	%xmm2, %xmm6, %xmm3
1000058b8: c4 e2 41 00 d2              	vpshufb	%xmm2, %xmm7, %xmm2
1000058bd: c5 e9 62 d3                 	vpunpckldq	%xmm3, %xmm2, %xmm2
1000058c1: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000058c7: c4 e3 6d 02 c0 c0           	vpblendd	$192, %ymm0, %ymm2, %ymm0
1000058cd: c4 63 75 02 f8 f0           	vpblendd	$240, %ymm0, %ymm1, %ymm15
1000058d3: c5 f9 6f 0d 85 29 00 00     	vmovdqa	10629(%rip), %xmm1
1000058db: c4 e2 11 00 d1              	vpshufb	%xmm1, %xmm13, %xmm2
1000058e0: c4 e2 19 00 d9              	vpshufb	%xmm1, %xmm12, %xmm3
1000058e5: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
1000058e9: c5 f9 6f 1d 7f 29 00 00     	vmovdqa	10623(%rip), %xmm3
1000058f1: c4 e2 21 00 e3              	vpshufb	%xmm3, %xmm11, %xmm4
1000058f6: c4 e2 29 00 c3              	vpshufb	%xmm3, %xmm10, %xmm0
1000058fb: c5 f9 62 c4                 	vpunpckldq	%xmm4, %xmm0, %xmm0
1000058ff: c4 e3 79 02 c2 0c           	vpblendd	$12, %xmm2, %xmm0, %xmm0
100005905: c4 e2 09 00 d1              	vpshufb	%xmm1, %xmm14, %xmm2
10000590a: c4 e2 51 00 c9              	vpshufb	%xmm1, %xmm5, %xmm1
10000590f: c5 f1 62 ca                 	vpunpckldq	%xmm2, %xmm1, %xmm1
100005913: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005919: c4 e2 49 00 d3              	vpshufb	%xmm3, %xmm6, %xmm2
10000591e: c4 e2 41 00 db              	vpshufb	%xmm3, %xmm7, %xmm3
100005923: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
100005927: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
10000592d: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
100005933: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
100005939: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
10000593d: c4 e2 3d 3c d1              	vpmaxsb	%ymm1, %ymm8, %ymm2
100005942: c4 e2 35 3c d9              	vpmaxsb	%ymm1, %ymm9, %ymm3
100005947: c4 e2 05 3c e1              	vpmaxsb	%ymm1, %ymm15, %ymm4
10000594c: c4 e2 7d 3c c1              	vpmaxsb	%ymm1, %ymm0, %ymm0
100005951: c5 ed 60 cb                 	vpunpcklbw	%ymm3, %ymm2, %ymm1
100005955: c5 ed 68 d3                 	vpunpckhbw	%ymm3, %ymm2, %ymm2
100005959: c5 dd 60 d8                 	vpunpcklbw	%ymm0, %ymm4, %ymm3
10000595d: c5 dd 68 c0                 	vpunpckhbw	%ymm0, %ymm4, %ymm0
100005961: c5 f5 61 e3                 	vpunpcklwd	%ymm3, %ymm1, %ymm4
100005965: c5 f5 69 cb                 	vpunpckhwd	%ymm3, %ymm1, %ymm1
100005969: c5 ed 61 d8                 	vpunpcklwd	%ymm0, %ymm2, %ymm3
10000596d: c5 ed 69 c0                 	vpunpckhwd	%ymm0, %ymm2, %ymm0
100005971: c4 e3 5d 38 d1 01           	vinserti128	$1, %xmm1, %ymm4, %ymm2
100005977: c4 e3 65 38 e8 01           	vinserti128	$1, %xmm0, %ymm3, %ymm5
10000597d: c4 e3 5d 46 c9 31           	vperm2i128	$49, %ymm1, %ymm4, %ymm1
100005983: c4 e3 65 46 c0 31           	vperm2i128	$49, %ymm0, %ymm3, %ymm0
100005989: c5 fe 7f 4c 0f 40           	vmovdqu	%ymm1, 64(%rdi,%rcx)
10000598f: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
100005995: c5 fe 7f 6c 0f 20           	vmovdqu	%ymm5, 32(%rdi,%rcx)
10000599b: c5 fe 7f 14 0f              	vmovdqu	%ymm2, (%rdi,%rcx)
1000059a0: 4a 8d 34 86                 	leaq	(%rsi,%r8,4), %rsi
1000059a4: 4a 8d 3c 87                 	leaq	(%rdi,%r8,4), %rdi
1000059a8: 4d 39 d0                    	cmpq	%r10, %r8
1000059ab: 0f 84 a1 f6 ff ff           	je	-2399 <__Z4ReLUPaS_j+0x92>
1000059b1: 41 c1 e0 02                 	shll	$2, %r8d
1000059b5: 89 d0                       	movl	%edx, %eax
1000059b7: 44 29 c0                    	subl	%r8d, %eax
1000059ba: e9 47 f6 ff ff              	jmp	-2489 <__Z4ReLUPaS_j+0x46>
1000059bf: 31 c9                       	xorl	%ecx, %ecx
1000059c1: 4d 85 c9                    	testq	%r9, %r9
1000059c4: 0f 85 8a f7 ff ff           	jne	-2166 <__Z4ReLUPaS_j+0x194>
1000059ca: e9 bb f7 ff ff              	jmp	-2117 <__Z4ReLUPaS_j+0x1ca>
1000059cf: 31 c9                       	xorl	%ecx, %ecx
1000059d1: 4d 85 c9                    	testq	%r9, %r9
1000059d4: 0f 85 88 fd ff ff           	jne	-632 <__Z4ReLUPaS_j+0x7a2>
1000059da: eb c4                       	jmp	-60 <__Z4ReLUPaS_j+0x9e0>
1000059dc: 90                          	nop
1000059dd: 90                          	nop
1000059de: 90                          	nop
1000059df: 90                          	nop

00000001000059e0 __ZN11LineNetworkC2Ev:
1000059e0: 55                          	pushq	%rbp
1000059e1: 48 89 e5                    	movq	%rsp, %rbp
1000059e4: 41 56                       	pushq	%r14
1000059e6: 53                          	pushq	%rbx
1000059e7: 48 89 fb                    	movq	%rdi, %rbx
1000059ea: e8 f1 f2 ff ff              	callq	-3343 <__ZN14ModelInterfaceC2Ev>
1000059ef: 48 8d 05 0a 47 00 00        	leaq	18186(%rip), %rax
1000059f6: 48 89 03                    	movq	%rax, (%rbx)
1000059f9: 48 89 df                    	movq	%rbx, %rdi
1000059fc: be 00 20 01 00              	movl	$73728, %esi
100005a01: e8 1a f4 ff ff              	callq	-3046 <__ZN14ModelInterface11init_bufferEj>
100005a06: c7 43 20 20 19 6f 00        	movl	$7280928, 32(%rbx)
100005a0d: c5 f8 28 05 6b 28 00 00     	vmovaps	10347(%rip), %xmm0
100005a15: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005a1a: 48 b8 0c 00 00 00 0c 00 00 00       	movabsq	$51539607564, %rax
100005a24: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005a28: 5b                          	popq	%rbx
100005a29: 41 5e                       	popq	%r14
100005a2b: 5d                          	popq	%rbp
100005a2c: c3                          	retq
100005a2d: 49 89 c6                    	movq	%rax, %r14
100005a30: 48 89 df                    	movq	%rbx, %rdi
100005a33: e8 e8 f2 ff ff              	callq	-3352 <__ZN14ModelInterfaceD2Ev>
100005a38: 4c 89 f7                    	movq	%r14, %rdi
100005a3b: e8 4c 25 00 00              	callq	9548 <dyld_stub_binder+0x100007f8c>
100005a40: 0f 0b                       	ud2
100005a42: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005a4c: 0f 1f 40 00                 	nopl	(%rax)

0000000100005a50 __ZN11LineNetworkC1Ev:
100005a50: 55                          	pushq	%rbp
100005a51: 48 89 e5                    	movq	%rsp, %rbp
100005a54: 41 56                       	pushq	%r14
100005a56: 53                          	pushq	%rbx
100005a57: 48 89 fb                    	movq	%rdi, %rbx
100005a5a: e8 81 f2 ff ff              	callq	-3455 <__ZN14ModelInterfaceC2Ev>
100005a5f: 48 8d 05 9a 46 00 00        	leaq	18074(%rip), %rax
100005a66: 48 89 03                    	movq	%rax, (%rbx)
100005a69: 48 89 df                    	movq	%rbx, %rdi
100005a6c: be 00 20 01 00              	movl	$73728, %esi
100005a71: e8 aa f3 ff ff              	callq	-3158 <__ZN14ModelInterface11init_bufferEj>
100005a76: c7 43 20 20 19 6f 00        	movl	$7280928, 32(%rbx)
100005a7d: c5 f8 28 05 fb 27 00 00     	vmovaps	10235(%rip), %xmm0
100005a85: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005a8a: 48 b8 0c 00 00 00 0c 00 00 00       	movabsq	$51539607564, %rax
100005a94: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005a98: 5b                          	popq	%rbx
100005a99: 41 5e                       	popq	%r14
100005a9b: 5d                          	popq	%rbp
100005a9c: c3                          	retq
100005a9d: 49 89 c6                    	movq	%rax, %r14
100005aa0: 48 89 df                    	movq	%rbx, %rdi
100005aa3: e8 78 f2 ff ff              	callq	-3464 <__ZN14ModelInterfaceD2Ev>
100005aa8: 4c 89 f7                    	movq	%r14, %rdi
100005aab: e8 dc 24 00 00              	callq	9436 <dyld_stub_binder+0x100007f8c>
100005ab0: 0f 0b                       	ud2
100005ab2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005abc: 0f 1f 40 00                 	nopl	(%rax)

0000000100005ac0 __ZN11LineNetwork7forwardEv:
100005ac0: 55                          	pushq	%rbp
100005ac1: 48 89 e5                    	movq	%rsp, %rbp
100005ac4: 41 56                       	pushq	%r14
100005ac6: 53                          	pushq	%rbx
100005ac7: 48 89 fb                    	movq	%rdi, %rbx
100005aca: e8 31 f3 ff ff              	callq	-3279 <__ZN14ModelInterface13output_bufferEv>
100005acf: 49 89 c6                    	movq	%rax, %r14
100005ad2: 48 89 df                    	movq	%rbx, %rdi
100005ad5: e8 16 f3 ff ff              	callq	-3306 <__ZN14ModelInterface12input_bufferEv>
100005ada: 48 83 ec 08                 	subq	$8, %rsp
100005ade: 48 8d 15 ab 27 00 00        	leaq	10155(%rip), %rdx
100005ae5: 48 8d 0d b4 27 00 00        	leaq	10164(%rip), %rcx
100005aec: 4c 89 f7                    	movq	%r14, %rdi
100005aef: 48 89 c6                    	movq	%rax, %rsi
100005af2: 41 b8 37 00 00 00           	movl	$55, %r8d
100005af8: 41 b9 08 00 00 00           	movl	$8, %r9d
100005afe: 6a 02                       	pushq	$2
100005b00: 6a 03                       	pushq	$3
100005b02: 68 c0 00 00 00              	pushq	$192
100005b07: 68 c0 00 00 00              	pushq	$192
100005b0c: 6a 01                       	pushq	$1
100005b0e: e8 dd ca ff ff              	callq	-13603 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005b13: 48 83 c4 30                 	addq	$48, %rsp
100005b17: 48 89 df                    	movq	%rbx, %rdi
100005b1a: e8 91 f4 ff ff              	callq	-2927 <__ZN14ModelInterface11swap_bufferEv>
100005b1f: 48 89 df                    	movq	%rbx, %rdi
100005b22: e8 d9 f2 ff ff              	callq	-3367 <__ZN14ModelInterface13output_bufferEv>
100005b27: 49 89 c6                    	movq	%rax, %r14
100005b2a: 48 89 df                    	movq	%rbx, %rdi
100005b2d: e8 be f2 ff ff              	callq	-3394 <__ZN14ModelInterface12input_bufferEv>
100005b32: 4c 89 f7                    	movq	%r14, %rdi
100005b35: 48 89 c6                    	movq	%rax, %rsi
100005b38: ba 00 20 01 00              	movl	$73728, %edx
100005b3d: e8 7e f4 ff ff              	callq	-2946 <__Z4ReLUPaS_j>
100005b42: 48 89 df                    	movq	%rbx, %rdi
100005b45: e8 66 f4 ff ff              	callq	-2970 <__ZN14ModelInterface11swap_bufferEv>
100005b4a: 48 89 df                    	movq	%rbx, %rdi
100005b4d: e8 ae f2 ff ff              	callq	-3410 <__ZN14ModelInterface13output_bufferEv>
100005b52: 49 89 c6                    	movq	%rax, %r14
100005b55: 48 89 df                    	movq	%rbx, %rdi
100005b58: e8 93 f2 ff ff              	callq	-3437 <__ZN14ModelInterface12input_bufferEv>
100005b5d: 48 83 ec 08                 	subq	$8, %rsp
100005b61: 48 8d 15 80 27 00 00        	leaq	10112(%rip), %rdx
100005b68: 48 8d 0d 81 27 00 00        	leaq	10113(%rip), %rcx
100005b6f: 4c 89 f7                    	movq	%r14, %rdi
100005b72: 48 89 c6                    	movq	%rax, %rsi
100005b75: 41 b8 37 00 00 00           	movl	$55, %r8d
100005b7b: 41 b9 08 00 00 00           	movl	$8, %r9d
100005b81: 6a 02                       	pushq	$2
100005b83: 6a 03                       	pushq	$3
100005b85: 6a 60                       	pushq	$96
100005b87: 6a 60                       	pushq	$96
100005b89: 6a 08                       	pushq	$8
100005b8b: e8 60 ca ff ff              	callq	-13728 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005b90: 48 83 c4 30                 	addq	$48, %rsp
100005b94: 48 89 df                    	movq	%rbx, %rdi
100005b97: e8 14 f4 ff ff              	callq	-3052 <__ZN14ModelInterface11swap_bufferEv>
100005b9c: 48 89 df                    	movq	%rbx, %rdi
100005b9f: e8 5c f2 ff ff              	callq	-3492 <__ZN14ModelInterface13output_bufferEv>
100005ba4: 49 89 c6                    	movq	%rax, %r14
100005ba7: 48 89 df                    	movq	%rbx, %rdi
100005baa: e8 41 f2 ff ff              	callq	-3519 <__ZN14ModelInterface12input_bufferEv>
100005baf: 4c 89 f7                    	movq	%r14, %rdi
100005bb2: 48 89 c6                    	movq	%rax, %rsi
100005bb5: ba 00 48 00 00              	movl	$18432, %edx
100005bba: e8 01 f4 ff ff              	callq	-3071 <__Z4ReLUPaS_j>
100005bbf: 48 89 df                    	movq	%rbx, %rdi
100005bc2: e8 e9 f3 ff ff              	callq	-3095 <__ZN14ModelInterface11swap_bufferEv>
100005bc7: 48 89 df                    	movq	%rbx, %rdi
100005bca: e8 31 f2 ff ff              	callq	-3535 <__ZN14ModelInterface13output_bufferEv>
100005bcf: 49 89 c6                    	movq	%rax, %r14
100005bd2: 48 89 df                    	movq	%rbx, %rdi
100005bd5: e8 16 f2 ff ff              	callq	-3562 <__ZN14ModelInterface12input_bufferEv>
100005bda: 48 83 ec 08                 	subq	$8, %rsp
100005bde: 48 8d 15 4b 29 00 00        	leaq	10571(%rip), %rdx
100005be5: 48 8d 0d 54 29 00 00        	leaq	10580(%rip), %rcx
100005bec: 4c 89 f7                    	movq	%r14, %rdi
100005bef: 48 89 c6                    	movq	%rax, %rsi
100005bf2: 41 b8 39 00 00 00           	movl	$57, %r8d
100005bf8: 41 b9 10 00 00 00           	movl	$16, %r9d
100005bfe: 6a 02                       	pushq	$2
100005c00: 6a 03                       	pushq	$3
100005c02: 6a 30                       	pushq	$48
100005c04: 6a 30                       	pushq	$48
100005c06: 6a 08                       	pushq	$8
100005c08: e8 e3 c9 ff ff              	callq	-13853 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005c0d: 48 83 c4 30                 	addq	$48, %rsp
100005c11: 48 89 df                    	movq	%rbx, %rdi
100005c14: e8 97 f3 ff ff              	callq	-3177 <__ZN14ModelInterface11swap_bufferEv>
100005c19: 48 89 df                    	movq	%rbx, %rdi
100005c1c: e8 df f1 ff ff              	callq	-3617 <__ZN14ModelInterface13output_bufferEv>
100005c21: 49 89 c6                    	movq	%rax, %r14
100005c24: 48 89 df                    	movq	%rbx, %rdi
100005c27: e8 c4 f1 ff ff              	callq	-3644 <__ZN14ModelInterface12input_bufferEv>
100005c2c: 4c 89 f7                    	movq	%r14, %rdi
100005c2f: 48 89 c6                    	movq	%rax, %rsi
100005c32: ba 00 24 00 00              	movl	$9216, %edx
100005c37: e8 84 f3 ff ff              	callq	-3196 <__Z4ReLUPaS_j>
100005c3c: 48 89 df                    	movq	%rbx, %rdi
100005c3f: e8 6c f3 ff ff              	callq	-3220 <__ZN14ModelInterface11swap_bufferEv>
100005c44: 48 89 df                    	movq	%rbx, %rdi
100005c47: e8 b4 f1 ff ff              	callq	-3660 <__ZN14ModelInterface13output_bufferEv>
100005c4c: 49 89 c6                    	movq	%rax, %r14
100005c4f: 48 89 df                    	movq	%rbx, %rdi
100005c52: e8 99 f1 ff ff              	callq	-3687 <__ZN14ModelInterface12input_bufferEv>
100005c57: 48 83 ec 08                 	subq	$8, %rsp
100005c5b: 48 8d 15 5e 2d 00 00        	leaq	11614(%rip), %rdx
100005c62: 48 8d 0d 77 2d 00 00        	leaq	11639(%rip), %rcx
100005c69: 4c 89 f7                    	movq	%r14, %rdi
100005c6c: 48 89 c6                    	movq	%rax, %rsi
100005c6f: 41 b8 30 00 00 00           	movl	$48, %r8d
100005c75: 41 b9 20 00 00 00           	movl	$32, %r9d
100005c7b: 6a 02                       	pushq	$2
100005c7d: 6a 03                       	pushq	$3
100005c7f: 6a 18                       	pushq	$24
100005c81: 6a 18                       	pushq	$24
100005c83: 6a 10                       	pushq	$16
100005c85: e8 66 c9 ff ff              	callq	-13978 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005c8a: 48 83 c4 30                 	addq	$48, %rsp
100005c8e: 48 89 df                    	movq	%rbx, %rdi
100005c91: e8 1a f3 ff ff              	callq	-3302 <__ZN14ModelInterface11swap_bufferEv>
100005c96: 48 89 df                    	movq	%rbx, %rdi
100005c99: e8 62 f1 ff ff              	callq	-3742 <__ZN14ModelInterface13output_bufferEv>
100005c9e: 49 89 c6                    	movq	%rax, %r14
100005ca1: 48 89 df                    	movq	%rbx, %rdi
100005ca4: e8 47 f1 ff ff              	callq	-3769 <__ZN14ModelInterface12input_bufferEv>
100005ca9: 4c 89 f7                    	movq	%r14, %rdi
100005cac: 48 89 c6                    	movq	%rax, %rsi
100005caf: ba 00 12 00 00              	movl	$4608, %edx
100005cb4: e8 07 f3 ff ff              	callq	-3321 <__Z4ReLUPaS_j>
100005cb9: 48 89 df                    	movq	%rbx, %rdi
100005cbc: e8 ef f2 ff ff              	callq	-3345 <__ZN14ModelInterface11swap_bufferEv>
100005cc1: 48 89 df                    	movq	%rbx, %rdi
100005cc4: e8 37 f1 ff ff              	callq	-3785 <__ZN14ModelInterface13output_bufferEv>
100005cc9: 49 89 c6                    	movq	%rax, %r14
100005ccc: 48 89 df                    	movq	%rbx, %rdi
100005ccf: e8 1c f1 ff ff              	callq	-3812 <__ZN14ModelInterface12input_bufferEv>
100005cd4: 48 83 ec 08                 	subq	$8, %rsp
100005cd8: 48 8d 15 01 3f 00 00        	leaq	16129(%rip), %rdx
100005cdf: 48 8d 0d 0a 3f 00 00        	leaq	16138(%rip), %rcx
100005ce6: 4c 89 f7                    	movq	%r14, %rdi
100005ce9: 48 89 c6                    	movq	%rax, %rsi
100005cec: 41 b8 20 00 00 00           	movl	$32, %r8d
100005cf2: 41 b9 01 00 00 00           	movl	$1, %r9d
100005cf8: 6a 01                       	pushq	$1
100005cfa: 6a 01                       	pushq	$1
100005cfc: 6a 0c                       	pushq	$12
100005cfe: 6a 0c                       	pushq	$12
100005d00: 6a 20                       	pushq	$32
100005d02: e8 e9 c8 ff ff              	callq	-14103 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005d07: 48 83 c4 30                 	addq	$48, %rsp
100005d0b: 48 89 df                    	movq	%rbx, %rdi
100005d0e: e8 9d f2 ff ff              	callq	-3427 <__ZN14ModelInterface11swap_bufferEv>
100005d13: 48 89 df                    	movq	%rbx, %rdi
100005d16: 5b                          	popq	%rbx
100005d17: 41 5e                       	popq	%r14
100005d19: 5d                          	popq	%rbp
100005d1a: e9 91 f2 ff ff              	jmp	-3439 <__ZN14ModelInterface11swap_bufferEv>
100005d1f: 90                          	nop

0000000100005d20 __ZN11LineNetworkD1Ev:
100005d20: 55                          	pushq	%rbp
100005d21: 48 89 e5                    	movq	%rsp, %rbp
100005d24: 5d                          	popq	%rbp
100005d25: e9 f6 ef ff ff              	jmp	-4106 <__ZN14ModelInterfaceD2Ev>
100005d2a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100005d30 __ZN11LineNetworkD0Ev:
100005d30: 55                          	pushq	%rbp
100005d31: 48 89 e5                    	movq	%rsp, %rbp
100005d34: 53                          	pushq	%rbx
100005d35: 50                          	pushq	%rax
100005d36: 48 89 fb                    	movq	%rdi, %rbx
100005d39: e8 e2 ef ff ff              	callq	-4126 <__ZN14ModelInterfaceD2Ev>
100005d3e: 48 89 df                    	movq	%rbx, %rdi
100005d41: 48 83 c4 08                 	addq	$8, %rsp
100005d45: 5b                          	popq	%rbx
100005d46: 5d                          	popq	%rbp
100005d47: e9 f4 22 00 00              	jmp	8948 <dyld_stub_binder+0x100008040>
100005d4c: 90                          	nop
100005d4d: 90                          	nop
100005d4e: 90                          	nop
100005d4f: 90                          	nop

0000000100005d50 __Z8get_timev:
100005d50: 55                          	pushq	%rbp
100005d51: 48 89 e5                    	movq	%rsp, %rbp
100005d54: e8 bd 22 00 00              	callq	8893 <dyld_stub_binder+0x100008016>
100005d59: c4 e1 fb 2a c0              	vcvtsi2sd	%rax, %xmm0, %xmm0
100005d5e: c5 fb 5e 05 ba 3e 00 00     	vdivsd	16058(%rip), %xmm0, %xmm0
100005d66: 5d                          	popq	%rbp
100005d67: c3                          	retq
100005d68: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100005d70 __Z14get_predictionRN2cv3MatER14ModelInterfacef:
100005d70: 55                          	pushq	%rbp
100005d71: 48 89 e5                    	movq	%rsp, %rbp
100005d74: 41 57                       	pushq	%r15
100005d76: 41 56                       	pushq	%r14
100005d78: 41 55                       	pushq	%r13
100005d7a: 41 54                       	pushq	%r12
100005d7c: 53                          	pushq	%rbx
100005d7d: 48 81 ec 28 01 00 00        	subq	$296, %rsp
100005d84: c5 fa 11 45 a0              	vmovss	%xmm0, -96(%rbp)
100005d89: 49 89 d6                    	movq	%rdx, %r14
100005d8c: 49 89 f4                    	movq	%rsi, %r12
100005d8f: 48 89 fb                    	movq	%rdi, %rbx
100005d92: 48 8b 05 c7 42 00 00        	movq	17095(%rip), %rax
100005d99: 48 8b 00                    	movq	(%rax), %rax
100005d9c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005da0: 8b 46 08                    	movl	8(%rsi), %eax
100005da3: 8b 4e 0c                    	movl	12(%rsi), %ecx
100005da6: c7 85 d0 fe ff ff 00 00 ff 42       	movl	$1124007936, -304(%rbp)
100005db0: 48 8d 95 d8 fe ff ff        	leaq	-296(%rbp), %rdx
100005db7: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005dbb: c5 fc 11 85 d4 fe ff ff     	vmovups	%ymm0, -300(%rbp)
100005dc3: c5 fc 11 85 f0 fe ff ff     	vmovups	%ymm0, -272(%rbp)
100005dcb: 48 89 95 10 ff ff ff        	movq	%rdx, -240(%rbp)
100005dd2: 48 8d 95 20 ff ff ff        	leaq	-224(%rbp), %rdx
100005dd9: 48 89 95 18 ff ff ff        	movq	%rdx, -232(%rbp)
100005de0: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005de4: c5 f8 11 85 20 ff ff ff     	vmovups	%xmm0, -224(%rbp)
100005dec: 89 4d b8                    	movl	%ecx, -72(%rbp)
100005def: 89 45 bc                    	movl	%eax, -68(%rbp)
100005df2: 4c 8d bd d0 fe ff ff        	leaq	-304(%rbp), %r15
100005df9: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
100005dfd: 4c 89 ff                    	movq	%r15, %rdi
100005e00: be 02 00 00 00              	movl	$2, %esi
100005e05: 31 c9                       	xorl	%ecx, %ecx
100005e07: c5 f8 77                    	vzeroupper
100005e0a: e8 9b 21 00 00              	callq	8603 <dyld_stub_binder+0x100007faa>
100005e0f: 48 c7 85 40 ff ff ff 00 00 00 00    	movq	$0, -192(%rbp)
100005e1a: c7 85 30 ff ff ff 00 00 01 01       	movl	$16842752, -208(%rbp)
100005e24: 4c 89 a5 38 ff ff ff        	movq	%r12, -200(%rbp)
100005e2b: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100005e33: c7 45 b8 00 00 01 02        	movl	$33619968, -72(%rbp)
100005e3a: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
100005e3e: 48 8d bd 30 ff ff ff        	leaq	-208(%rbp), %rdi
100005e45: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
100005e49: ba 06 00 00 00              	movl	$6, %edx
100005e4e: 31 c9                       	xorl	%ecx, %ecx
100005e50: e8 7f 21 00 00              	callq	8575 <dyld_stub_binder+0x100007fd4>
100005e55: 41 8b 44 24 08              	movl	8(%r12), %eax
100005e5a: 41 8b 4c 24 0c              	movl	12(%r12), %ecx
100005e5f: c7 85 30 ff ff ff 00 00 ff 42       	movl	$1124007936, -208(%rbp)
100005e69: 48 8d 95 38 ff ff ff        	leaq	-200(%rbp), %rdx
100005e70: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005e74: c5 fc 11 85 34 ff ff ff     	vmovups	%ymm0, -204(%rbp)
100005e7c: c5 fc 11 85 50 ff ff ff     	vmovups	%ymm0, -176(%rbp)
100005e84: 48 89 95 70 ff ff ff        	movq	%rdx, -144(%rbp)
100005e8b: 48 8d 55 80                 	leaq	-128(%rbp), %rdx
100005e8f: 48 89 95 78 ff ff ff        	movq	%rdx, -136(%rbp)
100005e96: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005e9a: c5 f8 11 45 80              	vmovups	%xmm0, -128(%rbp)
100005e9f: 89 4d b8                    	movl	%ecx, -72(%rbp)
100005ea2: 89 45 bc                    	movl	%eax, -68(%rbp)
100005ea5: 4c 8d a5 30 ff ff ff        	leaq	-208(%rbp), %r12
100005eac: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
100005eb0: 4c 89 e7                    	movq	%r12, %rdi
100005eb3: be 02 00 00 00              	movl	$2, %esi
100005eb8: 31 c9                       	xorl	%ecx, %ecx
100005eba: c5 f8 77                    	vzeroupper
100005ebd: e8 e8 20 00 00              	callq	8424 <dyld_stub_binder+0x100007faa>
100005ec2: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100005eca: c7 45 b8 00 00 01 01        	movl	$16842752, -72(%rbp)
100005ed1: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
100005ed5: 48 c7 85 c0 fe ff ff 00 00 00 00    	movq	$0, -320(%rbp)
100005ee0: c7 85 b0 fe ff ff 00 00 01 02       	movl	$33619968, -336(%rbp)
100005eea: 4c 89 a5 b8 fe ff ff        	movq	%r12, -328(%rbp)
100005ef1: 41 8b 46 0c                 	movl	12(%r14), %eax
100005ef5: 41 8b 4e 10                 	movl	16(%r14), %ecx
100005ef9: 89 4d 90                    	movl	%ecx, -112(%rbp)
100005efc: 89 45 94                    	movl	%eax, -108(%rbp)
100005eff: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100005f03: 48 8d b5 b0 fe ff ff        	leaq	-336(%rbp), %rsi
100005f0a: 48 8d 55 90                 	leaq	-112(%rbp), %rdx
100005f0e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005f12: c5 f0 57 c9                 	vxorps	%xmm1, %xmm1, %xmm1
100005f16: b9 03 00 00 00              	movl	$3, %ecx
100005f1b: e8 a2 20 00 00              	callq	8354 <dyld_stub_binder+0x100007fc2>
100005f20: 41 8b 46 0c                 	movl	12(%r14), %eax
100005f24: 85 c0                       	testl	%eax, %eax
100005f26: 48 89 5d b0                 	movq	%rbx, -80(%rbp)
100005f2a: 4d 89 f7                    	movq	%r14, %r15
100005f2d: 0f 84 7c 00 00 00           	je	124 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x23f>
100005f33: 41 8b 4f 10                 	movl	16(%r15), %ecx
100005f37: 31 d2                       	xorl	%edx, %edx
100005f39: 45 31 e4                    	xorl	%r12d, %r12d
100005f3c: 85 c9                       	testl	%ecx, %ecx
100005f3e: 75 0c                       	jne	12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1dc>
100005f40: 31 c9                       	xorl	%ecx, %ecx
100005f42: ff c2                       	incl	%edx
100005f44: 39 c2                       	cmpl	%eax, %edx
100005f46: 73 67                       	jae	103 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x23f>
100005f48: 85 c9                       	testl	%ecx, %ecx
100005f4a: 74 f4                       	je	-12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d0>
100005f4c: 89 55 a8                    	movl	%edx, -88(%rbp)
100005f4f: 4c 63 f2                    	movslq	%edx, %r14
100005f52: 45 31 ed                    	xorl	%r13d, %r13d
100005f55: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005f5f: 90                          	nop
100005f60: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100005f67: 48 8b 00                    	movq	(%rax), %rax
100005f6a: 49 0f af c6                 	imulq	%r14, %rax
100005f6e: 48 03 85 40 ff ff ff        	addq	-192(%rbp), %rax
100005f75: 49 63 cd                    	movslq	%r13d, %rcx
100005f78: 0f b6 1c 01                 	movzbl	(%rcx,%rax), %ebx
100005f7c: 4c 89 ff                    	movq	%r15, %rdi
100005f7f: e8 6c ee ff ff              	callq	-4500 <__ZN14ModelInterface12input_bufferEv>
100005f84: 43 8d 0c 2c                 	leal	(%r12,%r13), %ecx
100005f88: d0 eb                       	shrb	%bl
100005f8a: 89 c9                       	movl	%ecx, %ecx
100005f8c: 88 1c 08                    	movb	%bl, (%rax,%rcx)
100005f8f: 41 ff c5                    	incl	%r13d
100005f92: 41 8b 4f 10                 	movl	16(%r15), %ecx
100005f96: 41 39 cd                    	cmpl	%ecx, %r13d
100005f99: 72 c5                       	jb	-59 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1f0>
100005f9b: 41 8b 47 0c                 	movl	12(%r15), %eax
100005f9f: 45 01 ec                    	addl	%r13d, %r12d
100005fa2: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
100005fa6: 8b 55 a8                    	movl	-88(%rbp), %edx
100005fa9: ff c2                       	incl	%edx
100005fab: 39 c2                       	cmpl	%eax, %edx
100005fad: 72 99                       	jb	-103 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d8>
100005faf: 49 8b 07                    	movq	(%r15), %rax
100005fb2: 4c 89 ff                    	movq	%r15, %rdi
100005fb5: ff 50 10                    	callq	*16(%rax)
100005fb8: 41 8b 47 18                 	movl	24(%r15), %eax
100005fbc: 41 8b 4f 1c                 	movl	28(%r15), %ecx
100005fc0: c7 03 00 00 ff 42           	movl	$1124007936, (%rbx)
100005fc6: 48 8d 53 08                 	leaq	8(%rbx), %rdx
100005fca: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005fce: c5 fc 11 43 04              	vmovups	%ymm0, 4(%rbx)
100005fd3: c5 fc 11 43 20              	vmovups	%ymm0, 32(%rbx)
100005fd8: 48 89 53 40                 	movq	%rdx, 64(%rbx)
100005fdc: 48 8d 53 50                 	leaq	80(%rbx), %rdx
100005fe0: 48 89 95 c8 fe ff ff        	movq	%rdx, -312(%rbp)
100005fe7: 48 89 53 48                 	movq	%rdx, 72(%rbx)
100005feb: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005fef: c5 f8 11 43 50              	vmovups	%xmm0, 80(%rbx)
100005ff4: 89 4d b8                    	movl	%ecx, -72(%rbp)
100005ff7: 89 45 bc                    	movl	%eax, -68(%rbp)
100005ffa: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
100005ffe: 48 89 df                    	movq	%rbx, %rdi
100006001: be 02 00 00 00              	movl	$2, %esi
100006006: 31 c9                       	xorl	%ecx, %ecx
100006008: c5 f8 77                    	vzeroupper
10000600b: e8 9a 1f 00 00              	callq	8090 <dyld_stub_binder+0x100007faa>
100006010: 41 8b 47 18                 	movl	24(%r15), %eax
100006014: 41 83 7f 14 01              	cmpl	$1, 20(%r15)
100006019: 4c 89 fe                    	movq	%r15, %rsi
10000601c: 0f 85 aa 00 00 00           	jne	170 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x35c>
100006022: 85 c0                       	testl	%eax, %eax
100006024: 0f 84 b2 01 00 00           	je	434 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
10000602a: c5 fa 10 45 a0              	vmovss	-96(%rbp), %xmm0
10000602f: c5 fa 59 05 31 3c 00 00     	vmulss	15409(%rip), %xmm0, %xmm0
100006037: c5 fa 11 45 a8              	vmovss	%xmm0, -88(%rbp)
10000603c: 8b 4e 1c                    	movl	28(%rsi), %ecx
10000603f: 45 31 ff                    	xorl	%r15d, %r15d
100006042: 45 31 e4                    	xorl	%r12d, %r12d
100006045: 85 c9                       	testl	%ecx, %ecx
100006047: 75 19                       	jne	25 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2f2>
100006049: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100006050: 31 c9                       	xorl	%ecx, %ecx
100006052: 41 ff c7                    	incl	%r15d
100006055: 41 39 c7                    	cmpl	%eax, %r15d
100006058: 0f 83 7e 01 00 00           	jae	382 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
10000605e: 85 c9                       	testl	%ecx, %ecx
100006060: 74 ee                       	je	-18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2e0>
100006062: 4d 63 f7                    	movslq	%r15d, %r14
100006065: 31 db                       	xorl	%ebx, %ebx
100006067: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006070: 49 89 f5                    	movq	%rsi, %r13
100006073: 48 89 f7                    	movq	%rsi, %rdi
100006076: e8 85 ed ff ff              	callq	-4731 <__ZN14ModelInterface13output_bufferEv>
10000607b: 41 8d 0c 1c                 	leal	(%r12,%rbx), %ecx
10000607f: 89 c9                       	movl	%ecx, %ecx
100006081: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006085: c5 ea 2a c0                 	vcvtsi2ss	%eax, %xmm2, %xmm0
100006089: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
10000608d: 48 8b 41 48                 	movq	72(%rcx), %rax
100006091: 48 8b 00                    	movq	(%rax), %rax
100006094: 49 0f af c6                 	imulq	%r14, %rax
100006098: 48 03 41 10                 	addq	16(%rcx), %rax
10000609c: c5 f8 2e 45 a8              	vucomiss	-88(%rbp), %xmm0
1000060a1: 48 63 db                    	movslq	%ebx, %rbx
1000060a4: 0f 97 04 03                 	seta	(%rbx,%rax)
1000060a8: ff c3                       	incl	%ebx
1000060aa: 41 8b 4d 1c                 	movl	28(%r13), %ecx
1000060ae: 39 cb                       	cmpl	%ecx, %ebx
1000060b0: 4c 89 ee                    	movq	%r13, %rsi
1000060b3: 72 bb                       	jb	-69 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x300>
1000060b5: 8b 46 18                    	movl	24(%rsi), %eax
1000060b8: 41 01 dc                    	addl	%ebx, %r12d
1000060bb: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
1000060bf: 41 ff c7                    	incl	%r15d
1000060c2: 41 39 c7                    	cmpl	%eax, %r15d
1000060c5: 72 97                       	jb	-105 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2ee>
1000060c7: e9 10 01 00 00              	jmp	272 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
1000060cc: 85 c0                       	testl	%eax, %eax
1000060ce: 0f 84 08 01 00 00           	je	264 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
1000060d4: c5 fa 10 45 a0              	vmovss	-96(%rbp), %xmm0
1000060d9: c5 fa 59 05 87 3b 00 00     	vmulss	15239(%rip), %xmm0, %xmm0
1000060e1: c5 fa 11 45 98              	vmovss	%xmm0, -104(%rbp)
1000060e6: 8b 4e 1c                    	movl	28(%rsi), %ecx
1000060e9: 31 d2                       	xorl	%edx, %edx
1000060eb: 45 31 ff                    	xorl	%r15d, %r15d
1000060ee: 85 c9                       	testl	%ecx, %ecx
1000060f0: 75 26                       	jne	38 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3a8>
1000060f2: e9 d9 00 00 00              	jmp	217 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x460>
1000060f7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006100: 8b 46 18                    	movl	24(%rsi), %eax
100006103: 8b 55 9c                    	movl	-100(%rbp), %edx
100006106: ff c2                       	incl	%edx
100006108: 39 c2                       	cmpl	%eax, %edx
10000610a: 0f 83 cc 00 00 00           	jae	204 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
100006110: 85 c9                       	testl	%ecx, %ecx
100006112: 0f 84 b8 00 00 00           	je	184 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x460>
100006118: 89 55 9c                    	movl	%edx, -100(%rbp)
10000611b: 48 63 c2                    	movslq	%edx, %rax
10000611e: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100006122: 31 d2                       	xorl	%edx, %edx
100006124: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100006128: 83 7e 14 00                 	cmpl	$0, 20(%rsi)
10000612c: 75 4c                       	jne	76 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x40a>
10000612e: 66 90                       	nop
100006130: 41 b5 81                    	movb	$-127, %r13b
100006133: 45 31 f6                    	xorl	%r14d, %r14d
100006136: 41 0f be c5                 	movsbl	%r13b, %eax
10000613a: c5 ea 2a c0                 	vcvtsi2ss	%eax, %xmm2, %xmm0
10000613e: c5 f8 2e 45 98              	vucomiss	-104(%rbp), %xmm0
100006143: b8 00 00 00 00              	movl	$0, %eax
100006148: 44 0f 46 f0                 	cmovbel	%eax, %r14d
10000614c: 48 8b 43 48                 	movq	72(%rbx), %rax
100006150: 48 8b 00                    	movq	(%rax), %rax
100006153: 48 0f af 45 a0              	imulq	-96(%rbp), %rax
100006158: 48 03 43 10                 	addq	16(%rbx), %rax
10000615c: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100006160: 48 63 d2                    	movslq	%edx, %rdx
100006163: 44 88 34 02                 	movb	%r14b, (%rdx,%rax)
100006167: ff c2                       	incl	%edx
100006169: 8b 4e 1c                    	movl	28(%rsi), %ecx
10000616c: 39 ca                       	cmpl	%ecx, %edx
10000616e: 73 90                       	jae	-112 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x390>
100006170: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100006174: 83 7e 14 00                 	cmpl	$0, 20(%rsi)
100006178: 74 b6                       	je	-74 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3c0>
10000617a: 41 b5 81                    	movb	$-127, %r13b
10000617d: 31 db                       	xorl	%ebx, %ebx
10000617f: 45 31 f6                    	xorl	%r14d, %r14d
100006182: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000618c: 0f 1f 40 00                 	nopl	(%rax)
100006190: 49 89 f4                    	movq	%rsi, %r12
100006193: 48 89 f7                    	movq	%rsi, %rdi
100006196: e8 65 ec ff ff              	callq	-5019 <__ZN14ModelInterface13output_bufferEv>
10000619b: 41 8d 0c 1f                 	leal	(%r15,%rbx), %ecx
10000619f: 89 c9                       	movl	%ecx, %ecx
1000061a1: 0f b6 04 08                 	movzbl	(%rax,%rcx), %eax
1000061a5: 44 38 e8                    	cmpb	%r13b, %al
1000061a8: 44 0f 4f f3                 	cmovgl	%ebx, %r14d
1000061ac: 45 0f b6 ed                 	movzbl	%r13b, %r13d
1000061b0: 44 0f 4d e8                 	cmovgel	%eax, %r13d
1000061b4: ff c3                       	incl	%ebx
1000061b6: 41 3b 5c 24 14              	cmpl	20(%r12), %ebx
1000061bb: 4c 89 e6                    	movq	%r12, %rsi
1000061be: 72 d0                       	jb	-48 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x420>
1000061c0: 41 01 df                    	addl	%ebx, %r15d
1000061c3: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
1000061c7: e9 6a ff ff ff              	jmp	-150 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3c6>
1000061cc: 0f 1f 40 00                 	nopl	(%rax)
1000061d0: 31 c9                       	xorl	%ecx, %ecx
1000061d2: ff c2                       	incl	%edx
1000061d4: 39 c2                       	cmpl	%eax, %edx
1000061d6: 0f 82 34 ff ff ff           	jb	-204 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3a0>
1000061dc: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
1000061e3: 48 85 c0                    	testq	%rax, %rax
1000061e6: 74 12                       	je	18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x48a>
1000061e8: f0                          	lock
1000061e9: ff 48 14                    	decl	20(%rax)
1000061ec: 75 0c                       	jne	12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x48a>
1000061ee: 48 8d bd 30 ff ff ff        	leaq	-208(%rbp), %rdi
1000061f5: e8 aa 1d 00 00              	callq	7594 <dyld_stub_binder+0x100007fa4>
1000061fa: 48 c7 85 68 ff ff ff 00 00 00 00    	movq	$0, -152(%rbp)
100006205: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100006209: c5 fc 11 85 40 ff ff ff     	vmovups	%ymm0, -192(%rbp)
100006211: 83 bd 34 ff ff ff 00        	cmpl	$0, -204(%rbp)
100006218: 7e 2c                       	jle	44 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4d6>
10000621a: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
100006221: 31 c9                       	xorl	%ecx, %ecx
100006223: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000622d: 0f 1f 00                    	nopl	(%rax)
100006230: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006237: 48 ff c1                    	incq	%rcx
10000623a: 48 63 95 34 ff ff ff        	movslq	-204(%rbp), %rdx
100006241: 48 39 d1                    	cmpq	%rdx, %rcx
100006244: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4c0>
100006246: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
10000624d: 48 8d 45 80                 	leaq	-128(%rbp), %rax
100006251: 48 39 c7                    	cmpq	%rax, %rdi
100006254: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4ee>
100006256: c5 f8 77                    	vzeroupper
100006259: e8 7c 1d 00 00              	callq	7548 <dyld_stub_binder+0x100007fda>
10000625e: 48 8b 85 08 ff ff ff        	movq	-248(%rbp), %rax
100006265: 48 85 c0                    	testq	%rax, %rax
100006268: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x50f>
10000626a: f0                          	lock
10000626b: ff 48 14                    	decl	20(%rax)
10000626e: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x50f>
100006270: 48 8d bd d0 fe ff ff        	leaq	-304(%rbp), %rdi
100006277: c5 f8 77                    	vzeroupper
10000627a: e8 25 1d 00 00              	callq	7461 <dyld_stub_binder+0x100007fa4>
10000627f: 48 c7 85 08 ff ff ff 00 00 00 00    	movq	$0, -248(%rbp)
10000628a: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000628e: c5 fc 11 85 e0 fe ff ff     	vmovups	%ymm0, -288(%rbp)
100006296: 83 bd d4 fe ff ff 00        	cmpl	$0, -300(%rbp)
10000629d: 7e 27                       	jle	39 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x556>
10000629f: 48 8b 85 10 ff ff ff        	movq	-240(%rbp), %rax
1000062a6: 31 c9                       	xorl	%ecx, %ecx
1000062a8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000062b0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000062b7: 48 ff c1                    	incq	%rcx
1000062ba: 48 63 95 d4 fe ff ff        	movslq	-300(%rbp), %rdx
1000062c1: 48 39 d1                    	cmpq	%rdx, %rcx
1000062c4: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x540>
1000062c6: 48 8b bd 18 ff ff ff        	movq	-232(%rbp), %rdi
1000062cd: 48 8d 85 20 ff ff ff        	leaq	-224(%rbp), %rax
1000062d4: 48 39 c7                    	cmpq	%rax, %rdi
1000062d7: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x571>
1000062d9: c5 f8 77                    	vzeroupper
1000062dc: e8 f9 1c 00 00              	callq	7417 <dyld_stub_binder+0x100007fda>
1000062e1: 48 8b 05 78 3d 00 00        	movq	15736(%rip), %rax
1000062e8: 48 8b 00                    	movq	(%rax), %rax
1000062eb: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
1000062ef: 75 18                       	jne	24 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x599>
1000062f1: 48 89 d8                    	movq	%rbx, %rax
1000062f4: 48 81 c4 28 01 00 00        	addq	$296, %rsp
1000062fb: 5b                          	popq	%rbx
1000062fc: 41 5c                       	popq	%r12
1000062fe: 41 5d                       	popq	%r13
100006300: 41 5e                       	popq	%r14
100006302: 41 5f                       	popq	%r15
100006304: 5d                          	popq	%rbp
100006305: c5 f8 77                    	vzeroupper
100006308: c3                          	retq
100006309: c5 f8 77                    	vzeroupper
10000630c: e8 4d 1d 00 00              	callq	7501 <dyld_stub_binder+0x10000805e>
100006311: 48 89 c7                    	movq	%rax, %rdi
100006314: e8 e7 16 00 00              	callq	5863 <___clang_call_terminate>
100006319: 48 89 c7                    	movq	%rax, %rdi
10000631c: e8 df 16 00 00              	callq	5855 <___clang_call_terminate>
100006321: eb 1e                       	jmp	30 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5d1>
100006323: eb 00                       	jmp	0 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5b5>
100006325: 49 89 c6                    	movq	%rax, %r14
100006328: 48 8b 85 08 ff ff ff        	movq	-248(%rbp), %rax
10000632f: 48 85 c0                    	testq	%rax, %rax
100006332: 0f 85 0f 01 00 00           	jne	271 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6d7>
100006338: e9 1f 01 00 00              	jmp	287 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6ec>
10000633d: eb 02                       	jmp	2 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5d1>
10000633f: eb 14                       	jmp	20 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5e5>
100006341: 49 89 c6                    	movq	%rax, %r14
100006344: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
10000634b: 48 85 c0                    	testq	%rax, %rax
10000634e: 75 7f                       	jne	127 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x65f>
100006350: e9 8f 00 00 00              	jmp	143 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x674>
100006355: 49 89 c6                    	movq	%rax, %r14
100006358: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
10000635c: 48 8b 43 38                 	movq	56(%rbx), %rax
100006360: 48 85 c0                    	testq	%rax, %rax
100006363: 74 0e                       	je	14 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x603>
100006365: f0                          	lock
100006366: ff 48 14                    	decl	20(%rax)
100006369: 75 08                       	jne	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x603>
10000636b: 48 89 df                    	movq	%rbx, %rdi
10000636e: e8 31 1c 00 00              	callq	7217 <dyld_stub_binder+0x100007fa4>
100006373: 48 c7 43 38 00 00 00 00     	movq	$0, 56(%rbx)
10000637b: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000637f: c5 fc 11 43 10              	vmovups	%ymm0, 16(%rbx)
100006384: 83 7b 04 00                 	cmpl	$0, 4(%rbx)
100006388: 7e 20                       	jle	32 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x63a>
10000638a: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
10000638e: 48 8d 41 04                 	leaq	4(%rcx), %rax
100006392: 48 8b 49 40                 	movq	64(%rcx), %rcx
100006396: 31 d2                       	xorl	%edx, %edx
100006398: c7 04 91 00 00 00 00        	movl	$0, (%rcx,%rdx,4)
10000639f: 48 ff c2                    	incq	%rdx
1000063a2: 48 63 30                    	movslq	(%rax), %rsi
1000063a5: 48 39 f2                    	cmpq	%rsi, %rdx
1000063a8: 7c ee                       	jl	-18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x628>
1000063aa: 48 8b 45 b0                 	movq	-80(%rbp), %rax
1000063ae: 48 8b 78 48                 	movq	72(%rax), %rdi
1000063b2: 48 3b bd c8 fe ff ff        	cmpq	-312(%rbp), %rdi
1000063b9: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x653>
1000063bb: c5 f8 77                    	vzeroupper
1000063be: e8 17 1c 00 00              	callq	7191 <dyld_stub_binder+0x100007fda>
1000063c3: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
1000063ca: 48 85 c0                    	testq	%rax, %rax
1000063cd: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x674>
1000063cf: f0                          	lock
1000063d0: ff 48 14                    	decl	20(%rax)
1000063d3: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x674>
1000063d5: 48 8d bd 30 ff ff ff        	leaq	-208(%rbp), %rdi
1000063dc: c5 f8 77                    	vzeroupper
1000063df: e8 c0 1b 00 00              	callq	7104 <dyld_stub_binder+0x100007fa4>
1000063e4: 48 c7 85 68 ff ff ff 00 00 00 00    	movq	$0, -152(%rbp)
1000063ef: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000063f3: c5 fc 11 85 40 ff ff ff     	vmovups	%ymm0, -192(%rbp)
1000063fb: 83 bd 34 ff ff ff 00        	cmpl	$0, -204(%rbp)
100006402: 7e 1f                       	jle	31 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6b3>
100006404: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
10000640b: 31 c9                       	xorl	%ecx, %ecx
10000640d: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006414: 48 ff c1                    	incq	%rcx
100006417: 48 63 95 34 ff ff ff        	movslq	-204(%rbp), %rdx
10000641e: 48 39 d1                    	cmpq	%rdx, %rcx
100006421: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x69d>
100006423: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
10000642a: 48 8d 45 80                 	leaq	-128(%rbp), %rax
10000642e: 48 39 c7                    	cmpq	%rax, %rdi
100006431: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6cb>
100006433: c5 f8 77                    	vzeroupper
100006436: e8 9f 1b 00 00              	callq	7071 <dyld_stub_binder+0x100007fda>
10000643b: 48 8b 85 08 ff ff ff        	movq	-248(%rbp), %rax
100006442: 48 85 c0                    	testq	%rax, %rax
100006445: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6ec>
100006447: f0                          	lock
100006448: ff 48 14                    	decl	20(%rax)
10000644b: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6ec>
10000644d: 48 8d bd d0 fe ff ff        	leaq	-304(%rbp), %rdi
100006454: c5 f8 77                    	vzeroupper
100006457: e8 48 1b 00 00              	callq	6984 <dyld_stub_binder+0x100007fa4>
10000645c: 48 c7 85 08 ff ff ff 00 00 00 00    	movq	$0, -248(%rbp)
100006467: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000646b: c5 fc 11 85 e0 fe ff ff     	vmovups	%ymm0, -288(%rbp)
100006473: 83 bd d4 fe ff ff 00        	cmpl	$0, -300(%rbp)
10000647a: 7e 2a                       	jle	42 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x736>
10000647c: 48 8b 85 10 ff ff ff        	movq	-240(%rbp), %rax
100006483: 31 c9                       	xorl	%ecx, %ecx
100006485: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000648f: 90                          	nop
100006490: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006497: 48 ff c1                    	incq	%rcx
10000649a: 48 63 95 d4 fe ff ff        	movslq	-300(%rbp), %rdx
1000064a1: 48 39 d1                    	cmpq	%rdx, %rcx
1000064a4: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x720>
1000064a6: 48 8b bd 18 ff ff ff        	movq	-232(%rbp), %rdi
1000064ad: 48 8d 85 20 ff ff ff        	leaq	-224(%rbp), %rax
1000064b4: 48 39 c7                    	cmpq	%rax, %rdi
1000064b7: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x751>
1000064b9: c5 f8 77                    	vzeroupper
1000064bc: e8 19 1b 00 00              	callq	6937 <dyld_stub_binder+0x100007fda>
1000064c1: 4c 89 f7                    	movq	%r14, %rdi
1000064c4: c5 f8 77                    	vzeroupper
1000064c7: e8 c0 1a 00 00              	callq	6848 <dyld_stub_binder+0x100007f8c>
1000064cc: 0f 0b                       	ud2
1000064ce: 48 89 c7                    	movq	%rax, %rdi
1000064d1: e8 2a 15 00 00              	callq	5418 <___clang_call_terminate>
1000064d6: 48 89 c7                    	movq	%rax, %rdi
1000064d9: e8 22 15 00 00              	callq	5410 <___clang_call_terminate>
1000064de: 48 89 c7                    	movq	%rax, %rdi
1000064e1: e8 1a 15 00 00              	callq	5402 <___clang_call_terminate>
1000064e6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000064f0 _main:
1000064f0: 55                          	pushq	%rbp
1000064f1: 48 89 e5                    	movq	%rsp, %rbp
1000064f4: 41 57                       	pushq	%r15
1000064f6: 41 56                       	pushq	%r14
1000064f8: 41 55                       	pushq	%r13
1000064fa: 41 54                       	pushq	%r12
1000064fc: 53                          	pushq	%rbx
1000064fd: 48 83 e4 e0                 	andq	$-32, %rsp
100006501: 48 81 ec 00 04 00 00        	subq	$1024, %rsp
100006508: 48 8b 05 51 3b 00 00        	movq	15185(%rip), %rax
10000650f: 48 8b 00                    	movq	(%rax), %rax
100006512: 48 89 84 24 e0 03 00 00     	movq	%rax, 992(%rsp)
10000651a: 48 8d bc 24 08 02 00 00     	leaq	520(%rsp), %rdi
100006522: e8 29 f5 ff ff              	callq	-2775 <__ZN11LineNetworkC1Ev>
100006527: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000652b: c5 f9 7f 84 24 60 02 00 00  	vmovdqa	%xmm0, 608(%rsp)
100006534: 48 c7 84 24 70 02 00 00 00 00 00 00 	movq	$0, 624(%rsp)
100006540: bf 30 00 00 00              	movl	$48, %edi
100006545: e8 02 1b 00 00              	callq	6914 <dyld_stub_binder+0x10000804c>
10000654a: 48 89 84 24 70 02 00 00     	movq	%rax, 624(%rsp)
100006552: c5 f8 28 05 36 37 00 00     	vmovaps	14134(%rip), %xmm0
10000655a: c5 f8 29 84 24 60 02 00 00  	vmovaps	%xmm0, 608(%rsp)
100006563: c5 fe 6f 05 39 39 00 00     	vmovdqu	14649(%rip), %ymm0
10000656b: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
10000656f: 48 b9 69 64 65 6f 2e 6d 70 34       	movabsq	$3778640133568685161, %rcx
100006579: 48 89 48 20                 	movq	%rcx, 32(%rax)
10000657d: c6 40 28 00                 	movb	$0, 40(%rax)
100006581: 48 8d bc 24 d8 01 00 00     	leaq	472(%rsp), %rdi
100006589: 48 8d b4 24 60 02 00 00     	leaq	608(%rsp), %rsi
100006591: 31 d2                       	xorl	%edx, %edx
100006593: c5 f8 77                    	vzeroupper
100006596: e8 f7 19 00 00              	callq	6647 <dyld_stub_binder+0x100007f92>
10000659b: f6 84 24 60 02 00 00 01     	testb	$1, 608(%rsp)
1000065a3: 74 0d                       	je	13 <_main+0xc2>
1000065a5: 48 8b bc 24 70 02 00 00     	movq	624(%rsp), %rdi
1000065ad: e8 8e 1a 00 00              	callq	6798 <dyld_stub_binder+0x100008040>
1000065b2: 4c 8d 74 24 68              	leaq	104(%rsp), %r14
1000065b7: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000065bb: c5 f9 d6 84 24 d8 00 00 00  	vmovq	%xmm0, 216(%rsp)
1000065c4: 48 8d 9c 24 d8 01 00 00     	leaq	472(%rsp), %rbx
1000065cc: 4c 8d bc 24 c0 03 00 00     	leaq	960(%rsp), %r15
1000065d4: 4c 8d ac 24 c0 01 00 00     	leaq	448(%rsp), %r13
1000065dc: eb 0b                       	jmp	11 <_main+0xf9>
1000065de: 66 90                       	nop
1000065e0: 45 85 e4                    	testl	%r12d, %r12d
1000065e3: 0f 85 a1 0f 00 00           	jne	4001 <_main+0x109a>
1000065e9: 48 89 df                    	movq	%rbx, %rdi
1000065ec: c5 f8 77                    	vzeroupper
1000065ef: e8 f2 19 00 00              	callq	6642 <dyld_stub_binder+0x100007fe6>
1000065f4: 84 c0                       	testb	%al, %al
1000065f6: 0f 84 8e 0f 00 00           	je	3982 <_main+0x109a>
1000065fc: c7 44 24 18 00 00 ff 42     	movl	$1124007936, 24(%rsp)
100006604: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006608: 48 8d 44 24 1c              	leaq	28(%rsp), %rax
10000660d: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
100006612: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100006616: 48 8d 44 24 20              	leaq	32(%rsp), %rax
10000661b: 48 89 44 24 58              	movq	%rax, 88(%rsp)
100006620: 4c 89 74 24 60              	movq	%r14, 96(%rsp)
100006625: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006629: c4 c1 7a 7f 06              	vmovdqu	%xmm0, (%r14)
10000662e: 48 89 df                    	movq	%rbx, %rdi
100006631: 48 8d 74 24 18              	leaq	24(%rsp), %rsi
100006636: c5 f8 77                    	vzeroupper
100006639: e8 60 19 00 00              	callq	6496 <dyld_stub_binder+0x100007f9e>
10000663e: 41 bc 03 00 00 00           	movl	$3, %r12d
100006644: 48 83 7c 24 28 00           	cmpq	$0, 40(%rsp)
10000664a: 0f 84 80 08 00 00           	je	2176 <_main+0x9e0>
100006650: 8b 44 24 1c                 	movl	28(%rsp), %eax
100006654: 83 f8 03                    	cmpl	$3, %eax
100006657: 0f 8d 53 03 00 00           	jge	851 <_main+0x4c0>
10000665d: 48 63 4c 24 20              	movslq	32(%rsp), %rcx
100006662: 48 63 74 24 24              	movslq	36(%rsp), %rsi
100006667: 48 0f af f1                 	imulq	%rcx, %rsi
10000666b: 85 c0                       	testl	%eax, %eax
10000666d: 0f 84 5d 08 00 00           	je	2141 <_main+0x9e0>
100006673: 48 85 f6                    	testq	%rsi, %rsi
100006676: 0f 84 54 08 00 00           	je	2132 <_main+0x9e0>
10000667c: bf 19 00 00 00              	movl	$25, %edi
100006681: c5 f8 77                    	vzeroupper
100006684: e8 45 19 00 00              	callq	6469 <dyld_stub_binder+0x100007fce>
100006689: 3c 1b                       	cmpb	$27, %al
10000668b: 0f 84 3f 08 00 00           	je	2111 <_main+0x9e0>
100006691: e8 80 19 00 00              	callq	6528 <dyld_stub_binder+0x100008016>
100006696: 49 89 c6                    	movq	%rax, %r14
100006699: 48 8d 9c 24 00 01 00 00     	leaq	256(%rsp), %rbx
1000066a1: 48 89 df                    	movq	%rbx, %rdi
1000066a4: 48 8d 74 24 18              	leaq	24(%rsp), %rsi
1000066a9: 48 8d 94 24 08 02 00 00     	leaq	520(%rsp), %rdx
1000066b1: c5 f9 6e 05 b3 35 00 00     	vmovd	13747(%rip), %xmm0
1000066b9: e8 b2 f6 ff ff              	callq	-2382 <__Z14get_predictionRN2cv3MatER14ModelInterfacef>
1000066be: 48 8d bc 24 60 02 00 00     	leaq	608(%rsp), %rdi
1000066c6: c5 fa 7e 05 62 35 00 00     	vmovq	13666(%rip), %xmm0
1000066ce: 48 89 de                    	movq	%rbx, %rsi
1000066d1: e8 0a 19 00 00              	callq	6410 <dyld_stub_binder+0x100007fe0>
1000066d6: 48 8b 84 24 38 01 00 00     	movq	312(%rsp), %rax
1000066de: 48 85 c0                    	testq	%rax, %rax
1000066e1: 74 0e                       	je	14 <_main+0x201>
1000066e3: f0                          	lock
1000066e4: ff 48 14                    	decl	20(%rax)
1000066e7: 75 08                       	jne	8 <_main+0x201>
1000066e9: 48 89 df                    	movq	%rbx, %rdi
1000066ec: e8 b3 18 00 00              	callq	6323 <dyld_stub_binder+0x100007fa4>
1000066f1: 48 c7 84 24 38 01 00 00 00 00 00 00 	movq	$0, 312(%rsp)
1000066fd: 48 8d 84 24 10 01 00 00     	leaq	272(%rsp), %rax
100006705: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006709: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
10000670d: 83 bc 24 04 01 00 00 00     	cmpl	$0, 260(%rsp)
100006715: 7e 30                       	jle	48 <_main+0x257>
100006717: 48 8b 84 24 40 01 00 00     	movq	320(%rsp), %rax
10000671f: 31 c9                       	xorl	%ecx, %ecx
100006721: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000672b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006730: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006737: 48 ff c1                    	incq	%rcx
10000673a: 48 63 94 24 04 01 00 00     	movslq	260(%rsp), %rdx
100006742: 48 39 d1                    	cmpq	%rdx, %rcx
100006745: 7c e9                       	jl	-23 <_main+0x240>
100006747: 48 8b bc 24 48 01 00 00     	movq	328(%rsp), %rdi
10000674f: 48 8d 84 24 50 01 00 00     	leaq	336(%rsp), %rax
100006757: 48 39 c7                    	cmpq	%rax, %rdi
10000675a: 74 08                       	je	8 <_main+0x274>
10000675c: c5 f8 77                    	vzeroupper
10000675f: e8 76 18 00 00              	callq	6262 <dyld_stub_binder+0x100007fda>
100006764: c5 f8 77                    	vzeroupper
100006767: e8 aa 18 00 00              	callq	6314 <dyld_stub_binder+0x100008016>
10000676c: 49 89 c4                    	movq	%rax, %r12
10000676f: c7 84 24 00 01 00 00 00 00 ff 42    	movl	$1124007936, 256(%rsp)
10000677a: 48 8d 84 24 10 01 00 00     	leaq	272(%rsp), %rax
100006782: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006786: c5 fe 7f 40 f4              	vmovdqu	%ymm0, -12(%rax)
10000678b: c5 fe 7f 40 10              	vmovdqu	%ymm0, 16(%rax)
100006790: 48 8b 44 24 20              	movq	32(%rsp), %rax
100006795: 48 8d 8c 24 08 01 00 00     	leaq	264(%rsp), %rcx
10000679d: 48 89 8c 24 40 01 00 00     	movq	%rcx, 320(%rsp)
1000067a5: 48 8d 8c 24 50 01 00 00     	leaq	336(%rsp), %rcx
1000067ad: 48 89 8c 24 48 01 00 00     	movq	%rcx, 328(%rsp)
1000067b5: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000067b9: c5 fa 7f 01                 	vmovdqu	%xmm0, (%rcx)
1000067bd: 48 89 84 24 c0 03 00 00     	movq	%rax, 960(%rsp)
1000067c5: 48 89 df                    	movq	%rbx, %rdi
1000067c8: be 02 00 00 00              	movl	$2, %esi
1000067cd: 4c 89 fa                    	movq	%r15, %rdx
1000067d0: 31 c9                       	xorl	%ecx, %ecx
1000067d2: c5 f8 77                    	vzeroupper
1000067d5: e8 d0 17 00 00              	callq	6096 <dyld_stub_binder+0x100007faa>
1000067da: 48 c7 84 24 88 00 00 00 00 00 00 00 	movq	$0, 136(%rsp)
1000067e6: c7 44 24 78 00 00 06 c1     	movl	$3238395904, 120(%rsp)
1000067ee: 48 8d 84 24 60 02 00 00     	leaq	608(%rsp), %rax
1000067f6: 48 89 84 24 80 00 00 00     	movq	%rax, 128(%rsp)
1000067fe: 48 c7 84 24 70 01 00 00 00 00 00 00 	movq	$0, 368(%rsp)
10000680a: c7 84 24 60 01 00 00 00 00 01 02    	movl	$33619968, 352(%rsp)
100006815: 48 89 9c 24 68 01 00 00     	movq	%rbx, 360(%rsp)
10000681d: 8b 44 24 20                 	movl	32(%rsp), %eax
100006821: 8b 4c 24 24                 	movl	36(%rsp), %ecx
100006825: 89 8c 24 b0 01 00 00        	movl	%ecx, 432(%rsp)
10000682c: 89 84 24 b4 01 00 00        	movl	%eax, 436(%rsp)
100006833: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006837: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
10000683b: 48 8d 5c 24 78              	leaq	120(%rsp), %rbx
100006840: 48 89 df                    	movq	%rbx, %rdi
100006843: 48 8d b4 24 60 01 00 00     	leaq	352(%rsp), %rsi
10000684b: 48 8d 94 24 b0 01 00 00     	leaq	432(%rsp), %rdx
100006853: b9 01 00 00 00              	movl	$1, %ecx
100006858: e8 65 17 00 00              	callq	5989 <dyld_stub_binder+0x100007fc2>
10000685d: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006861: c5 fd 7f 84 24 60 01 00 00  	vmovdqa	%ymm0, 352(%rsp)
10000686a: c7 44 24 78 00 00 ff 42     	movl	$1124007936, 120(%rsp)
100006872: 48 8d 44 24 7c              	leaq	124(%rsp), %rax
100006877: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
10000687c: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100006880: 48 8b 44 24 20              	movq	32(%rsp), %rax
100006885: 48 8d 8c 24 80 00 00 00     	leaq	128(%rsp), %rcx
10000688d: 48 89 8c 24 b8 00 00 00     	movq	%rcx, 184(%rsp)
100006895: 48 8d 8c 24 c8 00 00 00     	leaq	200(%rsp), %rcx
10000689d: 48 89 8c 24 c0 00 00 00     	movq	%rcx, 192(%rsp)
1000068a5: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000068a9: c5 fa 7f 01                 	vmovdqu	%xmm0, (%rcx)
1000068ad: 48 89 84 24 c0 03 00 00     	movq	%rax, 960(%rsp)
1000068b5: 48 89 df                    	movq	%rbx, %rdi
1000068b8: be 02 00 00 00              	movl	$2, %esi
1000068bd: 4c 89 fa                    	movq	%r15, %rdx
1000068c0: b9 10 00 00 00              	movl	$16, %ecx
1000068c5: c5 f8 77                    	vzeroupper
1000068c8: e8 dd 16 00 00              	callq	5853 <dyld_stub_binder+0x100007faa>
1000068cd: 48 89 df                    	movq	%rbx, %rdi
1000068d0: 48 8d b4 24 60 01 00 00     	leaq	352(%rsp), %rsi
1000068d8: e8 d9 16 00 00              	callq	5849 <dyld_stub_binder+0x100007fb6>
1000068dd: 48 8b 44 24 50              	movq	80(%rsp), %rax
1000068e2: 48 85 c0                    	testq	%rax, %rax
1000068e5: 74 04                       	je	4 <_main+0x3fb>
1000068e7: f0                          	lock
1000068e8: ff 40 14                    	incl	20(%rax)
1000068eb: 48 8b 84 24 b0 00 00 00     	movq	176(%rsp), %rax
1000068f3: 48 85 c0                    	testq	%rax, %rax
1000068f6: 74 10                       	je	16 <_main+0x418>
1000068f8: f0                          	lock
1000068f9: ff 48 14                    	decl	20(%rax)
1000068fc: 75 0a                       	jne	10 <_main+0x418>
1000068fe: 48 8d 7c 24 78              	leaq	120(%rsp), %rdi
100006903: e8 9c 16 00 00              	callq	5788 <dyld_stub_binder+0x100007fa4>
100006908: 48 c7 84 24 b0 00 00 00 00 00 00 00 	movq	$0, 176(%rsp)
100006914: 48 8d 44 24 7c              	leaq	124(%rsp), %rax
100006919: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000691d: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100006922: 83 7c 24 7c 00              	cmpl	$0, 124(%rsp)
100006927: 0f 8e 22 06 00 00           	jle	1570 <_main+0xa5f>
10000692d: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100006935: 31 c9                       	xorl	%ecx, %ecx
100006937: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006940: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006947: 48 ff c1                    	incq	%rcx
10000694a: 48 63 54 24 7c              	movslq	124(%rsp), %rdx
10000694f: 48 39 d1                    	cmpq	%rdx, %rcx
100006952: 7c ec                       	jl	-20 <_main+0x450>
100006954: 8b 44 24 18                 	movl	24(%rsp), %eax
100006958: 89 44 24 78                 	movl	%eax, 120(%rsp)
10000695c: 83 fa 02                    	cmpl	$2, %edx
10000695f: 0f 8f ff 05 00 00           	jg	1535 <_main+0xa74>
100006965: 8b 44 24 1c                 	movl	28(%rsp), %eax
100006969: 83 f8 02                    	cmpl	$2, %eax
10000696c: 0f 8f f2 05 00 00           	jg	1522 <_main+0xa74>
100006972: 89 44 24 7c                 	movl	%eax, 124(%rsp)
100006976: 8b 4c 24 20                 	movl	32(%rsp), %ecx
10000697a: 8b 44 24 24                 	movl	36(%rsp), %eax
10000697e: 89 8c 24 80 00 00 00        	movl	%ecx, 128(%rsp)
100006985: 89 84 24 84 00 00 00        	movl	%eax, 132(%rsp)
10000698c: 48 8b 44 24 60              	movq	96(%rsp), %rax
100006991: 48 8b 10                    	movq	(%rax), %rdx
100006994: 48 8b b4 24 c0 00 00 00     	movq	192(%rsp), %rsi
10000699c: 48 89 16                    	movq	%rdx, (%rsi)
10000699f: 48 8b 40 08                 	movq	8(%rax), %rax
1000069a3: 48 89 46 08                 	movq	%rax, 8(%rsi)
1000069a7: e9 ce 05 00 00              	jmp	1486 <_main+0xa8a>
1000069ac: 0f 1f 40 00                 	nopl	(%rax)
1000069b0: 48 8b 4c 24 58              	movq	88(%rsp), %rcx
1000069b5: 83 f8 0f                    	cmpl	$15, %eax
1000069b8: 77 0c                       	ja	12 <_main+0x4d6>
1000069ba: be 01 00 00 00              	movl	$1, %esi
1000069bf: 31 d2                       	xorl	%edx, %edx
1000069c1: e9 ea 04 00 00              	jmp	1258 <_main+0x9c0>
1000069c6: 89 c2                       	movl	%eax, %edx
1000069c8: 83 e2 f0                    	andl	$-16, %edx
1000069cb: 48 8d 72 f0                 	leaq	-16(%rdx), %rsi
1000069cf: 48 89 f7                    	movq	%rsi, %rdi
1000069d2: 48 c1 ef 04                 	shrq	$4, %rdi
1000069d6: 48 ff c7                    	incq	%rdi
1000069d9: 89 fb                       	movl	%edi, %ebx
1000069db: 83 e3 03                    	andl	$3, %ebx
1000069de: 48 83 fe 30                 	cmpq	$48, %rsi
1000069e2: 73 25                       	jae	37 <_main+0x519>
1000069e4: c4 e2 7d 59 05 3b 32 00 00  	vpbroadcastq	12859(%rip), %ymm0
1000069ed: 31 ff                       	xorl	%edi, %edi
1000069ef: c5 fd 6f d8                 	vmovdqa	%ymm0, %ymm3
1000069f3: c5 fd 6f d0                 	vmovdqa	%ymm0, %ymm2
1000069f7: c5 fd 6f c8                 	vmovdqa	%ymm0, %ymm1
1000069fb: 48 85 db                    	testq	%rbx, %rbx
1000069fe: 0f 85 0e 03 00 00           	jne	782 <_main+0x822>
100006a04: e9 d0 03 00 00              	jmp	976 <_main+0x8e9>
100006a09: 48 89 de                    	movq	%rbx, %rsi
100006a0c: 48 29 fe                    	subq	%rdi, %rsi
100006a0f: c4 e2 7d 59 05 10 32 00 00  	vpbroadcastq	12816(%rip), %ymm0
100006a18: 31 ff                       	xorl	%edi, %edi
100006a1a: c5 fd 6f d8                 	vmovdqa	%ymm0, %ymm3
100006a1e: c5 fd 6f d0                 	vmovdqa	%ymm0, %ymm2
100006a22: c5 fd 6f c8                 	vmovdqa	%ymm0, %ymm1
100006a26: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006a30: c4 e2 7d 25 24 b9           	vpmovsxdq	(%rcx,%rdi,4), %ymm4
100006a36: c4 e2 7d 25 6c b9 10        	vpmovsxdq	16(%rcx,%rdi,4), %ymm5
100006a3d: c4 e2 7d 25 74 b9 20        	vpmovsxdq	32(%rcx,%rdi,4), %ymm6
100006a44: c4 e2 7d 25 7c b9 30        	vpmovsxdq	48(%rcx,%rdi,4), %ymm7
100006a4b: c5 bd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm8
100006a50: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
100006a54: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
100006a59: c4 41 7d f4 c9              	vpmuludq	%ymm9, %ymm0, %ymm9
100006a5e: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
100006a63: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006a69: c5 fd f4 c4                 	vpmuludq	%ymm4, %ymm0, %ymm0
100006a6d: c4 c1 7d d4 c0              	vpaddq	%ymm8, %ymm0, %ymm0
100006a72: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100006a77: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
100006a7b: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
100006a80: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
100006a85: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
100006a89: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006a8e: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006a92: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006a96: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
100006a9b: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
100006a9f: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100006aa4: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100006aa8: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006aac: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006ab1: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006ab5: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006ab9: c5 dd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm4
100006abe: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100006ac2: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100006ac7: c5 f5 f4 ed                 	vpmuludq	%ymm5, %ymm1, %ymm5
100006acb: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006acf: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006ad4: c5 f5 f4 cf                 	vpmuludq	%ymm7, %ymm1, %ymm1
100006ad8: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
100006adc: c4 e2 7d 25 64 b9 40        	vpmovsxdq	64(%rcx,%rdi,4), %ymm4
100006ae3: c4 e2 7d 25 6c b9 50        	vpmovsxdq	80(%rcx,%rdi,4), %ymm5
100006aea: c4 e2 7d 25 74 b9 60        	vpmovsxdq	96(%rcx,%rdi,4), %ymm6
100006af1: c4 e2 7d 25 7c b9 70        	vpmovsxdq	112(%rcx,%rdi,4), %ymm7
100006af8: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006afd: c4 41 7d f4 c0              	vpmuludq	%ymm8, %ymm0, %ymm8
100006b02: c5 b5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm9
100006b07: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006b0b: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006b10: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006b16: c5 fd f4 c4                 	vpmuludq	%ymm4, %ymm0, %ymm0
100006b1a: c4 c1 7d d4 c0              	vpaddq	%ymm8, %ymm0, %ymm0
100006b1f: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006b24: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006b28: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006b2d: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006b31: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006b36: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006b3b: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006b3f: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006b43: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006b48: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006b4c: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006b51: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006b55: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006b59: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006b5e: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006b62: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006b66: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006b6b: c5 f5 f4 e4                 	vpmuludq	%ymm4, %ymm1, %ymm4
100006b6f: c5 d5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm5
100006b74: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006b78: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006b7c: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006b81: c5 f5 f4 cf                 	vpmuludq	%ymm7, %ymm1, %ymm1
100006b85: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
100006b89: c4 e2 7d 25 a4 b9 80 00 00 00       	vpmovsxdq	128(%rcx,%rdi,4), %ymm4
100006b93: c4 e2 7d 25 ac b9 90 00 00 00       	vpmovsxdq	144(%rcx,%rdi,4), %ymm5
100006b9d: c4 e2 7d 25 b4 b9 a0 00 00 00       	vpmovsxdq	160(%rcx,%rdi,4), %ymm6
100006ba7: c4 e2 7d 25 bc b9 b0 00 00 00       	vpmovsxdq	176(%rcx,%rdi,4), %ymm7
100006bb1: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006bb6: c4 41 7d f4 c0              	vpmuludq	%ymm8, %ymm0, %ymm8
100006bbb: c5 b5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm9
100006bc0: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006bc4: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006bc9: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006bcf: c5 fd f4 c4                 	vpmuludq	%ymm4, %ymm0, %ymm0
100006bd3: c4 c1 7d d4 c0              	vpaddq	%ymm8, %ymm0, %ymm0
100006bd8: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006bdd: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006be1: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006be6: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006bea: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006bef: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006bf4: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006bf8: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006bfc: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006c01: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006c05: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006c0a: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006c0e: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006c12: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006c17: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006c1b: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006c1f: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006c24: c5 f5 f4 e4                 	vpmuludq	%ymm4, %ymm1, %ymm4
100006c28: c5 d5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm5
100006c2d: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006c31: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006c35: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006c3a: c5 f5 f4 cf                 	vpmuludq	%ymm7, %ymm1, %ymm1
100006c3e: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
100006c42: c4 e2 7d 25 a4 b9 c0 00 00 00       	vpmovsxdq	192(%rcx,%rdi,4), %ymm4
100006c4c: c4 e2 7d 25 ac b9 d0 00 00 00       	vpmovsxdq	208(%rcx,%rdi,4), %ymm5
100006c56: c4 e2 7d 25 b4 b9 e0 00 00 00       	vpmovsxdq	224(%rcx,%rdi,4), %ymm6
100006c60: c4 e2 7d 25 bc b9 f0 00 00 00       	vpmovsxdq	240(%rcx,%rdi,4), %ymm7
100006c6a: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006c6f: c4 41 7d f4 c0              	vpmuludq	%ymm8, %ymm0, %ymm8
100006c74: c5 b5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm9
100006c79: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006c7d: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006c82: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006c88: c5 fd f4 c4                 	vpmuludq	%ymm4, %ymm0, %ymm0
100006c8c: c4 c1 7d d4 c0              	vpaddq	%ymm8, %ymm0, %ymm0
100006c91: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006c96: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006c9a: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006c9f: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006ca3: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006ca8: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006cad: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006cb1: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006cb5: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006cba: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006cbe: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006cc3: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006cc7: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006ccb: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006cd0: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006cd4: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006cd8: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006cdd: c5 f5 f4 e4                 	vpmuludq	%ymm4, %ymm1, %ymm4
100006ce1: c5 d5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm5
100006ce6: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006cea: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006cee: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006cf3: c5 f5 f4 cf                 	vpmuludq	%ymm7, %ymm1, %ymm1
100006cf7: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
100006cfb: 48 83 c7 40                 	addq	$64, %rdi
100006cff: 48 83 c6 04                 	addq	$4, %rsi
100006d03: 0f 85 27 fd ff ff           	jne	-729 <_main+0x540>
100006d09: 48 85 db                    	testq	%rbx, %rbx
100006d0c: 0f 84 c7 00 00 00           	je	199 <_main+0x8e9>
100006d12: 48 8d 34 b9                 	leaq	(%rcx,%rdi,4), %rsi
100006d16: 48 83 c6 30                 	addq	$48, %rsi
100006d1a: 48 c1 e3 06                 	shlq	$6, %rbx
100006d1e: 31 ff                       	xorl	%edi, %edi
100006d20: c4 e2 7d 25 64 3e d0        	vpmovsxdq	-48(%rsi,%rdi), %ymm4
100006d27: c4 e2 7d 25 6c 3e e0        	vpmovsxdq	-32(%rsi,%rdi), %ymm5
100006d2e: c4 e2 7d 25 74 3e f0        	vpmovsxdq	-16(%rsi,%rdi), %ymm6
100006d35: c4 e2 7d 25 3c 3e           	vpmovsxdq	(%rsi,%rdi), %ymm7
100006d3b: c5 bd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm8
100006d40: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
100006d44: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
100006d49: c4 41 7d f4 c9              	vpmuludq	%ymm9, %ymm0, %ymm9
100006d4e: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
100006d53: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006d59: c5 fd f4 c4                 	vpmuludq	%ymm4, %ymm0, %ymm0
100006d5d: c4 c1 7d d4 c0              	vpaddq	%ymm8, %ymm0, %ymm0
100006d62: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100006d67: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
100006d6b: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
100006d70: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
100006d75: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
100006d79: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006d7e: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006d82: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006d86: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
100006d8b: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
100006d8f: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100006d94: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100006d98: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006d9c: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006da1: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006da5: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006da9: c5 dd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm4
100006dae: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100006db2: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100006db7: c5 f5 f4 ed                 	vpmuludq	%ymm5, %ymm1, %ymm5
100006dbb: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006dbf: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006dc4: c5 f5 f4 cf                 	vpmuludq	%ymm7, %ymm1, %ymm1
100006dc8: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
100006dcc: 48 83 c7 40                 	addq	$64, %rdi
100006dd0: 48 39 fb                    	cmpq	%rdi, %rbx
100006dd3: 0f 85 47 ff ff ff           	jne	-185 <_main+0x830>
100006dd9: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100006dde: c5 dd f4 e0                 	vpmuludq	%ymm0, %ymm4, %ymm4
100006de2: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006de7: c5 e5 f4 ed                 	vpmuludq	%ymm5, %ymm3, %ymm5
100006deb: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006def: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006df4: c5 e5 f4 c0                 	vpmuludq	%ymm0, %ymm3, %ymm0
100006df8: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006dfc: c5 e5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm3
100006e01: c5 e5 f4 d8                 	vpmuludq	%ymm0, %ymm3, %ymm3
100006e05: c5 dd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm4
100006e0a: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006e0e: c5 dd d4 db                 	vpaddq	%ymm3, %ymm4, %ymm3
100006e12: c5 e5 73 f3 20              	vpsllq	$32, %ymm3, %ymm3
100006e17: c5 ed f4 c0                 	vpmuludq	%ymm0, %ymm2, %ymm0
100006e1b: c5 fd d4 c3                 	vpaddq	%ymm3, %ymm0, %ymm0
100006e1f: c5 ed 73 d1 20              	vpsrlq	$32, %ymm1, %ymm2
100006e24: c5 ed f4 d0                 	vpmuludq	%ymm0, %ymm2, %ymm2
100006e28: c5 e5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm3
100006e2d: c5 f5 f4 db                 	vpmuludq	%ymm3, %ymm1, %ymm3
100006e31: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
100006e35: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
100006e3a: c5 f5 f4 c0                 	vpmuludq	%ymm0, %ymm1, %ymm0
100006e3e: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
100006e42: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100006e48: c5 ed 73 d0 20              	vpsrlq	$32, %ymm0, %ymm2
100006e4d: c5 ed f4 d1                 	vpmuludq	%ymm1, %ymm2, %ymm2
100006e51: c5 e5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm3
100006e56: c5 fd f4 db                 	vpmuludq	%ymm3, %ymm0, %ymm3
100006e5a: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
100006e5e: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
100006e63: c5 fd f4 c1                 	vpmuludq	%ymm1, %ymm0, %ymm0
100006e67: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
100006e6b: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100006e70: c5 e9 73 d0 20              	vpsrlq	$32, %xmm0, %xmm2
100006e75: c5 e9 f4 d1                 	vpmuludq	%xmm1, %xmm2, %xmm2
100006e79: c5 e1 73 d8 0c              	vpsrldq	$12, %xmm0, %xmm3
100006e7e: c5 f9 f4 db                 	vpmuludq	%xmm3, %xmm0, %xmm3
100006e82: c5 e1 d4 d2                 	vpaddq	%xmm2, %xmm3, %xmm2
100006e86: c5 e9 73 f2 20              	vpsllq	$32, %xmm2, %xmm2
100006e8b: c5 f9 f4 c1                 	vpmuludq	%xmm1, %xmm0, %xmm0
100006e8f: c5 f9 d4 c2                 	vpaddq	%xmm2, %xmm0, %xmm0
100006e93: c4 e1 f9 7e c6              	vmovq	%xmm0, %rsi
100006e98: 48 39 c2                    	cmpq	%rax, %rdx
100006e9b: 48 8d 9c 24 d8 01 00 00     	leaq	472(%rsp), %rbx
100006ea3: 74 1b                       	je	27 <_main+0x9d0>
100006ea5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006eaf: 90                          	nop
100006eb0: 48 63 3c 91                 	movslq	(%rcx,%rdx,4), %rdi
100006eb4: 48 0f af f7                 	imulq	%rdi, %rsi
100006eb8: 48 ff c2                    	incq	%rdx
100006ebb: 48 39 d0                    	cmpq	%rdx, %rax
100006ebe: 75 f0                       	jne	-16 <_main+0x9c0>
100006ec0: 85 c0                       	testl	%eax, %eax
100006ec2: 0f 85 ab f7 ff ff           	jne	-2133 <_main+0x183>
100006ec8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100006ed0: 48 8b 44 24 50              	movq	80(%rsp), %rax
100006ed5: 48 85 c0                    	testq	%rax, %rax
100006ed8: 74 13                       	je	19 <_main+0x9fd>
100006eda: f0                          	lock
100006edb: ff 48 14                    	decl	20(%rax)
100006ede: 75 0d                       	jne	13 <_main+0x9fd>
100006ee0: 48 8d 7c 24 18              	leaq	24(%rsp), %rdi
100006ee5: c5 f8 77                    	vzeroupper
100006ee8: e8 b7 10 00 00              	callq	4279 <dyld_stub_binder+0x100007fa4>
100006eed: 48 c7 44 24 50 00 00 00 00  	movq	$0, 80(%rsp)
100006ef6: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006efa: 48 8d 44 24 1c              	leaq	28(%rsp), %rax
100006eff: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100006f04: 83 7c 24 1c 00              	cmpl	$0, 28(%rsp)
100006f09: 7e 29                       	jle	41 <_main+0xa44>
100006f0b: 48 8b 44 24 58              	movq	88(%rsp), %rax
100006f10: 31 c9                       	xorl	%ecx, %ecx
100006f12: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006f1c: 0f 1f 40 00                 	nopl	(%rax)
100006f20: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006f27: 48 ff c1                    	incq	%rcx
100006f2a: 48 63 54 24 1c              	movslq	28(%rsp), %rdx
100006f2f: 48 39 d1                    	cmpq	%rdx, %rcx
100006f32: 7c ec                       	jl	-20 <_main+0xa30>
100006f34: 48 8b 7c 24 60              	movq	96(%rsp), %rdi
100006f39: 4c 39 f7                    	cmpq	%r14, %rdi
100006f3c: 0f 84 9e f6 ff ff           	je	-2402 <_main+0xf0>
100006f42: c5 f8 77                    	vzeroupper
100006f45: e8 90 10 00 00              	callq	4240 <dyld_stub_binder+0x100007fda>
100006f4a: e9 91 f6 ff ff              	jmp	-2415 <_main+0xf0>
100006f4f: 8b 44 24 18                 	movl	24(%rsp), %eax
100006f53: 89 44 24 78                 	movl	%eax, 120(%rsp)
100006f57: 8b 44 24 1c                 	movl	28(%rsp), %eax
100006f5b: 83 f8 02                    	cmpl	$2, %eax
100006f5e: 0f 8e 0e fa ff ff           	jle	-1522 <_main+0x482>
100006f64: 48 8d 7c 24 78              	leaq	120(%rsp), %rdi
100006f69: 48 8d 74 24 18              	leaq	24(%rsp), %rsi
100006f6e: c5 f8 77                    	vzeroupper
100006f71: e8 3a 10 00 00              	callq	4154 <dyld_stub_binder+0x100007fb0>
100006f76: 8b 4c 24 20                 	movl	32(%rsp), %ecx
100006f7a: c4 c1 eb 2a c6              	vcvtsi2sd	%r14, %xmm2, %xmm0
100006f7f: c4 c1 eb 2a cc              	vcvtsi2sd	%r12, %xmm2, %xmm1
100006f84: c5 fb 10 15 94 2c 00 00     	vmovsd	11412(%rip), %xmm2
100006f8c: c5 fb 5e c2                 	vdivsd	%xmm2, %xmm0, %xmm0
100006f90: c5 f3 5e ca                 	vdivsd	%xmm2, %xmm1, %xmm1
100006f94: c5 fc 10 54 24 28           	vmovups	40(%rsp), %ymm2
100006f9a: c5 fc 11 94 24 88 00 00 00  	vmovups	%ymm2, 136(%rsp)
100006fa3: c5 f9 10 54 24 48           	vmovupd	72(%rsp), %xmm2
100006fa9: c5 f9 11 94 24 a8 00 00 00  	vmovupd	%xmm2, 168(%rsp)
100006fb2: 85 c9                       	testl	%ecx, %ecx
100006fb4: 4d 89 fe                    	movq	%r15, %r14
100006fb7: 0f 84 49 01 00 00           	je	329 <_main+0xc16>
100006fbd: 31 c0                       	xorl	%eax, %eax
100006fbf: 8b 74 24 24                 	movl	36(%rsp), %esi
100006fc3: 85 f6                       	testl	%esi, %esi
100006fc5: be 00 00 00 00              	movl	$0, %esi
100006fca: 75 17                       	jne	23 <_main+0xaf3>
100006fcc: 0f 1f 40 00                 	nopl	(%rax)
100006fd0: ff c0                       	incl	%eax
100006fd2: 39 c8                       	cmpl	%ecx, %eax
100006fd4: 0f 83 2c 01 00 00           	jae	300 <_main+0xc16>
100006fda: 85 f6                       	testl	%esi, %esi
100006fdc: be 00 00 00 00              	movl	$0, %esi
100006fe1: 74 ed                       	je	-19 <_main+0xae0>
100006fe3: 48 63 c8                    	movslq	%eax, %rcx
100006fe6: 31 d2                       	xorl	%edx, %edx
100006fe8: c5 fb 10 25 48 2c 00 00     	vmovsd	11336(%rip), %xmm4
100006ff0: c5 fa 10 2d 78 2c 00 00     	vmovss	11384(%rip), %xmm5
100006ff8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100007000: 48 8b 74 24 60              	movq	96(%rsp), %rsi
100007005: 48 8b 3e                    	movq	(%rsi), %rdi
100007008: 48 0f af f9                 	imulq	%rcx, %rdi
10000700c: 48 03 7c 24 28              	addq	40(%rsp), %rdi
100007011: 48 63 d2                    	movslq	%edx, %rdx
100007014: 48 8d 34 52                 	leaq	(%rdx,%rdx,2), %rsi
100007018: 0f b6 3c 37                 	movzbl	(%rdi,%rsi), %edi
10000701c: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
100007020: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
100007024: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100007028: 48 8b 9c 24 c0 00 00 00     	movq	192(%rsp), %rbx
100007030: 48 8b 1b                    	movq	(%rbx), %rbx
100007033: 48 0f af d9                 	imulq	%rcx, %rbx
100007037: 48 03 9c 24 88 00 00 00     	addq	136(%rsp), %rbx
10000703f: 40 88 3c 33                 	movb	%dil, (%rbx,%rsi)
100007043: 48 8b 7c 24 60              	movq	96(%rsp), %rdi
100007048: 48 8b 3f                    	movq	(%rdi), %rdi
10000704b: 48 0f af f9                 	imulq	%rcx, %rdi
10000704f: 48 03 7c 24 28              	addq	40(%rsp), %rdi
100007054: 0f b6 7c 37 01              	movzbl	1(%rdi,%rsi), %edi
100007059: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
10000705d: 48 8b bc 24 48 01 00 00     	movq	328(%rsp), %rdi
100007065: 48 8b 3f                    	movq	(%rdi), %rdi
100007068: 48 0f af f9                 	imulq	%rcx, %rdi
10000706c: 48 03 bc 24 10 01 00 00     	addq	272(%rsp), %rdi
100007074: 0f b6 3c 3a                 	movzbl	(%rdx,%rdi), %edi
100007078: c5 ca 2a df                 	vcvtsi2ss	%edi, %xmm6, %xmm3
10000707c: c5 e2 59 dd                 	vmulss	%xmm5, %xmm3, %xmm3
100007080: c5 e2 5a db                 	vcvtss2sd	%xmm3, %xmm3, %xmm3
100007084: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
100007088: c5 eb 58 d3                 	vaddsd	%xmm3, %xmm2, %xmm2
10000708c: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100007090: 48 8b 9c 24 c0 00 00 00     	movq	192(%rsp), %rbx
100007098: 48 8b 1b                    	movq	(%rbx), %rbx
10000709b: 48 0f af d9                 	imulq	%rcx, %rbx
10000709f: 48 03 9c 24 88 00 00 00     	addq	136(%rsp), %rbx
1000070a7: 40 88 7c 33 01              	movb	%dil, 1(%rbx,%rsi)
1000070ac: 48 8b 7c 24 60              	movq	96(%rsp), %rdi
1000070b1: 48 8b 3f                    	movq	(%rdi), %rdi
1000070b4: 48 0f af f9                 	imulq	%rcx, %rdi
1000070b8: 48 03 7c 24 28              	addq	40(%rsp), %rdi
1000070bd: 0f b6 7c 37 02              	movzbl	2(%rdi,%rsi), %edi
1000070c2: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
1000070c6: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
1000070ca: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000070ce: 48 8b 9c 24 c0 00 00 00     	movq	192(%rsp), %rbx
1000070d6: 48 8b 1b                    	movq	(%rbx), %rbx
1000070d9: 48 0f af d9                 	imulq	%rcx, %rbx
1000070dd: 48 03 9c 24 88 00 00 00     	addq	136(%rsp), %rbx
1000070e5: 40 88 7c 33 02              	movb	%dil, 2(%rbx,%rsi)
1000070ea: ff c2                       	incl	%edx
1000070ec: 8b 74 24 24                 	movl	36(%rsp), %esi
1000070f0: 39 f2                       	cmpl	%esi, %edx
1000070f2: 0f 82 08 ff ff ff           	jb	-248 <_main+0xb10>
1000070f8: 8b 4c 24 20                 	movl	32(%rsp), %ecx
1000070fc: ff c0                       	incl	%eax
1000070fe: 39 c8                       	cmpl	%ecx, %eax
100007100: 0f 82 d4 fe ff ff           	jb	-300 <_main+0xaea>
100007106: c5 fb 10 15 32 2b 00 00     	vmovsd	11058(%rip), %xmm2
10000710e: c5 eb 59 94 24 d8 00 00 00  	vmulsd	216(%rsp), %xmm2, %xmm2
100007117: c5 f3 5c c0                 	vsubsd	%xmm0, %xmm1, %xmm0
10000711b: c5 fb 58 05 25 2b 00 00     	vaddsd	11045(%rip), %xmm0, %xmm0
100007123: c5 fb 10 0d 25 2b 00 00     	vmovsd	11045(%rip), %xmm1
10000712b: c5 f3 5e c0                 	vdivsd	%xmm0, %xmm1, %xmm0
10000712f: c5 eb 58 c0                 	vaddsd	%xmm0, %xmm2, %xmm0
100007133: 8b 9c 24 28 02 00 00        	movl	552(%rsp), %ebx
10000713a: c5 fb 11 84 24 d8 00 00 00  	vmovsd	%xmm0, 216(%rsp)
100007143: c5 f8 77                    	vzeroupper
100007146: e8 1f 0f 00 00              	callq	3871 <dyld_stub_binder+0x10000806a>
10000714b: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
10000714f: 4c 89 ef                    	movq	%r13, %rdi
100007152: e8 dd 0e 00 00              	callq	3805 <dyld_stub_binder+0x100008034>
100007157: 4c 89 ef                    	movq	%r13, %rdi
10000715a: 31 f6                       	xorl	%esi, %esi
10000715c: 48 8d 15 6a 2d 00 00        	leaq	11626(%rip), %rdx
100007163: e8 9c 0e 00 00              	callq	3740 <dyld_stub_binder+0x100008004>
100007168: 48 8b 48 10                 	movq	16(%rax), %rcx
10000716c: 48 89 8c 24 f0 00 00 00     	movq	%rcx, 240(%rsp)
100007174: c5 f9 10 00                 	vmovupd	(%rax), %xmm0
100007178: c5 f9 29 84 24 e0 00 00 00  	vmovapd	%xmm0, 224(%rsp)
100007181: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007185: c5 f9 11 00                 	vmovupd	%xmm0, (%rax)
100007189: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100007191: 48 8d bc 24 e0 00 00 00     	leaq	224(%rsp), %rdi
100007199: 48 8d 35 34 2d 00 00        	leaq	11572(%rip), %rsi
1000071a0: e8 53 0e 00 00              	callq	3667 <dyld_stub_binder+0x100007ff8>
1000071a5: c4 e1 cb 2a c3              	vcvtsi2sd	%rbx, %xmm6, %xmm0
1000071aa: c5 fb 59 84 24 d8 00 00 00  	vmulsd	216(%rsp), %xmm0, %xmm0
1000071b3: c5 fb 5e 05 9d 2a 00 00     	vdivsd	10909(%rip), %xmm0, %xmm0
1000071bb: 48 8b 48 10                 	movq	16(%rax), %rcx
1000071bf: 48 89 8c 24 d0 03 00 00     	movq	%rcx, 976(%rsp)
1000071c7: c5 f9 10 08                 	vmovupd	(%rax), %xmm1
1000071cb: c5 f9 29 8c 24 c0 03 00 00  	vmovapd	%xmm1, 960(%rsp)
1000071d4: c5 f1 57 c9                 	vxorpd	%xmm1, %xmm1, %xmm1
1000071d8: c5 f9 11 08                 	vmovupd	%xmm1, (%rax)
1000071dc: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000071e4: 48 8d bc 24 98 01 00 00     	leaq	408(%rsp), %rdi
1000071ec: e8 3d 0e 00 00              	callq	3645 <dyld_stub_binder+0x10000802e>
1000071f1: 0f b6 94 24 98 01 00 00     	movzbl	408(%rsp), %edx
1000071f9: f6 c2 01                    	testb	$1, %dl
1000071fc: 48 8d 9c 24 d8 01 00 00     	leaq	472(%rsp), %rbx
100007204: 74 12                       	je	18 <_main+0xd28>
100007206: 48 8b b4 24 a8 01 00 00     	movq	424(%rsp), %rsi
10000720e: 48 8b 94 24 a0 01 00 00     	movq	416(%rsp), %rdx
100007216: eb 0b                       	jmp	11 <_main+0xd33>
100007218: 48 d1 ea                    	shrq	%rdx
10000721b: 48 8d b4 24 99 01 00 00     	leaq	409(%rsp), %rsi
100007223: 4c 89 f7                    	movq	%r14, %rdi
100007226: e8 d3 0d 00 00              	callq	3539 <dyld_stub_binder+0x100007ffe>
10000722b: 48 8b 48 10                 	movq	16(%rax), %rcx
10000722f: 48 89 8c 24 70 01 00 00     	movq	%rcx, 368(%rsp)
100007237: c5 f8 10 00                 	vmovups	(%rax), %xmm0
10000723b: c5 f8 29 84 24 60 01 00 00  	vmovaps	%xmm0, 352(%rsp)
100007244: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007248: c5 f8 11 00                 	vmovups	%xmm0, (%rax)
10000724c: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100007254: f6 84 24 98 01 00 00 01     	testb	$1, 408(%rsp)
10000725c: 0f 85 7a 01 00 00           	jne	378 <_main+0xeec>
100007262: f6 84 24 c0 03 00 00 01     	testb	$1, 960(%rsp)
10000726a: 0f 85 87 01 00 00           	jne	391 <_main+0xf07>
100007270: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
100007278: 0f 85 94 01 00 00           	jne	404 <_main+0xf22>
10000727e: 4d 89 ec                    	movq	%r13, %r12
100007281: f6 84 24 c0 01 00 00 01     	testb	$1, 448(%rsp)
100007289: 74 0d                       	je	13 <_main+0xda8>
10000728b: 48 8b bc 24 d0 01 00 00     	movq	464(%rsp), %rdi
100007293: e8 a8 0d 00 00              	callq	3496 <dyld_stub_binder+0x100008040>
100007298: 48 c7 84 24 d0 03 00 00 00 00 00 00 	movq	$0, 976(%rsp)
1000072a4: c7 84 24 c0 03 00 00 00 00 01 03    	movl	$50397184, 960(%rsp)
1000072af: 4c 8d 6c 24 78              	leaq	120(%rsp), %r13
1000072b4: 4c 89 ac 24 c8 03 00 00     	movq	%r13, 968(%rsp)
1000072bc: 48 b8 1e 00 00 00 1e 00 00 00       	movabsq	$128849018910, %rax
1000072c6: 48 89 84 24 b8 01 00 00     	movq	%rax, 440(%rsp)
1000072ce: c5 fc 28 05 ca 29 00 00     	vmovaps	10698(%rip), %ymm0
1000072d6: c5 fc 29 84 24 40 02 00 00  	vmovaps	%ymm0, 576(%rsp)
1000072df: c7 44 24 08 00 00 00 00     	movl	$0, 8(%rsp)
1000072e7: c7 04 24 10 00 00 00        	movl	$16, (%rsp)
1000072ee: 4c 89 f7                    	movq	%r14, %rdi
1000072f1: 48 8d b4 24 60 01 00 00     	leaq	352(%rsp), %rsi
1000072f9: 48 8d 94 24 b8 01 00 00     	leaq	440(%rsp), %rdx
100007301: 31 c9                       	xorl	%ecx, %ecx
100007303: c5 fb 10 05 55 29 00 00     	vmovsd	10581(%rip), %xmm0
10000730b: 4c 8d 84 24 40 02 00 00     	leaq	576(%rsp), %r8
100007313: 41 b9 02 00 00 00           	movl	$2, %r9d
100007319: c5 f8 77                    	vzeroupper
10000731c: e8 a7 0c 00 00              	callq	3239 <dyld_stub_binder+0x100007fc8>
100007321: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007325: c5 f9 29 84 24 c0 03 00 00  	vmovapd	%xmm0, 960(%rsp)
10000732e: 48 c7 84 24 d0 03 00 00 00 00 00 00 	movq	$0, 976(%rsp)
10000733a: c6 84 24 c0 03 00 00 0a     	movb	$10, 960(%rsp)
100007342: 48 8d 84 24 c1 03 00 00     	leaq	961(%rsp), %rax
10000734a: c6 40 04 65                 	movb	$101, 4(%rax)
10000734e: c7 00 66 72 61 6d           	movl	$1835102822, (%rax)
100007354: c6 84 24 c6 03 00 00 00     	movb	$0, 966(%rsp)
10000735c: 48 c7 84 24 f0 00 00 00 00 00 00 00 	movq	$0, 240(%rsp)
100007368: c7 84 24 e0 00 00 00 00 00 01 01    	movl	$16842752, 224(%rsp)
100007373: 4c 89 ac 24 e8 00 00 00     	movq	%r13, 232(%rsp)
10000737b: 4c 89 f7                    	movq	%r14, %rdi
10000737e: 48 8d b4 24 e0 00 00 00     	leaq	224(%rsp), %rsi
100007386: e8 31 0c 00 00              	callq	3121 <dyld_stub_binder+0x100007fbc>
10000738b: f6 84 24 c0 03 00 00 01     	testb	$1, 960(%rsp)
100007393: 4d 89 e5                    	movq	%r12, %r13
100007396: 4c 8d 74 24 68              	leaq	104(%rsp), %r14
10000739b: 0f 85 94 00 00 00           	jne	148 <_main+0xf45>
1000073a1: f6 84 24 60 01 00 00 01     	testb	$1, 352(%rsp)
1000073a9: 4c 8d 64 24 78              	leaq	120(%rsp), %r12
1000073ae: 0f 85 a1 00 00 00           	jne	161 <_main+0xf65>
1000073b4: 48 8b 84 24 b0 00 00 00     	movq	176(%rsp), %rax
1000073bc: 48 85 c0                    	testq	%rax, %rax
1000073bf: 0f 84 ae 00 00 00           	je	174 <_main+0xf83>
1000073c5: f0                          	lock
1000073c6: ff 48 14                    	decl	20(%rax)
1000073c9: 0f 85 a4 00 00 00           	jne	164 <_main+0xf83>
1000073cf: 4c 89 e7                    	movq	%r12, %rdi
1000073d2: e8 cd 0b 00 00              	callq	3021 <dyld_stub_binder+0x100007fa4>
1000073d7: e9 97 00 00 00              	jmp	151 <_main+0xf83>
1000073dc: 48 8b bc 24 a8 01 00 00     	movq	424(%rsp), %rdi
1000073e4: e8 57 0c 00 00              	callq	3159 <dyld_stub_binder+0x100008040>
1000073e9: f6 84 24 c0 03 00 00 01     	testb	$1, 960(%rsp)
1000073f1: 0f 84 79 fe ff ff           	je	-391 <_main+0xd80>
1000073f7: 48 8b bc 24 d0 03 00 00     	movq	976(%rsp), %rdi
1000073ff: e8 3c 0c 00 00              	callq	3132 <dyld_stub_binder+0x100008040>
100007404: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
10000740c: 0f 84 6c fe ff ff           	je	-404 <_main+0xd8e>
100007412: 48 8b bc 24 f0 00 00 00     	movq	240(%rsp), %rdi
10000741a: e8 21 0c 00 00              	callq	3105 <dyld_stub_binder+0x100008040>
10000741f: 4d 89 ec                    	movq	%r13, %r12
100007422: f6 84 24 c0 01 00 00 01     	testb	$1, 448(%rsp)
10000742a: 0f 85 5b fe ff ff           	jne	-421 <_main+0xd9b>
100007430: e9 63 fe ff ff              	jmp	-413 <_main+0xda8>
100007435: 48 8b bc 24 d0 03 00 00     	movq	976(%rsp), %rdi
10000743d: e8 fe 0b 00 00              	callq	3070 <dyld_stub_binder+0x100008040>
100007442: f6 84 24 60 01 00 00 01     	testb	$1, 352(%rsp)
10000744a: 4c 8d 64 24 78              	leaq	120(%rsp), %r12
10000744f: 0f 84 5f ff ff ff           	je	-161 <_main+0xec4>
100007455: 48 8b bc 24 70 01 00 00     	movq	368(%rsp), %rdi
10000745d: e8 de 0b 00 00              	callq	3038 <dyld_stub_binder+0x100008040>
100007462: 48 8b 84 24 b0 00 00 00     	movq	176(%rsp), %rax
10000746a: 48 85 c0                    	testq	%rax, %rax
10000746d: 0f 85 52 ff ff ff           	jne	-174 <_main+0xed5>
100007473: 48 c7 84 24 b0 00 00 00 00 00 00 00 	movq	$0, 176(%rsp)
10000747f: 48 8d 44 24 7c              	leaq	124(%rsp), %rax
100007484: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007488: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
10000748d: 83 7c 24 7c 00              	cmpl	$0, 124(%rsp)
100007492: 7e 20                       	jle	32 <_main+0xfc4>
100007494: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
10000749c: 31 c9                       	xorl	%ecx, %ecx
10000749e: 66 90                       	nop
1000074a0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000074a7: 48 ff c1                    	incq	%rcx
1000074aa: 48 63 54 24 7c              	movslq	124(%rsp), %rdx
1000074af: 48 39 d1                    	cmpq	%rdx, %rcx
1000074b2: 7c ec                       	jl	-20 <_main+0xfb0>
1000074b4: 48 8b bc 24 c0 00 00 00     	movq	192(%rsp), %rdi
1000074bc: 48 8d 84 24 c8 00 00 00     	leaq	200(%rsp), %rax
1000074c4: 48 39 c7                    	cmpq	%rax, %rdi
1000074c7: 74 08                       	je	8 <_main+0xfe1>
1000074c9: c5 f8 77                    	vzeroupper
1000074cc: e8 09 0b 00 00              	callq	2825 <dyld_stub_binder+0x100007fda>
1000074d1: 48 8b 84 24 38 01 00 00     	movq	312(%rsp), %rax
1000074d9: 48 85 c0                    	testq	%rax, %rax
1000074dc: 74 16                       	je	22 <_main+0x1004>
1000074de: f0                          	lock
1000074df: ff 48 14                    	decl	20(%rax)
1000074e2: 75 10                       	jne	16 <_main+0x1004>
1000074e4: 48 8d bc 24 00 01 00 00     	leaq	256(%rsp), %rdi
1000074ec: c5 f8 77                    	vzeroupper
1000074ef: e8 b0 0a 00 00              	callq	2736 <dyld_stub_binder+0x100007fa4>
1000074f4: 48 c7 84 24 38 01 00 00 00 00 00 00 	movq	$0, 312(%rsp)
100007500: 48 8d 84 24 10 01 00 00     	leaq	272(%rsp), %rax
100007508: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
10000750c: c5 fd 11 00                 	vmovupd	%ymm0, (%rax)
100007510: 83 bc 24 04 01 00 00 00     	cmpl	$0, 260(%rsp)
100007518: 7e 2d                       	jle	45 <_main+0x1057>
10000751a: 48 8b 84 24 40 01 00 00     	movq	320(%rsp), %rax
100007522: 31 c9                       	xorl	%ecx, %ecx
100007524: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000752e: 66 90                       	nop
100007530: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007537: 48 ff c1                    	incq	%rcx
10000753a: 48 63 94 24 04 01 00 00     	movslq	260(%rsp), %rdx
100007542: 48 39 d1                    	cmpq	%rdx, %rcx
100007545: 7c e9                       	jl	-23 <_main+0x1040>
100007547: 48 8b bc 24 48 01 00 00     	movq	328(%rsp), %rdi
10000754f: 48 8d 84 24 50 01 00 00     	leaq	336(%rsp), %rax
100007557: 48 39 c7                    	cmpq	%rax, %rdi
10000755a: 74 08                       	je	8 <_main+0x1074>
10000755c: c5 f8 77                    	vzeroupper
10000755f: e8 76 0a 00 00              	callq	2678 <dyld_stub_binder+0x100007fda>
100007564: 48 8d bc 24 60 02 00 00     	leaq	608(%rsp), %rdi
10000756c: c5 f8 77                    	vzeroupper
10000756f: e8 9c 04 00 00              	callq	1180 <__ZN2cv7MatExprD2Ev>
100007574: 45 31 e4                    	xorl	%r12d, %r12d
100007577: 48 8b 44 24 50              	movq	80(%rsp), %rax
10000757c: 48 85 c0                    	testq	%rax, %rax
10000757f: 0f 85 55 f9 ff ff           	jne	-1707 <_main+0x9ea>
100007585: e9 63 f9 ff ff              	jmp	-1693 <_main+0x9fd>
10000758a: 48 8b 3d b7 2a 00 00        	movq	10935(%rip), %rdi
100007591: 48 8d 35 50 29 00 00        	leaq	10576(%rip), %rsi
100007598: ba 0d 00 00 00              	movl	$13, %edx
10000759d: c5 f8 77                    	vzeroupper
1000075a0: e8 fb 05 00 00              	callq	1531 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000075a5: 48 8d bc 24 d8 01 00 00     	leaq	472(%rsp), %rdi
1000075ad: e8 e6 09 00 00              	callq	2534 <dyld_stub_binder+0x100007f98>
1000075b2: 48 8d bc 24 08 02 00 00     	leaq	520(%rsp), %rdi
1000075ba: e8 61 d7 ff ff              	callq	-10399 <__ZN14ModelInterfaceD2Ev>
1000075bf: 48 8b 05 9a 2a 00 00        	movq	10906(%rip), %rax
1000075c6: 48 8b 00                    	movq	(%rax), %rax
1000075c9: 48 3b 84 24 e0 03 00 00     	cmpq	992(%rsp), %rax
1000075d1: 75 11                       	jne	17 <_main+0x10f4>
1000075d3: 31 c0                       	xorl	%eax, %eax
1000075d5: 48 8d 65 d8                 	leaq	-40(%rbp), %rsp
1000075d9: 5b                          	popq	%rbx
1000075da: 41 5c                       	popq	%r12
1000075dc: 41 5d                       	popq	%r13
1000075de: 41 5e                       	popq	%r14
1000075e0: 41 5f                       	popq	%r15
1000075e2: 5d                          	popq	%rbp
1000075e3: c3                          	retq
1000075e4: e8 75 0a 00 00              	callq	2677 <dyld_stub_binder+0x10000805e>
1000075e9: e9 e7 03 00 00              	jmp	999 <_main+0x14e5>
1000075ee: 48 89 c3                    	movq	%rax, %rbx
1000075f1: f6 84 24 60 02 00 00 01     	testb	$1, 608(%rsp)
1000075f9: 0f 84 e9 03 00 00           	je	1001 <_main+0x14f8>
1000075ff: 48 8b bc 24 70 02 00 00     	movq	624(%rsp), %rdi
100007607: e8 34 0a 00 00              	callq	2612 <dyld_stub_binder+0x100008040>
10000760c: e9 d7 03 00 00              	jmp	983 <_main+0x14f8>
100007611: 48 89 c3                    	movq	%rax, %rbx
100007614: e9 cf 03 00 00              	jmp	975 <_main+0x14f8>
100007619: 48 89 c7                    	movq	%rax, %rdi
10000761c: e8 df 03 00 00              	callq	991 <___clang_call_terminate>
100007621: 48 89 c7                    	movq	%rax, %rdi
100007624: e8 d7 03 00 00              	callq	983 <___clang_call_terminate>
100007629: 48 89 c7                    	movq	%rax, %rdi
10000762c: e8 cf 03 00 00              	callq	975 <___clang_call_terminate>
100007631: 48 89 c3                    	movq	%rax, %rbx
100007634: 48 8b 84 24 b0 00 00 00     	movq	176(%rsp), %rax
10000763c: 48 85 c0                    	testq	%rax, %rax
10000763f: 0f 85 c8 01 00 00           	jne	456 <_main+0x131d>
100007645: e9 d3 01 00 00              	jmp	467 <_main+0x132d>
10000764a: 48 89 c3                    	movq	%rax, %rbx
10000764d: 48 8b 84 24 38 01 00 00     	movq	312(%rsp), %rax
100007655: 48 85 c0                    	testq	%rax, %rax
100007658: 74 13                       	je	19 <_main+0x117d>
10000765a: f0                          	lock
10000765b: ff 48 14                    	decl	20(%rax)
10000765e: 75 0d                       	jne	13 <_main+0x117d>
100007660: 48 8d bc 24 00 01 00 00     	leaq	256(%rsp), %rdi
100007668: e8 37 09 00 00              	callq	2359 <dyld_stub_binder+0x100007fa4>
10000766d: 48 c7 84 24 38 01 00 00 00 00 00 00 	movq	$0, 312(%rsp)
100007679: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000767d: 48 8d 84 24 10 01 00 00     	leaq	272(%rsp), %rax
100007685: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100007689: 83 bc 24 04 01 00 00 00     	cmpl	$0, 260(%rsp)
100007691: 7e 21                       	jle	33 <_main+0x11c4>
100007693: 48 8b 84 24 40 01 00 00     	movq	320(%rsp), %rax
10000769b: 31 c9                       	xorl	%ecx, %ecx
10000769d: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000076a4: 48 ff c1                    	incq	%rcx
1000076a7: 48 63 94 24 04 01 00 00     	movslq	260(%rsp), %rdx
1000076af: 48 39 d1                    	cmpq	%rdx, %rcx
1000076b2: 7c e9                       	jl	-23 <_main+0x11ad>
1000076b4: 48 8b bc 24 48 01 00 00     	movq	328(%rsp), %rdi
1000076bc: 48 8d 84 24 50 01 00 00     	leaq	336(%rsp), %rax
1000076c4: 48 39 c7                    	cmpq	%rax, %rdi
1000076c7: 0f 84 88 02 00 00           	je	648 <_main+0x1465>
1000076cd: c5 f8 77                    	vzeroupper
1000076d0: e8 05 09 00 00              	callq	2309 <dyld_stub_binder+0x100007fda>
1000076d5: e9 7b 02 00 00              	jmp	635 <_main+0x1465>
1000076da: 48 89 c7                    	movq	%rax, %rdi
1000076dd: e8 1e 03 00 00              	callq	798 <___clang_call_terminate>
1000076e2: 48 89 c3                    	movq	%rax, %rbx
1000076e5: 48 8b 44 24 50              	movq	80(%rsp), %rax
1000076ea: 48 85 c0                    	testq	%rax, %rax
1000076ed: 0f 85 6c 02 00 00           	jne	620 <_main+0x146f>
1000076f3: e9 7a 02 00 00              	jmp	634 <_main+0x1482>
1000076f8: 48 89 c3                    	movq	%rax, %rbx
1000076fb: f6 84 24 c0 03 00 00 01     	testb	$1, 960(%rsp)
100007703: 74 1f                       	je	31 <_main+0x1234>
100007705: 48 8b bc 24 d0 03 00 00     	movq	976(%rsp), %rdi
10000770d: e8 2e 09 00 00              	callq	2350 <dyld_stub_binder+0x100008040>
100007712: f6 84 24 60 01 00 00 01     	testb	$1, 352(%rsp)
10000771a: 75 16                       	jne	22 <_main+0x1242>
10000771c: e9 df 00 00 00              	jmp	223 <_main+0x1310>
100007721: 48 89 c3                    	movq	%rax, %rbx
100007724: f6 84 24 60 01 00 00 01     	testb	$1, 352(%rsp)
10000772c: 0f 84 ce 00 00 00           	je	206 <_main+0x1310>
100007732: 48 8b bc 24 70 01 00 00     	movq	368(%rsp), %rdi
10000773a: e9 aa 00 00 00              	jmp	170 <_main+0x12f9>
10000773f: 48 89 c3                    	movq	%rax, %rbx
100007742: f6 84 24 98 01 00 00 01     	testb	$1, 408(%rsp)
10000774a: 75 23                       	jne	35 <_main+0x127f>
10000774c: f6 84 24 c0 03 00 00 01     	testb	$1, 960(%rsp)
100007754: 75 3f                       	jne	63 <_main+0x12a5>
100007756: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
10000775e: 75 5b                       	jne	91 <_main+0x12cb>
100007760: f6 84 24 c0 01 00 00 01     	testb	$1, 448(%rsp)
100007768: 75 77                       	jne	119 <_main+0x12f1>
10000776a: e9 91 00 00 00              	jmp	145 <_main+0x1310>
10000776f: 48 8b bc 24 a8 01 00 00     	movq	424(%rsp), %rdi
100007777: e8 c4 08 00 00              	callq	2244 <dyld_stub_binder+0x100008040>
10000777c: f6 84 24 c0 03 00 00 01     	testb	$1, 960(%rsp)
100007784: 74 d0                       	je	-48 <_main+0x1266>
100007786: eb 0d                       	jmp	13 <_main+0x12a5>
100007788: 48 89 c3                    	movq	%rax, %rbx
10000778b: f6 84 24 c0 03 00 00 01     	testb	$1, 960(%rsp)
100007793: 74 c1                       	je	-63 <_main+0x1266>
100007795: 48 8b bc 24 d0 03 00 00     	movq	976(%rsp), %rdi
10000779d: e8 9e 08 00 00              	callq	2206 <dyld_stub_binder+0x100008040>
1000077a2: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
1000077aa: 74 b4                       	je	-76 <_main+0x1270>
1000077ac: eb 0d                       	jmp	13 <_main+0x12cb>
1000077ae: 48 89 c3                    	movq	%rax, %rbx
1000077b1: f6 84 24 e0 00 00 00 01     	testb	$1, 224(%rsp)
1000077b9: 74 a5                       	je	-91 <_main+0x1270>
1000077bb: 48 8b bc 24 f0 00 00 00     	movq	240(%rsp), %rdi
1000077c3: e8 78 08 00 00              	callq	2168 <dyld_stub_binder+0x100008040>
1000077c8: f6 84 24 c0 01 00 00 01     	testb	$1, 448(%rsp)
1000077d0: 75 0f                       	jne	15 <_main+0x12f1>
1000077d2: eb 2c                       	jmp	44 <_main+0x1310>
1000077d4: 48 89 c3                    	movq	%rax, %rbx
1000077d7: f6 84 24 c0 01 00 00 01     	testb	$1, 448(%rsp)
1000077df: 74 1f                       	je	31 <_main+0x1310>
1000077e1: 48 8b bc 24 d0 01 00 00     	movq	464(%rsp), %rdi
1000077e9: e8 52 08 00 00              	callq	2130 <dyld_stub_binder+0x100008040>
1000077ee: 48 8b 84 24 b0 00 00 00     	movq	176(%rsp), %rax
1000077f6: 48 85 c0                    	testq	%rax, %rax
1000077f9: 75 12                       	jne	18 <_main+0x131d>
1000077fb: eb 20                       	jmp	32 <_main+0x132d>
1000077fd: 48 89 c3                    	movq	%rax, %rbx
100007800: 48 8b 84 24 b0 00 00 00     	movq	176(%rsp), %rax
100007808: 48 85 c0                    	testq	%rax, %rax
10000780b: 74 10                       	je	16 <_main+0x132d>
10000780d: f0                          	lock
10000780e: ff 48 14                    	decl	20(%rax)
100007811: 75 0a                       	jne	10 <_main+0x132d>
100007813: 48 8d 7c 24 78              	leaq	120(%rsp), %rdi
100007818: e8 87 07 00 00              	callq	1927 <dyld_stub_binder+0x100007fa4>
10000781d: 48 c7 84 24 b0 00 00 00 00 00 00 00 	movq	$0, 176(%rsp)
100007829: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
10000782d: 48 8d 44 24 7c              	leaq	124(%rsp), %rax
100007832: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
100007837: 83 7c 24 7c 00              	cmpl	$0, 124(%rsp)
10000783c: 7e 1e                       	jle	30 <_main+0x136c>
10000783e: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100007846: 31 c9                       	xorl	%ecx, %ecx
100007848: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
10000784f: 48 ff c1                    	incq	%rcx
100007852: 48 63 54 24 7c              	movslq	124(%rsp), %rdx
100007857: 48 39 d1                    	cmpq	%rdx, %rcx
10000785a: 7c ec                       	jl	-20 <_main+0x1358>
10000785c: 48 8b bc 24 c0 00 00 00     	movq	192(%rsp), %rdi
100007864: 48 8d 84 24 c8 00 00 00     	leaq	200(%rsp), %rax
10000786c: 48 39 c7                    	cmpq	%rax, %rdi
10000786f: 74 1f                       	je	31 <_main+0x13a0>
100007871: c5 f8 77                    	vzeroupper
100007874: e8 61 07 00 00              	callq	1889 <dyld_stub_binder+0x100007fda>
100007879: eb 15                       	jmp	21 <_main+0x13a0>
10000787b: 48 89 c7                    	movq	%rax, %rdi
10000787e: e8 7d 01 00 00              	callq	381 <___clang_call_terminate>
100007883: eb 08                       	jmp	8 <_main+0x139d>
100007885: 48 89 c3                    	movq	%rax, %rbx
100007888: e9 8a 00 00 00              	jmp	138 <_main+0x1427>
10000788d: 48 89 c3                    	movq	%rax, %rbx
100007890: 48 8b 84 24 38 01 00 00     	movq	312(%rsp), %rax
100007898: 48 85 c0                    	testq	%rax, %rax
10000789b: 74 16                       	je	22 <_main+0x13c3>
10000789d: f0                          	lock
10000789e: ff 48 14                    	decl	20(%rax)
1000078a1: 75 10                       	jne	16 <_main+0x13c3>
1000078a3: 48 8d bc 24 00 01 00 00     	leaq	256(%rsp), %rdi
1000078ab: c5 f8 77                    	vzeroupper
1000078ae: e8 f1 06 00 00              	callq	1777 <dyld_stub_binder+0x100007fa4>
1000078b3: 48 c7 84 24 38 01 00 00 00 00 00 00 	movq	$0, 312(%rsp)
1000078bf: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
1000078c3: 48 8d 84 24 10 01 00 00     	leaq	272(%rsp), %rax
1000078cb: c5 fd 11 00                 	vmovupd	%ymm0, (%rax)
1000078cf: 83 bc 24 04 01 00 00 00     	cmpl	$0, 260(%rsp)
1000078d7: 7e 21                       	jle	33 <_main+0x140a>
1000078d9: 48 8b 84 24 40 01 00 00     	movq	320(%rsp), %rax
1000078e1: 31 c9                       	xorl	%ecx, %ecx
1000078e3: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000078ea: 48 ff c1                    	incq	%rcx
1000078ed: 48 63 94 24 04 01 00 00     	movslq	260(%rsp), %rdx
1000078f5: 48 39 d1                    	cmpq	%rdx, %rcx
1000078f8: 7c e9                       	jl	-23 <_main+0x13f3>
1000078fa: 48 8b bc 24 48 01 00 00     	movq	328(%rsp), %rdi
100007902: 48 8d 84 24 50 01 00 00     	leaq	336(%rsp), %rax
10000790a: 48 39 c7                    	cmpq	%rax, %rdi
10000790d: 74 08                       	je	8 <_main+0x1427>
10000790f: c5 f8 77                    	vzeroupper
100007912: e8 c3 06 00 00              	callq	1731 <dyld_stub_binder+0x100007fda>
100007917: 48 8d bc 24 60 02 00 00     	leaq	608(%rsp), %rdi
10000791f: c5 f8 77                    	vzeroupper
100007922: e8 e9 00 00 00              	callq	233 <__ZN2cv7MatExprD2Ev>
100007927: 48 8b 44 24 50              	movq	80(%rsp), %rax
10000792c: 48 85 c0                    	testq	%rax, %rax
10000792f: 75 2e                       	jne	46 <_main+0x146f>
100007931: eb 3f                       	jmp	63 <_main+0x1482>
100007933: 48 89 c7                    	movq	%rax, %rdi
100007936: e8 c5 00 00 00              	callq	197 <___clang_call_terminate>
10000793b: 48 89 c3                    	movq	%rax, %rbx
10000793e: 48 8b 44 24 50              	movq	80(%rsp), %rax
100007943: 48 85 c0                    	testq	%rax, %rax
100007946: 75 17                       	jne	23 <_main+0x146f>
100007948: eb 28                       	jmp	40 <_main+0x1482>
10000794a: 48 89 c7                    	movq	%rax, %rdi
10000794d: e8 ae 00 00 00              	callq	174 <___clang_call_terminate>
100007952: 48 89 c3                    	movq	%rax, %rbx
100007955: 48 8b 44 24 50              	movq	80(%rsp), %rax
10000795a: 48 85 c0                    	testq	%rax, %rax
10000795d: 74 13                       	je	19 <_main+0x1482>
10000795f: f0                          	lock
100007960: ff 48 14                    	decl	20(%rax)
100007963: 75 0d                       	jne	13 <_main+0x1482>
100007965: 48 8d 7c 24 18              	leaq	24(%rsp), %rdi
10000796a: c5 f8 77                    	vzeroupper
10000796d: e8 32 06 00 00              	callq	1586 <dyld_stub_binder+0x100007fa4>
100007972: 48 c7 44 24 50 00 00 00 00  	movq	$0, 80(%rsp)
10000797b: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000797f: 48 8d 44 24 1c              	leaq	28(%rsp), %rax
100007984: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100007989: 83 7c 24 1c 00              	cmpl	$0, 28(%rsp)
10000798e: 7e 24                       	jle	36 <_main+0x14c4>
100007990: 48 8b 44 24 58              	movq	88(%rsp), %rax
100007995: 31 c9                       	xorl	%ecx, %ecx
100007997: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000079a0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000079a7: 48 ff c1                    	incq	%rcx
1000079aa: 48 63 54 24 1c              	movslq	28(%rsp), %rdx
1000079af: 48 39 d1                    	cmpq	%rdx, %rcx
1000079b2: 7c ec                       	jl	-20 <_main+0x14b0>
1000079b4: 48 8b 7c 24 60              	movq	96(%rsp), %rdi
1000079b9: 48 8d 44 24 68              	leaq	104(%rsp), %rax
1000079be: 48 39 c7                    	cmpq	%rax, %rdi
1000079c1: 74 15                       	je	21 <_main+0x14e8>
1000079c3: c5 f8 77                    	vzeroupper
1000079c6: e8 0f 06 00 00              	callq	1551 <dyld_stub_binder+0x100007fda>
1000079cb: eb 0b                       	jmp	11 <_main+0x14e8>
1000079cd: 48 89 c7                    	movq	%rax, %rdi
1000079d0: e8 2b 00 00 00              	callq	43 <___clang_call_terminate>
1000079d5: 48 89 c3                    	movq	%rax, %rbx
1000079d8: 48 8d bc 24 d8 01 00 00     	leaq	472(%rsp), %rdi
1000079e0: c5 f8 77                    	vzeroupper
1000079e3: e8 b0 05 00 00              	callq	1456 <dyld_stub_binder+0x100007f98>
1000079e8: 48 8d bc 24 08 02 00 00     	leaq	520(%rsp), %rdi
1000079f0: e8 2b d3 ff ff              	callq	-11477 <__ZN14ModelInterfaceD2Ev>
1000079f5: 48 89 df                    	movq	%rbx, %rdi
1000079f8: e8 8f 05 00 00              	callq	1423 <dyld_stub_binder+0x100007f8c>
1000079fd: 0f 0b                       	ud2
1000079ff: 90                          	nop

0000000100007a00 ___clang_call_terminate:
100007a00: 50                          	pushq	%rax
100007a01: e8 4c 06 00 00              	callq	1612 <dyld_stub_binder+0x100008052>
100007a06: e8 2f 06 00 00              	callq	1583 <dyld_stub_binder+0x10000803a>
100007a0b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007a10 __ZN2cv7MatExprD2Ev:
100007a10: 55                          	pushq	%rbp
100007a11: 48 89 e5                    	movq	%rsp, %rbp
100007a14: 53                          	pushq	%rbx
100007a15: 50                          	pushq	%rax
100007a16: 48 89 fb                    	movq	%rdi, %rbx
100007a19: 48 8b 87 08 01 00 00        	movq	264(%rdi), %rax
100007a20: 48 85 c0                    	testq	%rax, %rax
100007a23: 74 12                       	je	18 <__ZN2cv7MatExprD2Ev+0x27>
100007a25: f0                          	lock
100007a26: ff 48 14                    	decl	20(%rax)
100007a29: 75 0c                       	jne	12 <__ZN2cv7MatExprD2Ev+0x27>
100007a2b: 48 8d bb d0 00 00 00        	leaq	208(%rbx), %rdi
100007a32: e8 6d 05 00 00              	callq	1389 <dyld_stub_binder+0x100007fa4>
100007a37: 48 c7 83 08 01 00 00 00 00 00 00    	movq	$0, 264(%rbx)
100007a42: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007a46: c5 fc 11 83 e0 00 00 00     	vmovups	%ymm0, 224(%rbx)
100007a4e: 83 bb d4 00 00 00 00        	cmpl	$0, 212(%rbx)
100007a55: 7e 1f                       	jle	31 <__ZN2cv7MatExprD2Ev+0x66>
100007a57: 48 8b 83 10 01 00 00        	movq	272(%rbx), %rax
100007a5e: 31 c9                       	xorl	%ecx, %ecx
100007a60: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007a67: 48 ff c1                    	incq	%rcx
100007a6a: 48 63 93 d4 00 00 00        	movslq	212(%rbx), %rdx
100007a71: 48 39 d1                    	cmpq	%rdx, %rcx
100007a74: 7c ea                       	jl	-22 <__ZN2cv7MatExprD2Ev+0x50>
100007a76: 48 8b bb 18 01 00 00        	movq	280(%rbx), %rdi
100007a7d: 48 8d 83 20 01 00 00        	leaq	288(%rbx), %rax
100007a84: 48 39 c7                    	cmpq	%rax, %rdi
100007a87: 74 08                       	je	8 <__ZN2cv7MatExprD2Ev+0x81>
100007a89: c5 f8 77                    	vzeroupper
100007a8c: e8 49 05 00 00              	callq	1353 <dyld_stub_binder+0x100007fda>
100007a91: 48 8b 83 a8 00 00 00        	movq	168(%rbx), %rax
100007a98: 48 85 c0                    	testq	%rax, %rax
100007a9b: 74 12                       	je	18 <__ZN2cv7MatExprD2Ev+0x9f>
100007a9d: f0                          	lock
100007a9e: ff 48 14                    	decl	20(%rax)
100007aa1: 75 0c                       	jne	12 <__ZN2cv7MatExprD2Ev+0x9f>
100007aa3: 48 8d 7b 70                 	leaq	112(%rbx), %rdi
100007aa7: c5 f8 77                    	vzeroupper
100007aaa: e8 f5 04 00 00              	callq	1269 <dyld_stub_binder+0x100007fa4>
100007aaf: 48 c7 83 a8 00 00 00 00 00 00 00    	movq	$0, 168(%rbx)
100007aba: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007abe: c5 fc 11 83 80 00 00 00     	vmovups	%ymm0, 128(%rbx)
100007ac6: 83 7b 74 00                 	cmpl	$0, 116(%rbx)
100007aca: 7e 27                       	jle	39 <__ZN2cv7MatExprD2Ev+0xe3>
100007acc: 48 8b 83 b0 00 00 00        	movq	176(%rbx), %rax
100007ad3: 31 c9                       	xorl	%ecx, %ecx
100007ad5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007adf: 90                          	nop
100007ae0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007ae7: 48 ff c1                    	incq	%rcx
100007aea: 48 63 53 74                 	movslq	116(%rbx), %rdx
100007aee: 48 39 d1                    	cmpq	%rdx, %rcx
100007af1: 7c ed                       	jl	-19 <__ZN2cv7MatExprD2Ev+0xd0>
100007af3: 48 8b bb b8 00 00 00        	movq	184(%rbx), %rdi
100007afa: 48 8d 83 c0 00 00 00        	leaq	192(%rbx), %rax
100007b01: 48 39 c7                    	cmpq	%rax, %rdi
100007b04: 74 08                       	je	8 <__ZN2cv7MatExprD2Ev+0xfe>
100007b06: c5 f8 77                    	vzeroupper
100007b09: e8 cc 04 00 00              	callq	1228 <dyld_stub_binder+0x100007fda>
100007b0e: 48 8b 43 48                 	movq	72(%rbx), %rax
100007b12: 48 85 c0                    	testq	%rax, %rax
100007b15: 74 12                       	je	18 <__ZN2cv7MatExprD2Ev+0x119>
100007b17: f0                          	lock
100007b18: ff 48 14                    	decl	20(%rax)
100007b1b: 75 0c                       	jne	12 <__ZN2cv7MatExprD2Ev+0x119>
100007b1d: 48 8d 7b 10                 	leaq	16(%rbx), %rdi
100007b21: c5 f8 77                    	vzeroupper
100007b24: e8 7b 04 00 00              	callq	1147 <dyld_stub_binder+0x100007fa4>
100007b29: 48 c7 43 48 00 00 00 00     	movq	$0, 72(%rbx)
100007b31: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007b35: c5 fc 11 43 20              	vmovups	%ymm0, 32(%rbx)
100007b3a: 83 7b 14 00                 	cmpl	$0, 20(%rbx)
100007b3e: 7e 23                       	jle	35 <__ZN2cv7MatExprD2Ev+0x153>
100007b40: 48 8b 43 50                 	movq	80(%rbx), %rax
100007b44: 31 c9                       	xorl	%ecx, %ecx
100007b46: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007b50: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007b57: 48 ff c1                    	incq	%rcx
100007b5a: 48 63 53 14                 	movslq	20(%rbx), %rdx
100007b5e: 48 39 d1                    	cmpq	%rdx, %rcx
100007b61: 7c ed                       	jl	-19 <__ZN2cv7MatExprD2Ev+0x140>
100007b63: 48 8b 7b 58                 	movq	88(%rbx), %rdi
100007b67: 48 83 c3 60                 	addq	$96, %rbx
100007b6b: 48 39 df                    	cmpq	%rbx, %rdi
100007b6e: 74 08                       	je	8 <__ZN2cv7MatExprD2Ev+0x168>
100007b70: c5 f8 77                    	vzeroupper
100007b73: e8 62 04 00 00              	callq	1122 <dyld_stub_binder+0x100007fda>
100007b78: 48 83 c4 08                 	addq	$8, %rsp
100007b7c: 5b                          	popq	%rbx
100007b7d: 5d                          	popq	%rbp
100007b7e: c5 f8 77                    	vzeroupper
100007b81: c3                          	retq
100007b82: 48 89 c7                    	movq	%rax, %rdi
100007b85: e8 76 fe ff ff              	callq	-394 <___clang_call_terminate>
100007b8a: 48 89 c7                    	movq	%rax, %rdi
100007b8d: e8 6e fe ff ff              	callq	-402 <___clang_call_terminate>
100007b92: 48 89 c7                    	movq	%rax, %rdi
100007b95: e8 66 fe ff ff              	callq	-410 <___clang_call_terminate>
100007b9a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007ba0 __ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:
100007ba0: 55                          	pushq	%rbp
100007ba1: 48 89 e5                    	movq	%rsp, %rbp
100007ba4: 41 57                       	pushq	%r15
100007ba6: 41 56                       	pushq	%r14
100007ba8: 41 55                       	pushq	%r13
100007baa: 41 54                       	pushq	%r12
100007bac: 53                          	pushq	%rbx
100007bad: 48 83 ec 28                 	subq	$40, %rsp
100007bb1: 49 89 d6                    	movq	%rdx, %r14
100007bb4: 49 89 f7                    	movq	%rsi, %r15
100007bb7: 48 89 fb                    	movq	%rdi, %rbx
100007bba: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007bbe: 48 89 de                    	movq	%rbx, %rsi
100007bc1: e8 44 04 00 00              	callq	1092 <dyld_stub_binder+0x10000800a>
100007bc6: 80 7d b0 00                 	cmpb	$0, -80(%rbp)
100007bca: 0f 84 ae 00 00 00           	je	174 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007bd0: 48 8b 03                    	movq	(%rbx), %rax
100007bd3: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007bd7: 4c 8d 24 03                 	leaq	(%rbx,%rax), %r12
100007bdb: 48 8b 7c 03 28              	movq	40(%rbx,%rax), %rdi
100007be0: 44 8b 6c 03 08              	movl	8(%rbx,%rax), %r13d
100007be5: 8b 84 03 90 00 00 00        	movl	144(%rbx,%rax), %eax
100007bec: 83 f8 ff                    	cmpl	$-1, %eax
100007bef: 75 4a                       	jne	74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9b>
100007bf1: 48 89 7d c0                 	movq	%rdi, -64(%rbp)
100007bf5: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007bf9: 4c 89 e6                    	movq	%r12, %rsi
100007bfc: e8 f1 03 00 00              	callq	1009 <dyld_stub_binder+0x100007ff2>
100007c01: 48 8b 35 48 24 00 00        	movq	9288(%rip), %rsi
100007c08: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007c0c: e8 db 03 00 00              	callq	987 <dyld_stub_binder+0x100007fec>
100007c11: 48 8b 08                    	movq	(%rax), %rcx
100007c14: 48 89 c7                    	movq	%rax, %rdi
100007c17: be 20 00 00 00              	movl	$32, %esi
100007c1c: ff 51 38                    	callq	*56(%rcx)
100007c1f: 88 45 d7                    	movb	%al, -41(%rbp)
100007c22: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007c26: e8 f1 03 00 00              	callq	1009 <dyld_stub_binder+0x10000801c>
100007c2b: 0f be 45 d7                 	movsbl	-41(%rbp), %eax
100007c2f: 41 89 84 24 90 00 00 00     	movl	%eax, 144(%r12)
100007c37: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100007c3b: 4d 01 fe                    	addq	%r15, %r14
100007c3e: 41 81 e5 b0 00 00 00        	andl	$176, %r13d
100007c45: 41 83 fd 20                 	cmpl	$32, %r13d
100007c49: 4c 89 fa                    	movq	%r15, %rdx
100007c4c: 49 0f 44 d6                 	cmoveq	%r14, %rdx
100007c50: 44 0f be c8                 	movsbl	%al, %r9d
100007c54: 4c 89 fe                    	movq	%r15, %rsi
100007c57: 4c 89 f1                    	movq	%r14, %rcx
100007c5a: 4d 89 e0                    	movq	%r12, %r8
100007c5d: e8 9e 00 00 00              	callq	158 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100007c62: 48 85 c0                    	testq	%rax, %rax
100007c65: 75 17                       	jne	23 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007c67: 48 8b 03                    	movq	(%rbx), %rax
100007c6a: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007c6e: 48 8d 3c 03                 	leaq	(%rbx,%rax), %rdi
100007c72: 8b 74 03 20                 	movl	32(%rbx,%rax), %esi
100007c76: 83 ce 05                    	orl	$5, %esi
100007c79: e8 aa 03 00 00              	callq	938 <dyld_stub_binder+0x100008028>
100007c7e: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007c82: e8 89 03 00 00              	callq	905 <dyld_stub_binder+0x100008010>
100007c87: 48 89 d8                    	movq	%rbx, %rax
100007c8a: 48 83 c4 28                 	addq	$40, %rsp
100007c8e: 5b                          	popq	%rbx
100007c8f: 41 5c                       	popq	%r12
100007c91: 41 5d                       	popq	%r13
100007c93: 41 5e                       	popq	%r14
100007c95: 41 5f                       	popq	%r15
100007c97: 5d                          	popq	%rbp
100007c98: c3                          	retq
100007c99: eb 0e                       	jmp	14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x109>
100007c9b: 49 89 c6                    	movq	%rax, %r14
100007c9e: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007ca2: e8 75 03 00 00              	callq	885 <dyld_stub_binder+0x10000801c>
100007ca7: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x10c>
100007ca9: 49 89 c6                    	movq	%rax, %r14
100007cac: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007cb0: e8 5b 03 00 00              	callq	859 <dyld_stub_binder+0x100008010>
100007cb5: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11a>
100007cb7: 49 89 c6                    	movq	%rax, %r14
100007cba: 4c 89 f7                    	movq	%r14, %rdi
100007cbd: e8 90 03 00 00              	callq	912 <dyld_stub_binder+0x100008052>
100007cc2: 48 8b 03                    	movq	(%rbx), %rax
100007cc5: 48 8b 78 e8                 	movq	-24(%rax), %rdi
100007cc9: 48 01 df                    	addq	%rbx, %rdi
100007ccc: e8 51 03 00 00              	callq	849 <dyld_stub_binder+0x100008022>
100007cd1: e8 82 03 00 00              	callq	898 <dyld_stub_binder+0x100008058>
100007cd6: eb af                       	jmp	-81 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe7>
100007cd8: 48 89 c3                    	movq	%rax, %rbx
100007cdb: e8 78 03 00 00              	callq	888 <dyld_stub_binder+0x100008058>
100007ce0: 48 89 df                    	movq	%rbx, %rdi
100007ce3: e8 a4 02 00 00              	callq	676 <dyld_stub_binder+0x100007f8c>
100007ce8: 0f 0b                       	ud2
100007cea: 48 89 c7                    	movq	%rax, %rdi
100007ced: e8 0e fd ff ff              	callq	-754 <___clang_call_terminate>
100007cf2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007cfc: 0f 1f 40 00                 	nopl	(%rax)

0000000100007d00 __ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:
100007d00: 55                          	pushq	%rbp
100007d01: 48 89 e5                    	movq	%rsp, %rbp
100007d04: 41 57                       	pushq	%r15
100007d06: 41 56                       	pushq	%r14
100007d08: 41 55                       	pushq	%r13
100007d0a: 41 54                       	pushq	%r12
100007d0c: 53                          	pushq	%rbx
100007d0d: 48 83 ec 38                 	subq	$56, %rsp
100007d11: 48 85 ff                    	testq	%rdi, %rdi
100007d14: 0f 84 17 01 00 00           	je	279 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007d1a: 4d 89 c4                    	movq	%r8, %r12
100007d1d: 49 89 cf                    	movq	%rcx, %r15
100007d20: 49 89 fe                    	movq	%rdi, %r14
100007d23: 44 89 4d bc                 	movl	%r9d, -68(%rbp)
100007d27: 48 89 c8                    	movq	%rcx, %rax
100007d2a: 48 29 f0                    	subq	%rsi, %rax
100007d2d: 49 8b 48 18                 	movq	24(%r8), %rcx
100007d31: 45 31 ed                    	xorl	%r13d, %r13d
100007d34: 48 29 c1                    	subq	%rax, %rcx
100007d37: 4c 0f 4f e9                 	cmovgq	%rcx, %r13
100007d3b: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100007d3f: 48 89 d3                    	movq	%rdx, %rbx
100007d42: 48 29 f3                    	subq	%rsi, %rbx
100007d45: 48 85 db                    	testq	%rbx, %rbx
100007d48: 7e 15                       	jle	21 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x5f>
100007d4a: 49 8b 06                    	movq	(%r14), %rax
100007d4d: 4c 89 f7                    	movq	%r14, %rdi
100007d50: 48 89 da                    	movq	%rbx, %rdx
100007d53: ff 50 60                    	callq	*96(%rax)
100007d56: 48 39 d8                    	cmpq	%rbx, %rax
100007d59: 0f 85 d2 00 00 00           	jne	210 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007d5f: 4d 85 ed                    	testq	%r13, %r13
100007d62: 0f 8e a1 00 00 00           	jle	161 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x109>
100007d68: 4c 89 65 b0                 	movq	%r12, -80(%rbp)
100007d6c: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007d70: c5 f8 29 45 c0              	vmovaps	%xmm0, -64(%rbp)
100007d75: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100007d7d: 49 83 fd 17                 	cmpq	$23, %r13
100007d81: 73 12                       	jae	18 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x95>
100007d83: 43 8d 44 2d 00              	leal	(%r13,%r13), %eax
100007d88: 88 45 c0                    	movb	%al, -64(%rbp)
100007d8b: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007d8f: 4c 8d 65 c1                 	leaq	-63(%rbp), %r12
100007d93: eb 27                       	jmp	39 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xbc>
100007d95: 49 8d 5d 10                 	leaq	16(%r13), %rbx
100007d99: 48 83 e3 f0                 	andq	$-16, %rbx
100007d9d: 48 89 df                    	movq	%rbx, %rdi
100007da0: e8 a7 02 00 00              	callq	679 <dyld_stub_binder+0x10000804c>
100007da5: 49 89 c4                    	movq	%rax, %r12
100007da8: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100007dac: 48 83 cb 01                 	orq	$1, %rbx
100007db0: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
100007db4: 4c 89 6d c8                 	movq	%r13, -56(%rbp)
100007db8: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007dbc: 0f b6 75 bc                 	movzbl	-68(%rbp), %esi
100007dc0: 4c 89 e7                    	movq	%r12, %rdi
100007dc3: 4c 89 ea                    	movq	%r13, %rdx
100007dc6: e8 99 02 00 00              	callq	665 <dyld_stub_binder+0x100008064>
100007dcb: 43 c6 04 2c 00              	movb	$0, (%r12,%r13)
100007dd0: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007dd4: 74 06                       	je	6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100007dd6: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
100007dda: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdf>
100007ddc: 48 ff c3                    	incq	%rbx
100007ddf: 4c 8b 65 b0                 	movq	-80(%rbp), %r12
100007de3: 49 8b 06                    	movq	(%r14), %rax
100007de6: 4c 89 f7                    	movq	%r14, %rdi
100007de9: 48 89 de                    	movq	%rbx, %rsi
100007dec: 4c 89 ea                    	movq	%r13, %rdx
100007def: ff 50 60                    	callq	*96(%rax)
100007df2: 48 89 c3                    	movq	%rax, %rbx
100007df5: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007df9: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x104>
100007dfb: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007dff: e8 3c 02 00 00              	callq	572 <dyld_stub_binder+0x100008040>
100007e04: 4c 39 eb                    	cmpq	%r13, %rbx
100007e07: 75 28                       	jne	40 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007e09: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
100007e0d: 49 29 f7                    	subq	%rsi, %r15
100007e10: 4d 85 ff                    	testq	%r15, %r15
100007e13: 7e 11                       	jle	17 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x126>
100007e15: 49 8b 06                    	movq	(%r14), %rax
100007e18: 4c 89 f7                    	movq	%r14, %rdi
100007e1b: 4c 89 fa                    	movq	%r15, %rdx
100007e1e: ff 50 60                    	callq	*96(%rax)
100007e21: 4c 39 f8                    	cmpq	%r15, %rax
100007e24: 75 0b                       	jne	11 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007e26: 49 c7 44 24 18 00 00 00 00  	movq	$0, 24(%r12)
100007e2f: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x134>
100007e31: 45 31 f6                    	xorl	%r14d, %r14d
100007e34: 4c 89 f0                    	movq	%r14, %rax
100007e37: 48 83 c4 38                 	addq	$56, %rsp
100007e3b: 5b                          	popq	%rbx
100007e3c: 41 5c                       	popq	%r12
100007e3e: 41 5d                       	popq	%r13
100007e40: 41 5e                       	popq	%r14
100007e42: 41 5f                       	popq	%r15
100007e44: 5d                          	popq	%rbp
100007e45: c3                          	retq
100007e46: 48 89 c3                    	movq	%rax, %rbx
100007e49: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007e4d: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x158>
100007e4f: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007e53: e8 e8 01 00 00              	callq	488 <dyld_stub_binder+0x100008040>
100007e58: 48 89 df                    	movq	%rbx, %rdi
100007e5b: e8 2c 01 00 00              	callq	300 <dyld_stub_binder+0x100007f8c>
100007e60: 0f 0b                       	ud2
100007e62: 90                          	nop
100007e63: 90                          	nop
100007e64: 90                          	nop
100007e65: 90                          	nop
100007e66: 90                          	nop
100007e67: 90                          	nop
100007e68: 90                          	nop
100007e69: 90                          	nop
100007e6a: 90                          	nop
100007e6b: 90                          	nop
100007e6c: 90                          	nop
100007e6d: 90                          	nop
100007e6e: 90                          	nop
100007e6f: 90                          	nop

0000000100007e70 ___cxx_global_var_init:
100007e70: 55                          	pushq	%rbp
100007e71: 48 89 e5                    	movq	%rsp, %rbp
100007e74: 48 8b 05 85 21 00 00        	movq	8581(%rip), %rax
100007e7b: 80 38 00                    	cmpb	$0, (%rax)
100007e7e: 74 02                       	je	2 <___cxx_global_var_init+0x12>
100007e80: 5d                          	popq	%rbp
100007e81: c3                          	retq
100007e82: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007e89: 5d                          	popq	%rbp
100007e8a: c3                          	retq
100007e8b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007e90 ___cxx_global_var_init.5:
100007e90: 55                          	pushq	%rbp
100007e91: 48 89 e5                    	movq	%rsp, %rbp
100007e94: 48 8b 05 85 21 00 00        	movq	8581(%rip), %rax
100007e9b: 80 38 00                    	cmpb	$0, (%rax)
100007e9e: 74 02                       	je	2 <___cxx_global_var_init.5+0x12>
100007ea0: 5d                          	popq	%rbp
100007ea1: c3                          	retq
100007ea2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007ea9: 5d                          	popq	%rbp
100007eaa: c3                          	retq
100007eab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007eb0 ___cxx_global_var_init.6:
100007eb0: 55                          	pushq	%rbp
100007eb1: 48 89 e5                    	movq	%rsp, %rbp
100007eb4: 48 8b 05 7d 21 00 00        	movq	8573(%rip), %rax
100007ebb: 80 38 00                    	cmpb	$0, (%rax)
100007ebe: 74 02                       	je	2 <___cxx_global_var_init.6+0x12>
100007ec0: 5d                          	popq	%rbp
100007ec1: c3                          	retq
100007ec2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007ec9: 5d                          	popq	%rbp
100007eca: c3                          	retq
100007ecb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007ed0 ___cxx_global_var_init.7:
100007ed0: 55                          	pushq	%rbp
100007ed1: 48 89 e5                    	movq	%rsp, %rbp
100007ed4: 48 8b 05 55 21 00 00        	movq	8533(%rip), %rax
100007edb: 80 38 00                    	cmpb	$0, (%rax)
100007ede: 74 02                       	je	2 <___cxx_global_var_init.7+0x12>
100007ee0: 5d                          	popq	%rbp
100007ee1: c3                          	retq
100007ee2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007ee9: 5d                          	popq	%rbp
100007eea: c3                          	retq
100007eeb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007ef0 ___cxx_global_var_init.8:
100007ef0: 55                          	pushq	%rbp
100007ef1: 48 89 e5                    	movq	%rsp, %rbp
100007ef4: 48 8b 05 2d 21 00 00        	movq	8493(%rip), %rax
100007efb: 80 38 00                    	cmpb	$0, (%rax)
100007efe: 74 02                       	je	2 <___cxx_global_var_init.8+0x12>
100007f00: 5d                          	popq	%rbp
100007f01: c3                          	retq
100007f02: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f09: 5d                          	popq	%rbp
100007f0a: c3                          	retq
100007f0b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f10 ___cxx_global_var_init.9:
100007f10: 55                          	pushq	%rbp
100007f11: 48 89 e5                    	movq	%rsp, %rbp
100007f14: 48 8b 05 ed 20 00 00        	movq	8429(%rip), %rax
100007f1b: 80 38 00                    	cmpb	$0, (%rax)
100007f1e: 74 02                       	je	2 <___cxx_global_var_init.9+0x12>
100007f20: 5d                          	popq	%rbp
100007f21: c3                          	retq
100007f22: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f29: 5d                          	popq	%rbp
100007f2a: c3                          	retq
100007f2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f30 ___cxx_global_var_init.10:
100007f30: 55                          	pushq	%rbp
100007f31: 48 89 e5                    	movq	%rsp, %rbp
100007f34: 48 8b 05 d5 20 00 00        	movq	8405(%rip), %rax
100007f3b: 80 38 00                    	cmpb	$0, (%rax)
100007f3e: 74 02                       	je	2 <___cxx_global_var_init.10+0x12>
100007f40: 5d                          	popq	%rbp
100007f41: c3                          	retq
100007f42: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f49: 5d                          	popq	%rbp
100007f4a: c3                          	retq
100007f4b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f50 ___cxx_global_var_init.11:
100007f50: 55                          	pushq	%rbp
100007f51: 48 89 e5                    	movq	%rsp, %rbp
100007f54: 48 8b 05 e5 20 00 00        	movq	8421(%rip), %rax
100007f5b: 80 38 00                    	cmpb	$0, (%rax)
100007f5e: 74 02                       	je	2 <___cxx_global_var_init.11+0x12>
100007f60: 5d                          	popq	%rbp
100007f61: c3                          	retq
100007f62: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f69: 5d                          	popq	%rbp
100007f6a: c3                          	retq
100007f6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f70 ___cxx_global_var_init.12:
100007f70: 55                          	pushq	%rbp
100007f71: 48 89 e5                    	movq	%rsp, %rbp
100007f74: 48 8b 05 9d 20 00 00        	movq	8349(%rip), %rax
100007f7b: 80 38 00                    	cmpb	$0, (%rax)
100007f7e: 74 02                       	je	2 <___cxx_global_var_init.12+0x12>
100007f80: 5d                          	popq	%rbp
100007f81: c3                          	retq
100007f82: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f89: 5d                          	popq	%rbp
100007f8a: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100007f8c __stubs:
100007f8c: ff 25 6e 30 00 00           	jmpq	*12398(%rip)
100007f92: ff 25 70 30 00 00           	jmpq	*12400(%rip)
100007f98: ff 25 72 30 00 00           	jmpq	*12402(%rip)
100007f9e: ff 25 74 30 00 00           	jmpq	*12404(%rip)
100007fa4: ff 25 76 30 00 00           	jmpq	*12406(%rip)
100007faa: ff 25 78 30 00 00           	jmpq	*12408(%rip)
100007fb0: ff 25 7a 30 00 00           	jmpq	*12410(%rip)
100007fb6: ff 25 7c 30 00 00           	jmpq	*12412(%rip)
100007fbc: ff 25 7e 30 00 00           	jmpq	*12414(%rip)
100007fc2: ff 25 80 30 00 00           	jmpq	*12416(%rip)
100007fc8: ff 25 82 30 00 00           	jmpq	*12418(%rip)
100007fce: ff 25 84 30 00 00           	jmpq	*12420(%rip)
100007fd4: ff 25 86 30 00 00           	jmpq	*12422(%rip)
100007fda: ff 25 88 30 00 00           	jmpq	*12424(%rip)
100007fe0: ff 25 8a 30 00 00           	jmpq	*12426(%rip)
100007fe6: ff 25 8c 30 00 00           	jmpq	*12428(%rip)
100007fec: ff 25 8e 30 00 00           	jmpq	*12430(%rip)
100007ff2: ff 25 90 30 00 00           	jmpq	*12432(%rip)
100007ff8: ff 25 92 30 00 00           	jmpq	*12434(%rip)
100007ffe: ff 25 94 30 00 00           	jmpq	*12436(%rip)
100008004: ff 25 96 30 00 00           	jmpq	*12438(%rip)
10000800a: ff 25 98 30 00 00           	jmpq	*12440(%rip)
100008010: ff 25 9a 30 00 00           	jmpq	*12442(%rip)
100008016: ff 25 9c 30 00 00           	jmpq	*12444(%rip)
10000801c: ff 25 9e 30 00 00           	jmpq	*12446(%rip)
100008022: ff 25 a0 30 00 00           	jmpq	*12448(%rip)
100008028: ff 25 a2 30 00 00           	jmpq	*12450(%rip)
10000802e: ff 25 a4 30 00 00           	jmpq	*12452(%rip)
100008034: ff 25 a6 30 00 00           	jmpq	*12454(%rip)
10000803a: ff 25 a8 30 00 00           	jmpq	*12456(%rip)
100008040: ff 25 aa 30 00 00           	jmpq	*12458(%rip)
100008046: ff 25 ac 30 00 00           	jmpq	*12460(%rip)
10000804c: ff 25 ae 30 00 00           	jmpq	*12462(%rip)
100008052: ff 25 b0 30 00 00           	jmpq	*12464(%rip)
100008058: ff 25 b2 30 00 00           	jmpq	*12466(%rip)
10000805e: ff 25 b4 30 00 00           	jmpq	*12468(%rip)
100008064: ff 25 b6 30 00 00           	jmpq	*12470(%rip)
10000806a: ff 25 b8 30 00 00           	jmpq	*12472(%rip)

Disassembly of section __TEXT,__stub_helper:

0000000100008070 __stub_helper:
100008070: 4c 8d 1d b9 30 00 00        	leaq	12473(%rip), %r11
100008077: 41 53                       	pushq	%r11
100008079: ff 25 e9 1f 00 00           	jmpq	*8169(%rip)
10000807f: 90                          	nop
100008080: 68 4e 01 00 00              	pushq	$334
100008085: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>
10000808a: 68 9c 02 00 00              	pushq	$668
10000808f: e9 dc ff ff ff              	jmp	-36 <__stub_helper>
100008094: 68 17 00 00 00              	pushq	$23
100008099: e9 d2 ff ff ff              	jmp	-46 <__stub_helper>
10000809e: 68 7a 00 00 00              	pushq	$122
1000080a3: e9 c8 ff ff ff              	jmp	-56 <__stub_helper>
1000080a8: 68 9b 00 00 00              	pushq	$155
1000080ad: e9 be ff ff ff              	jmp	-66 <__stub_helper>
1000080b2: 68 2e 03 00 00              	pushq	$814
1000080b7: e9 b4 ff ff ff              	jmp	-76 <__stub_helper>
1000080bc: 68 b9 01 00 00              	pushq	$441
1000080c1: e9 aa ff ff ff              	jmp	-86 <__stub_helper>
1000080c6: 68 07 02 00 00              	pushq	$519
1000080cb: e9 a0 ff ff ff              	jmp	-96 <__stub_helper>
1000080d0: 68 b4 02 00 00              	pushq	$692
1000080d5: e9 96 ff ff ff              	jmp	-106 <__stub_helper>
1000080da: 68 c4 00 00 00              	pushq	$196
1000080df: e9 8c ff ff ff              	jmp	-116 <__stub_helper>
1000080e4: 68 e5 00 00 00              	pushq	$229
1000080e9: e9 82 ff ff ff              	jmp	-126 <__stub_helper>
1000080ee: 68 05 01 00 00              	pushq	$261
1000080f3: e9 78 ff ff ff              	jmp	-136 <__stub_helper>
1000080f8: 68 27 01 00 00              	pushq	$295
1000080fd: e9 6e ff ff ff              	jmp	-146 <__stub_helper>
100008102: 68 f6 02 00 00              	pushq	$758
100008107: e9 64 ff ff ff              	jmp	-156 <__stub_helper>
10000810c: 68 11 03 00 00              	pushq	$785
100008111: e9 5a ff ff ff              	jmp	-166 <__stub_helper>
100008116: 68 57 03 00 00              	pushq	$855
10000811b: e9 50 ff ff ff              	jmp	-176 <__stub_helper>
100008120: 68 86 03 00 00              	pushq	$902
100008125: e9 46 ff ff ff              	jmp	-186 <__stub_helper>
10000812a: 68 ac 03 00 00              	pushq	$940
10000812f: e9 3c ff ff ff              	jmp	-196 <__stub_helper>
100008134: 68 00 04 00 00              	pushq	$1024
100008139: e9 32 ff ff ff              	jmp	-206 <__stub_helper>
10000813e: 68 55 04 00 00              	pushq	$1109
100008143: e9 28 ff ff ff              	jmp	-216 <__stub_helper>
100008148: 68 aa 04 00 00              	pushq	$1194
10000814d: e9 1e ff ff ff              	jmp	-226 <__stub_helper>
100008152: 68 f1 04 00 00              	pushq	$1265
100008157: e9 14 ff ff ff              	jmp	-236 <__stub_helper>
10000815c: 68 35 05 00 00              	pushq	$1333
100008161: e9 0a ff ff ff              	jmp	-246 <__stub_helper>
100008166: 68 63 05 00 00              	pushq	$1379
10000816b: e9 00 ff ff ff              	jmp	-256 <__stub_helper>
100008170: 68 81 05 00 00              	pushq	$1409
100008175: e9 f6 fe ff ff              	jmp	-266 <__stub_helper>
10000817a: 68 c2 05 00 00              	pushq	$1474
10000817f: e9 ec fe ff ff              	jmp	-276 <__stub_helper>
100008184: 68 e6 05 00 00              	pushq	$1510
100008189: e9 e2 fe ff ff              	jmp	-286 <__stub_helper>
10000818e: 68 05 06 00 00              	pushq	$1541
100008193: e9 d8 fe ff ff              	jmp	-296 <__stub_helper>
100008198: 68 24 06 00 00              	pushq	$1572
10000819d: e9 ce fe ff ff              	jmp	-306 <__stub_helper>
1000081a2: 68 3d 06 00 00              	pushq	$1597
1000081a7: e9 c4 fe ff ff              	jmp	-316 <__stub_helper>
1000081ac: 68 58 06 00 00              	pushq	$1624
1000081b1: e9 ba fe ff ff              	jmp	-326 <__stub_helper>
1000081b6: 68 00 00 00 00              	pushq	$0
1000081bb: e9 b0 fe ff ff              	jmp	-336 <__stub_helper>
1000081c0: 68 71 06 00 00              	pushq	$1649
1000081c5: e9 a6 fe ff ff              	jmp	-346 <__stub_helper>
1000081ca: 68 8b 06 00 00              	pushq	$1675
1000081cf: e9 9c fe ff ff              	jmp	-356 <__stub_helper>
1000081d4: 68 9b 06 00 00              	pushq	$1691
1000081d9: e9 92 fe ff ff              	jmp	-366 <__stub_helper>
