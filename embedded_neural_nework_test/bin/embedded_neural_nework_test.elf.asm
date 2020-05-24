
bin/embedded_neural_nework_test.elf:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100001fe0 __Z10dot_kernelPKaS0_j:
100001fe0: 55                          	pushq	%rbp
100001fe1: 48 89 e5                    	movq	%rsp, %rbp
100001fe4: 41 56                       	pushq	%r14
100001fe6: 53                          	pushq	%rbx
100001fe7: 31 c0                       	xorl	%eax, %eax
100001fe9: 83 fa 20                    	cmpl	$32, %edx
100001fec: 0f 82 9b 04 00 00           	jb	1179 <__Z10dot_kernelPKaS0_j+0x4ad>
100001ff2: 83 c2 e0                    	addl	$-32, %edx
100001ff5: 89 d0                       	movl	%edx, %eax
100001ff7: c1 e8 05                    	shrl	$5, %eax
100001ffa: 44 8d 48 01                 	leal	1(%rax), %r9d
100001ffe: 45 89 c8                    	movl	%r9d, %r8d
100002001: 41 83 e0 01                 	andl	$1, %r8d
100002005: 85 c0                       	testl	%eax, %eax
100002007: 0f 84 02 07 00 00           	je	1794 <__Z10dot_kernelPKaS0_j+0x72f>
10000200d: 45 29 c1                    	subl	%r8d, %r9d
100002010: 31 c9                       	xorl	%ecx, %ecx
100002012: 31 c0                       	xorl	%eax, %eax
100002014: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000201e: 66 90                       	nop
100002020: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100002027: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
10000202e: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100002034: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
10000203b: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
100002042: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100002047: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
10000204e: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100002053: c4 e2 7d 21 24 0e           	vpmovsxbd	(%rsi,%rcx), %ymm4
100002059: c4 e2 5d 40 d2              	vpmulld	%ymm2, %ymm4, %ymm2
10000205e: c4 e2 7d 21 64 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm4
100002065: c4 e2 5d 40 db              	vpmulld	%ymm3, %ymm4, %ymm3
10000206a: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
10000206e: c5 ed fe cb                 	vpaddd	%ymm3, %ymm2, %ymm1
100002072: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002076: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000207c: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002080: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002085: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002089: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000208e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002092: c4 c1 79 7e c2              	vmovd	%xmm0, %r10d
100002097: c4 e2 7d 21 44 0f 28        	vpmovsxbd	40(%rdi,%rcx), %ymm0
10000209e: c4 e2 7d 21 4c 0f 38        	vpmovsxbd	56(%rdi,%rcx), %ymm1
1000020a5: c4 e2 7d 21 54 0f 20        	vpmovsxbd	32(%rdi,%rcx), %ymm2
1000020ac: c4 e2 7d 21 5c 0f 30        	vpmovsxbd	48(%rdi,%rcx), %ymm3
1000020b3: c4 e2 7d 21 64 0e 28        	vpmovsxbd	40(%rsi,%rcx), %ymm4
1000020ba: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
1000020bf: c4 e2 7d 21 64 0e 38        	vpmovsxbd	56(%rsi,%rcx), %ymm4
1000020c6: 41 01 c2                    	addl	%eax, %r10d
1000020c9: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
1000020ce: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
1000020d2: c4 e2 7d 21 4c 0e 20        	vpmovsxbd	32(%rsi,%rcx), %ymm1
1000020d9: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
1000020de: c4 e2 7d 21 54 0e 30        	vpmovsxbd	48(%rsi,%rcx), %ymm2
1000020e5: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
1000020ea: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
1000020ee: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
1000020f2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000020f8: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000020fc: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002101: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002105: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000210a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000210e: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002112: 44 01 d0                    	addl	%r10d, %eax
100002115: 48 83 c1 40                 	addq	$64, %rcx
100002119: 41 83 c1 fe                 	addl	$-2, %r9d
10000211d: 0f 85 fd fe ff ff           	jne	-259 <__Z10dot_kernelPKaS0_j+0x40>
100002123: 41 89 d3                    	movl	%edx, %r11d
100002126: 41 83 e3 e0                 	andl	$-32, %r11d
10000212a: 45 85 c0                    	testl	%r8d, %r8d
10000212d: 74 78                       	je	120 <__Z10dot_kernelPKaS0_j+0x1c7>
10000212f: c4 e2 7d 21 44 0f 08        	vpmovsxbd	8(%rdi,%rcx), %ymm0
100002136: c4 e2 7d 21 4c 0f 18        	vpmovsxbd	24(%rdi,%rcx), %ymm1
10000213d: c4 e2 7d 21 14 0f           	vpmovsxbd	(%rdi,%rcx), %ymm2
100002143: c4 e2 7d 21 5c 0f 10        	vpmovsxbd	16(%rdi,%rcx), %ymm3
10000214a: c4 e2 7d 21 64 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm4
100002151: c4 e2 5d 40 c0              	vpmulld	%ymm0, %ymm4, %ymm0
100002156: c4 e2 7d 21 64 0e 18        	vpmovsxbd	24(%rsi,%rcx), %ymm4
10000215d: c4 e2 5d 40 c9              	vpmulld	%ymm1, %ymm4, %ymm1
100002162: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100002166: c4 e2 7d 21 0c 0e           	vpmovsxbd	(%rsi,%rcx), %ymm1
10000216c: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
100002171: c4 e2 7d 21 54 0e 10        	vpmovsxbd	16(%rsi,%rcx), %ymm2
100002178: c4 e2 6d 40 d3              	vpmulld	%ymm3, %ymm2, %ymm2
10000217d: c5 f5 fe ca                 	vpaddd	%ymm2, %ymm1, %ymm1
100002181: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002185: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000218b: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000218f: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002194: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002198: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000219d: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
1000021a1: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
1000021a5: 01 c8                       	addl	%ecx, %eax
1000021a7: 44 29 da                    	subl	%r11d, %edx
1000021aa: 41 83 c3 20                 	addl	$32, %r11d
1000021ae: 83 fa 10                    	cmpl	$16, %edx
1000021b1: 0f 83 e2 02 00 00           	jae	738 <__Z10dot_kernelPKaS0_j+0x4b9>
1000021b7: 45 89 d9                    	movl	%r11d, %r9d
1000021ba: 83 fa 08                    	cmpl	$8, %edx
1000021bd: 0f 83 65 04 00 00           	jae	1125 <__Z10dot_kernelPKaS0_j+0x648>
1000021c3: 45 89 c8                    	movl	%r9d, %r8d
1000021c6: 85 d2                       	testl	%edx, %edx
1000021c8: 0f 84 39 05 00 00           	je	1337 <__Z10dot_kernelPKaS0_j+0x727>
1000021ce: 83 fa 1f                    	cmpl	$31, %edx
1000021d1: 0f 86 ba 01 00 00           	jbe	442 <__Z10dot_kernelPKaS0_j+0x3b1>
1000021d7: 8d 4a ff                    	leal	-1(%rdx), %ecx
1000021da: 44 89 c3                    	movl	%r8d, %ebx
1000021dd: f7 d3                       	notl	%ebx
1000021df: 39 d9                       	cmpl	%ebx, %ecx
1000021e1: 0f 87 aa 01 00 00           	ja	426 <__Z10dot_kernelPKaS0_j+0x3b1>
1000021e7: 41 89 d1                    	movl	%edx, %r9d
1000021ea: 41 83 e1 e0                 	andl	$-32, %r9d
1000021ee: c5 79 6e c0                 	vmovd	%eax, %xmm8
1000021f2: 41 8d 41 e0                 	leal	-32(%r9), %eax
1000021f6: 89 c1                       	movl	%eax, %ecx
1000021f8: c1 e9 05                    	shrl	$5, %ecx
1000021fb: ff c1                       	incl	%ecx
1000021fd: 41 89 ca                    	movl	%ecx, %r10d
100002200: 41 83 e2 01                 	andl	$1, %r10d
100002204: 85 c0                       	testl	%eax, %eax
100002206: 0f 84 1c 05 00 00           	je	1308 <__Z10dot_kernelPKaS0_j+0x748>
10000220c: 44 29 d1                    	subl	%r10d, %ecx
10000220f: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100002213: 45 31 db                    	xorl	%r11d, %r11d
100002216: 44 89 c0                    	movl	%r8d, %eax
100002219: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
10000221d: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
100002222: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000222c: 0f 1f 40 00                 	nopl	(%rax)
100002230: 89 c3                       	movl	%eax, %ebx
100002232: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
100002238: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
10000223f: c4 e2 79 20 74 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm6
100002246: c4 e2 79 20 7c 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm7
10000224d: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
100002253: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
100002257: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
10000225e: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
100002262: c4 e2 79 20 6c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm5
100002269: c5 d1 f5 ee                 	vpmaddwd	%xmm6, %xmm5, %xmm5
10000226d: c4 e2 79 20 74 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm6
100002274: c5 c9 f5 f7                 	vpmaddwd	%xmm7, %xmm6, %xmm6
100002278: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
10000227d: c5 5d fe d1                 	vpaddd	%ymm1, %ymm4, %ymm10
100002281: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
100002285: 8d 58 20                    	leal	32(%rax), %ebx
100002288: c4 e2 79 20 24 1f           	vpmovsxbw	(%rdi,%rbx), %xmm4
10000228e: c4 e2 79 20 6c 1f 08        	vpmovsxbw	8(%rdi,%rbx), %xmm5
100002295: c4 e2 79 20 7c 1f 10        	vpmovsxbw	16(%rdi,%rbx), %xmm7
10000229c: c4 e2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%rbx), %xmm2
1000022a3: c4 e2 79 20 04 1e           	vpmovsxbw	(%rsi,%rbx), %xmm0
1000022a9: c4 c1 4d fe f1              	vpaddd	%ymm9, %ymm6, %ymm6
1000022ae: c5 f9 f5 c4                 	vpmaddwd	%xmm4, %xmm0, %xmm0
1000022b2: c4 e2 79 20 64 1e 08        	vpmovsxbw	8(%rsi,%rbx), %xmm4
1000022b9: c4 e2 79 20 4c 1e 10        	vpmovsxbw	16(%rsi,%rbx), %xmm1
1000022c0: c5 d9 f5 e5                 	vpmaddwd	%xmm5, %xmm4, %xmm4
1000022c4: c5 f1 f5 ef                 	vpmaddwd	%xmm7, %xmm1, %xmm5
1000022c8: c4 e2 79 20 4c 1e 18        	vpmovsxbw	24(%rsi,%rbx), %xmm1
1000022cf: c5 f1 f5 d2                 	vpmaddwd	%xmm2, %xmm1, %xmm2
1000022d3: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
1000022d8: c4 c1 5d fe ca              	vpaddd	%ymm10, %ymm4, %ymm1
1000022dd: c5 d5 fe db                 	vpaddd	%ymm3, %ymm5, %ymm3
1000022e1: c5 6d fe ce                 	vpaddd	%ymm6, %ymm2, %ymm9
1000022e5: 41 83 c3 40                 	addl	$64, %r11d
1000022e9: 83 c0 40                    	addl	$64, %eax
1000022ec: 83 c1 fe                    	addl	$-2, %ecx
1000022ef: 0f 85 3b ff ff ff           	jne	-197 <__Z10dot_kernelPKaS0_j+0x250>
1000022f5: 45 85 d2                    	testl	%r10d, %r10d
1000022f8: 74 5b                       	je	91 <__Z10dot_kernelPKaS0_j+0x375>
1000022fa: 45 01 c3                    	addl	%r8d, %r11d
1000022fd: c4 a2 79 20 44 1e 18        	vpmovsxbw	24(%rsi,%r11), %xmm0
100002304: c4 a2 79 20 54 1f 18        	vpmovsxbw	24(%rdi,%r11), %xmm2
10000230b: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
10000230f: c4 41 7d fe c9              	vpaddd	%ymm9, %ymm0, %ymm9
100002314: c4 a2 79 20 44 1e 10        	vpmovsxbw	16(%rsi,%r11), %xmm0
10000231b: c4 a2 79 20 54 1f 10        	vpmovsxbw	16(%rdi,%r11), %xmm2
100002322: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
100002326: c5 fd fe db                 	vpaddd	%ymm3, %ymm0, %ymm3
10000232a: c4 a2 79 20 44 1e 08        	vpmovsxbw	8(%rsi,%r11), %xmm0
100002331: c4 a2 79 20 54 1f 08        	vpmovsxbw	8(%rdi,%r11), %xmm2
100002338: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
10000233c: c5 fd fe c9                 	vpaddd	%ymm1, %ymm0, %ymm1
100002340: c4 a2 79 20 04 1e           	vpmovsxbw	(%rsi,%r11), %xmm0
100002346: c4 a2 79 20 14 1f           	vpmovsxbw	(%rdi,%r11), %xmm2
10000234c: c5 f9 f5 c2                 	vpmaddwd	%xmm2, %xmm0, %xmm0
100002350: c4 41 7d fe c0              	vpaddd	%ymm8, %ymm0, %ymm8
100002355: c4 c1 75 fe c1              	vpaddd	%ymm9, %ymm1, %ymm0
10000235a: c5 bd fe cb                 	vpaddd	%ymm3, %ymm8, %ymm1
10000235e: c5 f5 fe c0                 	vpaddd	%ymm0, %ymm1, %ymm0
100002362: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002368: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000236c: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002371: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002375: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
10000237a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000237e: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002382: 44 39 ca                    	cmpl	%r9d, %edx
100002385: 0f 84 7c 03 00 00           	je	892 <__Z10dot_kernelPKaS0_j+0x727>
10000238b: 45 01 c8                    	addl	%r9d, %r8d
10000238e: 44 29 ca                    	subl	%r9d, %edx
100002391: 44 8d 4a ff                 	leal	-1(%rdx), %r9d
100002395: 41 89 d2                    	movl	%edx, %r10d
100002398: 41 83 e2 07                 	andl	$7, %r10d
10000239c: 74 21                       	je	33 <__Z10dot_kernelPKaS0_j+0x3df>
10000239e: 31 c9                       	xorl	%ecx, %ecx
1000023a0: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000023a4: 44 0f be 1c 1f              	movsbl	(%rdi,%rbx), %r11d
1000023a9: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000023ad: 41 0f af db                 	imull	%r11d, %ebx
1000023b1: 01 d8                       	addl	%ebx, %eax
1000023b3: ff c1                       	incl	%ecx
1000023b5: 41 39 ca                    	cmpl	%ecx, %r10d
1000023b8: 75 e6                       	jne	-26 <__Z10dot_kernelPKaS0_j+0x3c0>
1000023ba: 41 01 c8                    	addl	%ecx, %r8d
1000023bd: 29 ca                       	subl	%ecx, %edx
1000023bf: 41 83 f9 07                 	cmpl	$7, %r9d
1000023c3: 0f 82 3e 03 00 00           	jb	830 <__Z10dot_kernelPKaS0_j+0x727>
1000023c9: 31 c9                       	xorl	%ecx, %ecx
1000023cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000023d0: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000023d4: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
1000023d9: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000023dd: 41 0f af d9                 	imull	%r9d, %ebx
1000023e1: 01 c3                       	addl	%eax, %ebx
1000023e3: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
1000023e7: 83 c0 01                    	addl	$1, %eax
1000023ea: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
1000023ef: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000023f3: 41 0f af c1                 	imull	%r9d, %eax
1000023f7: 01 d8                       	addl	%ebx, %eax
1000023f9: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
1000023fd: 83 c3 02                    	addl	$2, %ebx
100002400: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002405: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002409: 41 0f af d9                 	imull	%r9d, %ebx
10000240d: 01 c3                       	addl	%eax, %ebx
10000240f: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
100002413: 83 c0 03                    	addl	$3, %eax
100002416: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
10000241b: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000241f: 41 0f af c1                 	imull	%r9d, %eax
100002423: 01 d8                       	addl	%ebx, %eax
100002425: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002429: 83 c3 04                    	addl	$4, %ebx
10000242c: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
100002431: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002435: 41 0f af d9                 	imull	%r9d, %ebx
100002439: 01 c3                       	addl	%eax, %ebx
10000243b: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
10000243f: 83 c0 05                    	addl	$5, %eax
100002442: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
100002447: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000244b: 41 0f af c1                 	imull	%r9d, %eax
10000244f: 01 d8                       	addl	%ebx, %eax
100002451: 41 8d 1c 08                 	leal	(%r8,%rcx), %ebx
100002455: 83 c3 06                    	addl	$6, %ebx
100002458: 44 0f be 0c 1f              	movsbl	(%rdi,%rbx), %r9d
10000245d: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002461: 41 0f af d9                 	imull	%r9d, %ebx
100002465: 01 c3                       	addl	%eax, %ebx
100002467: 41 8d 04 08                 	leal	(%r8,%rcx), %eax
10000246b: 83 c0 07                    	addl	$7, %eax
10000246e: 44 0f be 0c 07              	movsbl	(%rdi,%rax), %r9d
100002473: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002477: 41 0f af c1                 	imull	%r9d, %eax
10000247b: 01 d8                       	addl	%ebx, %eax
10000247d: 83 c1 08                    	addl	$8, %ecx
100002480: 39 ca                       	cmpl	%ecx, %edx
100002482: 0f 85 48 ff ff ff           	jne	-184 <__Z10dot_kernelPKaS0_j+0x3f0>
100002488: e9 7a 02 00 00              	jmp	634 <__Z10dot_kernelPKaS0_j+0x727>
10000248d: 45 31 db                    	xorl	%r11d, %r11d
100002490: 83 fa 10                    	cmpl	$16, %edx
100002493: 0f 82 1e fd ff ff           	jb	-738 <__Z10dot_kernelPKaS0_j+0x1d7>
100002499: 44 8d 42 f0                 	leal	-16(%rdx), %r8d
10000249d: 45 89 c2                    	movl	%r8d, %r10d
1000024a0: 41 83 e2 f0                 	andl	$-16, %r10d
1000024a4: 47 8d 0c 13                 	leal	(%r11,%r10), %r9d
1000024a8: 41 83 c1 10                 	addl	$16, %r9d
1000024ac: 0f 1f 40 00                 	nopl	(%rax)
1000024b0: 44 89 d9                    	movl	%r11d, %ecx
1000024b3: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000024b8: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
1000024bc: 41 0f af de                 	imull	%r14d, %ebx
1000024c0: 01 c3                       	addl	%eax, %ebx
1000024c2: 48 89 c8                    	movq	%rcx, %rax
1000024c5: 48 83 c8 01                 	orq	$1, %rax
1000024c9: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000024ce: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000024d2: 41 0f af c6                 	imull	%r14d, %eax
1000024d6: 01 d8                       	addl	%ebx, %eax
1000024d8: 48 89 cb                    	movq	%rcx, %rbx
1000024db: 48 83 cb 02                 	orq	$2, %rbx
1000024df: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000024e4: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000024e8: 41 0f af de                 	imull	%r14d, %ebx
1000024ec: 01 c3                       	addl	%eax, %ebx
1000024ee: 48 89 c8                    	movq	%rcx, %rax
1000024f1: 48 83 c8 03                 	orq	$3, %rax
1000024f5: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000024fa: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000024fe: 41 0f af c6                 	imull	%r14d, %eax
100002502: 01 d8                       	addl	%ebx, %eax
100002504: 48 89 cb                    	movq	%rcx, %rbx
100002507: 48 83 cb 04                 	orq	$4, %rbx
10000250b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002510: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002514: 41 0f af de                 	imull	%r14d, %ebx
100002518: 01 c3                       	addl	%eax, %ebx
10000251a: 48 89 c8                    	movq	%rcx, %rax
10000251d: 48 83 c8 05                 	orq	$5, %rax
100002521: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002526: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000252a: 41 0f af c6                 	imull	%r14d, %eax
10000252e: 01 d8                       	addl	%ebx, %eax
100002530: 48 89 cb                    	movq	%rcx, %rbx
100002533: 48 83 cb 06                 	orq	$6, %rbx
100002537: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
10000253c: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002540: 41 0f af de                 	imull	%r14d, %ebx
100002544: 01 c3                       	addl	%eax, %ebx
100002546: 48 89 c8                    	movq	%rcx, %rax
100002549: 48 83 c8 07                 	orq	$7, %rax
10000254d: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
100002552: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002556: 41 0f af c6                 	imull	%r14d, %eax
10000255a: 01 d8                       	addl	%ebx, %eax
10000255c: 48 89 cb                    	movq	%rcx, %rbx
10000255f: 48 83 cb 08                 	orq	$8, %rbx
100002563: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002568: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
10000256c: 41 0f af de                 	imull	%r14d, %ebx
100002570: 01 c3                       	addl	%eax, %ebx
100002572: 48 89 c8                    	movq	%rcx, %rax
100002575: 48 83 c8 09                 	orq	$9, %rax
100002579: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000257e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002582: 41 0f af c6                 	imull	%r14d, %eax
100002586: 01 d8                       	addl	%ebx, %eax
100002588: 48 89 cb                    	movq	%rcx, %rbx
10000258b: 48 83 cb 0a                 	orq	$10, %rbx
10000258f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002594: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002598: 41 0f af de                 	imull	%r14d, %ebx
10000259c: 01 c3                       	addl	%eax, %ebx
10000259e: 48 89 c8                    	movq	%rcx, %rax
1000025a1: 48 83 c8 0b                 	orq	$11, %rax
1000025a5: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000025aa: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000025ae: 41 0f af c6                 	imull	%r14d, %eax
1000025b2: 01 d8                       	addl	%ebx, %eax
1000025b4: 48 89 cb                    	movq	%rcx, %rbx
1000025b7: 48 83 cb 0c                 	orq	$12, %rbx
1000025bb: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000025c0: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000025c4: 41 0f af de                 	imull	%r14d, %ebx
1000025c8: 01 c3                       	addl	%eax, %ebx
1000025ca: 48 89 c8                    	movq	%rcx, %rax
1000025cd: 48 83 c8 0d                 	orq	$13, %rax
1000025d1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000025d6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000025da: 41 0f af c6                 	imull	%r14d, %eax
1000025de: 01 d8                       	addl	%ebx, %eax
1000025e0: 48 89 cb                    	movq	%rcx, %rbx
1000025e3: 48 83 cb 0e                 	orq	$14, %rbx
1000025e7: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000025ec: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000025f0: 41 0f af de                 	imull	%r14d, %ebx
1000025f4: 01 c3                       	addl	%eax, %ebx
1000025f6: 48 83 c9 0f                 	orq	$15, %rcx
1000025fa: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000025ff: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
100002603: 41 0f af c6                 	imull	%r14d, %eax
100002607: 01 d8                       	addl	%ebx, %eax
100002609: 41 83 c3 10                 	addl	$16, %r11d
10000260d: 83 c2 f0                    	addl	$-16, %edx
100002610: 83 fa 0f                    	cmpl	$15, %edx
100002613: 0f 87 97 fe ff ff           	ja	-361 <__Z10dot_kernelPKaS0_j+0x4d0>
100002619: 45 29 d0                    	subl	%r10d, %r8d
10000261c: 44 89 c2                    	movl	%r8d, %edx
10000261f: 83 fa 08                    	cmpl	$8, %edx
100002622: 0f 82 9b fb ff ff           	jb	-1125 <__Z10dot_kernelPKaS0_j+0x1e3>
100002628: 44 8d 52 f8                 	leal	-8(%rdx), %r10d
10000262c: 45 89 d3                    	movl	%r10d, %r11d
10000262f: 41 83 e3 f8                 	andl	$-8, %r11d
100002633: 47 8d 04 19                 	leal	(%r9,%r11), %r8d
100002637: 41 83 c0 08                 	addl	$8, %r8d
10000263b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002640: 44 89 c9                    	movl	%r9d, %ecx
100002643: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
100002648: 0f be 1c 0e                 	movsbl	(%rsi,%rcx), %ebx
10000264c: 41 0f af de                 	imull	%r14d, %ebx
100002650: 01 c3                       	addl	%eax, %ebx
100002652: 48 89 c8                    	movq	%rcx, %rax
100002655: 48 83 c8 01                 	orq	$1, %rax
100002659: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000265e: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
100002662: 41 0f af c6                 	imull	%r14d, %eax
100002666: 01 d8                       	addl	%ebx, %eax
100002668: 48 89 cb                    	movq	%rcx, %rbx
10000266b: 48 83 cb 02                 	orq	$2, %rbx
10000266f: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
100002674: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
100002678: 41 0f af de                 	imull	%r14d, %ebx
10000267c: 01 c3                       	addl	%eax, %ebx
10000267e: 48 89 c8                    	movq	%rcx, %rax
100002681: 48 83 c8 03                 	orq	$3, %rax
100002685: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
10000268a: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
10000268e: 41 0f af c6                 	imull	%r14d, %eax
100002692: 01 d8                       	addl	%ebx, %eax
100002694: 48 89 cb                    	movq	%rcx, %rbx
100002697: 48 83 cb 04                 	orq	$4, %rbx
10000269b: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000026a0: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000026a4: 41 0f af de                 	imull	%r14d, %ebx
1000026a8: 01 c3                       	addl	%eax, %ebx
1000026aa: 48 89 c8                    	movq	%rcx, %rax
1000026ad: 48 83 c8 05                 	orq	$5, %rax
1000026b1: 44 0f be 34 07              	movsbl	(%rdi,%rax), %r14d
1000026b6: 0f be 04 06                 	movsbl	(%rsi,%rax), %eax
1000026ba: 41 0f af c6                 	imull	%r14d, %eax
1000026be: 01 d8                       	addl	%ebx, %eax
1000026c0: 48 89 cb                    	movq	%rcx, %rbx
1000026c3: 48 83 cb 06                 	orq	$6, %rbx
1000026c7: 44 0f be 34 1f              	movsbl	(%rdi,%rbx), %r14d
1000026cc: 0f be 1c 1e                 	movsbl	(%rsi,%rbx), %ebx
1000026d0: 41 0f af de                 	imull	%r14d, %ebx
1000026d4: 01 c3                       	addl	%eax, %ebx
1000026d6: 48 83 c9 07                 	orq	$7, %rcx
1000026da: 44 0f be 34 0f              	movsbl	(%rdi,%rcx), %r14d
1000026df: 0f be 04 0e                 	movsbl	(%rsi,%rcx), %eax
1000026e3: 41 0f af c6                 	imull	%r14d, %eax
1000026e7: 01 d8                       	addl	%ebx, %eax
1000026e9: 41 83 c1 08                 	addl	$8, %r9d
1000026ed: 83 c2 f8                    	addl	$-8, %edx
1000026f0: 83 fa 07                    	cmpl	$7, %edx
1000026f3: 0f 87 47 ff ff ff           	ja	-185 <__Z10dot_kernelPKaS0_j+0x660>
1000026f9: 45 29 da                    	subl	%r11d, %r10d
1000026fc: 44 89 d2                    	movl	%r10d, %edx
1000026ff: 85 d2                       	testl	%edx, %edx
100002701: 0f 85 c7 fa ff ff           	jne	-1337 <__Z10dot_kernelPKaS0_j+0x1ee>
100002707: 5b                          	popq	%rbx
100002708: 41 5e                       	popq	%r14
10000270a: 5d                          	popq	%rbp
10000270b: c5 f8 77                    	vzeroupper
10000270e: c3                          	retq
10000270f: 31 c9                       	xorl	%ecx, %ecx
100002711: 31 c0                       	xorl	%eax, %eax
100002713: 41 89 d3                    	movl	%edx, %r11d
100002716: 41 83 e3 e0                 	andl	$-32, %r11d
10000271a: 45 85 c0                    	testl	%r8d, %r8d
10000271d: 0f 85 0c fa ff ff           	jne	-1524 <__Z10dot_kernelPKaS0_j+0x14f>
100002723: e9 7f fa ff ff              	jmp	-1409 <__Z10dot_kernelPKaS0_j+0x1c7>
100002728: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
10000272c: 45 31 db                    	xorl	%r11d, %r11d
10000272f: c5 e1 ef db                 	vpxor	%xmm3, %xmm3, %xmm3
100002733: c4 41 31 ef c9              	vpxor	%xmm9, %xmm9, %xmm9
100002738: 45 85 d2                    	testl	%r10d, %r10d
10000273b: 0f 85 b9 fb ff ff           	jne	-1095 <__Z10dot_kernelPKaS0_j+0x31a>
100002741: e9 0f fc ff ff              	jmp	-1009 <__Z10dot_kernelPKaS0_j+0x375>
100002746: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100002750 __Z6LinearPaS_PKaS1_ajj:
100002750: 55                          	pushq	%rbp
100002751: 48 89 e5                    	movq	%rsp, %rbp
100002754: 41 57                       	pushq	%r15
100002756: 41 56                       	pushq	%r14
100002758: 41 55                       	pushq	%r13
10000275a: 41 54                       	pushq	%r12
10000275c: 53                          	pushq	%rbx
10000275d: 48 83 ec 28                 	subq	$40, %rsp
100002761: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002765: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100002769: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000276d: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100002771: 8b 45 10                    	movl	16(%rbp), %eax
100002774: 85 c0                       	testl	%eax, %eax
100002776: 74 71                       	je	113 <__Z6LinearPaS_PKaS1_ajj+0x99>
100002778: 44 89 cb                    	movl	%r9d, %ebx
10000277b: 45 0f be f0                 	movsbl	%r8b, %r14d
10000277f: 41 89 c7                    	movl	%eax, %r15d
100002782: 45 31 e4                    	xorl	%r12d, %r12d
100002785: 45 31 ed                    	xorl	%r13d, %r13d
100002788: eb 19                       	jmp	25 <__Z6LinearPaS_PKaS1_ajj+0x53>
10000278a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100002790: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100002794: 42 88 04 29                 	movb	%al, (%rcx,%r13)
100002798: 49 ff c5                    	incq	%r13
10000279b: 41 01 dc                    	addl	%ebx, %r12d
10000279e: 4d 39 ef                    	cmpq	%r13, %r15
1000027a1: 74 46                       	je	70 <__Z6LinearPaS_PKaS1_ajj+0x99>
1000027a3: 44 89 e6                    	movl	%r12d, %esi
1000027a6: 48 03 75 b8                 	addq	-72(%rbp), %rsi
1000027aa: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000027ae: 89 da                       	movl	%ebx, %edx
1000027b0: e8 2b f8 ff ff              	callq	-2005 <__Z10dot_kernelPKaS0_j>
1000027b5: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000027b9: 42 0f be 0c 29              	movsbl	(%rcx,%r13), %ecx
1000027be: 01 c1                       	addl	%eax, %ecx
1000027c0: 41 0f af ce                 	imull	%r14d, %ecx
1000027c4: 89 c8                       	movl	%ecx, %eax
1000027c6: c1 f8 1f                    	sarl	$31, %eax
1000027c9: c1 e8 12                    	shrl	$18, %eax
1000027cc: 01 c8                       	addl	%ecx, %eax
1000027ce: c1 f8 0e                    	sarl	$14, %eax
1000027d1: 3d 80 00 00 00              	cmpl	$128, %eax
1000027d6: 7c 05                       	jl	5 <__Z6LinearPaS_PKaS1_ajj+0x8d>
1000027d8: b8 7f 00 00 00              	movl	$127, %eax
1000027dd: 83 f8 81                    	cmpl	$-127, %eax
1000027e0: 7f ae                       	jg	-82 <__Z6LinearPaS_PKaS1_ajj+0x40>
1000027e2: b8 81 00 00 00              	movl	$129, %eax
1000027e7: eb a7                       	jmp	-89 <__Z6LinearPaS_PKaS1_ajj+0x40>
1000027e9: 48 83 c4 28                 	addq	$40, %rsp
1000027ed: 5b                          	popq	%rbx
1000027ee: 41 5c                       	popq	%r12
1000027f0: 41 5d                       	popq	%r13
1000027f2: 41 5e                       	popq	%r14
1000027f4: 41 5f                       	popq	%r15
1000027f6: 5d                          	popq	%rbp
1000027f7: c3                          	retq
1000027f8: 90                          	nop
1000027f9: 90                          	nop
1000027fa: 90                          	nop
1000027fb: 90                          	nop
1000027fc: 90                          	nop
1000027fd: 90                          	nop
1000027fe: 90                          	nop
1000027ff: 90                          	nop

0000000100002800 __Z6Conv2dPaS_PKaS1_ijjjjjj:
100002800: 55                          	pushq	%rbp
100002801: 48 89 e5                    	movq	%rsp, %rbp
100002804: 41 57                       	pushq	%r15
100002806: 41 56                       	pushq	%r14
100002808: 41 55                       	pushq	%r13
10000280a: 41 54                       	pushq	%r12
10000280c: 53                          	pushq	%rbx
10000280d: 48 83 ec 68                 	subq	$104, %rsp
100002811: 44 89 4d d4                 	movl	%r9d, -44(%rbp)
100002815: 44 89 45 d0                 	movl	%r8d, -48(%rbp)
100002819: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
10000281d: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
100002821: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
100002825: 48 89 7d a8                 	movq	%rdi, -88(%rbp)
100002829: 8b 4d 28                    	movl	40(%rbp), %ecx
10000282c: 8b 5d 18                    	movl	24(%rbp), %ebx
10000282f: 8b 45 10                    	movl	16(%rbp), %eax
100002832: 83 f9 03                    	cmpl	$3, %ecx
100002835: 0f 84 24 01 00 00           	je	292 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x15f>
10000283b: 48 89 5d c8                 	movq	%rbx, -56(%rbp)
10000283f: 83 f9 01                    	cmpl	$1, %ecx
100002842: 0f 85 f3 09 00 00           	jne	2547 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002848: 8d 48 ff                    	leal	-1(%rax), %ecx
10000284b: 8b 55 d4                    	movl	-44(%rbp), %edx
10000284e: 48 89 55 80                 	movq	%rdx, -128(%rbp)
100002852: 83 f9 1f                    	cmpl	$31, %ecx
100002855: 0f 87 4f 01 00 00           	ja	335 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x1aa>
10000285b: 48 8d 05 6e 0a 00 00        	leaq	2670(%rip), %rax
100002862: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002866: 48 01 c1                    	addq	%rax, %rcx
100002869: ff e1                       	jmpq	*%rcx
10000286b: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
10000286f: 0f 84 c6 09 00 00           	je	2502 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002875: 8b 45 30                    	movl	48(%rbp), %eax
100002878: 89 c1                       	movl	%eax, %ecx
10000287a: d1 e9                       	shrl	%ecx
10000287c: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002880: 89 4d 90                    	movl	%ecx, -112(%rbp)
100002883: 29 c8                       	subl	%ecx, %eax
100002885: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002889: 0f 84 ac 09 00 00           	je	2476 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
10000288f: 8b 45 20                    	movl	32(%rbp), %eax
100002892: 41 89 c7                    	movl	%eax, %r15d
100002895: 44 2b 7d 90                 	subl	-112(%rbp), %r15d
100002899: 0f 84 d9 08 00 00           	je	2265 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x978>
10000289f: 31 d2                       	xorl	%edx, %edx
1000028a1: 8b 4d 30                    	movl	48(%rbp), %ecx
1000028a4: f7 f1                       	divl	%ecx
1000028a6: 89 45 c4                    	movl	%eax, -60(%rbp)
1000028a9: 31 f6                       	xorl	%esi, %esi
1000028ab: 41 bb 7f 00 00 00           	movl	$127, %r11d
1000028b1: 41 be 81 00 00 00           	movl	$129, %r14d
1000028b7: 44 8b 45 d4                 	movl	-44(%rbp), %r8d
1000028bb: 44 8b 65 d0                 	movl	-48(%rbp), %r12d
1000028bf: 4c 8b 4d a0                 	movq	-96(%rbp), %r9
1000028c3: 4c 8b 55 a8                 	movq	-88(%rbp), %r10
1000028c7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000028d0: 31 c0                       	xorl	%eax, %eax
1000028d2: 44 8b 6d 30                 	movl	48(%rbp), %r13d
1000028d6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000028e0: 89 45 b0                    	movl	%eax, -80(%rbp)
1000028e3: 31 d2                       	xorl	%edx, %edx
1000028e5: 41 f7 f5                    	divl	%r13d
1000028e8: 89 c7                       	movl	%eax, %edi
1000028ea: 8b 45 90                    	movl	-112(%rbp), %eax
1000028ed: 29 c7                       	subl	%eax, %edi
1000028ef: 0f af 7d c4                 	imull	-60(%rbp), %edi
1000028f3: 29 c7                       	subl	%eax, %edi
1000028f5: 31 db                       	xorl	%ebx, %ebx
1000028f7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002900: 41 0f be 04 31              	movsbl	(%r9,%rsi), %eax
100002905: 41 0f af c4                 	imull	%r12d, %eax
100002909: 89 c1                       	movl	%eax, %ecx
10000290b: c1 f9 1f                    	sarl	$31, %ecx
10000290e: c1 e9 12                    	shrl	$18, %ecx
100002911: 01 c1                       	addl	%eax, %ecx
100002913: c1 f9 0e                    	sarl	$14, %ecx
100002916: 81 f9 80 00 00 00           	cmpl	$128, %ecx
10000291c: 41 0f 4d cb                 	cmovgel	%r11d, %ecx
100002920: 89 d8                       	movl	%ebx, %eax
100002922: 31 d2                       	xorl	%edx, %edx
100002924: 41 f7 f5                    	divl	%r13d
100002927: 01 f8                       	addl	%edi, %eax
100002929: 41 0f af c0                 	imull	%r8d, %eax
10000292d: 01 f0                       	addl	%esi, %eax
10000292f: 83 f9 81                    	cmpl	$-127, %ecx
100002932: 41 0f 4e ce                 	cmovlel	%r14d, %ecx
100002936: 41 88 0c 02                 	movb	%cl, (%r10,%rax)
10000293a: 44 01 eb                    	addl	%r13d, %ebx
10000293d: 44 39 fb                    	cmpl	%r15d, %ebx
100002940: 72 be                       	jb	-66 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x100>
100002942: 8b 45 b0                    	movl	-80(%rbp), %eax
100002945: 44 01 e8                    	addl	%r13d, %eax
100002948: 3b 45 c8                    	cmpl	-56(%rbp), %eax
10000294b: 72 93                       	jb	-109 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xe0>
10000294d: 48 ff c6                    	incq	%rsi
100002950: 48 3b 75 80                 	cmpq	-128(%rbp), %rsi
100002954: 0f 85 76 ff ff ff           	jne	-138 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xd0>
10000295a: e9 dc 08 00 00              	jmp	2268 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
10000295f: 8d 48 ff                    	leal	-1(%rax), %ecx
100002962: 83 f9 1f                    	cmpl	$31, %ecx
100002965: 0f 87 c0 01 00 00           	ja	448 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x32b>
10000296b: 48 8d 05 de 08 00 00        	leaq	2270(%rip), %rax
100002972: 48 63 0c 88                 	movslq	(%rax,%rcx,4), %rcx
100002976: 48 01 c1                    	addq	%rax, %rcx
100002979: ff e1                       	jmpq	*%rcx
10000297b: 48 83 ec 08                 	subq	$8, %rsp
10000297f: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002983: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002987: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000298b: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
10000298f: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002993: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002997: 8b 45 30                    	movl	48(%rbp), %eax
10000299a: 50                          	pushq	%rax
10000299b: 8b 45 20                    	movl	32(%rbp), %eax
10000299e: 50                          	pushq	%rax
10000299f: 53                          	pushq	%rbx
1000029a0: e8 8b 0b 00 00              	callq	2955 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj>
1000029a5: e9 c2 07 00 00              	jmp	1986 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
1000029aa: 83 f8 40                    	cmpl	$64, %eax
1000029ad: 0f 85 88 08 00 00           	jne	2184 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
1000029b3: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000029b7: 0f 84 7e 08 00 00           	je	2174 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
1000029bd: 8b 45 30                    	movl	48(%rbp), %eax
1000029c0: 89 c1                       	movl	%eax, %ecx
1000029c2: d1 e9                       	shrl	%ecx
1000029c4: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000029c8: 89 4d c4                    	movl	%ecx, -60(%rbp)
1000029cb: 29 c8                       	subl	%ecx, %eax
1000029cd: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000029d1: 0f 84 64 08 00 00           	je	2148 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
1000029d7: 8b 45 20                    	movl	32(%rbp), %eax
1000029da: 48 89 c1                    	movq	%rax, %rcx
1000029dd: 41 89 cb                    	movl	%ecx, %r11d
1000029e0: 44 2b 5d c4                 	subl	-60(%rbp), %r11d
1000029e4: 8b 45 30                    	movl	48(%rbp), %eax
1000029e7: 89 c2                       	movl	%eax, %edx
1000029e9: 0f af d1                    	imull	%ecx, %edx
1000029ec: c1 e2 06                    	shll	$6, %edx
1000029ef: 89 55 c0                    	movl	%edx, -64(%rbp)
1000029f2: 89 c7                       	movl	%eax, %edi
1000029f4: c1 e7 06                    	shll	$6, %edi
1000029f7: 45 31 c0                    	xorl	%r8d, %r8d
1000029fa: 89 bd 78 ff ff ff           	movl	%edi, -136(%rbp)
100002a00: 44 89 5d 88                 	movl	%r11d, -120(%rbp)
100002a04: 45 85 db                    	testl	%r11d, %r11d
100002a07: 75 1d                       	jne	29 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x226>
100002a09: e9 06 01 00 00              	jmp	262 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x314>
100002a0e: 66 90                       	nop
100002a10: 49 ff c0                    	incq	%r8
100002a13: 4c 3b 45 80                 	cmpq	-128(%rbp), %r8
100002a17: 0f 84 1e 08 00 00           	je	2078 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002a1d: 45 85 db                    	testl	%r11d, %r11d
100002a20: 0f 84 ee 00 00 00           	je	238 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x314>
100002a26: 45 89 c4                    	movl	%r8d, %r12d
100002a29: 41 c1 e4 06                 	shll	$6, %r12d
100002a2d: 48 8b 45 98                 	movq	-104(%rbp), %rax
100002a31: 4a 8d 34 20                 	leaq	(%rax,%r12), %rsi
100002a35: 45 31 ed                    	xorl	%r13d, %r13d
100002a38: 45 31 ff                    	xorl	%r15d, %r15d
100002a3b: 48 89 75 90                 	movq	%rsi, -112(%rbp)
100002a3f: 90                          	nop
100002a40: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100002a44: 45 31 f6                    	xorl	%r14d, %r14d
100002a47: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002a50: 44 89 ef                    	movl	%r13d, %edi
100002a53: 48 03 7d b0                 	addq	-80(%rbp), %rdi
100002a57: 44 89 fb                    	movl	%r15d, %ebx
100002a5a: 4d 89 c7                    	movq	%r8, %r15
100002a5d: e8 7e 19 00 00              	callq	6526 <__Z11microkernelILj1ELj64EasET2_PKT1_S3_>
100002a62: 41 b9 81 00 00 00           	movl	$129, %r9d
100002a68: ba 7f 00 00 00              	movl	$127, %edx
100002a6d: 4d 89 f8                    	movq	%r15, %r8
100002a70: 41 89 df                    	movl	%ebx, %r15d
100002a73: 98                          	cwtl
100002a74: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002a78: 42 0f be 0c 21              	movsbl	(%rcx,%r12), %ecx
100002a7d: 01 c1                       	addl	%eax, %ecx
100002a7f: 0f af 4d d0                 	imull	-48(%rbp), %ecx
100002a83: 89 cf                       	movl	%ecx, %edi
100002a85: c1 ff 1f                    	sarl	$31, %edi
100002a88: c1 ef 12                    	shrl	$18, %edi
100002a8b: 01 cf                       	addl	%ecx, %edi
100002a8d: c1 ff 0e                    	sarl	$14, %edi
100002a90: 81 ff 80 00 00 00           	cmpl	$128, %edi
100002a96: 0f 4d fa                    	cmovgel	%edx, %edi
100002a99: 44 89 f0                    	movl	%r14d, %eax
100002a9c: 31 d2                       	xorl	%edx, %edx
100002a9e: 8b 4d 30                    	movl	48(%rbp), %ecx
100002aa1: 48 89 cb                    	movq	%rcx, %rbx
100002aa4: f7 f3                       	divl	%ebx
100002aa6: 89 c1                       	movl	%eax, %ecx
100002aa8: 44 89 f8                    	movl	%r15d, %eax
100002aab: 31 d2                       	xorl	%edx, %edx
100002aad: f7 f3                       	divl	%ebx
100002aaf: 89 c6                       	movl	%eax, %esi
100002ab1: 8b 45 20                    	movl	32(%rbp), %eax
100002ab4: 31 d2                       	xorl	%edx, %edx
100002ab6: f7 f3                       	divl	%ebx
100002ab8: 8b 55 c4                    	movl	-60(%rbp), %edx
100002abb: 29 d6                       	subl	%edx, %esi
100002abd: 0f af c6                    	imull	%esi, %eax
100002ac0: 44 8b 5d 88                 	movl	-120(%rbp), %r11d
100002ac4: 29 d1                       	subl	%edx, %ecx
100002ac6: 01 c8                       	addl	%ecx, %eax
100002ac8: 48 8b 75 90                 	movq	-112(%rbp), %rsi
100002acc: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002ad0: 44 01 c0                    	addl	%r8d, %eax
100002ad3: 83 ff 81                    	cmpl	$-127, %edi
100002ad6: 41 0f 4e f9                 	cmovlel	%r9d, %edi
100002ada: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100002ade: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
100002ae2: 8b bd 78 ff ff ff           	movl	-136(%rbp), %edi
100002ae8: 41 01 de                    	addl	%ebx, %r14d
100002aeb: 41 01 fd                    	addl	%edi, %r13d
100002aee: 45 39 de                    	cmpl	%r11d, %r14d
100002af1: 0f 82 59 ff ff ff           	jb	-167 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x250>
100002af7: 8b 45 30                    	movl	48(%rbp), %eax
100002afa: 41 01 c7                    	addl	%eax, %r15d
100002afd: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100002b01: 44 03 6d c0                 	addl	-64(%rbp), %r13d
100002b05: 44 3b 7d c8                 	cmpl	-56(%rbp), %r15d
100002b09: 0f 82 31 ff ff ff           	jb	-207 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x240>
100002b0f: e9 fc fe ff ff              	jmp	-260 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x210>
100002b14: 31 c0                       	xorl	%eax, %eax
100002b16: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002b1a: 8b 55 30                    	movl	48(%rbp), %edx
100002b1d: 0f 1f 00                    	nopl	(%rax)
100002b20: 01 d0                       	addl	%edx, %eax
100002b22: 39 c8                       	cmpl	%ecx, %eax
100002b24: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x320>
100002b26: e9 e5 fe ff ff              	jmp	-283 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x210>
100002b2b: 83 f8 40                    	cmpl	$64, %eax
100002b2e: 0f 85 07 07 00 00           	jne	1799 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002b34: 48 83 ec 08                 	subq	$8, %rsp
100002b38: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002b3c: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002b40: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002b44: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002b48: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002b4c: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002b50: 8b 45 30                    	movl	48(%rbp), %eax
100002b53: 50                          	pushq	%rax
100002b54: 8b 45 20                    	movl	32(%rbp), %eax
100002b57: 50                          	pushq	%rax
100002b58: 53                          	pushq	%rbx
100002b59: e8 c2 15 00 00              	callq	5570 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj>
100002b5e: e9 09 06 00 00              	jmp	1545 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100002b63: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002b67: 0f 84 ce 06 00 00           	je	1742 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002b6d: 8b 45 30                    	movl	48(%rbp), %eax
100002b70: 89 c1                       	movl	%eax, %ecx
100002b72: d1 e9                       	shrl	%ecx
100002b74: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002b78: 89 4d c0                    	movl	%ecx, -64(%rbp)
100002b7b: 29 c8                       	subl	%ecx, %eax
100002b7d: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002b81: 0f 84 b4 06 00 00           	je	1716 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002b87: 8b 45 20                    	movl	32(%rbp), %eax
100002b8a: 48 89 c1                    	movq	%rax, %rcx
100002b8d: 89 ca                       	movl	%ecx, %edx
100002b8f: 2b 55 c0                    	subl	-64(%rbp), %edx
100002b92: 8b 45 30                    	movl	48(%rbp), %eax
100002b95: 89 c6                       	movl	%eax, %esi
100002b97: 0f af f1                    	imull	%ecx, %esi
100002b9a: c1 e6 02                    	shll	$2, %esi
100002b9d: 89 b5 74 ff ff ff           	movl	%esi, -140(%rbp)
100002ba3: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
100002baa: 89 85 70 ff ff ff           	movl	%eax, -144(%rbp)
100002bb0: 31 c9                       	xorl	%ecx, %ecx
100002bb2: 89 55 88                    	movl	%edx, -120(%rbp)
100002bb5: 4c 8b 6d 98                 	movq	-104(%rbp), %r13
100002bb9: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
100002bbd: 44 8b 9d 70 ff ff ff        	movl	-144(%rbp), %r11d
100002bc4: 85 d2                       	testl	%edx, %edx
100002bc6: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
100002bcd: 75 37                       	jne	55 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x406>
100002bcf: e9 4c 01 00 00              	jmp	332 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x520>
100002bd4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002bde: 66 90                       	nop
100002be0: 48 8b 8d 78 ff ff ff        	movq	-136(%rbp), %rcx
100002be7: 48 ff c1                    	incq	%rcx
100002bea: 48 3b 4d 80                 	cmpq	-128(%rbp), %rcx
100002bee: 8b 55 88                    	movl	-120(%rbp), %edx
100002bf1: 0f 84 44 06 00 00           	je	1604 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002bf7: 85 d2                       	testl	%edx, %edx
100002bf9: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
100002c00: 0f 84 1a 01 00 00           	je	282 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x520>
100002c06: 8b 45 20                    	movl	32(%rbp), %eax
100002c09: 31 d2                       	xorl	%edx, %edx
100002c0b: 44 8b 45 30                 	movl	48(%rbp), %r8d
100002c0f: 41 f7 f0                    	divl	%r8d
100002c12: 89 45 bc                    	movl	%eax, -68(%rbp)
100002c15: 8d 34 8d 00 00 00 00        	leal	(,%rcx,4), %esi
100002c1c: 45 31 d2                    	xorl	%r10d, %r10d
100002c1f: 31 c0                       	xorl	%eax, %eax
100002c21: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002c2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002c30: 89 45 c4                    	movl	%eax, -60(%rbp)
100002c33: 31 d2                       	xorl	%edx, %edx
100002c35: 8b 4d 30                    	movl	48(%rbp), %ecx
100002c38: f7 f1                       	divl	%ecx
100002c3a: 89 c7                       	movl	%eax, %edi
100002c3c: 8b 45 c0                    	movl	-64(%rbp), %eax
100002c3f: 29 c7                       	subl	%eax, %edi
100002c41: 0f af 7d bc                 	imull	-68(%rbp), %edi
100002c45: 29 c7                       	subl	%eax, %edi
100002c47: 44 89 55 90                 	movl	%r10d, -112(%rbp)
100002c4b: 31 db                       	xorl	%ebx, %ebx
100002c4d: 44 8b 45 88                 	movl	-120(%rbp), %r8d
100002c51: 4c 8b bd 78 ff ff ff        	movq	-136(%rbp), %r15
100002c58: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002c60: 44 89 d0                    	movl	%r10d, %eax
100002c63: c4 c2 79 21 44 35 00        	vpmovsxbd	(%r13,%rsi), %xmm0
100002c6a: c4 c2 79 21 0c 06           	vpmovsxbd	(%r14,%rax), %xmm1
100002c70: c4 e2 71 40 c0              	vpmulld	%xmm0, %xmm1, %xmm0
100002c75: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002c7a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002c7e: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002c83: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002c87: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002c8b: 98                          	cwtl
100002c8c: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100002c90: 0f be 14 31                 	movsbl	(%rcx,%rsi), %edx
100002c94: 01 c2                       	addl	%eax, %edx
100002c96: 0f af 55 d0                 	imull	-48(%rbp), %edx
100002c9a: 41 89 d1                    	movl	%edx, %r9d
100002c9d: 41 c1 f9 1f                 	sarl	$31, %r9d
100002ca1: 41 c1 e9 12                 	shrl	$18, %r9d
100002ca5: 41 01 d1                    	addl	%edx, %r9d
100002ca8: 41 c1 f9 0e                 	sarl	$14, %r9d
100002cac: 41 81 f9 80 00 00 00        	cmpl	$128, %r9d
100002cb3: b8 7f 00 00 00              	movl	$127, %eax
100002cb8: 44 0f 4d c8                 	cmovgel	%eax, %r9d
100002cbc: 89 d8                       	movl	%ebx, %eax
100002cbe: 31 d2                       	xorl	%edx, %edx
100002cc0: 44 8b 65 30                 	movl	48(%rbp), %r12d
100002cc4: 41 f7 f4                    	divl	%r12d
100002cc7: 01 f8                       	addl	%edi, %eax
100002cc9: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002ccd: 44 01 f8                    	addl	%r15d, %eax
100002cd0: 41 83 f9 81                 	cmpl	$-127, %r9d
100002cd4: ba 81 00 00 00              	movl	$129, %edx
100002cd9: 44 0f 4e ca                 	cmovlel	%edx, %r9d
100002cdd: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100002ce1: 44 88 0c 02                 	movb	%r9b, (%rdx,%rax)
100002ce5: 44 01 e3                    	addl	%r12d, %ebx
100002ce8: 45 01 da                    	addl	%r11d, %r10d
100002ceb: 44 39 c3                    	cmpl	%r8d, %ebx
100002cee: 0f 82 6c ff ff ff           	jb	-148 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x460>
100002cf4: 8b 45 30                    	movl	48(%rbp), %eax
100002cf7: 8b 4d c4                    	movl	-60(%rbp), %ecx
100002cfa: 01 c1                       	addl	%eax, %ecx
100002cfc: 89 c8                       	movl	%ecx, %eax
100002cfe: 44 8b 55 90                 	movl	-112(%rbp), %r10d
100002d02: 44 03 95 74 ff ff ff        	addl	-140(%rbp), %r10d
100002d09: 3b 4d c8                    	cmpl	-56(%rbp), %ecx
100002d0c: 0f 82 1e ff ff ff           	jb	-226 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x430>
100002d12: e9 c9 fe ff ff              	jmp	-311 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3e0>
100002d17: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002d20: 31 c0                       	xorl	%eax, %eax
100002d22: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100002d26: 8b 75 30                    	movl	48(%rbp), %esi
100002d29: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002d30: 01 f0                       	addl	%esi, %eax
100002d32: 39 d0                       	cmpl	%edx, %eax
100002d34: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x530>
100002d36: e9 a5 fe ff ff              	jmp	-347 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x3e0>
100002d3b: 48 83 ec 08                 	subq	$8, %rsp
100002d3f: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100002d43: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002d47: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002d4b: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100002d4f: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100002d53: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100002d57: 8b 45 30                    	movl	48(%rbp), %eax
100002d5a: 50                          	pushq	%rax
100002d5b: 8b 45 20                    	movl	32(%rbp), %eax
100002d5e: 50                          	pushq	%rax
100002d5f: 8b 45 18                    	movl	24(%rbp), %eax
100002d62: 50                          	pushq	%rax
100002d63: e8 e8 05 00 00              	callq	1512 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
100002d68: e9 ff 03 00 00              	jmp	1023 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100002d6d: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002d71: 0f 84 c4 04 00 00           	je	1220 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002d77: 8b 45 30                    	movl	48(%rbp), %eax
100002d7a: 48 89 c1                    	movq	%rax, %rcx
100002d7d: 89 ce                       	movl	%ecx, %esi
100002d7f: d1 ee                       	shrl	%esi
100002d81: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002d85: 29 f0                       	subl	%esi, %eax
100002d87: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002d8b: 8b 45 20                    	movl	32(%rbp), %eax
100002d8e: 89 c2                       	movl	%eax, %edx
100002d90: 29 f2                       	subl	%esi, %edx
100002d92: 89 55 bc                    	movl	%edx, -68(%rbp)
100002d95: 89 ca                       	movl	%ecx, %edx
100002d97: 0f af d0                    	imull	%eax, %edx
100002d9a: c1 e2 04                    	shll	$4, %edx
100002d9d: 89 95 74 ff ff ff           	movl	%edx, -140(%rbp)
100002da3: 89 cf                       	movl	%ecx, %edi
100002da5: c1 e7 04                    	shll	$4, %edi
100002da8: 31 c0                       	xorl	%eax, %eax
100002daa: 89 75 90                    	movl	%esi, -112(%rbp)
100002dad: 4c 8b 75 a8                 	movq	-88(%rbp), %r14
100002db1: 4c 8b 55 b0                 	movq	-80(%rbp), %r10
100002db5: 44 8b 7d bc                 	movl	-68(%rbp), %r15d
100002db9: eb 16                       	jmp	22 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5d1>
100002dbb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002dc0: 48 8b 45 88                 	movq	-120(%rbp), %rax
100002dc4: 48 ff c0                    	incq	%rax
100002dc7: 48 3b 45 80                 	cmpq	-128(%rbp), %rax
100002dcb: 0f 84 6a 04 00 00           	je	1130 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002dd1: 48 89 45 88                 	movq	%rax, -120(%rbp)
100002dd5: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002dd9: 85 c9                       	testl	%ecx, %ecx
100002ddb: 44 8b 4d 30                 	movl	48(%rbp), %r9d
100002ddf: 74 df                       	je	-33 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002de1: 83 7d bc 00                 	cmpl	$0, -68(%rbp)
100002de5: 0f 84 35 01 00 00           	je	309 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x720>
100002deb: 8b 45 20                    	movl	32(%rbp), %eax
100002dee: 31 d2                       	xorl	%edx, %edx
100002df0: 41 f7 f1                    	divl	%r9d
100002df3: 89 45 c0                    	movl	%eax, -64(%rbp)
100002df6: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100002dfa: c1 e1 04                    	shll	$4, %ecx
100002dfd: 45 31 ed                    	xorl	%r13d, %r13d
100002e00: 31 c0                       	xorl	%eax, %eax
100002e02: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002e0c: 0f 1f 40 00                 	nopl	(%rax)
100002e10: 89 85 78 ff ff ff           	movl	%eax, -136(%rbp)
100002e16: 31 d2                       	xorl	%edx, %edx
100002e18: 41 f7 f1                    	divl	%r9d
100002e1b: 41 89 c4                    	movl	%eax, %r12d
100002e1e: 41 29 f4                    	subl	%esi, %r12d
100002e21: 44 0f af 65 c0              	imull	-64(%rbp), %r12d
100002e26: 44 89 6d c4                 	movl	%r13d, -60(%rbp)
100002e2a: 31 db                       	xorl	%ebx, %ebx
100002e2c: 48 8b 75 98                 	movq	-104(%rbp), %rsi
100002e30: 4c 8b 5d 88                 	movq	-120(%rbp), %r11
100002e34: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002e3e: 66 90                       	nop
100002e40: 44 89 e8                    	movl	%r13d, %eax
100002e43: c4 e2 7d 21 04 0e           	vpmovsxbd	(%rsi,%rcx), %ymm0
100002e49: c4 e2 7d 21 4c 0e 08        	vpmovsxbd	8(%rsi,%rcx), %ymm1
100002e50: c4 c2 7d 21 14 02           	vpmovsxbd	(%r10,%rax), %ymm2
100002e56: c4 e2 6d 40 c0              	vpmulld	%ymm0, %ymm2, %ymm0
100002e5b: c4 c2 7d 21 54 02 08        	vpmovsxbd	8(%r10,%rax), %ymm2
100002e62: c4 e2 6d 40 c9              	vpmulld	%ymm1, %ymm2, %ymm1
100002e67: c5 fd fe c1                 	vpaddd	%ymm1, %ymm0, %ymm0
100002e6b: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100002e71: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002e75: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100002e7a: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002e7e: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100002e83: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100002e87: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100002e8b: 98                          	cwtl
100002e8c: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002e90: 0f be 14 0a                 	movsbl	(%rdx,%rcx), %edx
100002e94: 01 c2                       	addl	%eax, %edx
100002e96: 0f af 55 d0                 	imull	-48(%rbp), %edx
100002e9a: 41 89 d0                    	movl	%edx, %r8d
100002e9d: 41 c1 f8 1f                 	sarl	$31, %r8d
100002ea1: 41 c1 e8 12                 	shrl	$18, %r8d
100002ea5: 41 01 d0                    	addl	%edx, %r8d
100002ea8: 41 c1 f8 0e                 	sarl	$14, %r8d
100002eac: 41 81 f8 80 00 00 00        	cmpl	$128, %r8d
100002eb3: b8 7f 00 00 00              	movl	$127, %eax
100002eb8: 44 0f 4d c0                 	cmovgel	%eax, %r8d
100002ebc: 89 d8                       	movl	%ebx, %eax
100002ebe: 31 d2                       	xorl	%edx, %edx
100002ec0: 41 f7 f1                    	divl	%r9d
100002ec3: 2b 45 90                    	subl	-112(%rbp), %eax
100002ec6: 44 01 e0                    	addl	%r12d, %eax
100002ec9: 0f af 45 d4                 	imull	-44(%rbp), %eax
100002ecd: 44 01 d8                    	addl	%r11d, %eax
100002ed0: 41 83 f8 81                 	cmpl	$-127, %r8d
100002ed4: ba 81 00 00 00              	movl	$129, %edx
100002ed9: 44 0f 4e c2                 	cmovlel	%edx, %r8d
100002edd: 45 88 04 06                 	movb	%r8b, (%r14,%rax)
100002ee1: 44 01 cb                    	addl	%r9d, %ebx
100002ee4: 41 01 fd                    	addl	%edi, %r13d
100002ee7: 44 39 fb                    	cmpl	%r15d, %ebx
100002eea: 0f 82 50 ff ff ff           	jb	-176 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x640>
100002ef0: 8b 85 78 ff ff ff           	movl	-136(%rbp), %eax
100002ef6: 44 01 c8                    	addl	%r9d, %eax
100002ef9: 44 8b 6d c4                 	movl	-60(%rbp), %r13d
100002efd: 44 03 ad 74 ff ff ff        	addl	-140(%rbp), %r13d
100002f04: 3b 45 c8                    	cmpl	-56(%rbp), %eax
100002f07: 8b 75 90                    	movl	-112(%rbp), %esi
100002f0a: 0f 82 00 ff ff ff           	jb	-256 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x610>
100002f10: e9 ab fe ff ff              	jmp	-341 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002f15: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002f1f: 90                          	nop
100002f20: 31 c0                       	xorl	%eax, %eax
100002f22: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002f2c: 0f 1f 40 00                 	nopl	(%rax)
100002f30: 44 01 c8                    	addl	%r9d, %eax
100002f33: 39 c8                       	cmpl	%ecx, %eax
100002f35: 72 f9                       	jb	-7 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x730>
100002f37: e9 84 fe ff ff              	jmp	-380 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x5c0>
100002f3c: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100002f40: 0f 84 f5 02 00 00           	je	757 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002f46: 8b 45 30                    	movl	48(%rbp), %eax
100002f49: 89 c1                       	movl	%eax, %ecx
100002f4b: d1 e9                       	shrl	%ecx
100002f4d: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002f51: 29 c8                       	subl	%ecx, %eax
100002f53: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100002f57: 0f 84 de 02 00 00           	je	734 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002f5d: 8b 45 20                    	movl	32(%rbp), %eax
100002f60: 48 89 c7                    	movq	%rax, %rdi
100002f63: 41 89 fa                    	movl	%edi, %r10d
100002f66: 41 29 ca                    	subl	%ecx, %r10d
100002f69: 8b 45 30                    	movl	48(%rbp), %eax
100002f6c: 89 c2                       	movl	%eax, %edx
100002f6e: 0f af d7                    	imull	%edi, %edx
100002f71: c1 e2 05                    	shll	$5, %edx
100002f74: 89 55 c0                    	movl	%edx, -64(%rbp)
100002f77: 89 c7                       	movl	%eax, %edi
100002f79: c1 e7 05                    	shll	$5, %edi
100002f7c: 31 db                       	xorl	%ebx, %ebx
100002f7e: 89 4d c4                    	movl	%ecx, -60(%rbp)
100002f81: 89 bd 78 ff ff ff           	movl	%edi, -136(%rbp)
100002f87: 44 89 55 88                 	movl	%r10d, -120(%rbp)
100002f8b: 45 85 d2                    	testl	%r10d, %r10d
100002f8e: 75 26                       	jne	38 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7b6>
100002f90: e9 0b 01 00 00              	jmp	267 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8a0>
100002f95: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002f9f: 90                          	nop
100002fa0: 48 ff c3                    	incq	%rbx
100002fa3: 48 3b 5d 80                 	cmpq	-128(%rbp), %rbx
100002fa7: 0f 84 8e 02 00 00           	je	654 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100002fad: 45 85 d2                    	testl	%r10d, %r10d
100002fb0: 0f 84 ea 00 00 00           	je	234 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8a0>
100002fb6: 41 89 d9                    	movl	%ebx, %r9d
100002fb9: 41 c1 e1 05                 	shll	$5, %r9d
100002fbd: 48 8b 45 98                 	movq	-104(%rbp), %rax
100002fc1: 4a 8d 34 08                 	leaq	(%rax,%r9), %rsi
100002fc5: 45 31 f6                    	xorl	%r14d, %r14d
100002fc8: 45 31 ed                    	xorl	%r13d, %r13d
100002fcb: 48 89 75 90                 	movq	%rsi, -112(%rbp)
100002fcf: 90                          	nop
100002fd0: 44 89 75 bc                 	movl	%r14d, -68(%rbp)
100002fd4: 45 31 e4                    	xorl	%r12d, %r12d
100002fd7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002fe0: 44 89 f7                    	movl	%r14d, %edi
100002fe3: 48 03 7d b0                 	addq	-80(%rbp), %rdi
100002fe7: 4d 89 cf                    	movq	%r9, %r15
100002fea: e8 91 13 00 00              	callq	5009 <__Z11microkernelILj1ELj32EasET2_PKT1_S3_>
100002fef: 4d 89 f9                    	movq	%r15, %r9
100002ff2: 41 b8 81 00 00 00           	movl	$129, %r8d
100002ff8: ba 7f 00 00 00              	movl	$127, %edx
100002ffd: 98                          	cwtl
100002ffe: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003002: 42 0f be 0c 39              	movsbl	(%rcx,%r15), %ecx
100003007: 01 c1                       	addl	%eax, %ecx
100003009: 0f af 4d d0                 	imull	-48(%rbp), %ecx
10000300d: 89 cf                       	movl	%ecx, %edi
10000300f: c1 ff 1f                    	sarl	$31, %edi
100003012: c1 ef 12                    	shrl	$18, %edi
100003015: 01 cf                       	addl	%ecx, %edi
100003017: c1 ff 0e                    	sarl	$14, %edi
10000301a: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003020: 0f 4d fa                    	cmovgel	%edx, %edi
100003023: 44 89 e0                    	movl	%r12d, %eax
100003026: 31 d2                       	xorl	%edx, %edx
100003028: 8b 4d 30                    	movl	48(%rbp), %ecx
10000302b: 49 89 cf                    	movq	%rcx, %r15
10000302e: 41 f7 f7                    	divl	%r15d
100003031: 89 c1                       	movl	%eax, %ecx
100003033: 44 89 e8                    	movl	%r13d, %eax
100003036: 31 d2                       	xorl	%edx, %edx
100003038: 41 f7 f7                    	divl	%r15d
10000303b: 89 c6                       	movl	%eax, %esi
10000303d: 8b 45 20                    	movl	32(%rbp), %eax
100003040: 31 d2                       	xorl	%edx, %edx
100003042: 41 f7 f7                    	divl	%r15d
100003045: 8b 55 c4                    	movl	-60(%rbp), %edx
100003048: 29 d6                       	subl	%edx, %esi
10000304a: 0f af c6                    	imull	%esi, %eax
10000304d: 44 8b 55 88                 	movl	-120(%rbp), %r10d
100003051: 29 d1                       	subl	%edx, %ecx
100003053: 01 c8                       	addl	%ecx, %eax
100003055: 48 8b 75 90                 	movq	-112(%rbp), %rsi
100003059: 0f af 45 d4                 	imull	-44(%rbp), %eax
10000305d: 01 d8                       	addl	%ebx, %eax
10000305f: 83 ff 81                    	cmpl	$-127, %edi
100003062: 41 0f 4e f8                 	cmovlel	%r8d, %edi
100003066: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
10000306a: 40 88 3c 01                 	movb	%dil, (%rcx,%rax)
10000306e: 8b bd 78 ff ff ff           	movl	-136(%rbp), %edi
100003074: 45 01 fc                    	addl	%r15d, %r12d
100003077: 41 01 fe                    	addl	%edi, %r14d
10000307a: 45 39 d4                    	cmpl	%r10d, %r12d
10000307d: 0f 82 5d ff ff ff           	jb	-163 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7e0>
100003083: 8b 45 30                    	movl	48(%rbp), %eax
100003086: 41 01 c5                    	addl	%eax, %r13d
100003089: 44 8b 75 bc                 	movl	-68(%rbp), %r14d
10000308d: 44 03 75 c0                 	addl	-64(%rbp), %r14d
100003091: 44 3b 6d c8                 	cmpl	-56(%rbp), %r13d
100003095: 0f 82 35 ff ff ff           	jb	-203 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7d0>
10000309b: e9 00 ff ff ff              	jmp	-256 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7a0>
1000030a0: 31 c0                       	xorl	%eax, %eax
1000030a2: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000030a6: 8b 55 30                    	movl	48(%rbp), %edx
1000030a9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000030b0: 01 d0                       	addl	%edx, %eax
1000030b2: 39 c8                       	cmpl	%ecx, %eax
1000030b4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x8b0>
1000030b6: e9 e5 fe ff ff              	jmp	-283 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x7a0>
1000030bb: 48 83 ec 08                 	subq	$8, %rsp
1000030bf: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
1000030c3: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
1000030c7: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000030cb: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
1000030cf: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
1000030d3: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
1000030d7: 8b 45 30                    	movl	48(%rbp), %eax
1000030da: 50                          	pushq	%rax
1000030db: 8b 45 20                    	movl	32(%rbp), %eax
1000030de: 50                          	pushq	%rax
1000030df: 53                          	pushq	%rbx
1000030e0: e8 bb 06 00 00              	callq	1723 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj>
1000030e5: e9 82 00 00 00              	jmp	130 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
1000030ea: 48 83 ec 08                 	subq	$8, %rsp
1000030ee: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
1000030f2: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
1000030f6: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000030fa: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
1000030fe: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100003102: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100003106: 8b 45 30                    	movl	48(%rbp), %eax
100003109: 50                          	pushq	%rax
10000310a: 8b 45 20                    	movl	32(%rbp), %eax
10000310d: 50                          	pushq	%rax
10000310e: 53                          	pushq	%rbx
10000310f: e8 fc 08 00 00              	callq	2300 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj>
100003114: eb 56                       	jmp	86 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100003116: 48 83 ec 08                 	subq	$8, %rsp
10000311a: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
10000311e: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100003122: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100003126: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
10000312a: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000312e: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100003132: 8b 45 30                    	movl	48(%rbp), %eax
100003135: 50                          	pushq	%rax
100003136: 8b 45 20                    	movl	32(%rbp), %eax
100003139: 50                          	pushq	%rax
10000313a: 53                          	pushq	%rbx
10000313b: e8 40 0b 00 00              	callq	2880 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj>
100003140: eb 2a                       	jmp	42 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x96c>
100003142: 48 83 ec 08                 	subq	$8, %rsp
100003146: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
10000314a: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
10000314e: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100003152: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100003156: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000315a: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
10000315e: 8b 45 30                    	movl	48(%rbp), %eax
100003161: 50                          	pushq	%rax
100003162: 8b 45 20                    	movl	32(%rbp), %eax
100003165: 50                          	pushq	%rax
100003166: 53                          	pushq	%rbx
100003167: e8 64 0d 00 00              	callq	3428 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj>
10000316c: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003173: e9 c7 00 00 00              	jmp	199 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3f>
100003178: 48 8b 45 80                 	movq	-128(%rbp), %rax
10000317c: 48 8d 48 ff                 	leaq	-1(%rax), %rcx
100003180: 83 e0 07                    	andl	$7, %eax
100003183: 48 83 f9 07                 	cmpq	$7, %rcx
100003187: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000318b: 8b 75 30                    	movl	48(%rbp), %esi
10000318e: 0f 82 8d 00 00 00           	jb	141 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa21>
100003194: 48 29 45 80                 	subq	%rax, -128(%rbp)
100003198: 31 c9                       	xorl	%ecx, %ecx
10000319a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000031a0: 01 f1                       	addl	%esi, %ecx
1000031a2: 39 d1                       	cmpl	%edx, %ecx
1000031a4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9a0>
1000031a6: 31 c9                       	xorl	%ecx, %ecx
1000031a8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000031b0: 01 f1                       	addl	%esi, %ecx
1000031b2: 39 d1                       	cmpl	%edx, %ecx
1000031b4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9b0>
1000031b6: 31 c9                       	xorl	%ecx, %ecx
1000031b8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000031c0: 01 f1                       	addl	%esi, %ecx
1000031c2: 39 d1                       	cmpl	%edx, %ecx
1000031c4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9c0>
1000031c6: 31 c9                       	xorl	%ecx, %ecx
1000031c8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000031d0: 01 f1                       	addl	%esi, %ecx
1000031d2: 39 d1                       	cmpl	%edx, %ecx
1000031d4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9d0>
1000031d6: 31 c9                       	xorl	%ecx, %ecx
1000031d8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000031e0: 01 f1                       	addl	%esi, %ecx
1000031e2: 39 d1                       	cmpl	%edx, %ecx
1000031e4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9e0>
1000031e6: 31 c9                       	xorl	%ecx, %ecx
1000031e8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000031f0: 01 f1                       	addl	%esi, %ecx
1000031f2: 39 d1                       	cmpl	%edx, %ecx
1000031f4: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x9f0>
1000031f6: 31 c9                       	xorl	%ecx, %ecx
1000031f8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100003200: 01 f1                       	addl	%esi, %ecx
100003202: 39 d1                       	cmpl	%edx, %ecx
100003204: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa00>
100003206: 31 c9                       	xorl	%ecx, %ecx
100003208: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100003210: 01 f1                       	addl	%esi, %ecx
100003212: 39 d1                       	cmpl	%edx, %ecx
100003214: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa10>
100003216: 48 83 45 80 f8              	addq	$-8, -128(%rbp)
10000321b: 0f 85 77 ff ff ff           	jne	-137 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0x998>
100003221: 48 85 c0                    	testq	%rax, %rax
100003224: 74 15                       	je	21 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa3b>
100003226: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000322a: 31 c9                       	xorl	%ecx, %ecx
10000322c: 8b 75 30                    	movl	48(%rbp), %esi
10000322f: 90                          	nop
100003230: 01 f1                       	addl	%esi, %ecx
100003232: 39 d1                       	cmpl	%edx, %ecx
100003234: 72 fa                       	jb	-6 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa30>
100003236: 48 ff c8                    	decq	%rax
100003239: 75 ef                       	jne	-17 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa2a>
10000323b: 48 83 c4 68                 	addq	$104, %rsp
10000323f: 5b                          	popq	%rbx
100003240: 41 5c                       	popq	%r12
100003242: 41 5d                       	popq	%r13
100003244: 41 5e                       	popq	%r14
100003246: 41 5f                       	popq	%r15
100003248: 5d                          	popq	%rbp
100003249: c5 f8 77                    	vzeroupper
10000324c: c3                          	retq
10000324d: 0f 1f 00                    	nopl	(%rax)
100003250: 2b f7                       	subl	%edi, %esi
100003252: ff ff                       	<unknown>
100003254: eb ff                       	jmp	-1 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa55>
100003256: ff ff                       	<unknown>
100003258: eb ff                       	jmp	-1 <__Z6Conv2dPaS_PKaS1_ijjjjjj+0xa59>
10000325a: ff ff                       	<unknown>
10000325c: 6b fe ff                    	imull	$-1, %esi, %edi
10000325f: ff eb                       	<unknown>
100003261: ff ff                       	<unknown>
100003263: ff eb                       	<unknown>
100003265: ff ff                       	<unknown>
100003267: ff eb                       	<unknown>
100003269: ff ff                       	<unknown>
10000326b: ff 9a fe ff ff eb           	lcalll	*-335544322(%rdx)
100003271: ff ff                       	<unknown>
100003273: ff eb                       	<unknown>
100003275: ff ff                       	<unknown>
100003277: ff eb                       	<unknown>
100003279: ff ff                       	<unknown>
10000327b: ff eb                       	<unknown>
10000327d: ff ff                       	<unknown>
10000327f: ff eb                       	<unknown>
100003281: ff ff                       	<unknown>
100003283: ff eb                       	<unknown>
100003285: ff ff                       	<unknown>
100003287: ff eb                       	<unknown>
100003289: ff ff                       	<unknown>
10000328b: ff c6                       	incl	%esi
10000328d: fe ff                       	<unknown>
10000328f: ff eb                       	<unknown>
100003291: ff ff                       	<unknown>
100003293: ff eb                       	<unknown>
100003295: ff ff                       	<unknown>
100003297: ff eb                       	<unknown>
100003299: ff ff                       	<unknown>
10000329b: ff eb                       	<unknown>
10000329d: ff ff                       	<unknown>
10000329f: ff eb                       	<unknown>
1000032a1: ff ff                       	<unknown>
1000032a3: ff eb                       	<unknown>
1000032a5: ff ff                       	<unknown>
1000032a7: ff eb                       	<unknown>
1000032a9: ff ff                       	<unknown>
1000032ab: ff eb                       	<unknown>
1000032ad: ff ff                       	<unknown>
1000032af: ff eb                       	<unknown>
1000032b1: ff ff                       	<unknown>
1000032b3: ff eb                       	<unknown>
1000032b5: ff ff                       	<unknown>
1000032b7: ff eb                       	<unknown>
1000032b9: ff ff                       	<unknown>
1000032bb: ff eb                       	<unknown>
1000032bd: ff ff                       	<unknown>
1000032bf: ff eb                       	<unknown>
1000032c1: ff ff                       	<unknown>
1000032c3: ff eb                       	<unknown>
1000032c5: ff ff                       	<unknown>
1000032c7: ff eb                       	<unknown>
1000032c9: ff ff                       	<unknown>
1000032cb: ff f2                       	pushq	%rdx
1000032cd: fe ff                       	<unknown>
1000032cf: ff 9b f5 ff ff 6b           	lcalll	*1811939317(%rbx)
1000032d5: ff ff                       	<unknown>
1000032d7: ff 6b ff                    	ljmpl	*-1(%rbx)
1000032da: ff ff                       	<unknown>
1000032dc: 93                          	xchgl	%ebx, %eax
1000032dd: f8                          	clc
1000032de: ff ff                       	<unknown>
1000032e0: 6b ff ff                    	imull	$-1, %edi, %edi
1000032e3: ff 6b ff                    	ljmpl	*-1(%rbx)
1000032e6: ff ff                       	<unknown>
1000032e8: 6b ff ff                    	imull	$-1, %edi, %edi
1000032eb: ff 6b fa                    	ljmpl	*-6(%rbx)
1000032ee: ff ff                       	<unknown>
1000032f0: 6b ff ff                    	imull	$-1, %edi, %edi
1000032f3: ff 6b ff                    	ljmpl	*-1(%rbx)
1000032f6: ff ff                       	<unknown>
1000032f8: 6b ff ff                    	imull	$-1, %edi, %edi
1000032fb: ff 6b ff                    	ljmpl	*-1(%rbx)
1000032fe: ff ff                       	<unknown>
100003300: 6b ff ff                    	imull	$-1, %edi, %edi
100003303: ff 6b ff                    	ljmpl	*-1(%rbx)
100003306: ff ff                       	<unknown>
100003308: 6b ff ff                    	imull	$-1, %edi, %edi
10000330b: ff 9d fa ff ff 6b           	lcalll	*1811939322(%rbp)
100003311: ff ff                       	<unknown>
100003313: ff 6b ff                    	ljmpl	*-1(%rbx)
100003316: ff ff                       	<unknown>
100003318: 6b ff ff                    	imull	$-1, %edi, %edi
10000331b: ff 6b ff                    	ljmpl	*-1(%rbx)
10000331e: ff ff                       	<unknown>
100003320: 6b ff ff                    	imull	$-1, %edi, %edi
100003323: ff 6b ff                    	ljmpl	*-1(%rbx)
100003326: ff ff                       	<unknown>
100003328: 6b ff ff                    	imull	$-1, %edi, %edi
10000332b: ff 6b ff                    	ljmpl	*-1(%rbx)
10000332e: ff ff                       	<unknown>
100003330: 6b ff ff                    	imull	$-1, %edi, %edi
100003333: ff 6b ff                    	ljmpl	*-1(%rbx)
100003336: ff ff                       	<unknown>
100003338: 6b ff ff                    	imull	$-1, %edi, %edi
10000333b: ff 6b ff                    	ljmpl	*-1(%rbx)
10000333e: ff ff                       	<unknown>
100003340: 6b ff ff                    	imull	$-1, %edi, %edi
100003343: ff 6b ff                    	ljmpl	*-1(%rbx)
100003346: ff ff                       	<unknown>
100003348: 6b ff ff                    	imull	$-1, %edi, %edi
10000334b: ff 6c fc ff                 	ljmpl	*-1(%rsp,%rdi,8)
10000334f: ff 55 48                    	callq	*72(%rbp)

0000000100003350 __Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003350: 55                          	pushq	%rbp
100003351: 48 89 e5                    	movq	%rsp, %rbp
100003354: 41 57                       	pushq	%r15
100003356: 41 56                       	pushq	%r14
100003358: 41 55                       	pushq	%r13
10000335a: 41 54                       	pushq	%r12
10000335c: 53                          	pushq	%rbx
10000335d: 44 89 45 a8                 	movl	%r8d, -88(%rbp)
100003361: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003365: 48 89 55 90                 	movq	%rdx, -112(%rbp)
100003369: 48 89 75 98                 	movq	%rsi, -104(%rbp)
10000336d: 44 89 4d cc                 	movl	%r9d, -52(%rbp)
100003371: 45 85 c9                    	testl	%r9d, %r9d
100003374: 0f 84 a3 01 00 00           	je	419 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1cd>
10000337a: 44 8b 7d 20                 	movl	32(%rbp), %r15d
10000337e: 8b 45 18                    	movl	24(%rbp), %eax
100003381: 8b 55 10                    	movl	16(%rbp), %edx
100003384: 44 89 fe                    	movl	%r15d, %esi
100003387: d1 ee                       	shrl	%esi
100003389: 29 f2                       	subl	%esi, %edx
10000338b: 89 55 d4                    	movl	%edx, -44(%rbp)
10000338e: 89 c2                       	movl	%eax, %edx
100003390: 29 f2                       	subl	%esi, %edx
100003392: 89 55 d0                    	movl	%edx, -48(%rbp)
100003395: 8b 55 cc                    	movl	-52(%rbp), %edx
100003398: 48 89 55 a0                 	movq	%rdx, -96(%rbp)
10000339c: 44 89 fa                    	movl	%r15d, %edx
10000339f: 0f af d0                    	imull	%eax, %edx
1000033a2: c1 e2 03                    	shll	$3, %edx
1000033a5: 89 55 b8                    	movl	%edx, -72(%rbp)
1000033a8: 42 8d 04 fd 00 00 00 00     	leal	(,%r15,8), %eax
1000033b0: 89 45 bc                    	movl	%eax, -68(%rbp)
1000033b3: 31 c0                       	xorl	%eax, %eax
1000033b5: 89 75 c8                    	movl	%esi, -56(%rbp)
1000033b8: 4c 8b 5d 90                 	movq	-112(%rbp), %r11
1000033bc: 4c 8b 75 98                 	movq	-104(%rbp), %r14
1000033c0: 44 8b 55 d0                 	movl	-48(%rbp), %r10d
1000033c4: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
1000033c8: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000033cc: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000033d0: 75 29                       	jne	41 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xab>
1000033d2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000033dc: 0f 1f 40 00                 	nopl	(%rax)
1000033e0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000033e4: 48 ff c0                    	incq	%rax
1000033e7: 48 3b 45 a0                 	cmpq	-96(%rbp), %rax
1000033eb: 0f 84 2c 01 00 00           	je	300 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1cd>
1000033f1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000033f5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000033f9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x90>
1000033fb: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
1000033ff: 0f 84 fb 00 00 00           	je	251 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1b0>
100003405: 8b 45 18                    	movl	24(%rbp), %eax
100003408: 31 d2                       	xorl	%edx, %edx
10000340a: 41 f7 f7                    	divl	%r15d
10000340d: 89 45 b4                    	movl	%eax, -76(%rbp)
100003410: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003414: 44 8d 0c c5 00 00 00 00     	leal	(,%rax,8), %r9d
10000341c: 45 31 c0                    	xorl	%r8d, %r8d
10000341f: 31 c0                       	xorl	%eax, %eax
100003421: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000342b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003430: 89 45 b0                    	movl	%eax, -80(%rbp)
100003433: 31 d2                       	xorl	%edx, %edx
100003435: 41 f7 f7                    	divl	%r15d
100003438: 41 89 c4                    	movl	%eax, %r12d
10000343b: 41 29 f4                    	subl	%esi, %r12d
10000343e: 44 0f af 65 b4              	imull	-76(%rbp), %r12d
100003443: 44 89 45 ac                 	movl	%r8d, -84(%rbp)
100003447: 31 db                       	xorl	%ebx, %ebx
100003449: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
10000344d: 0f 1f 00                    	nopl	(%rax)
100003450: 44 89 c0                    	movl	%r8d, %eax
100003453: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003457: c4 a2 7d 21 04 09           	vpmovsxbd	(%rcx,%r9), %ymm0
10000345d: c4 c2 7d 21 0c 06           	vpmovsxbd	(%r14,%rax), %ymm1
100003463: c4 e2 75 40 c0              	vpmulld	%ymm0, %ymm1, %ymm0
100003468: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
10000346e: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003472: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100003477: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
10000347b: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100003480: c5 f9 fe c1                 	vpaddd	%xmm1, %xmm0, %xmm0
100003484: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100003488: 98                          	cwtl
100003489: 43 0f be 14 0b              	movsbl	(%r11,%r9), %edx
10000348e: 01 c2                       	addl	%eax, %edx
100003490: 0f af 55 a8                 	imull	-88(%rbp), %edx
100003494: 89 d1                       	movl	%edx, %ecx
100003496: c1 f9 1f                    	sarl	$31, %ecx
100003499: c1 e9 12                    	shrl	$18, %ecx
10000349c: 01 d1                       	addl	%edx, %ecx
10000349e: c1 f9 0e                    	sarl	$14, %ecx
1000034a1: 81 f9 80 00 00 00           	cmpl	$128, %ecx
1000034a7: b8 7f 00 00 00              	movl	$127, %eax
1000034ac: 0f 4d c8                    	cmovgel	%eax, %ecx
1000034af: 89 d8                       	movl	%ebx, %eax
1000034b1: 31 d2                       	xorl	%edx, %edx
1000034b3: 41 f7 f7                    	divl	%r15d
1000034b6: 2b 45 c8                    	subl	-56(%rbp), %eax
1000034b9: 44 01 e0                    	addl	%r12d, %eax
1000034bc: 0f af 45 cc                 	imull	-52(%rbp), %eax
1000034c0: 01 f0                       	addl	%esi, %eax
1000034c2: 83 f9 81                    	cmpl	$-127, %ecx
1000034c5: ba 81 00 00 00              	movl	$129, %edx
1000034ca: 0f 4e ca                    	cmovlel	%edx, %ecx
1000034cd: 88 0c 07                    	movb	%cl, (%rdi,%rax)
1000034d0: 44 01 fb                    	addl	%r15d, %ebx
1000034d3: 45 01 e8                    	addl	%r13d, %r8d
1000034d6: 44 39 d3                    	cmpl	%r10d, %ebx
1000034d9: 0f 82 71 ff ff ff           	jb	-143 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x100>
1000034df: 8b 45 b0                    	movl	-80(%rbp), %eax
1000034e2: 44 01 f8                    	addl	%r15d, %eax
1000034e5: 44 8b 45 ac                 	movl	-84(%rbp), %r8d
1000034e9: 44 03 45 b8                 	addl	-72(%rbp), %r8d
1000034ed: 3b 45 d4                    	cmpl	-44(%rbp), %eax
1000034f0: 8b 75 c8                    	movl	-56(%rbp), %esi
1000034f3: 0f 82 37 ff ff ff           	jb	-201 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xe0>
1000034f9: e9 e2 fe ff ff              	jmp	-286 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x90>
1000034fe: 66 90                       	nop
100003500: 31 c0                       	xorl	%eax, %eax
100003502: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000350c: 0f 1f 40 00                 	nopl	(%rax)
100003510: 44 01 f8                    	addl	%r15d, %eax
100003513: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003516: 72 f8                       	jb	-8 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x1c0>
100003518: e9 c3 fe ff ff              	jmp	-317 <__Z13Conv2d_kernelILj1ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x90>
10000351d: 5b                          	popq	%rbx
10000351e: 41 5c                       	popq	%r12
100003520: 41 5d                       	popq	%r13
100003522: 41 5e                       	popq	%r14
100003524: 41 5f                       	popq	%r15
100003526: 5d                          	popq	%rbp
100003527: c5 f8 77                    	vzeroupper
10000352a: c3                          	retq
10000352b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003530 __Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj:
100003530: 55                          	pushq	%rbp
100003531: 48 89 e5                    	movq	%rsp, %rbp
100003534: 41 57                       	pushq	%r15
100003536: 41 56                       	pushq	%r14
100003538: 41 55                       	pushq	%r13
10000353a: 41 54                       	pushq	%r12
10000353c: 53                          	pushq	%rbx
10000353d: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003541: 45 85 c9                    	testl	%r9d, %r9d
100003544: 0f 84 43 02 00 00           	je	579 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x25d>
10000354a: 49 89 d2                    	movq	%rdx, %r10
10000354d: 49 89 fe                    	movq	%rdi, %r14
100003550: 44 8b 6d 20                 	movl	32(%rbp), %r13d
100003554: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003558: 8b 55 10                    	movl	16(%rbp), %edx
10000355b: 44 89 e8                    	movl	%r13d, %eax
10000355e: d1 e8                       	shrl	%eax
100003560: 29 c2                       	subl	%eax, %edx
100003562: 83 c2 fe                    	addl	$-2, %edx
100003565: 89 55 d4                    	movl	%edx, -44(%rbp)
100003568: 44 89 d9                    	movl	%r11d, %ecx
10000356b: 29 c1                       	subl	%eax, %ecx
10000356d: 83 c1 fe                    	addl	$-2, %ecx
100003570: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003573: 44 89 d9                    	movl	%r11d, %ecx
100003576: 48 89 8d 68 ff ff ff        	movq	%rcx, -152(%rbp)
10000357d: 41 8d 4b 01                 	leal	1(%r11), %ecx
100003581: 48 89 8d 70 ff ff ff        	movq	%rcx, -144(%rbp)
100003588: 41 8d 4b 02                 	leal	2(%r11), %ecx
10000358c: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
100003593: 43 8d 0c 1b                 	leal	(%r11,%r11), %ecx
100003597: 48 89 4d 80                 	movq	%rcx, -128(%rbp)
10000359b: 48 8d 49 01                 	leaq	1(%rcx), %rcx
10000359f: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000035a3: 43 8d 0c 1b                 	leal	(%r11,%r11), %ecx
1000035a7: 83 c1 02                    	addl	$2, %ecx
1000035aa: 48 89 4d 90                 	movq	%rcx, -112(%rbp)
1000035ae: b9 01 00 00 00              	movl	$1, %ecx
1000035b3: 29 c1                       	subl	%eax, %ecx
1000035b5: 44 89 c8                    	movl	%r9d, %eax
1000035b8: 48 89 45 a0                 	movq	%rax, -96(%rbp)
1000035bc: 44 89 e8                    	movl	%r13d, %eax
1000035bf: 41 0f af c3                 	imull	%r11d, %eax
1000035c3: 89 45 bc                    	movl	%eax, -68(%rbp)
1000035c6: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000035ca: 31 c0                       	xorl	%eax, %eax
1000035cc: 89 4d cc                    	movl	%ecx, -52(%rbp)
1000035cf: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000035d3: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000035d7: 75 22                       	jne	34 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xcb>
1000035d9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000035e0: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000035e4: 48 ff c0                    	incq	%rax
1000035e7: 48 3b 45 a0                 	cmpq	-96(%rbp), %rax
1000035eb: 0f 84 9c 01 00 00           	je	412 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x25d>
1000035f1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000035f5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000035f9: 74 e5                       	je	-27 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
1000035fb: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
1000035ff: 0f 84 6b 01 00 00           	je	363 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x240>
100003605: 8b 45 18                    	movl	24(%rbp), %eax
100003608: 31 d2                       	xorl	%edx, %edx
10000360a: 41 f7 f5                    	divl	%r13d
10000360d: 89 45 b8                    	movl	%eax, -72(%rbp)
100003610: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100003614: 44 8d 1c c0                 	leal	(%rax,%rax,8), %r11d
100003618: 31 d2                       	xorl	%edx, %edx
10000361a: 31 c0                       	xorl	%eax, %eax
10000361c: 0f 1f 40 00                 	nopl	(%rax)
100003620: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100003624: 89 45 b4                    	movl	%eax, -76(%rbp)
100003627: 31 d2                       	xorl	%edx, %edx
100003629: 41 f7 f5                    	divl	%r13d
10000362c: 41 89 c4                    	movl	%eax, %r12d
10000362f: 41 01 cc                    	addl	%ecx, %r12d
100003632: 44 0f af 65 b8              	imull	-72(%rbp), %r12d
100003637: 31 db                       	xorl	%ebx, %ebx
100003639: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
10000363d: 4c 8b 7d c0                 	movq	-64(%rbp), %r15
100003641: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000364b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003650: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100003654: 01 d8                       	addl	%ebx, %eax
100003656: 48 8d 14 06                 	leaq	(%rsi,%rax), %rdx
10000365a: 4c 89 d7                    	movq	%r10, %rdi
10000365d: 44 0f b7 14 06              	movzwl	(%rsi,%rax), %r10d
100003662: c4 c1 79 6e ca              	vmovd	%r10d, %xmm1
100003667: 49 89 fa                    	movq	%rdi, %r10
10000366a: c4 e3 71 0e c8 fe           	vpblendw	$254, %xmm0, %xmm1, %xmm1
100003670: c4 a2 7d 21 14 19           	vpmovsxbd	(%rcx,%r11), %ymm2
100003676: c4 e3 71 20 4c 06 02 02     	vpinsrb	$2, 2(%rsi,%rax), %xmm1, %xmm1
10000367e: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
100003685: c4 e3 71 20 0c 10 03        	vpinsrb	$3, (%rax,%rdx), %xmm1, %xmm1
10000368c: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
100003693: c4 e3 71 20 0c 10 04        	vpinsrb	$4, (%rax,%rdx), %xmm1, %xmm1
10000369a: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
1000036a1: c4 e3 71 20 0c 10 05        	vpinsrb	$5, (%rax,%rdx), %xmm1, %xmm1
1000036a8: 48 8b 45 80                 	movq	-128(%rbp), %rax
1000036ac: c4 e3 71 20 0c 10 06        	vpinsrb	$6, (%rax,%rdx), %xmm1, %xmm1
1000036b3: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000036b7: c4 e3 71 20 0c 10 07        	vpinsrb	$7, (%rax,%rdx), %xmm1, %xmm1
1000036be: c4 e2 7d 21 c9              	vpmovsxbd	%xmm1, %ymm1
1000036c3: c4 e2 75 40 ca              	vpmulld	%ymm2, %ymm1, %ymm1
1000036c8: 42 0f be 44 19 08           	movsbl	8(%rcx,%r11), %eax
1000036ce: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
1000036d2: 0f be 14 17                 	movsbl	(%rdi,%rdx), %edx
1000036d6: 0f af d0                    	imull	%eax, %edx
1000036d9: 43 0f be 3c 1a              	movsbl	(%r10,%r11), %edi
1000036de: c4 e3 7d 39 ca 01           	vextracti128	$1, %ymm1, %xmm2
1000036e4: c5 f1 fe ca                 	vpaddd	%xmm2, %xmm1, %xmm1
1000036e8: c5 f9 70 d1 4e              	vpshufd	$78, %xmm1, %xmm2
1000036ed: c5 f1 fe ca                 	vpaddd	%xmm2, %xmm1, %xmm1
1000036f1: c5 f9 70 d1 e5              	vpshufd	$229, %xmm1, %xmm2
1000036f6: c5 f1 fe ca                 	vpaddd	%xmm2, %xmm1, %xmm1
1000036fa: c5 f9 7e c8                 	vmovd	%xmm1, %eax
1000036fe: 01 d0                       	addl	%edx, %eax
100003700: 01 f8                       	addl	%edi, %eax
100003702: 41 0f af c0                 	imull	%r8d, %eax
100003706: 89 c7                       	movl	%eax, %edi
100003708: c1 ff 1f                    	sarl	$31, %edi
10000370b: c1 ef 12                    	shrl	$18, %edi
10000370e: 01 c7                       	addl	%eax, %edi
100003710: c1 ff 0e                    	sarl	$14, %edi
100003713: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003719: b8 7f 00 00 00              	movl	$127, %eax
10000371e: 0f 4d f8                    	cmovgel	%eax, %edi
100003721: 89 d8                       	movl	%ebx, %eax
100003723: 31 d2                       	xorl	%edx, %edx
100003725: 41 f7 f5                    	divl	%r13d
100003728: 03 45 cc                    	addl	-52(%rbp), %eax
10000372b: 44 01 e0                    	addl	%r12d, %eax
10000372e: 41 0f af c1                 	imull	%r9d, %eax
100003732: 44 01 f8                    	addl	%r15d, %eax
100003735: 83 ff 81                    	cmpl	$-127, %edi
100003738: ba 81 00 00 00              	movl	$129, %edx
10000373d: 0f 4e fa                    	cmovlel	%edx, %edi
100003740: 41 88 3c 06                 	movb	%dil, (%r14,%rax)
100003744: 44 01 eb                    	addl	%r13d, %ebx
100003747: 3b 5d d0                    	cmpl	-48(%rbp), %ebx
10000374a: 0f 82 00 ff ff ff           	jb	-256 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x120>
100003750: 8b 45 b4                    	movl	-76(%rbp), %eax
100003753: 44 01 e8                    	addl	%r13d, %eax
100003756: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
10000375a: 03 55 bc                    	addl	-68(%rbp), %edx
10000375d: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003760: 8b 4d cc                    	movl	-52(%rbp), %ecx
100003763: 0f 82 b7 fe ff ff           	jb	-329 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xf0>
100003769: e9 72 fe ff ff              	jmp	-398 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
10000376e: 66 90                       	nop
100003770: 31 c0                       	xorl	%eax, %eax
100003772: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000377c: 0f 1f 40 00                 	nopl	(%rax)
100003780: 44 01 e8                    	addl	%r13d, %eax
100003783: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003786: 72 f8                       	jb	-8 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0x250>
100003788: e9 53 fe ff ff              	jmp	-429 <__Z14Conv2d_kernel1ILj3EasEvPT0_S1_PKS0_S3_ijjjj+0xb0>
10000378d: 5b                          	popq	%rbx
10000378e: 41 5c                       	popq	%r12
100003790: 41 5d                       	popq	%r13
100003792: 41 5e                       	popq	%r14
100003794: 41 5f                       	popq	%r15
100003796: 5d                          	popq	%rbp
100003797: c5 f8 77                    	vzeroupper
10000379a: c3                          	retq
10000379b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000037a0 __Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj:
1000037a0: 55                          	pushq	%rbp
1000037a1: 48 89 e5                    	movq	%rsp, %rbp
1000037a4: 41 57                       	pushq	%r15
1000037a6: 41 56                       	pushq	%r14
1000037a8: 41 55                       	pushq	%r13
1000037aa: 41 54                       	pushq	%r12
1000037ac: 53                          	pushq	%rbx
1000037ad: 48 81 ec 88 00 00 00        	subq	$136, %rsp
1000037b4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
1000037b8: 45 85 c9                    	testl	%r9d, %r9d
1000037bb: 0f 84 3b 02 00 00           	je	571 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
1000037c1: 49 89 d2                    	movq	%rdx, %r10
1000037c4: 49 89 f4                    	movq	%rsi, %r12
1000037c7: 8b 5d 20                    	movl	32(%rbp), %ebx
1000037ca: 8b 45 18                    	movl	24(%rbp), %eax
1000037cd: 8b 55 10                    	movl	16(%rbp), %edx
1000037d0: 89 d9                       	movl	%ebx, %ecx
1000037d2: d1 e9                       	shrl	%ecx
1000037d4: 29 ca                       	subl	%ecx, %edx
1000037d6: 83 c2 fe                    	addl	$-2, %edx
1000037d9: 89 55 d4                    	movl	%edx, -44(%rbp)
1000037dc: 89 c2                       	movl	%eax, %edx
1000037de: 29 ca                       	subl	%ecx, %edx
1000037e0: 83 c2 fe                    	addl	$-2, %edx
1000037e3: 41 bb 01 00 00 00           	movl	$1, %r11d
1000037e9: 41 29 cb                    	subl	%ecx, %r11d
1000037ec: 44 89 c9                    	movl	%r9d, %ecx
1000037ef: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
1000037f3: 8d 0c c5 00 00 00 00        	leal	(,%rax,8), %ecx
1000037fa: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
1000037fe: 89 d9                       	movl	%ebx, %ecx
100003800: 0f af c8                    	imull	%eax, %ecx
100003803: c1 e1 02                    	shll	$2, %ecx
100003806: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003809: 44 8d 2c 9d 00 00 00 00     	leal	(,%rbx,4), %r13d
100003811: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
100003818: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000381c: 31 c0                       	xorl	%eax, %eax
10000381e: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003822: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003826: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
10000382d: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003831: 89 55 b4                    	movl	%edx, -76(%rbp)
100003834: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003838: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
10000383c: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003840: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003844: 75 25                       	jne	37 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xcb>
100003846: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003850: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003854: 48 ff c0                    	incq	%rax
100003857: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
10000385b: 0f 84 9b 01 00 00           	je	411 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
100003861: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003865: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003869: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
10000386b: 85 d2                       	testl	%edx, %edx
10000386d: 0f 84 6d 01 00 00           	je	365 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x240>
100003873: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003877: 8d 04 85 00 00 00 00        	leal	(,%rax,4), %eax
10000387e: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003881: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003885: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
10000388c: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003890: 48 8d 46 0c                 	leaq	12(%rsi), %rax
100003894: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000389b: 48 8d 46 18                 	leaq	24(%rsi), %rax
10000389f: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
1000038a6: 31 c0                       	xorl	%eax, %eax
1000038a8: 31 c9                       	xorl	%ecx, %ecx
1000038aa: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
1000038b1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000038bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000038c0: 89 4d d0                    	movl	%ecx, -48(%rbp)
1000038c3: 89 45 c0                    	movl	%eax, -64(%rbp)
1000038c6: 41 89 c7                    	movl	%eax, %r15d
1000038c9: 45 31 f6                    	xorl	%r14d, %r14d
1000038cc: 0f 1f 40 00                 	nopl	(%rax)
1000038d0: 44 89 ff                    	movl	%r15d, %edi
1000038d3: 4c 01 e7                    	addq	%r12, %rdi
1000038d6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
1000038dd: e8 7e 0b 00 00              	callq	2942 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000038e2: 0f bf d8                    	movswl	%ax, %ebx
1000038e5: 48 8b 45 90                 	movq	-112(%rbp), %rax
1000038e9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
1000038ed: 4c 01 e7                    	addq	%r12, %rdi
1000038f0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
1000038f7: e8 64 0b 00 00              	callq	2916 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
1000038fc: 44 0f bf e8                 	movswl	%ax, %r13d
100003900: 41 01 dd                    	addl	%ebx, %r13d
100003903: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003907: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000390b: 4c 01 e7                    	addq	%r12, %rdi
10000390e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003915: e8 46 0b 00 00              	callq	2886 <__Z11microkernelILj3ELj4EasET2_PKT1_S3_>
10000391a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
10000391e: 8b 5d 20                    	movl	32(%rbp), %ebx
100003921: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003928: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
10000392c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003930: 98                          	cwtl
100003931: 44 01 e8                    	addl	%r13d, %eax
100003934: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100003938: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000393f: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003944: 01 c1                       	addl	%eax, %ecx
100003946: 41 0f af c8                 	imull	%r8d, %ecx
10000394a: 89 cf                       	movl	%ecx, %edi
10000394c: c1 ff 1f                    	sarl	$31, %edi
10000394f: c1 ef 12                    	shrl	$18, %edi
100003952: 01 cf                       	addl	%ecx, %edi
100003954: c1 ff 0e                    	sarl	$14, %edi
100003957: 81 ff 80 00 00 00           	cmpl	$128, %edi
10000395d: b8 7f 00 00 00              	movl	$127, %eax
100003962: 0f 4d f8                    	cmovgel	%eax, %edi
100003965: 44 89 f0                    	movl	%r14d, %eax
100003968: 31 d2                       	xorl	%edx, %edx
10000396a: f7 f3                       	divl	%ebx
10000396c: 89 c1                       	movl	%eax, %ecx
10000396e: 8b 45 d0                    	movl	-48(%rbp), %eax
100003971: 31 d2                       	xorl	%edx, %edx
100003973: f7 f3                       	divl	%ebx
100003975: 89 c6                       	movl	%eax, %esi
100003977: 44 89 d8                    	movl	%r11d, %eax
10000397a: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
10000397e: 31 d2                       	xorl	%edx, %edx
100003980: f7 f3                       	divl	%ebx
100003982: 8b 55 b4                    	movl	-76(%rbp), %edx
100003985: 44 01 de                    	addl	%r11d, %esi
100003988: 0f af c6                    	imull	%esi, %eax
10000398b: be 81 00 00 00              	movl	$129, %esi
100003990: 44 01 d9                    	addl	%r11d, %ecx
100003993: 01 c1                       	addl	%eax, %ecx
100003995: 41 0f af c9                 	imull	%r9d, %ecx
100003999: 03 4d c8                    	addl	-56(%rbp), %ecx
10000399c: 83 ff 81                    	cmpl	$-127, %edi
10000399f: 0f 4e fe                    	cmovlel	%esi, %edi
1000039a2: 48 8b 45 80                 	movq	-128(%rbp), %rax
1000039a6: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
1000039aa: 41 01 de                    	addl	%ebx, %r14d
1000039ad: 45 01 ef                    	addl	%r13d, %r15d
1000039b0: 41 39 d6                    	cmpl	%edx, %r14d
1000039b3: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x130>
1000039b9: 8b 4d d0                    	movl	-48(%rbp), %ecx
1000039bc: 01 d9                       	addl	%ebx, %ecx
1000039be: 8b 45 c0                    	movl	-64(%rbp), %eax
1000039c1: 03 45 c4                    	addl	-60(%rbp), %eax
1000039c4: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
1000039c7: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x120>
1000039cd: e9 7e fe ff ff              	jmp	-386 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
1000039d2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000039dc: 0f 1f 40 00                 	nopl	(%rax)
1000039e0: 31 c0                       	xorl	%eax, %eax
1000039e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000039ec: 0f 1f 40 00                 	nopl	(%rax)
1000039f0: 01 d8                       	addl	%ebx, %eax
1000039f2: 3b 45 d4                    	cmpl	-44(%rbp), %eax
1000039f5: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0x250>
1000039f7: e9 54 fe ff ff              	jmp	-428 <__Z13Conv2d_kernelILj3ELj4EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
1000039fc: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003a03: 5b                          	popq	%rbx
100003a04: 41 5c                       	popq	%r12
100003a06: 41 5d                       	popq	%r13
100003a08: 41 5e                       	popq	%r14
100003a0a: 41 5f                       	popq	%r15
100003a0c: 5d                          	popq	%rbp
100003a0d: c3                          	retq
100003a0e: 66 90                       	nop

0000000100003a10 __Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj:
100003a10: 55                          	pushq	%rbp
100003a11: 48 89 e5                    	movq	%rsp, %rbp
100003a14: 41 57                       	pushq	%r15
100003a16: 41 56                       	pushq	%r14
100003a18: 41 55                       	pushq	%r13
100003a1a: 41 54                       	pushq	%r12
100003a1c: 53                          	pushq	%rbx
100003a1d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003a24: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003a28: 45 85 c9                    	testl	%r9d, %r9d
100003a2b: 0f 84 3b 02 00 00           	je	571 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
100003a31: 49 89 d2                    	movq	%rdx, %r10
100003a34: 49 89 f4                    	movq	%rsi, %r12
100003a37: 8b 5d 20                    	movl	32(%rbp), %ebx
100003a3a: 8b 45 18                    	movl	24(%rbp), %eax
100003a3d: 8b 55 10                    	movl	16(%rbp), %edx
100003a40: 89 d9                       	movl	%ebx, %ecx
100003a42: d1 e9                       	shrl	%ecx
100003a44: 29 ca                       	subl	%ecx, %edx
100003a46: 83 c2 fe                    	addl	$-2, %edx
100003a49: 89 55 d4                    	movl	%edx, -44(%rbp)
100003a4c: 89 c2                       	movl	%eax, %edx
100003a4e: 29 ca                       	subl	%ecx, %edx
100003a50: 83 c2 fe                    	addl	$-2, %edx
100003a53: 41 bb 01 00 00 00           	movl	$1, %r11d
100003a59: 41 29 cb                    	subl	%ecx, %r11d
100003a5c: 44 89 c9                    	movl	%r9d, %ecx
100003a5f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003a63: 89 c1                       	movl	%eax, %ecx
100003a65: c1 e1 04                    	shll	$4, %ecx
100003a68: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003a6c: 89 d9                       	movl	%ebx, %ecx
100003a6e: 0f af c8                    	imull	%eax, %ecx
100003a71: c1 e1 03                    	shll	$3, %ecx
100003a74: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003a77: 44 8d 2c dd 00 00 00 00     	leal	(,%rbx,8), %r13d
100003a7f: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003a86: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003a8a: 31 c0                       	xorl	%eax, %eax
100003a8c: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003a90: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003a94: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003a9b: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003a9f: 89 55 b4                    	movl	%edx, -76(%rbp)
100003aa2: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003aa6: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100003aaa: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003aae: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003ab2: 75 27                       	jne	39 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xcb>
100003ab4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003abe: 66 90                       	nop
100003ac0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003ac4: 48 ff c0                    	incq	%rax
100003ac7: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003acb: 0f 84 9b 01 00 00           	je	411 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x25c>
100003ad1: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003ad5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003ad9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
100003adb: 85 d2                       	testl	%edx, %edx
100003add: 0f 84 6d 01 00 00           	je	365 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x240>
100003ae3: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003ae7: 8d 04 c5 00 00 00 00        	leal	(,%rax,8), %eax
100003aee: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003af1: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003af5: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003afc: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003b00: 48 8d 46 18                 	leaq	24(%rsi), %rax
100003b04: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003b0b: 48 8d 46 30                 	leaq	48(%rsi), %rax
100003b0f: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003b16: 31 c0                       	xorl	%eax, %eax
100003b18: 31 c9                       	xorl	%ecx, %ecx
100003b1a: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003b21: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003b2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003b30: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003b33: 89 45 c0                    	movl	%eax, -64(%rbp)
100003b36: 41 89 c7                    	movl	%eax, %r15d
100003b39: 45 31 f6                    	xorl	%r14d, %r14d
100003b3c: 0f 1f 40 00                 	nopl	(%rax)
100003b40: 44 89 ff                    	movl	%r15d, %edi
100003b43: 4c 01 e7                    	addq	%r12, %rdi
100003b46: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003b4d: e8 7e 09 00 00              	callq	2430 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003b52: 0f bf d8                    	movswl	%ax, %ebx
100003b55: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003b59: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003b5d: 4c 01 e7                    	addq	%r12, %rdi
100003b60: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003b67: e8 64 09 00 00              	callq	2404 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003b6c: 44 0f bf e8                 	movswl	%ax, %r13d
100003b70: 41 01 dd                    	addl	%ebx, %r13d
100003b73: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003b77: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003b7b: 4c 01 e7                    	addq	%r12, %rdi
100003b7e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003b85: e8 46 09 00 00              	callq	2374 <__Z11microkernelILj3ELj8EasET2_PKT1_S3_>
100003b8a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003b8e: 8b 5d 20                    	movl	32(%rbp), %ebx
100003b91: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003b98: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
100003b9c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003ba0: 98                          	cwtl
100003ba1: 44 01 e8                    	addl	%r13d, %eax
100003ba4: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100003ba8: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003baf: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003bb4: 01 c1                       	addl	%eax, %ecx
100003bb6: 41 0f af c8                 	imull	%r8d, %ecx
100003bba: 89 cf                       	movl	%ecx, %edi
100003bbc: c1 ff 1f                    	sarl	$31, %edi
100003bbf: c1 ef 12                    	shrl	$18, %edi
100003bc2: 01 cf                       	addl	%ecx, %edi
100003bc4: c1 ff 0e                    	sarl	$14, %edi
100003bc7: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003bcd: b8 7f 00 00 00              	movl	$127, %eax
100003bd2: 0f 4d f8                    	cmovgel	%eax, %edi
100003bd5: 44 89 f0                    	movl	%r14d, %eax
100003bd8: 31 d2                       	xorl	%edx, %edx
100003bda: f7 f3                       	divl	%ebx
100003bdc: 89 c1                       	movl	%eax, %ecx
100003bde: 8b 45 d0                    	movl	-48(%rbp), %eax
100003be1: 31 d2                       	xorl	%edx, %edx
100003be3: f7 f3                       	divl	%ebx
100003be5: 89 c6                       	movl	%eax, %esi
100003be7: 44 89 d8                    	movl	%r11d, %eax
100003bea: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
100003bee: 31 d2                       	xorl	%edx, %edx
100003bf0: f7 f3                       	divl	%ebx
100003bf2: 8b 55 b4                    	movl	-76(%rbp), %edx
100003bf5: 44 01 de                    	addl	%r11d, %esi
100003bf8: 0f af c6                    	imull	%esi, %eax
100003bfb: be 81 00 00 00              	movl	$129, %esi
100003c00: 44 01 d9                    	addl	%r11d, %ecx
100003c03: 01 c1                       	addl	%eax, %ecx
100003c05: 41 0f af c9                 	imull	%r9d, %ecx
100003c09: 03 4d c8                    	addl	-56(%rbp), %ecx
100003c0c: 83 ff 81                    	cmpl	$-127, %edi
100003c0f: 0f 4e fe                    	cmovlel	%esi, %edi
100003c12: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003c16: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003c1a: 41 01 de                    	addl	%ebx, %r14d
100003c1d: 45 01 ef                    	addl	%r13d, %r15d
100003c20: 41 39 d6                    	cmpl	%edx, %r14d
100003c23: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x130>
100003c29: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003c2c: 01 d9                       	addl	%ebx, %ecx
100003c2e: 8b 45 c0                    	movl	-64(%rbp), %eax
100003c31: 03 45 c4                    	addl	-60(%rbp), %eax
100003c34: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
100003c37: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x120>
100003c3d: e9 7e fe ff ff              	jmp	-386 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
100003c42: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003c4c: 0f 1f 40 00                 	nopl	(%rax)
100003c50: 31 c0                       	xorl	%eax, %eax
100003c52: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003c5c: 0f 1f 40 00                 	nopl	(%rax)
100003c60: 01 d8                       	addl	%ebx, %eax
100003c62: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003c65: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0x250>
100003c67: e9 54 fe ff ff              	jmp	-428 <__Z13Conv2d_kernelILj3ELj8EasEvPT1_S1_PKS0_S3_ijjjj+0xb0>
100003c6c: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003c73: 5b                          	popq	%rbx
100003c74: 41 5c                       	popq	%r12
100003c76: 41 5d                       	popq	%r13
100003c78: 41 5e                       	popq	%r14
100003c7a: 41 5f                       	popq	%r15
100003c7c: 5d                          	popq	%rbp
100003c7d: c3                          	retq
100003c7e: 66 90                       	nop

0000000100003c80 __Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj:
100003c80: 55                          	pushq	%rbp
100003c81: 48 89 e5                    	movq	%rsp, %rbp
100003c84: 41 57                       	pushq	%r15
100003c86: 41 56                       	pushq	%r14
100003c88: 41 55                       	pushq	%r13
100003c8a: 41 54                       	pushq	%r12
100003c8c: 53                          	pushq	%rbx
100003c8d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003c94: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003c98: 45 85 c9                    	testl	%r9d, %r9d
100003c9b: 0f 84 1b 02 00 00           	je	539 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003ca1: 49 89 d2                    	movq	%rdx, %r10
100003ca4: 49 89 f4                    	movq	%rsi, %r12
100003ca7: 8b 5d 20                    	movl	32(%rbp), %ebx
100003caa: 8b 45 18                    	movl	24(%rbp), %eax
100003cad: 8b 55 10                    	movl	16(%rbp), %edx
100003cb0: 89 d9                       	movl	%ebx, %ecx
100003cb2: d1 e9                       	shrl	%ecx
100003cb4: 29 ca                       	subl	%ecx, %edx
100003cb6: 83 c2 fe                    	addl	$-2, %edx
100003cb9: 89 55 d4                    	movl	%edx, -44(%rbp)
100003cbc: 89 c2                       	movl	%eax, %edx
100003cbe: 29 ca                       	subl	%ecx, %edx
100003cc0: 83 c2 fe                    	addl	$-2, %edx
100003cc3: 41 bb 01 00 00 00           	movl	$1, %r11d
100003cc9: 41 29 cb                    	subl	%ecx, %r11d
100003ccc: 44 89 c9                    	movl	%r9d, %ecx
100003ccf: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003cd3: 89 c1                       	movl	%eax, %ecx
100003cd5: c1 e1 05                    	shll	$5, %ecx
100003cd8: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003cdc: 89 d9                       	movl	%ebx, %ecx
100003cde: 0f af c8                    	imull	%eax, %ecx
100003ce1: c1 e1 04                    	shll	$4, %ecx
100003ce4: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003ce7: 41 89 dd                    	movl	%ebx, %r13d
100003cea: 41 c1 e5 04                 	shll	$4, %r13d
100003cee: c1 e0 04                    	shll	$4, %eax
100003cf1: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003cf5: 31 c0                       	xorl	%eax, %eax
100003cf7: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003cfb: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003cff: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003d06: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003d0a: 89 55 b4                    	movl	%edx, -76(%rbp)
100003d0d: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003d11: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100003d15: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003d19: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003d1d: 75 1c                       	jne	28 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xbb>
100003d1f: 90                          	nop
100003d20: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003d24: 48 ff c0                    	incq	%rax
100003d27: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003d2b: 0f 84 8b 01 00 00           	je	395 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003d31: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003d35: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003d39: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003d3b: 85 d2                       	testl	%edx, %edx
100003d3d: 0f 84 5d 01 00 00           	je	349 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x220>
100003d43: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003d47: c1 e0 04                    	shll	$4, %eax
100003d4a: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003d4d: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003d51: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003d58: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003d5c: 48 8d 46 30                 	leaq	48(%rsi), %rax
100003d60: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003d67: 48 8d 46 60                 	leaq	96(%rsi), %rax
100003d6b: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003d72: 31 c0                       	xorl	%eax, %eax
100003d74: 31 c9                       	xorl	%ecx, %ecx
100003d76: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003d7d: 0f 1f 00                    	nopl	(%rax)
100003d80: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003d83: 89 45 c0                    	movl	%eax, -64(%rbp)
100003d86: 41 89 c7                    	movl	%eax, %r15d
100003d89: 45 31 f6                    	xorl	%r14d, %r14d
100003d8c: 0f 1f 40 00                 	nopl	(%rax)
100003d90: 44 89 ff                    	movl	%r15d, %edi
100003d93: 4c 01 e7                    	addq	%r12, %rdi
100003d96: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003d9d: e8 de 07 00 00              	callq	2014 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003da2: 0f bf d8                    	movswl	%ax, %ebx
100003da5: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003da9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003dad: 4c 01 e7                    	addq	%r12, %rdi
100003db0: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100003db7: e8 c4 07 00 00              	callq	1988 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003dbc: 44 0f bf e8                 	movswl	%ax, %r13d
100003dc0: 41 01 dd                    	addl	%ebx, %r13d
100003dc3: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003dc7: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003dcb: 4c 01 e7                    	addq	%r12, %rdi
100003dce: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100003dd5: e8 a6 07 00 00              	callq	1958 <__Z11microkernelILj3ELj16EasET2_PKT1_S3_>
100003dda: 44 8b 5d 18                 	movl	24(%rbp), %r11d
100003dde: 8b 5d 20                    	movl	32(%rbp), %ebx
100003de1: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100003de8: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
100003dec: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100003df0: 98                          	cwtl
100003df1: 44 01 e8                    	addl	%r13d, %eax
100003df4: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100003df8: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003dff: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100003e04: 01 c1                       	addl	%eax, %ecx
100003e06: 41 0f af c8                 	imull	%r8d, %ecx
100003e0a: 89 cf                       	movl	%ecx, %edi
100003e0c: c1 ff 1f                    	sarl	$31, %edi
100003e0f: c1 ef 12                    	shrl	$18, %edi
100003e12: 01 cf                       	addl	%ecx, %edi
100003e14: c1 ff 0e                    	sarl	$14, %edi
100003e17: 81 ff 80 00 00 00           	cmpl	$128, %edi
100003e1d: b8 7f 00 00 00              	movl	$127, %eax
100003e22: 0f 4d f8                    	cmovgel	%eax, %edi
100003e25: 44 89 f0                    	movl	%r14d, %eax
100003e28: 31 d2                       	xorl	%edx, %edx
100003e2a: f7 f3                       	divl	%ebx
100003e2c: 89 c1                       	movl	%eax, %ecx
100003e2e: 8b 45 d0                    	movl	-48(%rbp), %eax
100003e31: 31 d2                       	xorl	%edx, %edx
100003e33: f7 f3                       	divl	%ebx
100003e35: 89 c6                       	movl	%eax, %esi
100003e37: 44 89 d8                    	movl	%r11d, %eax
100003e3a: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
100003e3e: 31 d2                       	xorl	%edx, %edx
100003e40: f7 f3                       	divl	%ebx
100003e42: 8b 55 b4                    	movl	-76(%rbp), %edx
100003e45: 44 01 de                    	addl	%r11d, %esi
100003e48: 0f af c6                    	imull	%esi, %eax
100003e4b: be 81 00 00 00              	movl	$129, %esi
100003e50: 44 01 d9                    	addl	%r11d, %ecx
100003e53: 01 c1                       	addl	%eax, %ecx
100003e55: 41 0f af c9                 	imull	%r9d, %ecx
100003e59: 03 4d c8                    	addl	-56(%rbp), %ecx
100003e5c: 83 ff 81                    	cmpl	$-127, %edi
100003e5f: 0f 4e fe                    	cmovlel	%esi, %edi
100003e62: 48 8b 45 80                 	movq	-128(%rbp), %rax
100003e66: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
100003e6a: 41 01 de                    	addl	%ebx, %r14d
100003e6d: 45 01 ef                    	addl	%r13d, %r15d
100003e70: 41 39 d6                    	cmpl	%edx, %r14d
100003e73: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
100003e79: 8b 4d d0                    	movl	-48(%rbp), %ecx
100003e7c: 01 d9                       	addl	%ebx, %ecx
100003e7e: 8b 45 c0                    	movl	-64(%rbp), %eax
100003e81: 03 45 c4                    	addl	-60(%rbp), %eax
100003e84: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
100003e87: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x100>
100003e8d: e9 8e fe ff ff              	jmp	-370 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003e92: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003e9c: 0f 1f 40 00                 	nopl	(%rax)
100003ea0: 31 c0                       	xorl	%eax, %eax
100003ea2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003eac: 0f 1f 40 00                 	nopl	(%rax)
100003eb0: 01 d8                       	addl	%ebx, %eax
100003eb2: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100003eb5: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0x230>
100003eb7: e9 64 fe ff ff              	jmp	-412 <__Z13Conv2d_kernelILj3ELj16EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003ebc: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003ec3: 5b                          	popq	%rbx
100003ec4: 41 5c                       	popq	%r12
100003ec6: 41 5d                       	popq	%r13
100003ec8: 41 5e                       	popq	%r14
100003eca: 41 5f                       	popq	%r15
100003ecc: 5d                          	popq	%rbp
100003ecd: c3                          	retq
100003ece: 66 90                       	nop

0000000100003ed0 __Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj:
100003ed0: 55                          	pushq	%rbp
100003ed1: 48 89 e5                    	movq	%rsp, %rbp
100003ed4: 41 57                       	pushq	%r15
100003ed6: 41 56                       	pushq	%r14
100003ed8: 41 55                       	pushq	%r13
100003eda: 41 54                       	pushq	%r12
100003edc: 53                          	pushq	%rbx
100003edd: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003ee4: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100003ee8: 45 85 c9                    	testl	%r9d, %r9d
100003eeb: 0f 84 1b 02 00 00           	je	539 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003ef1: 49 89 d2                    	movq	%rdx, %r10
100003ef4: 49 89 f4                    	movq	%rsi, %r12
100003ef7: 8b 5d 20                    	movl	32(%rbp), %ebx
100003efa: 8b 45 18                    	movl	24(%rbp), %eax
100003efd: 8b 55 10                    	movl	16(%rbp), %edx
100003f00: 89 d9                       	movl	%ebx, %ecx
100003f02: d1 e9                       	shrl	%ecx
100003f04: 29 ca                       	subl	%ecx, %edx
100003f06: 83 c2 fe                    	addl	$-2, %edx
100003f09: 89 55 d4                    	movl	%edx, -44(%rbp)
100003f0c: 89 c2                       	movl	%eax, %edx
100003f0e: 29 ca                       	subl	%ecx, %edx
100003f10: 83 c2 fe                    	addl	$-2, %edx
100003f13: 41 bb 01 00 00 00           	movl	$1, %r11d
100003f19: 41 29 cb                    	subl	%ecx, %r11d
100003f1c: 44 89 c9                    	movl	%r9d, %ecx
100003f1f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100003f23: 89 c1                       	movl	%eax, %ecx
100003f25: c1 e1 06                    	shll	$6, %ecx
100003f28: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
100003f2c: 89 d9                       	movl	%ebx, %ecx
100003f2e: 0f af c8                    	imull	%eax, %ecx
100003f31: c1 e1 05                    	shll	$5, %ecx
100003f34: 89 4d c4                    	movl	%ecx, -60(%rbp)
100003f37: 41 89 dd                    	movl	%ebx, %r13d
100003f3a: 41 c1 e5 05                 	shll	$5, %r13d
100003f3e: c1 e0 05                    	shll	$5, %eax
100003f41: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003f45: 31 c0                       	xorl	%eax, %eax
100003f47: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
100003f4b: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
100003f4f: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
100003f56: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003f5a: 89 55 b4                    	movl	%edx, -76(%rbp)
100003f5d: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
100003f61: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
100003f65: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003f69: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003f6d: 75 1c                       	jne	28 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xbb>
100003f6f: 90                          	nop
100003f70: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003f74: 48 ff c0                    	incq	%rax
100003f77: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
100003f7b: 0f 84 8b 01 00 00           	je	395 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x23c>
100003f81: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003f85: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
100003f89: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100003f8b: 85 d2                       	testl	%edx, %edx
100003f8d: 0f 84 5d 01 00 00           	je	349 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x220>
100003f93: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100003f97: c1 e0 05                    	shll	$5, %eax
100003f9a: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
100003f9d: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003fa1: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
100003fa8: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
100003fac: 48 8d 46 60                 	leaq	96(%rsi), %rax
100003fb0: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003fb7: 48 8d 86 c0 00 00 00        	leaq	192(%rsi), %rax
100003fbe: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003fc5: 31 c0                       	xorl	%eax, %eax
100003fc7: 31 c9                       	xorl	%ecx, %ecx
100003fc9: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100003fd0: 89 4d d0                    	movl	%ecx, -48(%rbp)
100003fd3: 89 45 c0                    	movl	%eax, -64(%rbp)
100003fd6: 41 89 c7                    	movl	%eax, %r15d
100003fd9: 45 31 f6                    	xorl	%r14d, %r14d
100003fdc: 0f 1f 40 00                 	nopl	(%rax)
100003fe0: 44 89 ff                    	movl	%r15d, %edi
100003fe3: 4c 01 e7                    	addq	%r12, %rdi
100003fe6: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
100003fed: e8 0e 08 00 00              	callq	2062 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
100003ff2: 0f bf d8                    	movswl	%ax, %ebx
100003ff5: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003ff9: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
100003ffd: 4c 01 e7                    	addq	%r12, %rdi
100004000: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100004007: e8 f4 07 00 00              	callq	2036 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
10000400c: 44 0f bf e8                 	movswl	%ax, %r13d
100004010: 41 01 dd                    	addl	%ebx, %r13d
100004013: 48 8b 45 88                 	movq	-120(%rbp), %rax
100004017: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000401b: 4c 01 e7                    	addq	%r12, %rdi
10000401e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100004025: e8 d6 07 00 00              	callq	2006 <__Z11microkernelILj3ELj32EasET2_PKT1_S3_>
10000402a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
10000402e: 8b 5d 20                    	movl	32(%rbp), %ebx
100004031: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100004038: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
10000403c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
100004040: 98                          	cwtl
100004041: 44 01 e8                    	addl	%r13d, %eax
100004044: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
100004048: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000404f: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
100004054: 01 c1                       	addl	%eax, %ecx
100004056: 41 0f af c8                 	imull	%r8d, %ecx
10000405a: 89 cf                       	movl	%ecx, %edi
10000405c: c1 ff 1f                    	sarl	$31, %edi
10000405f: c1 ef 12                    	shrl	$18, %edi
100004062: 01 cf                       	addl	%ecx, %edi
100004064: c1 ff 0e                    	sarl	$14, %edi
100004067: 81 ff 80 00 00 00           	cmpl	$128, %edi
10000406d: b8 7f 00 00 00              	movl	$127, %eax
100004072: 0f 4d f8                    	cmovgel	%eax, %edi
100004075: 44 89 f0                    	movl	%r14d, %eax
100004078: 31 d2                       	xorl	%edx, %edx
10000407a: f7 f3                       	divl	%ebx
10000407c: 89 c1                       	movl	%eax, %ecx
10000407e: 8b 45 d0                    	movl	-48(%rbp), %eax
100004081: 31 d2                       	xorl	%edx, %edx
100004083: f7 f3                       	divl	%ebx
100004085: 89 c6                       	movl	%eax, %esi
100004087: 44 89 d8                    	movl	%r11d, %eax
10000408a: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
10000408e: 31 d2                       	xorl	%edx, %edx
100004090: f7 f3                       	divl	%ebx
100004092: 8b 55 b4                    	movl	-76(%rbp), %edx
100004095: 44 01 de                    	addl	%r11d, %esi
100004098: 0f af c6                    	imull	%esi, %eax
10000409b: be 81 00 00 00              	movl	$129, %esi
1000040a0: 44 01 d9                    	addl	%r11d, %ecx
1000040a3: 01 c1                       	addl	%eax, %ecx
1000040a5: 41 0f af c9                 	imull	%r9d, %ecx
1000040a9: 03 4d c8                    	addl	-56(%rbp), %ecx
1000040ac: 83 ff 81                    	cmpl	$-127, %edi
1000040af: 0f 4e fe                    	cmovlel	%esi, %edi
1000040b2: 48 8b 45 80                 	movq	-128(%rbp), %rax
1000040b6: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
1000040ba: 41 01 de                    	addl	%ebx, %r14d
1000040bd: 45 01 ef                    	addl	%r13d, %r15d
1000040c0: 41 39 d6                    	cmpl	%edx, %r14d
1000040c3: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
1000040c9: 8b 4d d0                    	movl	-48(%rbp), %ecx
1000040cc: 01 d9                       	addl	%ebx, %ecx
1000040ce: 8b 45 c0                    	movl	-64(%rbp), %eax
1000040d1: 03 45 c4                    	addl	-60(%rbp), %eax
1000040d4: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
1000040d7: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x100>
1000040dd: e9 8e fe ff ff              	jmp	-370 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
1000040e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000040ec: 0f 1f 40 00                 	nopl	(%rax)
1000040f0: 31 c0                       	xorl	%eax, %eax
1000040f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000040fc: 0f 1f 40 00                 	nopl	(%rax)
100004100: 01 d8                       	addl	%ebx, %eax
100004102: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100004105: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0x230>
100004107: e9 64 fe ff ff              	jmp	-412 <__Z13Conv2d_kernelILj3ELj32EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000410c: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100004113: 5b                          	popq	%rbx
100004114: 41 5c                       	popq	%r12
100004116: 41 5d                       	popq	%r13
100004118: 41 5e                       	popq	%r14
10000411a: 41 5f                       	popq	%r15
10000411c: 5d                          	popq	%rbp
10000411d: c3                          	retq
10000411e: 66 90                       	nop

0000000100004120 __Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj:
100004120: 55                          	pushq	%rbp
100004121: 48 89 e5                    	movq	%rsp, %rbp
100004124: 41 57                       	pushq	%r15
100004126: 41 56                       	pushq	%r14
100004128: 41 55                       	pushq	%r13
10000412a: 41 54                       	pushq	%r12
10000412c: 53                          	pushq	%rbx
10000412d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100004134: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100004138: 45 85 c9                    	testl	%r9d, %r9d
10000413b: 0f 84 2b 02 00 00           	je	555 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x24c>
100004141: 49 89 d2                    	movq	%rdx, %r10
100004144: 49 89 f4                    	movq	%rsi, %r12
100004147: 8b 5d 20                    	movl	32(%rbp), %ebx
10000414a: 8b 45 18                    	movl	24(%rbp), %eax
10000414d: 8b 55 10                    	movl	16(%rbp), %edx
100004150: 89 d9                       	movl	%ebx, %ecx
100004152: d1 e9                       	shrl	%ecx
100004154: 29 ca                       	subl	%ecx, %edx
100004156: 83 c2 fe                    	addl	$-2, %edx
100004159: 89 55 d4                    	movl	%edx, -44(%rbp)
10000415c: 89 c2                       	movl	%eax, %edx
10000415e: 29 ca                       	subl	%ecx, %edx
100004160: 83 c2 fe                    	addl	$-2, %edx
100004163: 41 bb 01 00 00 00           	movl	$1, %r11d
100004169: 41 29 cb                    	subl	%ecx, %r11d
10000416c: 44 89 c9                    	movl	%r9d, %ecx
10000416f: 48 89 4d 98                 	movq	%rcx, -104(%rbp)
100004173: 89 c1                       	movl	%eax, %ecx
100004175: c1 e1 07                    	shll	$7, %ecx
100004178: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
10000417c: 89 d9                       	movl	%ebx, %ecx
10000417e: 0f af c8                    	imull	%eax, %ecx
100004181: c1 e1 06                    	shll	$6, %ecx
100004184: 89 4d c4                    	movl	%ecx, -60(%rbp)
100004187: 41 89 dd                    	movl	%ebx, %r13d
10000418a: 41 c1 e5 06                 	shll	$6, %r13d
10000418e: c1 e0 06                    	shll	$6, %eax
100004191: 48 89 45 90                 	movq	%rax, -112(%rbp)
100004195: 31 c0                       	xorl	%eax, %eax
100004197: 44 89 4d ac                 	movl	%r9d, -84(%rbp)
10000419b: 44 89 45 b0                 	movl	%r8d, -80(%rbp)
10000419f: 4c 89 95 78 ff ff ff        	movq	%r10, -136(%rbp)
1000041a6: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
1000041aa: 89 55 b4                    	movl	%edx, -76(%rbp)
1000041ad: 44 89 5d b8                 	movl	%r11d, -72(%rbp)
1000041b1: 44 89 6d bc                 	movl	%r13d, -68(%rbp)
1000041b5: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000041b9: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000041bd: 75 1c                       	jne	28 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xbb>
1000041bf: 90                          	nop
1000041c0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000041c4: 48 ff c0                    	incq	%rax
1000041c7: 48 3b 45 98                 	cmpq	-104(%rbp), %rax
1000041cb: 0f 84 9b 01 00 00           	je	411 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x24c>
1000041d1: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000041d5: 83 7d d4 00                 	cmpl	$0, -44(%rbp)
1000041d9: 74 e5                       	je	-27 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
1000041db: 85 d2                       	testl	%edx, %edx
1000041dd: 0f 84 6d 01 00 00           	je	365 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x230>
1000041e3: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000041e7: c1 e0 06                    	shll	$6, %eax
1000041ea: 8d 0c c0                    	leal	(%rax,%rax,8), %ecx
1000041ed: 48 8b 45 a0                 	movq	-96(%rbp), %rax
1000041f1: 48 89 8d 58 ff ff ff        	movq	%rcx, -168(%rbp)
1000041f8: 48 8d 34 08                 	leaq	(%rax,%rcx), %rsi
1000041fc: 48 8d 86 c0 00 00 00        	leaq	192(%rsi), %rax
100004203: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000420a: 48 8d 86 80 01 00 00        	leaq	384(%rsi), %rax
100004211: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100004218: 31 c0                       	xorl	%eax, %eax
10000421a: 31 c9                       	xorl	%ecx, %ecx
10000421c: 48 89 b5 60 ff ff ff        	movq	%rsi, -160(%rbp)
100004223: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000422d: 0f 1f 00                    	nopl	(%rax)
100004230: 89 4d d0                    	movl	%ecx, -48(%rbp)
100004233: 89 45 c0                    	movl	%eax, -64(%rbp)
100004236: 41 89 c7                    	movl	%eax, %r15d
100004239: 45 31 f6                    	xorl	%r14d, %r14d
10000423c: 0f 1f 40 00                 	nopl	(%rax)
100004240: 44 89 ff                    	movl	%r15d, %edi
100004243: 4c 01 e7                    	addq	%r12, %rdi
100004246: 48 8b b5 60 ff ff ff        	movq	-160(%rbp), %rsi
10000424d: e8 9e 0a 00 00              	callq	2718 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
100004252: 0f bf d8                    	movswl	%ax, %ebx
100004255: 48 8b 45 90                 	movq	-112(%rbp), %rax
100004259: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000425d: 4c 01 e7                    	addq	%r12, %rdi
100004260: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
100004267: e8 84 0a 00 00              	callq	2692 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
10000426c: 44 0f bf e8                 	movswl	%ax, %r13d
100004270: 41 01 dd                    	addl	%ebx, %r13d
100004273: 48 8b 45 88                 	movq	-120(%rbp), %rax
100004277: 42 8d 3c 38                 	leal	(%rax,%r15), %edi
10000427b: 4c 01 e7                    	addq	%r12, %rdi
10000427e: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
100004285: e8 66 0a 00 00              	callq	2662 <__Z11microkernelILj3ELj64EasET2_PKT1_S3_>
10000428a: 44 8b 5d 18                 	movl	24(%rbp), %r11d
10000428e: 8b 5d 20                    	movl	32(%rbp), %ebx
100004291: 4c 8b 95 78 ff ff ff        	movq	-136(%rbp), %r10
100004298: 44 8b 45 b0                 	movl	-80(%rbp), %r8d
10000429c: 44 8b 4d ac                 	movl	-84(%rbp), %r9d
1000042a0: 98                          	cwtl
1000042a1: 44 01 e8                    	addl	%r13d, %eax
1000042a4: 44 8b 6d bc                 	movl	-68(%rbp), %r13d
1000042a8: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
1000042af: 41 0f be 0c 0a              	movsbl	(%r10,%rcx), %ecx
1000042b4: 01 c1                       	addl	%eax, %ecx
1000042b6: 41 0f af c8                 	imull	%r8d, %ecx
1000042ba: 89 cf                       	movl	%ecx, %edi
1000042bc: c1 ff 1f                    	sarl	$31, %edi
1000042bf: c1 ef 12                    	shrl	$18, %edi
1000042c2: 01 cf                       	addl	%ecx, %edi
1000042c4: c1 ff 0e                    	sarl	$14, %edi
1000042c7: 81 ff 80 00 00 00           	cmpl	$128, %edi
1000042cd: b8 7f 00 00 00              	movl	$127, %eax
1000042d2: 0f 4d f8                    	cmovgel	%eax, %edi
1000042d5: 44 89 f0                    	movl	%r14d, %eax
1000042d8: 31 d2                       	xorl	%edx, %edx
1000042da: f7 f3                       	divl	%ebx
1000042dc: 89 c1                       	movl	%eax, %ecx
1000042de: 8b 45 d0                    	movl	-48(%rbp), %eax
1000042e1: 31 d2                       	xorl	%edx, %edx
1000042e3: f7 f3                       	divl	%ebx
1000042e5: 89 c6                       	movl	%eax, %esi
1000042e7: 44 89 d8                    	movl	%r11d, %eax
1000042ea: 44 8b 5d b8                 	movl	-72(%rbp), %r11d
1000042ee: 31 d2                       	xorl	%edx, %edx
1000042f0: f7 f3                       	divl	%ebx
1000042f2: 8b 55 b4                    	movl	-76(%rbp), %edx
1000042f5: 44 01 de                    	addl	%r11d, %esi
1000042f8: 0f af c6                    	imull	%esi, %eax
1000042fb: be 81 00 00 00              	movl	$129, %esi
100004300: 44 01 d9                    	addl	%r11d, %ecx
100004303: 01 c1                       	addl	%eax, %ecx
100004305: 41 0f af c9                 	imull	%r9d, %ecx
100004309: 03 4d c8                    	addl	-56(%rbp), %ecx
10000430c: 83 ff 81                    	cmpl	$-127, %edi
10000430f: 0f 4e fe                    	cmovlel	%esi, %edi
100004312: 48 8b 45 80                 	movq	-128(%rbp), %rax
100004316: 40 88 3c 08                 	movb	%dil, (%rax,%rcx)
10000431a: 41 01 de                    	addl	%ebx, %r14d
10000431d: 45 01 ef                    	addl	%r13d, %r15d
100004320: 41 39 d6                    	cmpl	%edx, %r14d
100004323: 0f 82 17 ff ff ff           	jb	-233 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x120>
100004329: 8b 4d d0                    	movl	-48(%rbp), %ecx
10000432c: 01 d9                       	addl	%ebx, %ecx
10000432e: 8b 45 c0                    	movl	-64(%rbp), %eax
100004331: 03 45 c4                    	addl	-60(%rbp), %eax
100004334: 3b 4d d4                    	cmpl	-44(%rbp), %ecx
100004337: 0f 82 f3 fe ff ff           	jb	-269 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x110>
10000433d: e9 7e fe ff ff              	jmp	-386 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
100004342: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000434c: 0f 1f 40 00                 	nopl	(%rax)
100004350: 31 c0                       	xorl	%eax, %eax
100004352: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000435c: 0f 1f 40 00                 	nopl	(%rax)
100004360: 01 d8                       	addl	%ebx, %eax
100004362: 3b 45 d4                    	cmpl	-44(%rbp), %eax
100004365: 72 f9                       	jb	-7 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0x240>
100004367: e9 54 fe ff ff              	jmp	-428 <__Z13Conv2d_kernelILj3ELj64EasEvPT1_S1_PKS0_S3_ijjjj+0xa0>
10000436c: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100004373: 5b                          	popq	%rbx
100004374: 41 5c                       	popq	%r12
100004376: 41 5d                       	popq	%r13
100004378: 41 5e                       	popq	%r14
10000437a: 41 5f                       	popq	%r15
10000437c: 5d                          	popq	%rbp
10000437d: c3                          	retq
10000437e: 66 90                       	nop

0000000100004380 __Z11microkernelILj1ELj32EasET2_PKT1_S3_:
100004380: 55                          	pushq	%rbp
100004381: 48 89 e5                    	movq	%rsp, %rbp
100004384: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004389: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
10000438f: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004394: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004398: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
10000439e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
1000043a2: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
1000043a6: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000043ac: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043b0: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000043b5: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043b9: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000043be: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043c2: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
1000043c7: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000043cb: c5 f9 7e c0                 	vmovd	%xmm0, %eax
1000043cf: 98                          	cwtl
1000043d0: 5d                          	popq	%rbp
1000043d1: c5 f8 77                    	vzeroupper
1000043d4: c3                          	retq
1000043d5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000043df: 90                          	nop

00000001000043e0 __Z11microkernelILj1ELj64EasET2_PKT1_S3_:
1000043e0: 55                          	pushq	%rbp
1000043e1: 48 89 e5                    	movq	%rsp, %rbp
1000043e4: c4 e2 7d 20 46 10           	vpmovsxbw	16(%rsi), %ymm0
1000043ea: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
1000043f0: c4 e2 7d 20 16              	vpmovsxbw	(%rsi), %ymm2
1000043f5: c4 e2 7d 20 5e 20           	vpmovsxbw	32(%rsi), %ymm3
1000043fb: c4 e2 7d 20 67 10           	vpmovsxbw	16(%rdi), %ymm4
100004401: c5 dd d5 c0                 	vpmullw	%ymm0, %ymm4, %ymm0
100004405: c4 e2 7d 20 67 30           	vpmovsxbw	48(%rdi), %ymm4
10000440b: c5 dd d5 c9                 	vpmullw	%ymm1, %ymm4, %ymm1
10000440f: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004413: c4 e2 7d 20 0f              	vpmovsxbw	(%rdi), %ymm1
100004418: c5 f5 d5 ca                 	vpmullw	%ymm2, %ymm1, %ymm1
10000441c: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004422: c5 ed d5 d3                 	vpmullw	%ymm3, %ymm2, %ymm2
100004426: c5 f5 fd ca                 	vpaddw	%ymm2, %ymm1, %ymm1
10000442a: c5 f5 fd c0                 	vpaddw	%ymm0, %ymm1, %ymm0
10000442e: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004434: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004438: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
10000443d: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004441: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004446: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000444a: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
10000444f: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004453: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004457: 98                          	cwtl
100004458: 5d                          	popq	%rbp
100004459: c5 f8 77                    	vzeroupper
10000445c: c3                          	retq
10000445d: 0f 1f 00                    	nopl	(%rax)

0000000100004460 __Z11microkernelILj3ELj4EasET2_PKT1_S3_:
100004460: 55                          	pushq	%rbp
100004461: 48 89 e5                    	movq	%rsp, %rbp
100004464: c4 e2 79 20 06              	vpmovsxbw	(%rsi), %xmm0
100004469: c4 e2 79 20 0f              	vpmovsxbw	(%rdi), %xmm1
10000446e: c5 f1 d5 c0                 	vpmullw	%xmm0, %xmm1, %xmm0
100004472: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004477: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000447b: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004480: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004484: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004489: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
10000448d: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004491: 0f be 4e 08                 	movsbl	8(%rsi), %ecx
100004495: 0f be 57 08                 	movsbl	8(%rdi), %edx
100004499: 0f af d1                    	imull	%ecx, %edx
10000449c: 01 c2                       	addl	%eax, %edx
10000449e: 0f be 46 09                 	movsbl	9(%rsi), %eax
1000044a2: 0f be 4f 09                 	movsbl	9(%rdi), %ecx
1000044a6: 0f af c8                    	imull	%eax, %ecx
1000044a9: 01 d1                       	addl	%edx, %ecx
1000044ab: 0f be 46 0a                 	movsbl	10(%rsi), %eax
1000044af: 0f be 57 0a                 	movsbl	10(%rdi), %edx
1000044b3: 0f af d0                    	imull	%eax, %edx
1000044b6: 01 ca                       	addl	%ecx, %edx
1000044b8: 0f be 46 0b                 	movsbl	11(%rsi), %eax
1000044bc: 0f be 4f 0b                 	movsbl	11(%rdi), %ecx
1000044c0: 0f af c8                    	imull	%eax, %ecx
1000044c3: 01 d1                       	addl	%edx, %ecx
1000044c5: 0f bf c1                    	movswl	%cx, %eax
1000044c8: 5d                          	popq	%rbp
1000044c9: c3                          	retq
1000044ca: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000044d0 __Z11microkernelILj3ELj8EasET2_PKT1_S3_:
1000044d0: 55                          	pushq	%rbp
1000044d1: 48 89 e5                    	movq	%rsp, %rbp
1000044d4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
1000044d9: c4 e2 7d 20 0f              	vpmovsxbw	(%rdi), %ymm1
1000044de: c5 f5 d5 c0                 	vpmullw	%ymm0, %ymm1, %ymm0
1000044e2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
1000044e8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044ec: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000044f1: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044f5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
1000044fa: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
1000044fe: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004503: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004507: c5 f9 7e c0                 	vmovd	%xmm0, %eax
10000450b: 0f be 4e 10                 	movsbl	16(%rsi), %ecx
10000450f: 0f be 57 10                 	movsbl	16(%rdi), %edx
100004513: 0f af d1                    	imull	%ecx, %edx
100004516: 01 c2                       	addl	%eax, %edx
100004518: 0f be 46 11                 	movsbl	17(%rsi), %eax
10000451c: 0f be 4f 11                 	movsbl	17(%rdi), %ecx
100004520: 0f af c8                    	imull	%eax, %ecx
100004523: 01 d1                       	addl	%edx, %ecx
100004525: 0f be 46 12                 	movsbl	18(%rsi), %eax
100004529: 0f be 57 12                 	movsbl	18(%rdi), %edx
10000452d: 0f af d0                    	imull	%eax, %edx
100004530: 01 ca                       	addl	%ecx, %edx
100004532: 0f be 46 13                 	movsbl	19(%rsi), %eax
100004536: 0f be 4f 13                 	movsbl	19(%rdi), %ecx
10000453a: 0f af c8                    	imull	%eax, %ecx
10000453d: 01 d1                       	addl	%edx, %ecx
10000453f: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004543: 0f be 57 14                 	movsbl	20(%rdi), %edx
100004547: 0f af d0                    	imull	%eax, %edx
10000454a: 01 ca                       	addl	%ecx, %edx
10000454c: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004550: 0f be 4f 15                 	movsbl	21(%rdi), %ecx
100004554: 0f af c8                    	imull	%eax, %ecx
100004557: 01 d1                       	addl	%edx, %ecx
100004559: 0f be 46 16                 	movsbl	22(%rsi), %eax
10000455d: 0f be 57 16                 	movsbl	22(%rdi), %edx
100004561: 0f af d0                    	imull	%eax, %edx
100004564: 01 ca                       	addl	%ecx, %edx
100004566: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000456a: 0f be 4f 17                 	movsbl	23(%rdi), %ecx
10000456e: 0f af c8                    	imull	%eax, %ecx
100004571: 01 d1                       	addl	%edx, %ecx
100004573: 0f bf c1                    	movswl	%cx, %eax
100004576: 5d                          	popq	%rbp
100004577: c5 f8 77                    	vzeroupper
10000457a: c3                          	retq
10000457b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004580 __Z11microkernelILj3ELj16EasET2_PKT1_S3_:
100004580: 55                          	pushq	%rbp
100004581: 48 89 e5                    	movq	%rsp, %rbp
100004584: 0f be 06                    	movsbl	(%rsi), %eax
100004587: 0f be 0f                    	movsbl	(%rdi), %ecx
10000458a: 0f af c8                    	imull	%eax, %ecx
10000458d: 0f be 46 01                 	movsbl	1(%rsi), %eax
100004591: 0f be 57 01                 	movsbl	1(%rdi), %edx
100004595: 0f af d0                    	imull	%eax, %edx
100004598: 01 ca                       	addl	%ecx, %edx
10000459a: 0f be 46 02                 	movsbl	2(%rsi), %eax
10000459e: 0f be 4f 02                 	movsbl	2(%rdi), %ecx
1000045a2: 0f af c8                    	imull	%eax, %ecx
1000045a5: 01 d1                       	addl	%edx, %ecx
1000045a7: 0f be 46 03                 	movsbl	3(%rsi), %eax
1000045ab: 0f be 57 03                 	movsbl	3(%rdi), %edx
1000045af: 0f af d0                    	imull	%eax, %edx
1000045b2: 01 ca                       	addl	%ecx, %edx
1000045b4: 0f be 46 04                 	movsbl	4(%rsi), %eax
1000045b8: 0f be 4f 04                 	movsbl	4(%rdi), %ecx
1000045bc: 0f af c8                    	imull	%eax, %ecx
1000045bf: 01 d1                       	addl	%edx, %ecx
1000045c1: 0f be 46 05                 	movsbl	5(%rsi), %eax
1000045c5: 0f be 57 05                 	movsbl	5(%rdi), %edx
1000045c9: 0f af d0                    	imull	%eax, %edx
1000045cc: 01 ca                       	addl	%ecx, %edx
1000045ce: 0f be 46 06                 	movsbl	6(%rsi), %eax
1000045d2: 0f be 4f 06                 	movsbl	6(%rdi), %ecx
1000045d6: 0f af c8                    	imull	%eax, %ecx
1000045d9: 01 d1                       	addl	%edx, %ecx
1000045db: 0f be 46 07                 	movsbl	7(%rsi), %eax
1000045df: 0f be 57 07                 	movsbl	7(%rdi), %edx
1000045e3: 0f af d0                    	imull	%eax, %edx
1000045e6: 01 ca                       	addl	%ecx, %edx
1000045e8: 0f be 46 08                 	movsbl	8(%rsi), %eax
1000045ec: 0f be 4f 08                 	movsbl	8(%rdi), %ecx
1000045f0: 0f af c8                    	imull	%eax, %ecx
1000045f3: 01 d1                       	addl	%edx, %ecx
1000045f5: 0f be 46 09                 	movsbl	9(%rsi), %eax
1000045f9: 0f be 57 09                 	movsbl	9(%rdi), %edx
1000045fd: 0f af d0                    	imull	%eax, %edx
100004600: 01 ca                       	addl	%ecx, %edx
100004602: 0f be 46 0a                 	movsbl	10(%rsi), %eax
100004606: 0f be 4f 0a                 	movsbl	10(%rdi), %ecx
10000460a: 0f af c8                    	imull	%eax, %ecx
10000460d: 01 d1                       	addl	%edx, %ecx
10000460f: 0f be 46 0b                 	movsbl	11(%rsi), %eax
100004613: 0f be 57 0b                 	movsbl	11(%rdi), %edx
100004617: 0f af d0                    	imull	%eax, %edx
10000461a: 01 ca                       	addl	%ecx, %edx
10000461c: 0f be 46 0c                 	movsbl	12(%rsi), %eax
100004620: 0f be 4f 0c                 	movsbl	12(%rdi), %ecx
100004624: 0f af c8                    	imull	%eax, %ecx
100004627: 01 d1                       	addl	%edx, %ecx
100004629: 0f be 46 0d                 	movsbl	13(%rsi), %eax
10000462d: 0f be 57 0d                 	movsbl	13(%rdi), %edx
100004631: 0f af d0                    	imull	%eax, %edx
100004634: 01 ca                       	addl	%ecx, %edx
100004636: 0f be 46 0e                 	movsbl	14(%rsi), %eax
10000463a: 0f be 4f 0e                 	movsbl	14(%rdi), %ecx
10000463e: 0f af c8                    	imull	%eax, %ecx
100004641: 01 d1                       	addl	%edx, %ecx
100004643: 0f be 46 0f                 	movsbl	15(%rsi), %eax
100004647: 0f be 57 0f                 	movsbl	15(%rdi), %edx
10000464b: 0f af d0                    	imull	%eax, %edx
10000464e: 01 ca                       	addl	%ecx, %edx
100004650: 0f be 46 10                 	movsbl	16(%rsi), %eax
100004654: 0f be 4f 10                 	movsbl	16(%rdi), %ecx
100004658: 0f af c8                    	imull	%eax, %ecx
10000465b: 01 d1                       	addl	%edx, %ecx
10000465d: 0f be 46 11                 	movsbl	17(%rsi), %eax
100004661: 0f be 57 11                 	movsbl	17(%rdi), %edx
100004665: 0f af d0                    	imull	%eax, %edx
100004668: 01 ca                       	addl	%ecx, %edx
10000466a: 0f be 46 12                 	movsbl	18(%rsi), %eax
10000466e: 0f be 4f 12                 	movsbl	18(%rdi), %ecx
100004672: 0f af c8                    	imull	%eax, %ecx
100004675: 01 d1                       	addl	%edx, %ecx
100004677: 0f be 46 13                 	movsbl	19(%rsi), %eax
10000467b: 0f be 57 13                 	movsbl	19(%rdi), %edx
10000467f: 0f af d0                    	imull	%eax, %edx
100004682: 01 ca                       	addl	%ecx, %edx
100004684: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004688: 0f be 4f 14                 	movsbl	20(%rdi), %ecx
10000468c: 0f af c8                    	imull	%eax, %ecx
10000468f: 01 d1                       	addl	%edx, %ecx
100004691: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004695: 0f be 57 15                 	movsbl	21(%rdi), %edx
100004699: 0f af d0                    	imull	%eax, %edx
10000469c: 01 ca                       	addl	%ecx, %edx
10000469e: 0f be 46 16                 	movsbl	22(%rsi), %eax
1000046a2: 0f be 4f 16                 	movsbl	22(%rdi), %ecx
1000046a6: 0f af c8                    	imull	%eax, %ecx
1000046a9: 01 d1                       	addl	%edx, %ecx
1000046ab: 0f be 46 17                 	movsbl	23(%rsi), %eax
1000046af: 0f be 57 17                 	movsbl	23(%rdi), %edx
1000046b3: 0f af d0                    	imull	%eax, %edx
1000046b6: 01 ca                       	addl	%ecx, %edx
1000046b8: 0f be 46 18                 	movsbl	24(%rsi), %eax
1000046bc: 0f be 4f 18                 	movsbl	24(%rdi), %ecx
1000046c0: 0f af c8                    	imull	%eax, %ecx
1000046c3: 01 d1                       	addl	%edx, %ecx
1000046c5: 0f be 46 19                 	movsbl	25(%rsi), %eax
1000046c9: 0f be 57 19                 	movsbl	25(%rdi), %edx
1000046cd: 0f af d0                    	imull	%eax, %edx
1000046d0: 01 ca                       	addl	%ecx, %edx
1000046d2: 0f be 46 1a                 	movsbl	26(%rsi), %eax
1000046d6: 0f be 4f 1a                 	movsbl	26(%rdi), %ecx
1000046da: 0f af c8                    	imull	%eax, %ecx
1000046dd: 01 d1                       	addl	%edx, %ecx
1000046df: 0f be 46 1b                 	movsbl	27(%rsi), %eax
1000046e3: 0f be 57 1b                 	movsbl	27(%rdi), %edx
1000046e7: 0f af d0                    	imull	%eax, %edx
1000046ea: 01 ca                       	addl	%ecx, %edx
1000046ec: 0f be 46 1c                 	movsbl	28(%rsi), %eax
1000046f0: 0f be 4f 1c                 	movsbl	28(%rdi), %ecx
1000046f4: 0f af c8                    	imull	%eax, %ecx
1000046f7: 01 d1                       	addl	%edx, %ecx
1000046f9: 0f be 46 1d                 	movsbl	29(%rsi), %eax
1000046fd: 0f be 57 1d                 	movsbl	29(%rdi), %edx
100004701: 0f af d0                    	imull	%eax, %edx
100004704: 01 ca                       	addl	%ecx, %edx
100004706: 0f be 46 1e                 	movsbl	30(%rsi), %eax
10000470a: 0f be 4f 1e                 	movsbl	30(%rdi), %ecx
10000470e: 0f af c8                    	imull	%eax, %ecx
100004711: 01 d1                       	addl	%edx, %ecx
100004713: 0f be 46 1f                 	movsbl	31(%rsi), %eax
100004717: 0f be 57 1f                 	movsbl	31(%rdi), %edx
10000471b: 0f af d0                    	imull	%eax, %edx
10000471e: 01 ca                       	addl	%ecx, %edx
100004720: 0f be 46 20                 	movsbl	32(%rsi), %eax
100004724: 0f be 4f 20                 	movsbl	32(%rdi), %ecx
100004728: 0f af c8                    	imull	%eax, %ecx
10000472b: 01 d1                       	addl	%edx, %ecx
10000472d: 0f be 46 21                 	movsbl	33(%rsi), %eax
100004731: 0f be 57 21                 	movsbl	33(%rdi), %edx
100004735: 0f af d0                    	imull	%eax, %edx
100004738: 01 ca                       	addl	%ecx, %edx
10000473a: 0f be 46 22                 	movsbl	34(%rsi), %eax
10000473e: 0f be 4f 22                 	movsbl	34(%rdi), %ecx
100004742: 0f af c8                    	imull	%eax, %ecx
100004745: 01 d1                       	addl	%edx, %ecx
100004747: 0f be 46 23                 	movsbl	35(%rsi), %eax
10000474b: 0f be 57 23                 	movsbl	35(%rdi), %edx
10000474f: 0f af d0                    	imull	%eax, %edx
100004752: 01 ca                       	addl	%ecx, %edx
100004754: 0f be 46 24                 	movsbl	36(%rsi), %eax
100004758: 0f be 4f 24                 	movsbl	36(%rdi), %ecx
10000475c: 0f af c8                    	imull	%eax, %ecx
10000475f: 01 d1                       	addl	%edx, %ecx
100004761: 0f be 46 25                 	movsbl	37(%rsi), %eax
100004765: 0f be 57 25                 	movsbl	37(%rdi), %edx
100004769: 0f af d0                    	imull	%eax, %edx
10000476c: 01 ca                       	addl	%ecx, %edx
10000476e: 0f be 46 26                 	movsbl	38(%rsi), %eax
100004772: 0f be 4f 26                 	movsbl	38(%rdi), %ecx
100004776: 0f af c8                    	imull	%eax, %ecx
100004779: 01 d1                       	addl	%edx, %ecx
10000477b: 0f be 46 27                 	movsbl	39(%rsi), %eax
10000477f: 0f be 57 27                 	movsbl	39(%rdi), %edx
100004783: 0f af d0                    	imull	%eax, %edx
100004786: 01 ca                       	addl	%ecx, %edx
100004788: 0f be 46 28                 	movsbl	40(%rsi), %eax
10000478c: 0f be 4f 28                 	movsbl	40(%rdi), %ecx
100004790: 0f af c8                    	imull	%eax, %ecx
100004793: 01 d1                       	addl	%edx, %ecx
100004795: 0f be 46 29                 	movsbl	41(%rsi), %eax
100004799: 0f be 57 29                 	movsbl	41(%rdi), %edx
10000479d: 0f af d0                    	imull	%eax, %edx
1000047a0: 01 ca                       	addl	%ecx, %edx
1000047a2: 0f be 46 2a                 	movsbl	42(%rsi), %eax
1000047a6: 0f be 4f 2a                 	movsbl	42(%rdi), %ecx
1000047aa: 0f af c8                    	imull	%eax, %ecx
1000047ad: 01 d1                       	addl	%edx, %ecx
1000047af: 0f be 46 2b                 	movsbl	43(%rsi), %eax
1000047b3: 0f be 57 2b                 	movsbl	43(%rdi), %edx
1000047b7: 0f af d0                    	imull	%eax, %edx
1000047ba: 01 ca                       	addl	%ecx, %edx
1000047bc: 0f be 46 2c                 	movsbl	44(%rsi), %eax
1000047c0: 0f be 4f 2c                 	movsbl	44(%rdi), %ecx
1000047c4: 0f af c8                    	imull	%eax, %ecx
1000047c7: 01 d1                       	addl	%edx, %ecx
1000047c9: 0f be 46 2d                 	movsbl	45(%rsi), %eax
1000047cd: 0f be 57 2d                 	movsbl	45(%rdi), %edx
1000047d1: 0f af d0                    	imull	%eax, %edx
1000047d4: 01 ca                       	addl	%ecx, %edx
1000047d6: 0f be 46 2e                 	movsbl	46(%rsi), %eax
1000047da: 0f be 4f 2e                 	movsbl	46(%rdi), %ecx
1000047de: 0f af c8                    	imull	%eax, %ecx
1000047e1: 01 d1                       	addl	%edx, %ecx
1000047e3: 0f be 46 2f                 	movsbl	47(%rsi), %eax
1000047e7: 0f be 57 2f                 	movsbl	47(%rdi), %edx
1000047eb: 0f af d0                    	imull	%eax, %edx
1000047ee: 01 ca                       	addl	%ecx, %edx
1000047f0: 0f bf c2                    	movswl	%dx, %eax
1000047f3: 5d                          	popq	%rbp
1000047f4: c3                          	retq
1000047f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000047ff: 90                          	nop

0000000100004800 __Z11microkernelILj3ELj32EasET2_PKT1_S3_:
100004800: 55                          	pushq	%rbp
100004801: 48 89 e5                    	movq	%rsp, %rbp
100004804: 0f be 06                    	movsbl	(%rsi), %eax
100004807: 0f be 0f                    	movsbl	(%rdi), %ecx
10000480a: 0f af c8                    	imull	%eax, %ecx
10000480d: 0f be 46 01                 	movsbl	1(%rsi), %eax
100004811: 0f be 57 01                 	movsbl	1(%rdi), %edx
100004815: 0f af d0                    	imull	%eax, %edx
100004818: 01 ca                       	addl	%ecx, %edx
10000481a: 0f be 46 02                 	movsbl	2(%rsi), %eax
10000481e: 0f be 4f 02                 	movsbl	2(%rdi), %ecx
100004822: 0f af c8                    	imull	%eax, %ecx
100004825: 01 d1                       	addl	%edx, %ecx
100004827: 0f be 46 03                 	movsbl	3(%rsi), %eax
10000482b: 0f be 57 03                 	movsbl	3(%rdi), %edx
10000482f: 0f af d0                    	imull	%eax, %edx
100004832: 01 ca                       	addl	%ecx, %edx
100004834: 0f be 46 04                 	movsbl	4(%rsi), %eax
100004838: 0f be 4f 04                 	movsbl	4(%rdi), %ecx
10000483c: 0f af c8                    	imull	%eax, %ecx
10000483f: 01 d1                       	addl	%edx, %ecx
100004841: 0f be 46 05                 	movsbl	5(%rsi), %eax
100004845: 0f be 57 05                 	movsbl	5(%rdi), %edx
100004849: 0f af d0                    	imull	%eax, %edx
10000484c: 01 ca                       	addl	%ecx, %edx
10000484e: 0f be 46 06                 	movsbl	6(%rsi), %eax
100004852: 0f be 4f 06                 	movsbl	6(%rdi), %ecx
100004856: 0f af c8                    	imull	%eax, %ecx
100004859: 01 d1                       	addl	%edx, %ecx
10000485b: 0f be 46 07                 	movsbl	7(%rsi), %eax
10000485f: 0f be 57 07                 	movsbl	7(%rdi), %edx
100004863: 0f af d0                    	imull	%eax, %edx
100004866: 01 ca                       	addl	%ecx, %edx
100004868: 0f be 46 08                 	movsbl	8(%rsi), %eax
10000486c: 0f be 4f 08                 	movsbl	8(%rdi), %ecx
100004870: 0f af c8                    	imull	%eax, %ecx
100004873: 01 d1                       	addl	%edx, %ecx
100004875: 0f be 46 09                 	movsbl	9(%rsi), %eax
100004879: 0f be 57 09                 	movsbl	9(%rdi), %edx
10000487d: 0f af d0                    	imull	%eax, %edx
100004880: 01 ca                       	addl	%ecx, %edx
100004882: 0f be 46 0a                 	movsbl	10(%rsi), %eax
100004886: 0f be 4f 0a                 	movsbl	10(%rdi), %ecx
10000488a: 0f af c8                    	imull	%eax, %ecx
10000488d: 01 d1                       	addl	%edx, %ecx
10000488f: 0f be 46 0b                 	movsbl	11(%rsi), %eax
100004893: 0f be 57 0b                 	movsbl	11(%rdi), %edx
100004897: 0f af d0                    	imull	%eax, %edx
10000489a: 01 ca                       	addl	%ecx, %edx
10000489c: 0f be 46 0c                 	movsbl	12(%rsi), %eax
1000048a0: 0f be 4f 0c                 	movsbl	12(%rdi), %ecx
1000048a4: 0f af c8                    	imull	%eax, %ecx
1000048a7: 01 d1                       	addl	%edx, %ecx
1000048a9: 0f be 46 0d                 	movsbl	13(%rsi), %eax
1000048ad: 0f be 57 0d                 	movsbl	13(%rdi), %edx
1000048b1: 0f af d0                    	imull	%eax, %edx
1000048b4: 01 ca                       	addl	%ecx, %edx
1000048b6: 0f be 46 0e                 	movsbl	14(%rsi), %eax
1000048ba: 0f be 4f 0e                 	movsbl	14(%rdi), %ecx
1000048be: 0f af c8                    	imull	%eax, %ecx
1000048c1: 01 d1                       	addl	%edx, %ecx
1000048c3: 0f be 46 0f                 	movsbl	15(%rsi), %eax
1000048c7: 0f be 57 0f                 	movsbl	15(%rdi), %edx
1000048cb: 0f af d0                    	imull	%eax, %edx
1000048ce: 01 ca                       	addl	%ecx, %edx
1000048d0: 0f be 46 10                 	movsbl	16(%rsi), %eax
1000048d4: 0f be 4f 10                 	movsbl	16(%rdi), %ecx
1000048d8: 0f af c8                    	imull	%eax, %ecx
1000048db: 01 d1                       	addl	%edx, %ecx
1000048dd: 0f be 46 11                 	movsbl	17(%rsi), %eax
1000048e1: 0f be 57 11                 	movsbl	17(%rdi), %edx
1000048e5: 0f af d0                    	imull	%eax, %edx
1000048e8: 01 ca                       	addl	%ecx, %edx
1000048ea: 0f be 46 12                 	movsbl	18(%rsi), %eax
1000048ee: 0f be 4f 12                 	movsbl	18(%rdi), %ecx
1000048f2: 0f af c8                    	imull	%eax, %ecx
1000048f5: 01 d1                       	addl	%edx, %ecx
1000048f7: 0f be 46 13                 	movsbl	19(%rsi), %eax
1000048fb: 0f be 57 13                 	movsbl	19(%rdi), %edx
1000048ff: 0f af d0                    	imull	%eax, %edx
100004902: 01 ca                       	addl	%ecx, %edx
100004904: 0f be 46 14                 	movsbl	20(%rsi), %eax
100004908: 0f be 4f 14                 	movsbl	20(%rdi), %ecx
10000490c: 0f af c8                    	imull	%eax, %ecx
10000490f: 01 d1                       	addl	%edx, %ecx
100004911: 0f be 46 15                 	movsbl	21(%rsi), %eax
100004915: 0f be 57 15                 	movsbl	21(%rdi), %edx
100004919: 0f af d0                    	imull	%eax, %edx
10000491c: 01 ca                       	addl	%ecx, %edx
10000491e: 0f be 46 16                 	movsbl	22(%rsi), %eax
100004922: 0f be 4f 16                 	movsbl	22(%rdi), %ecx
100004926: 0f af c8                    	imull	%eax, %ecx
100004929: 01 d1                       	addl	%edx, %ecx
10000492b: 0f be 46 17                 	movsbl	23(%rsi), %eax
10000492f: 0f be 57 17                 	movsbl	23(%rdi), %edx
100004933: 0f af d0                    	imull	%eax, %edx
100004936: 01 ca                       	addl	%ecx, %edx
100004938: 0f be 46 18                 	movsbl	24(%rsi), %eax
10000493c: 0f be 4f 18                 	movsbl	24(%rdi), %ecx
100004940: 0f af c8                    	imull	%eax, %ecx
100004943: 01 d1                       	addl	%edx, %ecx
100004945: 0f be 46 19                 	movsbl	25(%rsi), %eax
100004949: 0f be 57 19                 	movsbl	25(%rdi), %edx
10000494d: 0f af d0                    	imull	%eax, %edx
100004950: 01 ca                       	addl	%ecx, %edx
100004952: 0f be 46 1a                 	movsbl	26(%rsi), %eax
100004956: 0f be 4f 1a                 	movsbl	26(%rdi), %ecx
10000495a: 0f af c8                    	imull	%eax, %ecx
10000495d: 01 d1                       	addl	%edx, %ecx
10000495f: 0f be 46 1b                 	movsbl	27(%rsi), %eax
100004963: 0f be 57 1b                 	movsbl	27(%rdi), %edx
100004967: 0f af d0                    	imull	%eax, %edx
10000496a: 01 ca                       	addl	%ecx, %edx
10000496c: 0f be 46 1c                 	movsbl	28(%rsi), %eax
100004970: 0f be 4f 1c                 	movsbl	28(%rdi), %ecx
100004974: 0f af c8                    	imull	%eax, %ecx
100004977: 01 d1                       	addl	%edx, %ecx
100004979: 0f be 46 1d                 	movsbl	29(%rsi), %eax
10000497d: 0f be 57 1d                 	movsbl	29(%rdi), %edx
100004981: 0f af d0                    	imull	%eax, %edx
100004984: 01 ca                       	addl	%ecx, %edx
100004986: 0f be 46 1e                 	movsbl	30(%rsi), %eax
10000498a: 0f be 4f 1e                 	movsbl	30(%rdi), %ecx
10000498e: 0f af c8                    	imull	%eax, %ecx
100004991: 01 d1                       	addl	%edx, %ecx
100004993: 0f be 46 1f                 	movsbl	31(%rsi), %eax
100004997: 0f be 57 1f                 	movsbl	31(%rdi), %edx
10000499b: 0f af d0                    	imull	%eax, %edx
10000499e: 01 ca                       	addl	%ecx, %edx
1000049a0: 0f be 46 20                 	movsbl	32(%rsi), %eax
1000049a4: 0f be 4f 20                 	movsbl	32(%rdi), %ecx
1000049a8: 0f af c8                    	imull	%eax, %ecx
1000049ab: 01 d1                       	addl	%edx, %ecx
1000049ad: 0f be 46 21                 	movsbl	33(%rsi), %eax
1000049b1: 0f be 57 21                 	movsbl	33(%rdi), %edx
1000049b5: 0f af d0                    	imull	%eax, %edx
1000049b8: 01 ca                       	addl	%ecx, %edx
1000049ba: 0f be 46 22                 	movsbl	34(%rsi), %eax
1000049be: 0f be 4f 22                 	movsbl	34(%rdi), %ecx
1000049c2: 0f af c8                    	imull	%eax, %ecx
1000049c5: 01 d1                       	addl	%edx, %ecx
1000049c7: 0f be 46 23                 	movsbl	35(%rsi), %eax
1000049cb: 0f be 57 23                 	movsbl	35(%rdi), %edx
1000049cf: 0f af d0                    	imull	%eax, %edx
1000049d2: 01 ca                       	addl	%ecx, %edx
1000049d4: 0f be 46 24                 	movsbl	36(%rsi), %eax
1000049d8: 0f be 4f 24                 	movsbl	36(%rdi), %ecx
1000049dc: 0f af c8                    	imull	%eax, %ecx
1000049df: 01 d1                       	addl	%edx, %ecx
1000049e1: 0f be 46 25                 	movsbl	37(%rsi), %eax
1000049e5: 0f be 57 25                 	movsbl	37(%rdi), %edx
1000049e9: 0f af d0                    	imull	%eax, %edx
1000049ec: 01 ca                       	addl	%ecx, %edx
1000049ee: 0f be 46 26                 	movsbl	38(%rsi), %eax
1000049f2: 0f be 4f 26                 	movsbl	38(%rdi), %ecx
1000049f6: 0f af c8                    	imull	%eax, %ecx
1000049f9: 01 d1                       	addl	%edx, %ecx
1000049fb: 0f be 46 27                 	movsbl	39(%rsi), %eax
1000049ff: 0f be 57 27                 	movsbl	39(%rdi), %edx
100004a03: 0f af d0                    	imull	%eax, %edx
100004a06: 01 ca                       	addl	%ecx, %edx
100004a08: 0f be 46 28                 	movsbl	40(%rsi), %eax
100004a0c: 0f be 4f 28                 	movsbl	40(%rdi), %ecx
100004a10: 0f af c8                    	imull	%eax, %ecx
100004a13: 01 d1                       	addl	%edx, %ecx
100004a15: 0f be 46 29                 	movsbl	41(%rsi), %eax
100004a19: 0f be 57 29                 	movsbl	41(%rdi), %edx
100004a1d: 0f af d0                    	imull	%eax, %edx
100004a20: 01 ca                       	addl	%ecx, %edx
100004a22: 0f be 46 2a                 	movsbl	42(%rsi), %eax
100004a26: 0f be 4f 2a                 	movsbl	42(%rdi), %ecx
100004a2a: 0f af c8                    	imull	%eax, %ecx
100004a2d: 01 d1                       	addl	%edx, %ecx
100004a2f: 0f be 46 2b                 	movsbl	43(%rsi), %eax
100004a33: 0f be 57 2b                 	movsbl	43(%rdi), %edx
100004a37: 0f af d0                    	imull	%eax, %edx
100004a3a: 01 ca                       	addl	%ecx, %edx
100004a3c: 0f be 46 2c                 	movsbl	44(%rsi), %eax
100004a40: 0f be 4f 2c                 	movsbl	44(%rdi), %ecx
100004a44: 0f af c8                    	imull	%eax, %ecx
100004a47: 01 d1                       	addl	%edx, %ecx
100004a49: 0f be 46 2d                 	movsbl	45(%rsi), %eax
100004a4d: 0f be 57 2d                 	movsbl	45(%rdi), %edx
100004a51: 0f af d0                    	imull	%eax, %edx
100004a54: 01 ca                       	addl	%ecx, %edx
100004a56: 0f be 46 2e                 	movsbl	46(%rsi), %eax
100004a5a: 0f be 4f 2e                 	movsbl	46(%rdi), %ecx
100004a5e: 0f af c8                    	imull	%eax, %ecx
100004a61: 01 d1                       	addl	%edx, %ecx
100004a63: 0f be 46 2f                 	movsbl	47(%rsi), %eax
100004a67: 0f be 57 2f                 	movsbl	47(%rdi), %edx
100004a6b: 0f af d0                    	imull	%eax, %edx
100004a6e: 01 ca                       	addl	%ecx, %edx
100004a70: 0f be 46 30                 	movsbl	48(%rsi), %eax
100004a74: 0f be 4f 30                 	movsbl	48(%rdi), %ecx
100004a78: 0f af c8                    	imull	%eax, %ecx
100004a7b: 01 d1                       	addl	%edx, %ecx
100004a7d: 0f be 46 31                 	movsbl	49(%rsi), %eax
100004a81: 0f be 57 31                 	movsbl	49(%rdi), %edx
100004a85: 0f af d0                    	imull	%eax, %edx
100004a88: 01 ca                       	addl	%ecx, %edx
100004a8a: 0f be 46 32                 	movsbl	50(%rsi), %eax
100004a8e: 0f be 4f 32                 	movsbl	50(%rdi), %ecx
100004a92: 0f af c8                    	imull	%eax, %ecx
100004a95: 01 d1                       	addl	%edx, %ecx
100004a97: 0f be 46 33                 	movsbl	51(%rsi), %eax
100004a9b: 0f be 57 33                 	movsbl	51(%rdi), %edx
100004a9f: 0f af d0                    	imull	%eax, %edx
100004aa2: 01 ca                       	addl	%ecx, %edx
100004aa4: 0f be 46 34                 	movsbl	52(%rsi), %eax
100004aa8: 0f be 4f 34                 	movsbl	52(%rdi), %ecx
100004aac: 0f af c8                    	imull	%eax, %ecx
100004aaf: 01 d1                       	addl	%edx, %ecx
100004ab1: 0f be 46 35                 	movsbl	53(%rsi), %eax
100004ab5: 0f be 57 35                 	movsbl	53(%rdi), %edx
100004ab9: 0f af d0                    	imull	%eax, %edx
100004abc: 01 ca                       	addl	%ecx, %edx
100004abe: 0f be 46 36                 	movsbl	54(%rsi), %eax
100004ac2: 0f be 4f 36                 	movsbl	54(%rdi), %ecx
100004ac6: 0f af c8                    	imull	%eax, %ecx
100004ac9: 01 d1                       	addl	%edx, %ecx
100004acb: 0f be 46 37                 	movsbl	55(%rsi), %eax
100004acf: 0f be 57 37                 	movsbl	55(%rdi), %edx
100004ad3: 0f af d0                    	imull	%eax, %edx
100004ad6: 01 ca                       	addl	%ecx, %edx
100004ad8: 0f be 46 38                 	movsbl	56(%rsi), %eax
100004adc: 0f be 4f 38                 	movsbl	56(%rdi), %ecx
100004ae0: 0f af c8                    	imull	%eax, %ecx
100004ae3: 01 d1                       	addl	%edx, %ecx
100004ae5: 0f be 46 39                 	movsbl	57(%rsi), %eax
100004ae9: 0f be 57 39                 	movsbl	57(%rdi), %edx
100004aed: 0f af d0                    	imull	%eax, %edx
100004af0: 01 ca                       	addl	%ecx, %edx
100004af2: 0f be 46 3a                 	movsbl	58(%rsi), %eax
100004af6: 0f be 4f 3a                 	movsbl	58(%rdi), %ecx
100004afa: 0f af c8                    	imull	%eax, %ecx
100004afd: 01 d1                       	addl	%edx, %ecx
100004aff: 0f be 46 3b                 	movsbl	59(%rsi), %eax
100004b03: 0f be 57 3b                 	movsbl	59(%rdi), %edx
100004b07: 0f af d0                    	imull	%eax, %edx
100004b0a: 01 ca                       	addl	%ecx, %edx
100004b0c: 0f be 46 3c                 	movsbl	60(%rsi), %eax
100004b10: 0f be 4f 3c                 	movsbl	60(%rdi), %ecx
100004b14: 0f af c8                    	imull	%eax, %ecx
100004b17: 01 d1                       	addl	%edx, %ecx
100004b19: 0f be 46 3d                 	movsbl	61(%rsi), %eax
100004b1d: 0f be 57 3d                 	movsbl	61(%rdi), %edx
100004b21: 0f af d0                    	imull	%eax, %edx
100004b24: 01 ca                       	addl	%ecx, %edx
100004b26: 0f be 46 3e                 	movsbl	62(%rsi), %eax
100004b2a: 0f be 4f 3e                 	movsbl	62(%rdi), %ecx
100004b2e: 0f af c8                    	imull	%eax, %ecx
100004b31: 01 d1                       	addl	%edx, %ecx
100004b33: 0f be 46 3f                 	movsbl	63(%rsi), %eax
100004b37: 0f be 57 3f                 	movsbl	63(%rdi), %edx
100004b3b: 0f af d0                    	imull	%eax, %edx
100004b3e: 01 ca                       	addl	%ecx, %edx
100004b40: 0f be 46 40                 	movsbl	64(%rsi), %eax
100004b44: 0f be 4f 40                 	movsbl	64(%rdi), %ecx
100004b48: 0f af c8                    	imull	%eax, %ecx
100004b4b: 01 d1                       	addl	%edx, %ecx
100004b4d: 0f be 46 41                 	movsbl	65(%rsi), %eax
100004b51: 0f be 57 41                 	movsbl	65(%rdi), %edx
100004b55: 0f af d0                    	imull	%eax, %edx
100004b58: 01 ca                       	addl	%ecx, %edx
100004b5a: 0f be 46 42                 	movsbl	66(%rsi), %eax
100004b5e: 0f be 4f 42                 	movsbl	66(%rdi), %ecx
100004b62: 0f af c8                    	imull	%eax, %ecx
100004b65: 01 d1                       	addl	%edx, %ecx
100004b67: 0f be 46 43                 	movsbl	67(%rsi), %eax
100004b6b: 0f be 57 43                 	movsbl	67(%rdi), %edx
100004b6f: 0f af d0                    	imull	%eax, %edx
100004b72: 01 ca                       	addl	%ecx, %edx
100004b74: 0f be 46 44                 	movsbl	68(%rsi), %eax
100004b78: 0f be 4f 44                 	movsbl	68(%rdi), %ecx
100004b7c: 0f af c8                    	imull	%eax, %ecx
100004b7f: 01 d1                       	addl	%edx, %ecx
100004b81: 0f be 46 45                 	movsbl	69(%rsi), %eax
100004b85: 0f be 57 45                 	movsbl	69(%rdi), %edx
100004b89: 0f af d0                    	imull	%eax, %edx
100004b8c: 01 ca                       	addl	%ecx, %edx
100004b8e: 0f be 46 46                 	movsbl	70(%rsi), %eax
100004b92: 0f be 4f 46                 	movsbl	70(%rdi), %ecx
100004b96: 0f af c8                    	imull	%eax, %ecx
100004b99: 01 d1                       	addl	%edx, %ecx
100004b9b: 0f be 46 47                 	movsbl	71(%rsi), %eax
100004b9f: 0f be 57 47                 	movsbl	71(%rdi), %edx
100004ba3: 0f af d0                    	imull	%eax, %edx
100004ba6: 01 ca                       	addl	%ecx, %edx
100004ba8: 0f be 46 48                 	movsbl	72(%rsi), %eax
100004bac: 0f be 4f 48                 	movsbl	72(%rdi), %ecx
100004bb0: 0f af c8                    	imull	%eax, %ecx
100004bb3: 01 d1                       	addl	%edx, %ecx
100004bb5: 0f be 46 49                 	movsbl	73(%rsi), %eax
100004bb9: 0f be 57 49                 	movsbl	73(%rdi), %edx
100004bbd: 0f af d0                    	imull	%eax, %edx
100004bc0: 01 ca                       	addl	%ecx, %edx
100004bc2: 0f be 46 4a                 	movsbl	74(%rsi), %eax
100004bc6: 0f be 4f 4a                 	movsbl	74(%rdi), %ecx
100004bca: 0f af c8                    	imull	%eax, %ecx
100004bcd: 01 d1                       	addl	%edx, %ecx
100004bcf: 0f be 46 4b                 	movsbl	75(%rsi), %eax
100004bd3: 0f be 57 4b                 	movsbl	75(%rdi), %edx
100004bd7: 0f af d0                    	imull	%eax, %edx
100004bda: 01 ca                       	addl	%ecx, %edx
100004bdc: 0f be 46 4c                 	movsbl	76(%rsi), %eax
100004be0: 0f be 4f 4c                 	movsbl	76(%rdi), %ecx
100004be4: 0f af c8                    	imull	%eax, %ecx
100004be7: 01 d1                       	addl	%edx, %ecx
100004be9: 0f be 46 4d                 	movsbl	77(%rsi), %eax
100004bed: 0f be 57 4d                 	movsbl	77(%rdi), %edx
100004bf1: 0f af d0                    	imull	%eax, %edx
100004bf4: 01 ca                       	addl	%ecx, %edx
100004bf6: 0f be 46 4e                 	movsbl	78(%rsi), %eax
100004bfa: 0f be 4f 4e                 	movsbl	78(%rdi), %ecx
100004bfe: 0f af c8                    	imull	%eax, %ecx
100004c01: 01 d1                       	addl	%edx, %ecx
100004c03: 0f be 46 4f                 	movsbl	79(%rsi), %eax
100004c07: 0f be 57 4f                 	movsbl	79(%rdi), %edx
100004c0b: 0f af d0                    	imull	%eax, %edx
100004c0e: 01 ca                       	addl	%ecx, %edx
100004c10: 0f be 46 50                 	movsbl	80(%rsi), %eax
100004c14: 0f be 4f 50                 	movsbl	80(%rdi), %ecx
100004c18: 0f af c8                    	imull	%eax, %ecx
100004c1b: 01 d1                       	addl	%edx, %ecx
100004c1d: 0f be 46 51                 	movsbl	81(%rsi), %eax
100004c21: 0f be 57 51                 	movsbl	81(%rdi), %edx
100004c25: 0f af d0                    	imull	%eax, %edx
100004c28: 01 ca                       	addl	%ecx, %edx
100004c2a: 0f be 46 52                 	movsbl	82(%rsi), %eax
100004c2e: 0f be 4f 52                 	movsbl	82(%rdi), %ecx
100004c32: 0f af c8                    	imull	%eax, %ecx
100004c35: 01 d1                       	addl	%edx, %ecx
100004c37: 0f be 46 53                 	movsbl	83(%rsi), %eax
100004c3b: 0f be 57 53                 	movsbl	83(%rdi), %edx
100004c3f: 0f af d0                    	imull	%eax, %edx
100004c42: 01 ca                       	addl	%ecx, %edx
100004c44: 0f be 46 54                 	movsbl	84(%rsi), %eax
100004c48: 0f be 4f 54                 	movsbl	84(%rdi), %ecx
100004c4c: 0f af c8                    	imull	%eax, %ecx
100004c4f: 01 d1                       	addl	%edx, %ecx
100004c51: 0f be 46 55                 	movsbl	85(%rsi), %eax
100004c55: 0f be 57 55                 	movsbl	85(%rdi), %edx
100004c59: 0f af d0                    	imull	%eax, %edx
100004c5c: 01 ca                       	addl	%ecx, %edx
100004c5e: 0f be 46 56                 	movsbl	86(%rsi), %eax
100004c62: 0f be 4f 56                 	movsbl	86(%rdi), %ecx
100004c66: 0f af c8                    	imull	%eax, %ecx
100004c69: 01 d1                       	addl	%edx, %ecx
100004c6b: 0f be 46 57                 	movsbl	87(%rsi), %eax
100004c6f: 0f be 57 57                 	movsbl	87(%rdi), %edx
100004c73: 0f af d0                    	imull	%eax, %edx
100004c76: 01 ca                       	addl	%ecx, %edx
100004c78: 0f be 46 58                 	movsbl	88(%rsi), %eax
100004c7c: 0f be 4f 58                 	movsbl	88(%rdi), %ecx
100004c80: 0f af c8                    	imull	%eax, %ecx
100004c83: 01 d1                       	addl	%edx, %ecx
100004c85: 0f be 46 59                 	movsbl	89(%rsi), %eax
100004c89: 0f be 57 59                 	movsbl	89(%rdi), %edx
100004c8d: 0f af d0                    	imull	%eax, %edx
100004c90: 01 ca                       	addl	%ecx, %edx
100004c92: 0f be 46 5a                 	movsbl	90(%rsi), %eax
100004c96: 0f be 4f 5a                 	movsbl	90(%rdi), %ecx
100004c9a: 0f af c8                    	imull	%eax, %ecx
100004c9d: 01 d1                       	addl	%edx, %ecx
100004c9f: 0f be 46 5b                 	movsbl	91(%rsi), %eax
100004ca3: 0f be 57 5b                 	movsbl	91(%rdi), %edx
100004ca7: 0f af d0                    	imull	%eax, %edx
100004caa: 01 ca                       	addl	%ecx, %edx
100004cac: 0f be 46 5c                 	movsbl	92(%rsi), %eax
100004cb0: 0f be 4f 5c                 	movsbl	92(%rdi), %ecx
100004cb4: 0f af c8                    	imull	%eax, %ecx
100004cb7: 01 d1                       	addl	%edx, %ecx
100004cb9: 0f be 46 5d                 	movsbl	93(%rsi), %eax
100004cbd: 0f be 57 5d                 	movsbl	93(%rdi), %edx
100004cc1: 0f af d0                    	imull	%eax, %edx
100004cc4: 01 ca                       	addl	%ecx, %edx
100004cc6: 0f be 46 5e                 	movsbl	94(%rsi), %eax
100004cca: 0f be 4f 5e                 	movsbl	94(%rdi), %ecx
100004cce: 0f af c8                    	imull	%eax, %ecx
100004cd1: 01 d1                       	addl	%edx, %ecx
100004cd3: 0f be 46 5f                 	movsbl	95(%rsi), %eax
100004cd7: 0f be 57 5f                 	movsbl	95(%rdi), %edx
100004cdb: 0f af d0                    	imull	%eax, %edx
100004cde: 01 ca                       	addl	%ecx, %edx
100004ce0: 0f bf c2                    	movswl	%dx, %eax
100004ce3: 5d                          	popq	%rbp
100004ce4: c3                          	retq
100004ce5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004cef: 90                          	nop

0000000100004cf0 __Z11microkernelILj3ELj64EasET2_PKT1_S3_:
100004cf0: 55                          	pushq	%rbp
100004cf1: 48 89 e5                    	movq	%rsp, %rbp
100004cf4: c4 e2 7d 20 06              	vpmovsxbw	(%rsi), %ymm0
100004cf9: c4 e2 7d 20 4e 10           	vpmovsxbw	16(%rsi), %ymm1
100004cff: c4 e2 7d 20 17              	vpmovsxbw	(%rdi), %ymm2
100004d04: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004d08: c4 e2 7d 20 57 10           	vpmovsxbw	16(%rdi), %ymm2
100004d0e: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004d12: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004d16: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004d1c: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d20: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004d25: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d29: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004d2e: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d32: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004d37: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d3b: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004d3f: c4 e2 7d 20 46 20           	vpmovsxbw	32(%rsi), %ymm0
100004d45: c4 e2 7d 20 4e 30           	vpmovsxbw	48(%rsi), %ymm1
100004d4b: c4 e2 7d 20 57 20           	vpmovsxbw	32(%rdi), %ymm2
100004d51: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004d55: c4 e2 7d 20 57 30           	vpmovsxbw	48(%rdi), %ymm2
100004d5b: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004d5f: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004d63: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004d69: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d6d: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004d72: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d76: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004d7b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d7f: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004d84: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004d88: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004d8c: c4 e2 7d 20 46 40           	vpmovsxbw	64(%rsi), %ymm0
100004d92: 01 c1                       	addl	%eax, %ecx
100004d94: c4 e2 7d 20 4e 50           	vpmovsxbw	80(%rsi), %ymm1
100004d9a: c4 e2 7d 20 57 40           	vpmovsxbw	64(%rdi), %ymm2
100004da0: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004da4: c4 e2 7d 20 57 50           	vpmovsxbw	80(%rdi), %ymm2
100004daa: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004dae: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004db2: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004db8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004dbc: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004dc1: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004dc5: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004dca: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004dce: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004dd3: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004dd7: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004ddb: 01 c8                       	addl	%ecx, %eax
100004ddd: c4 e2 7d 20 46 60           	vpmovsxbw	96(%rsi), %ymm0
100004de3: c4 e2 7d 20 4e 70           	vpmovsxbw	112(%rsi), %ymm1
100004de9: c4 e2 7d 20 57 60           	vpmovsxbw	96(%rdi), %ymm2
100004def: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004df3: c4 e2 7d 20 57 70           	vpmovsxbw	112(%rdi), %ymm2
100004df9: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004dfd: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004e01: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004e07: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e0b: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004e10: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e14: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004e19: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e1d: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004e22: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e26: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004e2a: c4 e2 7d 20 86 80 00 00 00  	vpmovsxbw	128(%rsi), %ymm0
100004e33: 01 c1                       	addl	%eax, %ecx
100004e35: c4 e2 7d 20 8e 90 00 00 00  	vpmovsxbw	144(%rsi), %ymm1
100004e3e: c4 e2 7d 20 97 80 00 00 00  	vpmovsxbw	128(%rdi), %ymm2
100004e47: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004e4b: c4 e2 7d 20 97 90 00 00 00  	vpmovsxbw	144(%rdi), %ymm2
100004e54: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004e58: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004e5c: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004e62: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e66: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004e6b: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e6f: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004e74: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e78: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004e7d: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004e81: c5 f9 7e c0                 	vmovd	%xmm0, %eax
100004e85: 01 c8                       	addl	%ecx, %eax
100004e87: c4 e2 7d 20 86 a0 00 00 00  	vpmovsxbw	160(%rsi), %ymm0
100004e90: c4 e2 7d 20 8e b0 00 00 00  	vpmovsxbw	176(%rsi), %ymm1
100004e99: c4 e2 7d 20 97 a0 00 00 00  	vpmovsxbw	160(%rdi), %ymm2
100004ea2: c5 ed d5 c0                 	vpmullw	%ymm0, %ymm2, %ymm0
100004ea6: c4 e2 7d 20 97 b0 00 00 00  	vpmovsxbw	176(%rdi), %ymm2
100004eaf: c5 ed d5 c9                 	vpmullw	%ymm1, %ymm2, %ymm1
100004eb3: c5 fd fd c1                 	vpaddw	%ymm1, %ymm0, %ymm0
100004eb7: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100004ebd: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ec1: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
100004ec6: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004eca: c5 f9 70 c8 e5              	vpshufd	$229, %xmm0, %xmm1
100004ecf: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004ed3: c5 f1 72 d0 10              	vpsrld	$16, %xmm0, %xmm1
100004ed8: c5 f9 fd c1                 	vpaddw	%xmm1, %xmm0, %xmm0
100004edc: c5 f9 7e c1                 	vmovd	%xmm0, %ecx
100004ee0: 01 c1                       	addl	%eax, %ecx
100004ee2: 0f bf c1                    	movswl	%cx, %eax
100004ee5: 5d                          	popq	%rbp
100004ee6: c5 f8 77                    	vzeroupper
100004ee9: c3                          	retq
100004eea: 90                          	nop
100004eeb: 90                          	nop
100004eec: 90                          	nop
100004eed: 90                          	nop
100004eee: 90                          	nop
100004eef: 90                          	nop

0000000100004ef0 __ZN14ModelInterfaceC2Ev:
100004ef0: 55                          	pushq	%rbp
100004ef1: 48 89 e5                    	movq	%rsp, %rbp
100004ef4: 48 8d 05 cd 51 00 00        	leaq	20941(%rip), %rax
100004efb: 48 89 07                    	movq	%rax, (%rdi)
100004efe: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004f02: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004f07: 5d                          	popq	%rbp
100004f08: c3                          	retq
100004f09: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004f10 __ZN14ModelInterfaceC1Ev:
100004f10: 55                          	pushq	%rbp
100004f11: 48 89 e5                    	movq	%rsp, %rbp
100004f14: 48 8d 05 ad 51 00 00        	leaq	20909(%rip), %rax
100004f1b: 48 89 07                    	movq	%rax, (%rdi)
100004f1e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100004f22: c5 f8 11 47 28              	vmovups	%xmm0, 40(%rdi)
100004f27: 5d                          	popq	%rbp
100004f28: c3                          	retq
100004f29: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004f30 __ZN14ModelInterfaceD2Ev:
100004f30: 55                          	pushq	%rbp
100004f31: 48 89 e5                    	movq	%rsp, %rbp
100004f34: 53                          	pushq	%rbx
100004f35: 50                          	pushq	%rax
100004f36: 48 89 fb                    	movq	%rdi, %rbx
100004f39: 48 8d 05 88 51 00 00        	leaq	20872(%rip), %rax
100004f40: 48 89 07                    	movq	%rax, (%rdi)
100004f43: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004f47: 48 85 ff                    	testq	%rdi, %rdi
100004f4a: 74 05                       	je	5 <__ZN14ModelInterfaceD2Ev+0x21>
100004f4c: e8 2d 31 00 00              	callq	12589 <dyld_stub_binder+0x10000807e>
100004f51: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004f55: 48 83 c4 08                 	addq	$8, %rsp
100004f59: 48 85 ff                    	testq	%rdi, %rdi
100004f5c: 74 07                       	je	7 <__ZN14ModelInterfaceD2Ev+0x35>
100004f5e: 5b                          	popq	%rbx
100004f5f: 5d                          	popq	%rbp
100004f60: e9 19 31 00 00              	jmp	12569 <dyld_stub_binder+0x10000807e>
100004f65: 5b                          	popq	%rbx
100004f66: 5d                          	popq	%rbp
100004f67: c3                          	retq
100004f68: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004f70 __ZN14ModelInterfaceD1Ev:
100004f70: 55                          	pushq	%rbp
100004f71: 48 89 e5                    	movq	%rsp, %rbp
100004f74: 53                          	pushq	%rbx
100004f75: 50                          	pushq	%rax
100004f76: 48 89 fb                    	movq	%rdi, %rbx
100004f79: 48 8d 05 48 51 00 00        	leaq	20808(%rip), %rax
100004f80: 48 89 07                    	movq	%rax, (%rdi)
100004f83: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004f87: 48 85 ff                    	testq	%rdi, %rdi
100004f8a: 74 05                       	je	5 <__ZN14ModelInterfaceD1Ev+0x21>
100004f8c: e8 ed 30 00 00              	callq	12525 <dyld_stub_binder+0x10000807e>
100004f91: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004f95: 48 83 c4 08                 	addq	$8, %rsp
100004f99: 48 85 ff                    	testq	%rdi, %rdi
100004f9c: 74 07                       	je	7 <__ZN14ModelInterfaceD1Ev+0x35>
100004f9e: 5b                          	popq	%rbx
100004f9f: 5d                          	popq	%rbp
100004fa0: e9 d9 30 00 00              	jmp	12505 <dyld_stub_binder+0x10000807e>
100004fa5: 5b                          	popq	%rbx
100004fa6: 5d                          	popq	%rbp
100004fa7: c3                          	retq
100004fa8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004fb0 __ZN14ModelInterfaceD0Ev:
100004fb0: 55                          	pushq	%rbp
100004fb1: 48 89 e5                    	movq	%rsp, %rbp
100004fb4: 53                          	pushq	%rbx
100004fb5: 50                          	pushq	%rax
100004fb6: 48 89 fb                    	movq	%rdi, %rbx
100004fb9: 48 8d 05 08 51 00 00        	leaq	20744(%rip), %rax
100004fc0: 48 89 07                    	movq	%rax, (%rdi)
100004fc3: 48 8b 7f 28                 	movq	40(%rdi), %rdi
100004fc7: 48 85 ff                    	testq	%rdi, %rdi
100004fca: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x21>
100004fcc: e8 ad 30 00 00              	callq	12461 <dyld_stub_binder+0x10000807e>
100004fd1: 48 8b 7b 30                 	movq	48(%rbx), %rdi
100004fd5: 48 85 ff                    	testq	%rdi, %rdi
100004fd8: 74 05                       	je	5 <__ZN14ModelInterfaceD0Ev+0x2f>
100004fda: e8 9f 30 00 00              	callq	12447 <dyld_stub_binder+0x10000807e>
100004fdf: 48 89 df                    	movq	%rbx, %rdi
100004fe2: 48 83 c4 08                 	addq	$8, %rsp
100004fe6: 5b                          	popq	%rbx
100004fe7: 5d                          	popq	%rbp
100004fe8: e9 91 30 00 00              	jmp	12433 <dyld_stub_binder+0x10000807e>
100004fed: 0f 1f 00                    	nopl	(%rax)

0000000100004ff0 __ZN14ModelInterface7forwardEv:
100004ff0: 55                          	pushq	%rbp
100004ff1: 48 89 e5                    	movq	%rsp, %rbp
100004ff4: 5d                          	popq	%rbp
100004ff5: c3                          	retq
100004ff6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100005000 __ZN14ModelInterface12input_bufferEv:
100005000: 55                          	pushq	%rbp
100005001: 48 89 e5                    	movq	%rsp, %rbp
100005004: 0f b6 47 20                 	movzbl	32(%rdi), %eax
100005008: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
10000500d: 5d                          	popq	%rbp
10000500e: c3                          	retq
10000500f: 90                          	nop

0000000100005010 __ZN14ModelInterface13output_bufferEv:
100005010: 55                          	pushq	%rbp
100005011: 48 89 e5                    	movq	%rsp, %rbp
100005014: 31 c0                       	xorl	%eax, %eax
100005016: 80 7f 20 00                 	cmpb	$0, 32(%rdi)
10000501a: 0f 94 c0                    	sete	%al
10000501d: 48 8b 44 c7 28              	movq	40(%rdi,%rax,8), %rax
100005022: 5d                          	popq	%rbp
100005023: c3                          	retq
100005024: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000502e: 66 90                       	nop

0000000100005030 __ZN14ModelInterface11init_bufferEj:
100005030: 55                          	pushq	%rbp
100005031: 48 89 e5                    	movq	%rsp, %rbp
100005034: 41 57                       	pushq	%r15
100005036: 41 56                       	pushq	%r14
100005038: 41 54                       	pushq	%r12
10000503a: 53                          	pushq	%rbx
10000503b: 41 89 f7                    	movl	%esi, %r15d
10000503e: 48 89 fb                    	movq	%rdi, %rbx
100005041: c6 47 20 00                 	movb	$0, 32(%rdi)
100005045: 41 89 f6                    	movl	%esi, %r14d
100005048: 4c 89 f7                    	movq	%r14, %rdi
10000504b: e8 34 30 00 00              	callq	12340 <dyld_stub_binder+0x100008084>
100005050: 49 89 c4                    	movq	%rax, %r12
100005053: 48 89 43 28                 	movq	%rax, 40(%rbx)
100005057: 4c 89 f7                    	movq	%r14, %rdi
10000505a: e8 25 30 00 00              	callq	12325 <dyld_stub_binder+0x100008084>
10000505f: 48 89 43 30                 	movq	%rax, 48(%rbx)
100005063: 45 85 ff                    	testl	%r15d, %r15d
100005066: 0f 84 44 01 00 00           	je	324 <__ZN14ModelInterface11init_bufferEj+0x180>
10000506c: 41 c6 04 24 00              	movb	$0, (%r12)
100005071: 41 83 ff 01                 	cmpl	$1, %r15d
100005075: 0f 84 95 00 00 00           	je	149 <__ZN14ModelInterface11init_bufferEj+0xe0>
10000507b: 41 8d 46 ff                 	leal	-1(%r14), %eax
10000507f: 49 8d 56 fe                 	leaq	-2(%r14), %rdx
100005083: 83 e0 07                    	andl	$7, %eax
100005086: b9 01 00 00 00              	movl	$1, %ecx
10000508b: 48 83 fa 07                 	cmpq	$7, %rdx
10000508f: 72 63                       	jb	99 <__ZN14ModelInterface11init_bufferEj+0xc4>
100005091: 48 89 c2                    	movq	%rax, %rdx
100005094: 48 f7 d2                    	notq	%rdx
100005097: 4c 01 f2                    	addq	%r14, %rdx
10000509a: 31 c9                       	xorl	%ecx, %ecx
10000509c: 0f 1f 40 00                 	nopl	(%rax)
1000050a0: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050a4: c6 44 0e 01 00              	movb	$0, 1(%rsi,%rcx)
1000050a9: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050ad: c6 44 0e 02 00              	movb	$0, 2(%rsi,%rcx)
1000050b2: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050b6: c6 44 0e 03 00              	movb	$0, 3(%rsi,%rcx)
1000050bb: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050bf: c6 44 0e 04 00              	movb	$0, 4(%rsi,%rcx)
1000050c4: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050c8: c6 44 0e 05 00              	movb	$0, 5(%rsi,%rcx)
1000050cd: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050d1: c6 44 0e 06 00              	movb	$0, 6(%rsi,%rcx)
1000050d6: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050da: c6 44 0e 07 00              	movb	$0, 7(%rsi,%rcx)
1000050df: 48 8b 73 28                 	movq	40(%rbx), %rsi
1000050e3: c6 44 0e 08 00              	movb	$0, 8(%rsi,%rcx)
1000050e8: 48 83 c1 08                 	addq	$8, %rcx
1000050ec: 48 39 ca                    	cmpq	%rcx, %rdx
1000050ef: 75 af                       	jne	-81 <__ZN14ModelInterface11init_bufferEj+0x70>
1000050f1: 48 ff c1                    	incq	%rcx
1000050f4: 48 85 c0                    	testq	%rax, %rax
1000050f7: 74 17                       	je	23 <__ZN14ModelInterface11init_bufferEj+0xe0>
1000050f9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100005100: 48 8b 53 28                 	movq	40(%rbx), %rdx
100005104: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100005108: 48 ff c1                    	incq	%rcx
10000510b: 48 ff c8                    	decq	%rax
10000510e: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0xd0>
100005110: 45 85 ff                    	testl	%r15d, %r15d
100005113: 0f 84 97 00 00 00           	je	151 <__ZN14ModelInterface11init_bufferEj+0x180>
100005119: 49 8d 4e ff                 	leaq	-1(%r14), %rcx
10000511d: 44 89 f0                    	movl	%r14d, %eax
100005120: 83 e0 07                    	andl	$7, %eax
100005123: 48 83 f9 07                 	cmpq	$7, %rcx
100005127: 73 0c                       	jae	12 <__ZN14ModelInterface11init_bufferEj+0x105>
100005129: 31 c9                       	xorl	%ecx, %ecx
10000512b: 48 85 c0                    	testq	%rax, %rax
10000512e: 75 70                       	jne	112 <__ZN14ModelInterface11init_bufferEj+0x170>
100005130: e9 7b 00 00 00              	jmp	123 <__ZN14ModelInterface11init_bufferEj+0x180>
100005135: 49 29 c6                    	subq	%rax, %r14
100005138: 31 c9                       	xorl	%ecx, %ecx
10000513a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100005140: 48 8b 53 30                 	movq	48(%rbx), %rdx
100005144: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
100005148: 48 8b 53 30                 	movq	48(%rbx), %rdx
10000514c: c6 44 0a 01 00              	movb	$0, 1(%rdx,%rcx)
100005151: 48 8b 53 30                 	movq	48(%rbx), %rdx
100005155: c6 44 0a 02 00              	movb	$0, 2(%rdx,%rcx)
10000515a: 48 8b 53 30                 	movq	48(%rbx), %rdx
10000515e: c6 44 0a 03 00              	movb	$0, 3(%rdx,%rcx)
100005163: 48 8b 53 30                 	movq	48(%rbx), %rdx
100005167: c6 44 0a 04 00              	movb	$0, 4(%rdx,%rcx)
10000516c: 48 8b 53 30                 	movq	48(%rbx), %rdx
100005170: c6 44 0a 05 00              	movb	$0, 5(%rdx,%rcx)
100005175: 48 8b 53 30                 	movq	48(%rbx), %rdx
100005179: c6 44 0a 06 00              	movb	$0, 6(%rdx,%rcx)
10000517e: 48 8b 53 30                 	movq	48(%rbx), %rdx
100005182: c6 44 0a 07 00              	movb	$0, 7(%rdx,%rcx)
100005187: 48 83 c1 08                 	addq	$8, %rcx
10000518b: 49 39 ce                    	cmpq	%rcx, %r14
10000518e: 75 b0                       	jne	-80 <__ZN14ModelInterface11init_bufferEj+0x110>
100005190: 48 85 c0                    	testq	%rax, %rax
100005193: 74 1b                       	je	27 <__ZN14ModelInterface11init_bufferEj+0x180>
100005195: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000519f: 90                          	nop
1000051a0: 48 8b 53 30                 	movq	48(%rbx), %rdx
1000051a4: c6 04 0a 00                 	movb	$0, (%rdx,%rcx)
1000051a8: 48 ff c1                    	incq	%rcx
1000051ab: 48 ff c8                    	decq	%rax
1000051ae: 75 f0                       	jne	-16 <__ZN14ModelInterface11init_bufferEj+0x170>
1000051b0: 5b                          	popq	%rbx
1000051b1: 41 5c                       	popq	%r12
1000051b3: 41 5e                       	popq	%r14
1000051b5: 41 5f                       	popq	%r15
1000051b7: 5d                          	popq	%rbp
1000051b8: c3                          	retq
1000051b9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000051c0 __ZN14ModelInterface11swap_bufferEv:
1000051c0: 55                          	pushq	%rbp
1000051c1: 48 89 e5                    	movq	%rsp, %rbp
1000051c4: 80 77 20 01                 	xorb	$1, 32(%rdi)
1000051c8: 5d                          	popq	%rbp
1000051c9: c3                          	retq
1000051ca: 90                          	nop
1000051cb: 90                          	nop
1000051cc: 90                          	nop
1000051cd: 90                          	nop
1000051ce: 90                          	nop
1000051cf: 90                          	nop

00000001000051d0 __Z4ReLUPaS_j:
1000051d0: 55                          	pushq	%rbp
1000051d1: 48 89 e5                    	movq	%rsp, %rbp
1000051d4: 83 fa 04                    	cmpl	$4, %edx
1000051d7: 0f 82 88 00 00 00           	jb	136 <__Z4ReLUPaS_j+0x95>
1000051dd: 8d 42 fc                    	leal	-4(%rdx), %eax
1000051e0: 41 89 c2                    	movl	%eax, %r10d
1000051e3: 41 c1 ea 02                 	shrl	$2, %r10d
1000051e7: 41 ff c2                    	incl	%r10d
1000051ea: 41 83 fa 1f                 	cmpl	$31, %r10d
1000051ee: 76 24                       	jbe	36 <__Z4ReLUPaS_j+0x44>
1000051f0: 83 e0 fc                    	andl	$-4, %eax
1000051f3: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
1000051f7: 48 83 c1 04                 	addq	$4, %rcx
1000051fb: 48 39 f9                    	cmpq	%rdi, %rcx
1000051fe: 0f 86 78 02 00 00           	jbe	632 <__Z4ReLUPaS_j+0x2ac>
100005204: 48 01 f8                    	addq	%rdi, %rax
100005207: 48 83 c0 04                 	addq	$4, %rax
10000520b: 48 39 f0                    	cmpq	%rsi, %rax
10000520e: 0f 86 68 02 00 00           	jbe	616 <__Z4ReLUPaS_j+0x2ac>
100005214: 89 d0                       	movl	%edx, %eax
100005216: 45 31 c0                    	xorl	%r8d, %r8d
100005219: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100005220: 0f b6 0e                    	movzbl	(%rsi), %ecx
100005223: 84 c9                       	testb	%cl, %cl
100005225: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
100005229: 88 0f                       	movb	%cl, (%rdi)
10000522b: 0f b6 4e 01                 	movzbl	1(%rsi), %ecx
10000522f: 84 c9                       	testb	%cl, %cl
100005231: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
100005235: 88 4f 01                    	movb	%cl, 1(%rdi)
100005238: 0f b6 4e 02                 	movzbl	2(%rsi), %ecx
10000523c: 84 c9                       	testb	%cl, %cl
10000523e: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
100005242: 88 4f 02                    	movb	%cl, 2(%rdi)
100005245: 0f b6 4e 03                 	movzbl	3(%rsi), %ecx
100005249: 84 c9                       	testb	%cl, %cl
10000524b: 41 0f 48 c8                 	cmovsl	%r8d, %ecx
10000524f: 88 4f 03                    	movb	%cl, 3(%rdi)
100005252: 48 83 c7 04                 	addq	$4, %rdi
100005256: 48 83 c6 04                 	addq	$4, %rsi
10000525a: 83 c0 fc                    	addl	$-4, %eax
10000525d: 83 f8 03                    	cmpl	$3, %eax
100005260: 77 be                       	ja	-66 <__Z4ReLUPaS_j+0x50>
100005262: 83 e2 03                    	andl	$3, %edx
100005265: 85 d2                       	testl	%edx, %edx
100005267: 0f 84 0a 02 00 00           	je	522 <__Z4ReLUPaS_j+0x2a7>
10000526d: 8d 42 ff                    	leal	-1(%rdx), %eax
100005270: 4c 8d 50 01                 	leaq	1(%rax), %r10
100005274: 49 83 fa 7f                 	cmpq	$127, %r10
100005278: 0f 86 2e 01 00 00           	jbe	302 <__Z4ReLUPaS_j+0x1dc>
10000527e: 48 8d 0c 06                 	leaq	(%rsi,%rax), %rcx
100005282: 48 83 c1 01                 	addq	$1, %rcx
100005286: 48 39 cf                    	cmpq	%rcx, %rdi
100005289: 73 10                       	jae	16 <__Z4ReLUPaS_j+0xcb>
10000528b: 48 01 f8                    	addq	%rdi, %rax
10000528e: 48 83 c0 01                 	addq	$1, %rax
100005292: 48 39 c6                    	cmpq	%rax, %rsi
100005295: 0f 82 11 01 00 00           	jb	273 <__Z4ReLUPaS_j+0x1dc>
10000529b: 4d 89 d0                    	movq	%r10, %r8
10000529e: 49 83 e0 80                 	andq	$-128, %r8
1000052a2: 49 8d 40 80                 	leaq	-128(%r8), %rax
1000052a6: 48 89 c1                    	movq	%rax, %rcx
1000052a9: 48 c1 e9 07                 	shrq	$7, %rcx
1000052ad: 48 ff c1                    	incq	%rcx
1000052b0: 41 89 c9                    	movl	%ecx, %r9d
1000052b3: 41 83 e1 01                 	andl	$1, %r9d
1000052b7: 48 85 c0                    	testq	%rax, %rax
1000052ba: 0f 84 0f 09 00 00           	je	2319 <__Z4ReLUPaS_j+0x9ff>
1000052c0: 4c 89 c8                    	movq	%r9, %rax
1000052c3: 48 29 c8                    	subq	%rcx, %rax
1000052c6: 31 c9                       	xorl	%ecx, %ecx
1000052c8: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000052cc: 0f 1f 40 00                 	nopl	(%rax)
1000052d0: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
1000052d6: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
1000052dd: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
1000052e4: c4 e2 7d 3c 64 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm4
1000052eb: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
1000052f0: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
1000052f6: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
1000052fc: c5 fe 7f 64 0f 60           	vmovdqu	%ymm4, 96(%rdi,%rcx)
100005302: c4 e2 7d 3c 8c 0e 80 00 00 00       	vpmaxsb	128(%rsi,%rcx), %ymm0, %ymm1
10000530c: c4 e2 7d 3c 94 0e a0 00 00 00       	vpmaxsb	160(%rsi,%rcx), %ymm0, %ymm2
100005316: c4 e2 7d 3c 9c 0e c0 00 00 00       	vpmaxsb	192(%rsi,%rcx), %ymm0, %ymm3
100005320: c4 e2 7d 3c a4 0e e0 00 00 00       	vpmaxsb	224(%rsi,%rcx), %ymm0, %ymm4
10000532a: c5 fe 7f 8c 0f 80 00 00 00  	vmovdqu	%ymm1, 128(%rdi,%rcx)
100005333: c5 fe 7f 94 0f a0 00 00 00  	vmovdqu	%ymm2, 160(%rdi,%rcx)
10000533c: c5 fe 7f 9c 0f c0 00 00 00  	vmovdqu	%ymm3, 192(%rdi,%rcx)
100005345: c5 fe 7f a4 0f e0 00 00 00  	vmovdqu	%ymm4, 224(%rdi,%rcx)
10000534e: 48 81 c1 00 01 00 00        	addq	$256, %rcx
100005355: 48 83 c0 02                 	addq	$2, %rax
100005359: 0f 85 71 ff ff ff           	jne	-143 <__Z4ReLUPaS_j+0x100>
10000535f: 4d 85 c9                    	testq	%r9, %r9
100005362: 74 36                       	je	54 <__Z4ReLUPaS_j+0x1ca>
100005364: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100005368: c4 e2 7d 3c 0c 0e           	vpmaxsb	(%rsi,%rcx), %ymm0, %ymm1
10000536e: c4 e2 7d 3c 54 0e 20        	vpmaxsb	32(%rsi,%rcx), %ymm0, %ymm2
100005375: c4 e2 7d 3c 5c 0e 40        	vpmaxsb	64(%rsi,%rcx), %ymm0, %ymm3
10000537c: c4 e2 7d 3c 44 0e 60        	vpmaxsb	96(%rsi,%rcx), %ymm0, %ymm0
100005383: c5 fe 7f 0c 0f              	vmovdqu	%ymm1, (%rdi,%rcx)
100005388: c5 fe 7f 54 0f 20           	vmovdqu	%ymm2, 32(%rdi,%rcx)
10000538e: c5 fe 7f 5c 0f 40           	vmovdqu	%ymm3, 64(%rdi,%rcx)
100005394: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
10000539a: 4d 39 c2                    	cmpq	%r8, %r10
10000539d: 0f 84 d4 00 00 00           	je	212 <__Z4ReLUPaS_j+0x2a7>
1000053a3: 44 29 c2                    	subl	%r8d, %edx
1000053a6: 4c 01 c6                    	addq	%r8, %rsi
1000053a9: 4c 01 c7                    	addq	%r8, %rdi
1000053ac: 44 8d 42 ff                 	leal	-1(%rdx), %r8d
1000053b0: f6 c2 07                    	testb	$7, %dl
1000053b3: 74 38                       	je	56 <__Z4ReLUPaS_j+0x21d>
1000053b5: 41 89 d2                    	movl	%edx, %r10d
1000053b8: 41 83 e2 07                 	andl	$7, %r10d
1000053bc: 45 31 c9                    	xorl	%r9d, %r9d
1000053bf: 31 c9                       	xorl	%ecx, %ecx
1000053c1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000053cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000053d0: 0f b6 04 0e                 	movzbl	(%rsi,%rcx), %eax
1000053d4: 84 c0                       	testb	%al, %al
1000053d6: 41 0f 48 c1                 	cmovsl	%r9d, %eax
1000053da: 88 04 0f                    	movb	%al, (%rdi,%rcx)
1000053dd: 48 ff c1                    	incq	%rcx
1000053e0: 41 39 ca                    	cmpl	%ecx, %r10d
1000053e3: 75 eb                       	jne	-21 <__Z4ReLUPaS_j+0x200>
1000053e5: 29 ca                       	subl	%ecx, %edx
1000053e7: 48 01 ce                    	addq	%rcx, %rsi
1000053ea: 48 01 cf                    	addq	%rcx, %rdi
1000053ed: 41 83 f8 07                 	cmpl	$7, %r8d
1000053f1: 0f 82 80 00 00 00           	jb	128 <__Z4ReLUPaS_j+0x2a7>
1000053f7: 41 89 d0                    	movl	%edx, %r8d
1000053fa: 31 c9                       	xorl	%ecx, %ecx
1000053fc: 31 d2                       	xorl	%edx, %edx
1000053fe: 66 90                       	nop
100005400: 0f b6 04 16                 	movzbl	(%rsi,%rdx), %eax
100005404: 84 c0                       	testb	%al, %al
100005406: 0f 48 c1                    	cmovsl	%ecx, %eax
100005409: 88 04 17                    	movb	%al, (%rdi,%rdx)
10000540c: 0f b6 44 16 01              	movzbl	1(%rsi,%rdx), %eax
100005411: 84 c0                       	testb	%al, %al
100005413: 0f 48 c1                    	cmovsl	%ecx, %eax
100005416: 88 44 17 01                 	movb	%al, 1(%rdi,%rdx)
10000541a: 0f b6 44 16 02              	movzbl	2(%rsi,%rdx), %eax
10000541f: 84 c0                       	testb	%al, %al
100005421: 0f 48 c1                    	cmovsl	%ecx, %eax
100005424: 88 44 17 02                 	movb	%al, 2(%rdi,%rdx)
100005428: 0f b6 44 16 03              	movzbl	3(%rsi,%rdx), %eax
10000542d: 84 c0                       	testb	%al, %al
10000542f: 0f 48 c1                    	cmovsl	%ecx, %eax
100005432: 88 44 17 03                 	movb	%al, 3(%rdi,%rdx)
100005436: 0f b6 44 16 04              	movzbl	4(%rsi,%rdx), %eax
10000543b: 84 c0                       	testb	%al, %al
10000543d: 0f 48 c1                    	cmovsl	%ecx, %eax
100005440: 88 44 17 04                 	movb	%al, 4(%rdi,%rdx)
100005444: 0f b6 44 16 05              	movzbl	5(%rsi,%rdx), %eax
100005449: 84 c0                       	testb	%al, %al
10000544b: 0f 48 c1                    	cmovsl	%ecx, %eax
10000544e: 88 44 17 05                 	movb	%al, 5(%rdi,%rdx)
100005452: 0f b6 44 16 06              	movzbl	6(%rsi,%rdx), %eax
100005457: 84 c0                       	testb	%al, %al
100005459: 0f 48 c1                    	cmovsl	%ecx, %eax
10000545c: 88 44 17 06                 	movb	%al, 6(%rdi,%rdx)
100005460: 0f b6 44 16 07              	movzbl	7(%rsi,%rdx), %eax
100005465: 84 c0                       	testb	%al, %al
100005467: 0f 48 c1                    	cmovsl	%ecx, %eax
10000546a: 88 44 17 07                 	movb	%al, 7(%rdi,%rdx)
10000546e: 48 83 c2 08                 	addq	$8, %rdx
100005472: 41 39 d0                    	cmpl	%edx, %r8d
100005475: 75 89                       	jne	-119 <__Z4ReLUPaS_j+0x230>
100005477: 5d                          	popq	%rbp
100005478: c5 f8 77                    	vzeroupper
10000547b: c3                          	retq
10000547c: 45 89 d0                    	movl	%r10d, %r8d
10000547f: 41 83 e0 e0                 	andl	$-32, %r8d
100005483: 49 8d 40 e0                 	leaq	-32(%r8), %rax
100005487: 48 89 c1                    	movq	%rax, %rcx
10000548a: 48 c1 e9 05                 	shrq	$5, %rcx
10000548e: 48 ff c1                    	incq	%rcx
100005491: 41 89 c9                    	movl	%ecx, %r9d
100005494: 41 83 e1 01                 	andl	$1, %r9d
100005498: 48 85 c0                    	testq	%rax, %rax
10000549b: 0f 84 3e 07 00 00           	je	1854 <__Z4ReLUPaS_j+0xa0f>
1000054a1: 4c 89 c8                    	movq	%r9, %rax
1000054a4: 48 29 c8                    	subq	%rcx, %rax
1000054a7: 31 c9                       	xorl	%ecx, %ecx
1000054a9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000054b0: c5 7a 6f 34 0e              	vmovdqu	(%rsi,%rcx), %xmm14
1000054b5: c5 7a 6f 7c 0e 10           	vmovdqu	16(%rsi,%rcx), %xmm15
1000054bb: c5 fa 6f 54 0e 20           	vmovdqu	32(%rsi,%rcx), %xmm2
1000054c1: c5 fa 6f 5c 0e 30           	vmovdqu	48(%rsi,%rcx), %xmm3
1000054c7: c5 79 6f 1d 51 2d 00 00     	vmovdqa	11601(%rip), %xmm11
1000054cf: c4 c2 61 00 e3              	vpshufb	%xmm11, %xmm3, %xmm4
1000054d4: c4 c2 69 00 eb              	vpshufb	%xmm11, %xmm2, %xmm5
1000054d9: c5 d1 62 e4                 	vpunpckldq	%xmm4, %xmm5, %xmm4
1000054dd: c5 79 6f 05 4b 2d 00 00     	vmovdqa	11595(%rip), %xmm8
1000054e5: c4 c2 01 00 e8              	vpshufb	%xmm8, %xmm15, %xmm5
1000054ea: c4 c2 09 00 f0              	vpshufb	%xmm8, %xmm14, %xmm6
1000054ef: c5 c9 62 ed                 	vpunpckldq	%xmm5, %xmm6, %xmm5
1000054f3: c4 63 51 02 d4 0c           	vpblendd	$12, %xmm4, %xmm5, %xmm10
1000054f9: c5 fa 6f 64 0e 70           	vmovdqu	112(%rsi,%rcx), %xmm4
1000054ff: c4 c2 59 00 f3              	vpshufb	%xmm11, %xmm4, %xmm6
100005504: c4 e3 fd 00 6c 0e 60 4e     	vpermq	$78, 96(%rsi,%rcx), %ymm5
10000550c: c4 e3 7d 39 ed 01           	vextracti128	$1, %ymm5, %xmm5
100005512: c4 c2 51 00 fb              	vpshufb	%xmm11, %xmm5, %xmm7
100005517: c5 c1 62 f6                 	vpunpckldq	%xmm6, %xmm7, %xmm6
10000551b: c4 e3 7d 38 fe 01           	vinserti128	$1, %xmm6, %ymm0, %ymm7
100005521: c5 fa 6f 74 0e 50           	vmovdqu	80(%rsi,%rcx), %xmm6
100005527: c4 42 49 00 e0              	vpshufb	%xmm8, %xmm6, %xmm12
10000552c: c4 63 fd 00 4c 0e 40 4e     	vpermq	$78, 64(%rsi,%rcx), %ymm9
100005534: c4 43 7d 39 c9 01           	vextracti128	$1, %ymm9, %xmm9
10000553a: c4 42 31 00 e8              	vpshufb	%xmm8, %xmm9, %xmm13
10000553f: c4 c1 11 62 c4              	vpunpckldq	%xmm12, %xmm13, %xmm0
100005544: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
10000554a: c4 e3 7d 02 c7 c0           	vpblendd	$192, %ymm7, %ymm0, %ymm0
100005550: c4 63 2d 02 d0 f0           	vpblendd	$240, %ymm0, %ymm10, %ymm10
100005556: c5 79 6f 05 e2 2c 00 00     	vmovdqa	11490(%rip), %xmm8
10000555e: c4 c2 61 00 c0              	vpshufb	%xmm8, %xmm3, %xmm0
100005563: c4 c2 69 00 f8              	vpshufb	%xmm8, %xmm2, %xmm7
100005568: c5 c1 62 c0                 	vpunpckldq	%xmm0, %xmm7, %xmm0
10000556c: c5 79 6f 1d dc 2c 00 00     	vmovdqa	11484(%rip), %xmm11
100005574: c4 c2 01 00 fb              	vpshufb	%xmm11, %xmm15, %xmm7
100005579: c4 c2 09 00 cb              	vpshufb	%xmm11, %xmm14, %xmm1
10000557e: c5 f1 62 cf                 	vpunpckldq	%xmm7, %xmm1, %xmm1
100005582: c4 63 71 02 e0 0c           	vpblendd	$12, %xmm0, %xmm1, %xmm12
100005588: c4 c2 59 00 c8              	vpshufb	%xmm8, %xmm4, %xmm1
10000558d: c4 c2 51 00 f8              	vpshufb	%xmm8, %xmm5, %xmm7
100005592: c5 c1 62 c9                 	vpunpckldq	%xmm1, %xmm7, %xmm1
100005596: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
10000559c: c4 c2 49 00 fb              	vpshufb	%xmm11, %xmm6, %xmm7
1000055a1: c4 c2 31 00 c3              	vpshufb	%xmm11, %xmm9, %xmm0
1000055a6: c5 f9 62 c7                 	vpunpckldq	%xmm7, %xmm0, %xmm0
1000055aa: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
1000055b0: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
1000055b6: c4 63 1d 02 e0 f0           	vpblendd	$240, %ymm0, %ymm12, %ymm12
1000055bc: c5 79 6f 1d 9c 2c 00 00     	vmovdqa	11420(%rip), %xmm11
1000055c4: c4 c2 61 00 c3              	vpshufb	%xmm11, %xmm3, %xmm0
1000055c9: c4 c2 69 00 cb              	vpshufb	%xmm11, %xmm2, %xmm1
1000055ce: c5 71 62 c0                 	vpunpckldq	%xmm0, %xmm1, %xmm8
1000055d2: c5 f9 6f 0d 96 2c 00 00     	vmovdqa	11414(%rip), %xmm1
1000055da: c5 f9 6f c1                 	vmovdqa	%xmm1, %xmm0
1000055de: c4 e2 01 00 c9              	vpshufb	%xmm1, %xmm15, %xmm1
1000055e3: c4 e2 09 00 f8              	vpshufb	%xmm0, %xmm14, %xmm7
1000055e8: c5 c1 62 c9                 	vpunpckldq	%xmm1, %xmm7, %xmm1
1000055ec: c4 43 71 02 e8 0c           	vpblendd	$12, %xmm8, %xmm1, %xmm13
1000055f2: c4 c2 59 00 cb              	vpshufb	%xmm11, %xmm4, %xmm1
1000055f7: c4 c2 51 00 fb              	vpshufb	%xmm11, %xmm5, %xmm7
1000055fc: c5 c1 62 c9                 	vpunpckldq	%xmm1, %xmm7, %xmm1
100005600: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005606: c4 e2 49 00 f8              	vpshufb	%xmm0, %xmm6, %xmm7
10000560b: c4 e2 31 00 c0              	vpshufb	%xmm0, %xmm9, %xmm0
100005610: c5 f9 62 c7                 	vpunpckldq	%xmm7, %xmm0, %xmm0
100005614: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
10000561a: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
100005620: c4 63 15 02 e8 f0           	vpblendd	$240, %ymm0, %ymm13, %ymm13
100005626: c5 f9 6f 0d 52 2c 00 00     	vmovdqa	11346(%rip), %xmm1
10000562e: c4 e2 61 00 d9              	vpshufb	%xmm1, %xmm3, %xmm3
100005633: c4 e2 69 00 d1              	vpshufb	%xmm1, %xmm2, %xmm2
100005638: c5 e9 62 c3                 	vpunpckldq	%xmm3, %xmm2, %xmm0
10000563c: c5 f9 6f 15 4c 2c 00 00     	vmovdqa	11340(%rip), %xmm2
100005644: c5 f9 6f fa                 	vmovdqa	%xmm2, %xmm7
100005648: c4 e2 01 00 d2              	vpshufb	%xmm2, %xmm15, %xmm2
10000564d: c4 e2 09 00 df              	vpshufb	%xmm7, %xmm14, %xmm3
100005652: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
100005656: c4 e3 69 02 c0 0c           	vpblendd	$12, %xmm0, %xmm2, %xmm0
10000565c: c4 e2 59 00 d1              	vpshufb	%xmm1, %xmm4, %xmm2
100005661: c4 e2 51 00 d9              	vpshufb	%xmm1, %xmm5, %xmm3
100005666: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
10000566a: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005670: c4 e2 49 00 df              	vpshufb	%xmm7, %xmm6, %xmm3
100005675: c4 e2 31 00 e7              	vpshufb	%xmm7, %xmm9, %xmm4
10000567a: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
10000567e: c4 e3 7d 38 db 01           	vinserti128	$1, %xmm3, %ymm0, %ymm3
100005684: c4 e3 65 02 d2 c0           	vpblendd	$192, %ymm2, %ymm3, %ymm2
10000568a: c4 e3 7d 02 ca f0           	vpblendd	$240, %ymm2, %ymm0, %ymm1
100005690: c4 41 39 ef c0              	vpxor	%xmm8, %xmm8, %xmm8
100005695: c4 c2 2d 3c d0              	vpmaxsb	%ymm8, %ymm10, %ymm2
10000569a: c4 c2 1d 3c d8              	vpmaxsb	%ymm8, %ymm12, %ymm3
10000569f: c4 c2 15 3c c0              	vpmaxsb	%ymm8, %ymm13, %ymm0
1000056a4: c4 c2 75 3c c8              	vpmaxsb	%ymm8, %ymm1, %ymm1
1000056a9: c5 ed 60 e3                 	vpunpcklbw	%ymm3, %ymm2, %ymm4
1000056ad: c5 ed 68 d3                 	vpunpckhbw	%ymm3, %ymm2, %ymm2
1000056b1: c5 fd 60 d9                 	vpunpcklbw	%ymm1, %ymm0, %ymm3
1000056b5: c5 fd 68 c1                 	vpunpckhbw	%ymm1, %ymm0, %ymm0
1000056b9: c5 dd 61 cb                 	vpunpcklwd	%ymm3, %ymm4, %ymm1
1000056bd: c5 dd 69 db                 	vpunpckhwd	%ymm3, %ymm4, %ymm3
1000056c1: c5 ed 61 e0                 	vpunpcklwd	%ymm0, %ymm2, %ymm4
1000056c5: c5 ed 69 c0                 	vpunpckhwd	%ymm0, %ymm2, %ymm0
1000056c9: c4 e3 75 38 d3 01           	vinserti128	$1, %xmm3, %ymm1, %ymm2
1000056cf: c4 e3 5d 38 e8 01           	vinserti128	$1, %xmm0, %ymm4, %ymm5
1000056d5: c4 e3 75 46 cb 31           	vperm2i128	$49, %ymm3, %ymm1, %ymm1
1000056db: c4 e3 5d 46 c0 31           	vperm2i128	$49, %ymm0, %ymm4, %ymm0
1000056e1: c5 fe 7f 4c 0f 40           	vmovdqu	%ymm1, 64(%rdi,%rcx)
1000056e7: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
1000056ed: c5 fe 7f 6c 0f 20           	vmovdqu	%ymm5, 32(%rdi,%rcx)
1000056f3: c5 fe 7f 14 0f              	vmovdqu	%ymm2, (%rdi,%rcx)
1000056f8: c5 7a 6f a4 0e 80 00 00 00  	vmovdqu	128(%rsi,%rcx), %xmm12
100005701: c5 7a 6f ac 0e 90 00 00 00  	vmovdqu	144(%rsi,%rcx), %xmm13
10000570a: c5 7a 6f b4 0e a0 00 00 00  	vmovdqu	160(%rsi,%rcx), %xmm14
100005713: c5 fa 6f 9c 0e b0 00 00 00  	vmovdqu	176(%rsi,%rcx), %xmm3
10000571c: c5 f9 6f 05 fc 2a 00 00     	vmovdqa	11004(%rip), %xmm0
100005724: c4 e2 61 00 e0              	vpshufb	%xmm0, %xmm3, %xmm4
100005729: c4 e2 09 00 e8              	vpshufb	%xmm0, %xmm14, %xmm5
10000572e: c5 f9 6f d0                 	vmovdqa	%xmm0, %xmm2
100005732: c5 d1 62 e4                 	vpunpckldq	%xmm4, %xmm5, %xmm4
100005736: c5 f9 6f 05 f2 2a 00 00     	vmovdqa	10994(%rip), %xmm0
10000573e: c4 e2 11 00 e8              	vpshufb	%xmm0, %xmm13, %xmm5
100005743: c4 e2 19 00 f0              	vpshufb	%xmm0, %xmm12, %xmm6
100005748: c5 f9 6f c8                 	vmovdqa	%xmm0, %xmm1
10000574c: c5 c9 62 ed                 	vpunpckldq	%xmm5, %xmm6, %xmm5
100005750: c4 63 51 02 cc 0c           	vpblendd	$12, %xmm4, %xmm5, %xmm9
100005756: c5 fa 6f a4 0e f0 00 00 00  	vmovdqu	240(%rsi,%rcx), %xmm4
10000575f: c4 e2 59 00 f2              	vpshufb	%xmm2, %xmm4, %xmm6
100005764: c4 e3 fd 00 ac 0e e0 00 00 00 4e    	vpermq	$78, 224(%rsi,%rcx), %ymm5
10000576f: c4 e3 7d 39 ed 01           	vextracti128	$1, %ymm5, %xmm5
100005775: c4 e2 51 00 fa              	vpshufb	%xmm2, %xmm5, %xmm7
10000577a: c5 c1 62 f6                 	vpunpckldq	%xmm6, %xmm7, %xmm6
10000577e: c4 63 7d 38 d6 01           	vinserti128	$1, %xmm6, %ymm0, %ymm10
100005784: c5 fa 6f b4 0e d0 00 00 00  	vmovdqu	208(%rsi,%rcx), %xmm6
10000578d: c4 e3 fd 00 bc 0e c0 00 00 00 4e    	vpermq	$78, 192(%rsi,%rcx), %ymm7
100005798: c4 e2 49 00 c0              	vpshufb	%xmm0, %xmm6, %xmm0
10000579d: c4 e3 7d 39 ff 01           	vextracti128	$1, %ymm7, %xmm7
1000057a3: c4 e2 41 00 c9              	vpshufb	%xmm1, %xmm7, %xmm1
1000057a8: c5 f1 62 c0                 	vpunpckldq	%xmm0, %xmm1, %xmm0
1000057ac: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
1000057b2: c4 c3 7d 02 c2 c0           	vpblendd	$192, %ymm10, %ymm0, %ymm0
1000057b8: c4 63 35 02 c8 f0           	vpblendd	$240, %ymm0, %ymm9, %ymm9
1000057be: c5 79 6f 3d 7a 2a 00 00     	vmovdqa	10874(%rip), %xmm15
1000057c6: c4 c2 61 00 c7              	vpshufb	%xmm15, %xmm3, %xmm0
1000057cb: c4 c2 09 00 cf              	vpshufb	%xmm15, %xmm14, %xmm1
1000057d0: c5 71 62 d0                 	vpunpckldq	%xmm0, %xmm1, %xmm10
1000057d4: c5 f9 6f 05 74 2a 00 00     	vmovdqa	10868(%rip), %xmm0
1000057dc: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
1000057e1: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
1000057e6: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
1000057ea: c4 43 71 02 d2 0c           	vpblendd	$12, %xmm10, %xmm1, %xmm10
1000057f0: c4 c2 59 00 cf              	vpshufb	%xmm15, %xmm4, %xmm1
1000057f5: c4 c2 51 00 d7              	vpshufb	%xmm15, %xmm5, %xmm2
1000057fa: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
1000057fe: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005804: c4 e2 49 00 d0              	vpshufb	%xmm0, %xmm6, %xmm2
100005809: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
10000580e: c5 f9 62 c2                 	vpunpckldq	%xmm2, %xmm0, %xmm0
100005812: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100005818: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
10000581e: c4 63 2d 02 d0 f0           	vpblendd	$240, %ymm0, %ymm10, %ymm10
100005824: c4 c2 61 00 c3              	vpshufb	%xmm11, %xmm3, %xmm0
100005829: c4 c2 09 00 cb              	vpshufb	%xmm11, %xmm14, %xmm1
10000582e: c5 71 62 f8                 	vpunpckldq	%xmm0, %xmm1, %xmm15
100005832: c5 f9 6f 05 36 2a 00 00     	vmovdqa	10806(%rip), %xmm0
10000583a: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
10000583f: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
100005844: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
100005848: c4 43 71 02 ff 0c           	vpblendd	$12, %xmm15, %xmm1, %xmm15
10000584e: c4 c2 59 00 cb              	vpshufb	%xmm11, %xmm4, %xmm1
100005853: c4 c2 51 00 d3              	vpshufb	%xmm11, %xmm5, %xmm2
100005858: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
10000585c: c4 e2 49 00 d0              	vpshufb	%xmm0, %xmm6, %xmm2
100005861: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
100005866: c5 f9 62 c2                 	vpunpckldq	%xmm2, %xmm0, %xmm0
10000586a: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005870: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100005876: c4 e3 7d 02 c1 c0           	vpblendd	$192, %ymm1, %ymm0, %ymm0
10000587c: c4 63 05 02 d8 f0           	vpblendd	$240, %ymm0, %ymm15, %ymm11
100005882: c5 79 6f 3d f6 29 00 00     	vmovdqa	10742(%rip), %xmm15
10000588a: c4 c2 61 00 cf              	vpshufb	%xmm15, %xmm3, %xmm1
10000588f: c4 c2 09 00 d7              	vpshufb	%xmm15, %xmm14, %xmm2
100005894: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
100005898: c5 f9 6f 05 f0 29 00 00     	vmovdqa	10736(%rip), %xmm0
1000058a0: c4 e2 11 00 d0              	vpshufb	%xmm0, %xmm13, %xmm2
1000058a5: c4 e2 19 00 d8              	vpshufb	%xmm0, %xmm12, %xmm3
1000058aa: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
1000058ae: c4 e3 69 02 c9 0c           	vpblendd	$12, %xmm1, %xmm2, %xmm1
1000058b4: c4 c2 59 00 d7              	vpshufb	%xmm15, %xmm4, %xmm2
1000058b9: c4 c2 51 00 df              	vpshufb	%xmm15, %xmm5, %xmm3
1000058be: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
1000058c2: c4 e2 49 00 d8              	vpshufb	%xmm0, %xmm6, %xmm3
1000058c7: c4 e2 41 00 e0              	vpshufb	%xmm0, %xmm7, %xmm4
1000058cc: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
1000058d0: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
1000058d6: c4 e3 7d 38 db 01           	vinserti128	$1, %xmm3, %ymm0, %ymm3
1000058dc: c4 e3 65 02 d2 c0           	vpblendd	$192, %ymm2, %ymm3, %ymm2
1000058e2: c4 e3 75 02 ca f0           	vpblendd	$240, %ymm2, %ymm1, %ymm1
1000058e8: c4 c2 35 3c d0              	vpmaxsb	%ymm8, %ymm9, %ymm2
1000058ed: c4 c2 2d 3c d8              	vpmaxsb	%ymm8, %ymm10, %ymm3
1000058f2: c4 c2 25 3c c0              	vpmaxsb	%ymm8, %ymm11, %ymm0
1000058f7: c4 c2 75 3c c8              	vpmaxsb	%ymm8, %ymm1, %ymm1
1000058fc: c5 ed 60 e3                 	vpunpcklbw	%ymm3, %ymm2, %ymm4
100005900: c5 ed 68 d3                 	vpunpckhbw	%ymm3, %ymm2, %ymm2
100005904: c5 fd 60 d9                 	vpunpcklbw	%ymm1, %ymm0, %ymm3
100005908: c5 fd 68 c1                 	vpunpckhbw	%ymm1, %ymm0, %ymm0
10000590c: c5 dd 61 cb                 	vpunpcklwd	%ymm3, %ymm4, %ymm1
100005910: c5 dd 69 db                 	vpunpckhwd	%ymm3, %ymm4, %ymm3
100005914: c5 ed 61 e0                 	vpunpcklwd	%ymm0, %ymm2, %ymm4
100005918: c5 ed 69 c0                 	vpunpckhwd	%ymm0, %ymm2, %ymm0
10000591c: c4 e3 75 38 d3 01           	vinserti128	$1, %xmm3, %ymm1, %ymm2
100005922: c4 e3 75 46 cb 31           	vperm2i128	$49, %ymm3, %ymm1, %ymm1
100005928: c4 e3 5d 38 d8 01           	vinserti128	$1, %xmm0, %ymm4, %ymm3
10000592e: c4 e3 5d 46 c0 31           	vperm2i128	$49, %ymm0, %ymm4, %ymm0
100005934: c5 fe 7f 8c 0f c0 00 00 00  	vmovdqu	%ymm1, 192(%rdi,%rcx)
10000593d: c5 fe 7f 84 0f e0 00 00 00  	vmovdqu	%ymm0, 224(%rdi,%rcx)
100005946: c5 fe 7f 9c 0f a0 00 00 00  	vmovdqu	%ymm3, 160(%rdi,%rcx)
10000594f: c5 fe 7f 94 0f 80 00 00 00  	vmovdqu	%ymm2, 128(%rdi,%rcx)
100005958: 48 81 c1 00 01 00 00        	addq	$256, %rcx
10000595f: 48 83 c0 02                 	addq	$2, %rax
100005963: 0f 85 47 fb ff ff           	jne	-1209 <__Z4ReLUPaS_j+0x2e0>
100005969: 4d 85 c9                    	testq	%r9, %r9
10000596c: 0f 84 3e 02 00 00           	je	574 <__Z4ReLUPaS_j+0x9e0>
100005972: c5 7a 6f 14 0e              	vmovdqu	(%rsi,%rcx), %xmm10
100005977: c5 7a 6f 5c 0e 10           	vmovdqu	16(%rsi,%rcx), %xmm11
10000597d: c5 7a 6f 64 0e 20           	vmovdqu	32(%rsi,%rcx), %xmm12
100005983: c5 7a 6f 6c 0e 30           	vmovdqu	48(%rsi,%rcx), %xmm13
100005989: c5 f9 6f 35 8f 28 00 00     	vmovdqa	10383(%rip), %xmm6
100005991: c4 e2 11 00 e6              	vpshufb	%xmm6, %xmm13, %xmm4
100005996: c4 e2 19 00 ee              	vpshufb	%xmm6, %xmm12, %xmm5
10000599b: c5 d1 62 e4                 	vpunpckldq	%xmm4, %xmm5, %xmm4
10000599f: c5 f9 6f 05 89 28 00 00     	vmovdqa	10377(%rip), %xmm0
1000059a7: c4 e2 21 00 e8              	vpshufb	%xmm0, %xmm11, %xmm5
1000059ac: c4 e2 29 00 f8              	vpshufb	%xmm0, %xmm10, %xmm7
1000059b1: c5 c1 62 ed                 	vpunpckldq	%xmm5, %xmm7, %xmm5
1000059b5: c4 63 51 02 c4 0c           	vpblendd	$12, %xmm4, %xmm5, %xmm8
1000059bb: c5 7a 6f 74 0e 70           	vmovdqu	112(%rsi,%rcx), %xmm14
1000059c1: c4 e2 09 00 fe              	vpshufb	%xmm6, %xmm14, %xmm7
1000059c6: c4 e3 fd 00 6c 0e 60 4e     	vpermq	$78, 96(%rsi,%rcx), %ymm5
1000059ce: c4 e3 7d 39 ed 01           	vextracti128	$1, %ymm5, %xmm5
1000059d4: c4 e2 51 00 f6              	vpshufb	%xmm6, %xmm5, %xmm6
1000059d9: c5 c9 62 f7                 	vpunpckldq	%xmm7, %xmm6, %xmm6
1000059dd: c4 63 7d 38 ce 01           	vinserti128	$1, %xmm6, %ymm0, %ymm9
1000059e3: c5 fa 6f 74 0e 50           	vmovdqu	80(%rsi,%rcx), %xmm6
1000059e9: c4 e2 49 00 c8              	vpshufb	%xmm0, %xmm6, %xmm1
1000059ee: c4 e3 fd 00 7c 0e 40 4e     	vpermq	$78, 64(%rsi,%rcx), %ymm7
1000059f6: c4 e3 7d 39 ff 01           	vextracti128	$1, %ymm7, %xmm7
1000059fc: c4 e2 41 00 c0              	vpshufb	%xmm0, %xmm7, %xmm0
100005a01: c5 f9 62 c1                 	vpunpckldq	%xmm1, %xmm0, %xmm0
100005a05: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100005a0b: c4 c3 7d 02 c1 c0           	vpblendd	$192, %ymm9, %ymm0, %ymm0
100005a11: c4 63 3d 02 c0 f0           	vpblendd	$240, %ymm0, %ymm8, %ymm8
100005a17: c5 f9 6f 05 21 28 00 00     	vmovdqa	10273(%rip), %xmm0
100005a1f: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
100005a24: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
100005a29: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
100005a2d: c5 f9 6f 15 1b 28 00 00     	vmovdqa	10267(%rip), %xmm2
100005a35: c4 e2 21 00 da              	vpshufb	%xmm2, %xmm11, %xmm3
100005a3a: c4 e2 29 00 e2              	vpshufb	%xmm2, %xmm10, %xmm4
100005a3f: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
100005a43: c4 e3 61 02 c9 0c           	vpblendd	$12, %xmm1, %xmm3, %xmm1
100005a49: c4 e2 09 00 d8              	vpshufb	%xmm0, %xmm14, %xmm3
100005a4e: c4 e2 51 00 c0              	vpshufb	%xmm0, %xmm5, %xmm0
100005a53: c5 f9 62 c3                 	vpunpckldq	%xmm3, %xmm0, %xmm0
100005a57: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100005a5d: c4 e2 49 00 da              	vpshufb	%xmm2, %xmm6, %xmm3
100005a62: c4 e2 41 00 d2              	vpshufb	%xmm2, %xmm7, %xmm2
100005a67: c5 e9 62 d3                 	vpunpckldq	%xmm3, %xmm2, %xmm2
100005a6b: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005a71: c4 e3 6d 02 c0 c0           	vpblendd	$192, %ymm0, %ymm2, %ymm0
100005a77: c4 63 75 02 c8 f0           	vpblendd	$240, %ymm0, %ymm1, %ymm9
100005a7d: c5 f9 6f 05 db 27 00 00     	vmovdqa	10203(%rip), %xmm0
100005a85: c4 e2 11 00 c8              	vpshufb	%xmm0, %xmm13, %xmm1
100005a8a: c4 e2 19 00 d0              	vpshufb	%xmm0, %xmm12, %xmm2
100005a8f: c5 e9 62 c9                 	vpunpckldq	%xmm1, %xmm2, %xmm1
100005a93: c5 f9 6f 15 d5 27 00 00     	vmovdqa	10197(%rip), %xmm2
100005a9b: c4 e2 21 00 da              	vpshufb	%xmm2, %xmm11, %xmm3
100005aa0: c4 e2 29 00 e2              	vpshufb	%xmm2, %xmm10, %xmm4
100005aa5: c5 d9 62 db                 	vpunpckldq	%xmm3, %xmm4, %xmm3
100005aa9: c4 e3 61 02 c9 0c           	vpblendd	$12, %xmm1, %xmm3, %xmm1
100005aaf: c4 e2 09 00 d8              	vpshufb	%xmm0, %xmm14, %xmm3
100005ab4: c4 e2 51 00 c0              	vpshufb	%xmm0, %xmm5, %xmm0
100005ab9: c5 f9 62 c3                 	vpunpckldq	%xmm3, %xmm0, %xmm0
100005abd: c4 e3 7d 38 c0 01           	vinserti128	$1, %xmm0, %ymm0, %ymm0
100005ac3: c4 e2 49 00 da              	vpshufb	%xmm2, %xmm6, %xmm3
100005ac8: c4 e2 41 00 d2              	vpshufb	%xmm2, %xmm7, %xmm2
100005acd: c5 e9 62 d3                 	vpunpckldq	%xmm3, %xmm2, %xmm2
100005ad1: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005ad7: c4 e3 6d 02 c0 c0           	vpblendd	$192, %ymm0, %ymm2, %ymm0
100005add: c4 63 75 02 f8 f0           	vpblendd	$240, %ymm0, %ymm1, %ymm15
100005ae3: c5 f9 6f 0d 95 27 00 00     	vmovdqa	10133(%rip), %xmm1
100005aeb: c4 e2 11 00 d1              	vpshufb	%xmm1, %xmm13, %xmm2
100005af0: c4 e2 19 00 d9              	vpshufb	%xmm1, %xmm12, %xmm3
100005af5: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
100005af9: c5 f9 6f 1d 8f 27 00 00     	vmovdqa	10127(%rip), %xmm3
100005b01: c4 e2 21 00 e3              	vpshufb	%xmm3, %xmm11, %xmm4
100005b06: c4 e2 29 00 c3              	vpshufb	%xmm3, %xmm10, %xmm0
100005b0b: c5 f9 62 c4                 	vpunpckldq	%xmm4, %xmm0, %xmm0
100005b0f: c4 e3 79 02 c2 0c           	vpblendd	$12, %xmm2, %xmm0, %xmm0
100005b15: c4 e2 09 00 d1              	vpshufb	%xmm1, %xmm14, %xmm2
100005b1a: c4 e2 51 00 c9              	vpshufb	%xmm1, %xmm5, %xmm1
100005b1f: c5 f1 62 ca                 	vpunpckldq	%xmm2, %xmm1, %xmm1
100005b23: c4 e3 7d 38 c9 01           	vinserti128	$1, %xmm1, %ymm0, %ymm1
100005b29: c4 e2 49 00 d3              	vpshufb	%xmm3, %xmm6, %xmm2
100005b2e: c4 e2 41 00 db              	vpshufb	%xmm3, %xmm7, %xmm3
100005b33: c5 e1 62 d2                 	vpunpckldq	%xmm2, %xmm3, %xmm2
100005b37: c4 e3 7d 38 d2 01           	vinserti128	$1, %xmm2, %ymm0, %ymm2
100005b3d: c4 e3 6d 02 c9 c0           	vpblendd	$192, %ymm1, %ymm2, %ymm1
100005b43: c4 e3 7d 02 c1 f0           	vpblendd	$240, %ymm1, %ymm0, %ymm0
100005b49: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100005b4d: c4 e2 3d 3c d1              	vpmaxsb	%ymm1, %ymm8, %ymm2
100005b52: c4 e2 35 3c d9              	vpmaxsb	%ymm1, %ymm9, %ymm3
100005b57: c4 e2 05 3c e1              	vpmaxsb	%ymm1, %ymm15, %ymm4
100005b5c: c4 e2 7d 3c c1              	vpmaxsb	%ymm1, %ymm0, %ymm0
100005b61: c5 ed 60 cb                 	vpunpcklbw	%ymm3, %ymm2, %ymm1
100005b65: c5 ed 68 d3                 	vpunpckhbw	%ymm3, %ymm2, %ymm2
100005b69: c5 dd 60 d8                 	vpunpcklbw	%ymm0, %ymm4, %ymm3
100005b6d: c5 dd 68 c0                 	vpunpckhbw	%ymm0, %ymm4, %ymm0
100005b71: c5 f5 61 e3                 	vpunpcklwd	%ymm3, %ymm1, %ymm4
100005b75: c5 f5 69 cb                 	vpunpckhwd	%ymm3, %ymm1, %ymm1
100005b79: c5 ed 61 d8                 	vpunpcklwd	%ymm0, %ymm2, %ymm3
100005b7d: c5 ed 69 c0                 	vpunpckhwd	%ymm0, %ymm2, %ymm0
100005b81: c4 e3 5d 38 d1 01           	vinserti128	$1, %xmm1, %ymm4, %ymm2
100005b87: c4 e3 65 38 e8 01           	vinserti128	$1, %xmm0, %ymm3, %ymm5
100005b8d: c4 e3 5d 46 c9 31           	vperm2i128	$49, %ymm1, %ymm4, %ymm1
100005b93: c4 e3 65 46 c0 31           	vperm2i128	$49, %ymm0, %ymm3, %ymm0
100005b99: c5 fe 7f 4c 0f 40           	vmovdqu	%ymm1, 64(%rdi,%rcx)
100005b9f: c5 fe 7f 44 0f 60           	vmovdqu	%ymm0, 96(%rdi,%rcx)
100005ba5: c5 fe 7f 6c 0f 20           	vmovdqu	%ymm5, 32(%rdi,%rcx)
100005bab: c5 fe 7f 14 0f              	vmovdqu	%ymm2, (%rdi,%rcx)
100005bb0: 4a 8d 34 86                 	leaq	(%rsi,%r8,4), %rsi
100005bb4: 4a 8d 3c 87                 	leaq	(%rdi,%r8,4), %rdi
100005bb8: 4d 39 d0                    	cmpq	%r10, %r8
100005bbb: 0f 84 a1 f6 ff ff           	je	-2399 <__Z4ReLUPaS_j+0x92>
100005bc1: 41 c1 e0 02                 	shll	$2, %r8d
100005bc5: 89 d0                       	movl	%edx, %eax
100005bc7: 44 29 c0                    	subl	%r8d, %eax
100005bca: e9 47 f6 ff ff              	jmp	-2489 <__Z4ReLUPaS_j+0x46>
100005bcf: 31 c9                       	xorl	%ecx, %ecx
100005bd1: 4d 85 c9                    	testq	%r9, %r9
100005bd4: 0f 85 8a f7 ff ff           	jne	-2166 <__Z4ReLUPaS_j+0x194>
100005bda: e9 bb f7 ff ff              	jmp	-2117 <__Z4ReLUPaS_j+0x1ca>
100005bdf: 31 c9                       	xorl	%ecx, %ecx
100005be1: 4d 85 c9                    	testq	%r9, %r9
100005be4: 0f 85 88 fd ff ff           	jne	-632 <__Z4ReLUPaS_j+0x7a2>
100005bea: eb c4                       	jmp	-60 <__Z4ReLUPaS_j+0x9e0>
100005bec: 90                          	nop
100005bed: 90                          	nop
100005bee: 90                          	nop
100005bef: 90                          	nop

0000000100005bf0 __ZN11LineNetworkC2Ev:
100005bf0: 55                          	pushq	%rbp
100005bf1: 48 89 e5                    	movq	%rsp, %rbp
100005bf4: 41 56                       	pushq	%r14
100005bf6: 53                          	pushq	%rbx
100005bf7: 48 89 fb                    	movq	%rdi, %rbx
100005bfa: e8 f1 f2 ff ff              	callq	-3343 <__ZN14ModelInterfaceC2Ev>
100005bff: 48 8d 05 fa 44 00 00        	leaq	17658(%rip), %rax
100005c06: 48 89 03                    	movq	%rax, (%rbx)
100005c09: 48 89 df                    	movq	%rbx, %rdi
100005c0c: be 00 00 08 00              	movl	$524288, %esi
100005c11: e8 1a f4 ff ff              	callq	-3046 <__ZN14ModelInterface11init_bufferEj>
100005c16: c5 f8 28 05 82 26 00 00     	vmovaps	9858(%rip), %xmm0
100005c1e: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005c23: 48 b8 20 00 00 00 20 00 00 00       	movabsq	$137438953504, %rax
100005c2d: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005c31: 5b                          	popq	%rbx
100005c32: 41 5e                       	popq	%r14
100005c34: 5d                          	popq	%rbp
100005c35: c3                          	retq
100005c36: 49 89 c6                    	movq	%rax, %r14
100005c39: 48 89 df                    	movq	%rbx, %rdi
100005c3c: e8 ef f2 ff ff              	callq	-3345 <__ZN14ModelInterfaceD2Ev>
100005c41: 4c 89 f7                    	movq	%r14, %rdi
100005c44: e8 93 23 00 00              	callq	9107 <dyld_stub_binder+0x100007fdc>
100005c49: 0f 0b                       	ud2
100005c4b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005c50 __ZN11LineNetworkC1Ev:
100005c50: 55                          	pushq	%rbp
100005c51: 48 89 e5                    	movq	%rsp, %rbp
100005c54: 41 56                       	pushq	%r14
100005c56: 53                          	pushq	%rbx
100005c57: 48 89 fb                    	movq	%rdi, %rbx
100005c5a: e8 91 f2 ff ff              	callq	-3439 <__ZN14ModelInterfaceC2Ev>
100005c5f: 48 8d 05 9a 44 00 00        	leaq	17562(%rip), %rax
100005c66: 48 89 03                    	movq	%rax, (%rbx)
100005c69: 48 89 df                    	movq	%rbx, %rdi
100005c6c: be 00 00 08 00              	movl	$524288, %esi
100005c71: e8 ba f3 ff ff              	callq	-3142 <__ZN14ModelInterface11init_bufferEj>
100005c76: c5 f8 28 05 22 26 00 00     	vmovaps	9762(%rip), %xmm0
100005c7e: c5 f8 11 43 08              	vmovups	%xmm0, 8(%rbx)
100005c83: 48 b8 20 00 00 00 20 00 00 00       	movabsq	$137438953504, %rax
100005c8d: 48 89 43 18                 	movq	%rax, 24(%rbx)
100005c91: 5b                          	popq	%rbx
100005c92: 41 5e                       	popq	%r14
100005c94: 5d                          	popq	%rbp
100005c95: c3                          	retq
100005c96: 49 89 c6                    	movq	%rax, %r14
100005c99: 48 89 df                    	movq	%rbx, %rdi
100005c9c: e8 8f f2 ff ff              	callq	-3441 <__ZN14ModelInterfaceD2Ev>
100005ca1: 4c 89 f7                    	movq	%r14, %rdi
100005ca4: e8 33 23 00 00              	callq	9011 <dyld_stub_binder+0x100007fdc>
100005ca9: 0f 0b                       	ud2
100005cab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005cb0 __ZN11LineNetwork7forwardEv:
100005cb0: 55                          	pushq	%rbp
100005cb1: 48 89 e5                    	movq	%rsp, %rbp
100005cb4: 41 56                       	pushq	%r14
100005cb6: 53                          	pushq	%rbx
100005cb7: 48 89 fb                    	movq	%rdi, %rbx
100005cba: e8 51 f3 ff ff              	callq	-3247 <__ZN14ModelInterface13output_bufferEv>
100005cbf: 49 89 c6                    	movq	%rax, %r14
100005cc2: 48 89 df                    	movq	%rbx, %rdi
100005cc5: e8 36 f3 ff ff              	callq	-3274 <__ZN14ModelInterface12input_bufferEv>
100005cca: 48 83 ec 08                 	subq	$8, %rsp
100005cce: 48 8d 15 db 25 00 00        	leaq	9691(%rip), %rdx
100005cd5: 48 8d 0d e4 25 00 00        	leaq	9700(%rip), %rcx
100005cdc: 4c 89 f7                    	movq	%r14, %rdi
100005cdf: 48 89 c6                    	movq	%rax, %rsi
100005ce2: 41 b8 37 00 00 00           	movl	$55, %r8d
100005ce8: 41 b9 08 00 00 00           	movl	$8, %r9d
100005cee: 6a 02                       	pushq	$2
100005cf0: 6a 03                       	pushq	$3
100005cf2: 68 00 02 00 00              	pushq	$512
100005cf7: 68 00 02 00 00              	pushq	$512
100005cfc: 6a 01                       	pushq	$1
100005cfe: e8 fd ca ff ff              	callq	-13571 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005d03: 48 83 c4 30                 	addq	$48, %rsp
100005d07: 48 89 df                    	movq	%rbx, %rdi
100005d0a: e8 b1 f4 ff ff              	callq	-2895 <__ZN14ModelInterface11swap_bufferEv>
100005d0f: 48 89 df                    	movq	%rbx, %rdi
100005d12: e8 f9 f2 ff ff              	callq	-3335 <__ZN14ModelInterface13output_bufferEv>
100005d17: 49 89 c6                    	movq	%rax, %r14
100005d1a: 48 89 df                    	movq	%rbx, %rdi
100005d1d: e8 de f2 ff ff              	callq	-3362 <__ZN14ModelInterface12input_bufferEv>
100005d22: 4c 89 f7                    	movq	%r14, %rdi
100005d25: 48 89 c6                    	movq	%rax, %rsi
100005d28: ba 00 00 08 00              	movl	$524288, %edx
100005d2d: e8 9e f4 ff ff              	callq	-2914 <__Z4ReLUPaS_j>
100005d32: 48 89 df                    	movq	%rbx, %rdi
100005d35: e8 86 f4 ff ff              	callq	-2938 <__ZN14ModelInterface11swap_bufferEv>
100005d3a: 48 89 df                    	movq	%rbx, %rdi
100005d3d: e8 ce f2 ff ff              	callq	-3378 <__ZN14ModelInterface13output_bufferEv>
100005d42: 49 89 c6                    	movq	%rax, %r14
100005d45: 48 89 df                    	movq	%rbx, %rdi
100005d48: e8 b3 f2 ff ff              	callq	-3405 <__ZN14ModelInterface12input_bufferEv>
100005d4d: 48 83 ec 08                 	subq	$8, %rsp
100005d51: 48 8d 15 b0 25 00 00        	leaq	9648(%rip), %rdx
100005d58: 48 8d 0d b1 25 00 00        	leaq	9649(%rip), %rcx
100005d5f: 4c 89 f7                    	movq	%r14, %rdi
100005d62: 48 89 c6                    	movq	%rax, %rsi
100005d65: 41 b8 37 00 00 00           	movl	$55, %r8d
100005d6b: 41 b9 08 00 00 00           	movl	$8, %r9d
100005d71: 6a 02                       	pushq	$2
100005d73: 6a 03                       	pushq	$3
100005d75: 68 00 01 00 00              	pushq	$256
100005d7a: 68 00 01 00 00              	pushq	$256
100005d7f: 6a 08                       	pushq	$8
100005d81: e8 7a ca ff ff              	callq	-13702 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005d86: 48 83 c4 30                 	addq	$48, %rsp
100005d8a: 48 89 df                    	movq	%rbx, %rdi
100005d8d: e8 2e f4 ff ff              	callq	-3026 <__ZN14ModelInterface11swap_bufferEv>
100005d92: 48 89 df                    	movq	%rbx, %rdi
100005d95: e8 76 f2 ff ff              	callq	-3466 <__ZN14ModelInterface13output_bufferEv>
100005d9a: 49 89 c6                    	movq	%rax, %r14
100005d9d: 48 89 df                    	movq	%rbx, %rdi
100005da0: e8 5b f2 ff ff              	callq	-3493 <__ZN14ModelInterface12input_bufferEv>
100005da5: 4c 89 f7                    	movq	%r14, %rdi
100005da8: 48 89 c6                    	movq	%rax, %rsi
100005dab: ba 00 00 02 00              	movl	$131072, %edx
100005db0: e8 1b f4 ff ff              	callq	-3045 <__Z4ReLUPaS_j>
100005db5: 48 89 df                    	movq	%rbx, %rdi
100005db8: e8 03 f4 ff ff              	callq	-3069 <__ZN14ModelInterface11swap_bufferEv>
100005dbd: 48 89 df                    	movq	%rbx, %rdi
100005dc0: e8 4b f2 ff ff              	callq	-3509 <__ZN14ModelInterface13output_bufferEv>
100005dc5: 49 89 c6                    	movq	%rax, %r14
100005dc8: 48 89 df                    	movq	%rbx, %rdi
100005dcb: e8 30 f2 ff ff              	callq	-3536 <__ZN14ModelInterface12input_bufferEv>
100005dd0: 48 83 ec 08                 	subq	$8, %rsp
100005dd4: 48 8d 15 75 27 00 00        	leaq	10101(%rip), %rdx
100005ddb: 48 8d 0d 7e 27 00 00        	leaq	10110(%rip), %rcx
100005de2: 4c 89 f7                    	movq	%r14, %rdi
100005de5: 48 89 c6                    	movq	%rax, %rsi
100005de8: 41 b8 39 00 00 00           	movl	$57, %r8d
100005dee: 41 b9 10 00 00 00           	movl	$16, %r9d
100005df4: 6a 02                       	pushq	$2
100005df6: 6a 03                       	pushq	$3
100005df8: 68 80 00 00 00              	pushq	$128
100005dfd: 68 80 00 00 00              	pushq	$128
100005e02: 6a 08                       	pushq	$8
100005e04: e8 f7 c9 ff ff              	callq	-13833 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005e09: 48 83 c4 30                 	addq	$48, %rsp
100005e0d: 48 89 df                    	movq	%rbx, %rdi
100005e10: e8 ab f3 ff ff              	callq	-3157 <__ZN14ModelInterface11swap_bufferEv>
100005e15: 48 89 df                    	movq	%rbx, %rdi
100005e18: e8 f3 f1 ff ff              	callq	-3597 <__ZN14ModelInterface13output_bufferEv>
100005e1d: 49 89 c6                    	movq	%rax, %r14
100005e20: 48 89 df                    	movq	%rbx, %rdi
100005e23: e8 d8 f1 ff ff              	callq	-3624 <__ZN14ModelInterface12input_bufferEv>
100005e28: 4c 89 f7                    	movq	%r14, %rdi
100005e2b: 48 89 c6                    	movq	%rax, %rsi
100005e2e: ba 00 00 01 00              	movl	$65536, %edx
100005e33: e8 98 f3 ff ff              	callq	-3176 <__Z4ReLUPaS_j>
100005e38: 48 89 df                    	movq	%rbx, %rdi
100005e3b: e8 80 f3 ff ff              	callq	-3200 <__ZN14ModelInterface11swap_bufferEv>
100005e40: 48 89 df                    	movq	%rbx, %rdi
100005e43: e8 c8 f1 ff ff              	callq	-3640 <__ZN14ModelInterface13output_bufferEv>
100005e48: 49 89 c6                    	movq	%rax, %r14
100005e4b: 48 89 df                    	movq	%rbx, %rdi
100005e4e: e8 ad f1 ff ff              	callq	-3667 <__ZN14ModelInterface12input_bufferEv>
100005e53: 48 83 ec 08                 	subq	$8, %rsp
100005e57: 48 8d 15 82 2b 00 00        	leaq	11138(%rip), %rdx
100005e5e: 48 8d 0d 9b 2b 00 00        	leaq	11163(%rip), %rcx
100005e65: 4c 89 f7                    	movq	%r14, %rdi
100005e68: 48 89 c6                    	movq	%rax, %rsi
100005e6b: 41 b8 30 00 00 00           	movl	$48, %r8d
100005e71: 41 b9 20 00 00 00           	movl	$32, %r9d
100005e77: 6a 02                       	pushq	$2
100005e79: 6a 03                       	pushq	$3
100005e7b: 6a 40                       	pushq	$64
100005e7d: 6a 40                       	pushq	$64
100005e7f: 6a 10                       	pushq	$16
100005e81: e8 7a c9 ff ff              	callq	-13958 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005e86: 48 83 c4 30                 	addq	$48, %rsp
100005e8a: 48 89 df                    	movq	%rbx, %rdi
100005e8d: e8 2e f3 ff ff              	callq	-3282 <__ZN14ModelInterface11swap_bufferEv>
100005e92: 48 89 df                    	movq	%rbx, %rdi
100005e95: e8 76 f1 ff ff              	callq	-3722 <__ZN14ModelInterface13output_bufferEv>
100005e9a: 49 89 c6                    	movq	%rax, %r14
100005e9d: 48 89 df                    	movq	%rbx, %rdi
100005ea0: e8 5b f1 ff ff              	callq	-3749 <__ZN14ModelInterface12input_bufferEv>
100005ea5: 4c 89 f7                    	movq	%r14, %rdi
100005ea8: 48 89 c6                    	movq	%rax, %rsi
100005eab: ba 00 80 00 00              	movl	$32768, %edx
100005eb0: e8 1b f3 ff ff              	callq	-3301 <__Z4ReLUPaS_j>
100005eb5: 48 89 df                    	movq	%rbx, %rdi
100005eb8: e8 03 f3 ff ff              	callq	-3325 <__ZN14ModelInterface11swap_bufferEv>
100005ebd: 48 89 df                    	movq	%rbx, %rdi
100005ec0: e8 4b f1 ff ff              	callq	-3765 <__ZN14ModelInterface13output_bufferEv>
100005ec5: 49 89 c6                    	movq	%rax, %r14
100005ec8: 48 89 df                    	movq	%rbx, %rdi
100005ecb: e8 30 f1 ff ff              	callq	-3792 <__ZN14ModelInterface12input_bufferEv>
100005ed0: 48 83 ec 08                 	subq	$8, %rsp
100005ed4: 48 8d 15 25 3d 00 00        	leaq	15653(%rip), %rdx
100005edb: 48 8d 0d 2e 3d 00 00        	leaq	15662(%rip), %rcx
100005ee2: 4c 89 f7                    	movq	%r14, %rdi
100005ee5: 48 89 c6                    	movq	%rax, %rsi
100005ee8: 41 b8 20 00 00 00           	movl	$32, %r8d
100005eee: 41 b9 01 00 00 00           	movl	$1, %r9d
100005ef4: 6a 01                       	pushq	$1
100005ef6: 6a 01                       	pushq	$1
100005ef8: 6a 20                       	pushq	$32
100005efa: 6a 20                       	pushq	$32
100005efc: 6a 20                       	pushq	$32
100005efe: e8 fd c8 ff ff              	callq	-14083 <__Z6Conv2dPaS_PKaS1_ijjjjjj>
100005f03: 48 83 c4 30                 	addq	$48, %rsp
100005f07: 48 89 df                    	movq	%rbx, %rdi
100005f0a: e8 b1 f2 ff ff              	callq	-3407 <__ZN14ModelInterface11swap_bufferEv>
100005f0f: 48 89 df                    	movq	%rbx, %rdi
100005f12: 5b                          	popq	%rbx
100005f13: 41 5e                       	popq	%r14
100005f15: 5d                          	popq	%rbp
100005f16: e9 a5 f2 ff ff              	jmp	-3419 <__ZN14ModelInterface11swap_bufferEv>
100005f1b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005f20 __ZN11LineNetworkD1Ev:
100005f20: 55                          	pushq	%rbp
100005f21: 48 89 e5                    	movq	%rsp, %rbp
100005f24: 5d                          	popq	%rbp
100005f25: e9 06 f0 ff ff              	jmp	-4090 <__ZN14ModelInterfaceD2Ev>
100005f2a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100005f30 __ZN11LineNetworkD0Ev:
100005f30: 55                          	pushq	%rbp
100005f31: 48 89 e5                    	movq	%rsp, %rbp
100005f34: 53                          	pushq	%rbx
100005f35: 50                          	pushq	%rax
100005f36: 48 89 fb                    	movq	%rdi, %rbx
100005f39: e8 f2 ef ff ff              	callq	-4110 <__ZN14ModelInterfaceD2Ev>
100005f3e: 48 89 df                    	movq	%rbx, %rdi
100005f41: 48 83 c4 08                 	addq	$8, %rsp
100005f45: 5b                          	popq	%rbx
100005f46: 5d                          	popq	%rbp
100005f47: e9 32 21 00 00              	jmp	8498 <dyld_stub_binder+0x10000807e>
100005f4c: 90                          	nop
100005f4d: 90                          	nop
100005f4e: 90                          	nop
100005f4f: 90                          	nop

0000000100005f50 __Z8get_timev:
100005f50: 55                          	pushq	%rbp
100005f51: 48 89 e5                    	movq	%rsp, %rbp
100005f54: e8 01 21 00 00              	callq	8449 <dyld_stub_binder+0x10000805a>
100005f59: c4 e1 fb 2a c0              	vcvtsi2sd	%rax, %xmm0, %xmm0
100005f5e: c5 fb 5e 05 da 3c 00 00     	vdivsd	15578(%rip), %xmm0, %xmm0
100005f66: 5d                          	popq	%rbp
100005f67: c3                          	retq
100005f68: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100005f70 __Z14get_predictionRN2cv3MatER14ModelInterfacef:
100005f70: 55                          	pushq	%rbp
100005f71: 48 89 e5                    	movq	%rsp, %rbp
100005f74: 41 57                       	pushq	%r15
100005f76: 41 56                       	pushq	%r14
100005f78: 41 55                       	pushq	%r13
100005f7a: 41 54                       	pushq	%r12
100005f7c: 53                          	pushq	%rbx
100005f7d: 48 81 ec 28 01 00 00        	subq	$296, %rsp
100005f84: c5 fa 11 45 a0              	vmovss	%xmm0, -96(%rbp)
100005f89: 49 89 d6                    	movq	%rdx, %r14
100005f8c: 49 89 f4                    	movq	%rsi, %r12
100005f8f: 48 89 fb                    	movq	%rdi, %rbx
100005f92: 48 8b 05 c7 40 00 00        	movq	16583(%rip), %rax
100005f99: 48 8b 00                    	movq	(%rax), %rax
100005f9c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005fa0: 8b 46 08                    	movl	8(%rsi), %eax
100005fa3: 8b 4e 0c                    	movl	12(%rsi), %ecx
100005fa6: c7 85 d0 fe ff ff 00 00 ff 42       	movl	$1124007936, -304(%rbp)
100005fb0: 48 8d 95 d8 fe ff ff        	leaq	-296(%rbp), %rdx
100005fb7: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005fbb: c5 fc 11 85 d4 fe ff ff     	vmovups	%ymm0, -300(%rbp)
100005fc3: c5 fc 11 85 f0 fe ff ff     	vmovups	%ymm0, -272(%rbp)
100005fcb: 48 89 95 10 ff ff ff        	movq	%rdx, -240(%rbp)
100005fd2: 48 8d 95 20 ff ff ff        	leaq	-224(%rbp), %rdx
100005fd9: 48 89 95 18 ff ff ff        	movq	%rdx, -232(%rbp)
100005fe0: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100005fe4: c5 f8 11 85 20 ff ff ff     	vmovups	%xmm0, -224(%rbp)
100005fec: 89 4d b8                    	movl	%ecx, -72(%rbp)
100005fef: 89 45 bc                    	movl	%eax, -68(%rbp)
100005ff2: 4c 8d bd d0 fe ff ff        	leaq	-304(%rbp), %r15
100005ff9: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
100005ffd: 4c 89 ff                    	movq	%r15, %rdi
100006000: be 02 00 00 00              	movl	$2, %esi
100006005: 31 c9                       	xorl	%ecx, %ecx
100006007: c5 f8 77                    	vzeroupper
10000600a: e8 eb 1f 00 00              	callq	8171 <dyld_stub_binder+0x100007ffa>
10000600f: 48 c7 85 40 ff ff ff 00 00 00 00    	movq	$0, -192(%rbp)
10000601a: c7 85 30 ff ff ff 00 00 01 01       	movl	$16842752, -208(%rbp)
100006024: 4c 89 a5 38 ff ff ff        	movq	%r12, -200(%rbp)
10000602b: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100006033: c7 45 b8 00 00 01 02        	movl	$33619968, -72(%rbp)
10000603a: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
10000603e: 48 8d bd 30 ff ff ff        	leaq	-208(%rbp), %rdi
100006045: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
100006049: ba 06 00 00 00              	movl	$6, %edx
10000604e: 31 c9                       	xorl	%ecx, %ecx
100006050: e8 cf 1f 00 00              	callq	8143 <dyld_stub_binder+0x100008024>
100006055: 41 8b 44 24 08              	movl	8(%r12), %eax
10000605a: 41 8b 4c 24 0c              	movl	12(%r12), %ecx
10000605f: c7 85 30 ff ff ff 00 00 ff 42       	movl	$1124007936, -208(%rbp)
100006069: 48 8d 95 38 ff ff ff        	leaq	-200(%rbp), %rdx
100006070: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100006074: c5 fc 11 85 34 ff ff ff     	vmovups	%ymm0, -204(%rbp)
10000607c: c5 fc 11 85 50 ff ff ff     	vmovups	%ymm0, -176(%rbp)
100006084: 48 89 95 70 ff ff ff        	movq	%rdx, -144(%rbp)
10000608b: 48 8d 55 80                 	leaq	-128(%rbp), %rdx
10000608f: 48 89 95 78 ff ff ff        	movq	%rdx, -136(%rbp)
100006096: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000609a: c5 f8 11 45 80              	vmovups	%xmm0, -128(%rbp)
10000609f: 89 4d b8                    	movl	%ecx, -72(%rbp)
1000060a2: 89 45 bc                    	movl	%eax, -68(%rbp)
1000060a5: 4c 8d a5 30 ff ff ff        	leaq	-208(%rbp), %r12
1000060ac: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
1000060b0: 4c 89 e7                    	movq	%r12, %rdi
1000060b3: be 02 00 00 00              	movl	$2, %esi
1000060b8: 31 c9                       	xorl	%ecx, %ecx
1000060ba: c5 f8 77                    	vzeroupper
1000060bd: e8 38 1f 00 00              	callq	7992 <dyld_stub_binder+0x100007ffa>
1000060c2: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
1000060ca: c7 45 b8 00 00 01 01        	movl	$16842752, -72(%rbp)
1000060d1: 4c 89 7d c0                 	movq	%r15, -64(%rbp)
1000060d5: 48 c7 85 c0 fe ff ff 00 00 00 00    	movq	$0, -320(%rbp)
1000060e0: c7 85 b0 fe ff ff 00 00 01 02       	movl	$33619968, -336(%rbp)
1000060ea: 4c 89 a5 b8 fe ff ff        	movq	%r12, -328(%rbp)
1000060f1: 41 8b 46 0c                 	movl	12(%r14), %eax
1000060f5: 41 8b 4e 10                 	movl	16(%r14), %ecx
1000060f9: 89 4d 90                    	movl	%ecx, -112(%rbp)
1000060fc: 89 45 94                    	movl	%eax, -108(%rbp)
1000060ff: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100006103: 48 8d b5 b0 fe ff ff        	leaq	-336(%rbp), %rsi
10000610a: 48 8d 55 90                 	leaq	-112(%rbp), %rdx
10000610e: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100006112: c5 f0 57 c9                 	vxorps	%xmm1, %xmm1, %xmm1
100006116: b9 03 00 00 00              	movl	$3, %ecx
10000611b: e8 f2 1e 00 00              	callq	7922 <dyld_stub_binder+0x100008012>
100006120: 41 8b 46 0c                 	movl	12(%r14), %eax
100006124: 85 c0                       	testl	%eax, %eax
100006126: 48 89 5d b0                 	movq	%rbx, -80(%rbp)
10000612a: 4d 89 f7                    	movq	%r14, %r15
10000612d: 0f 84 7c 00 00 00           	je	124 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x23f>
100006133: 41 8b 4f 10                 	movl	16(%r15), %ecx
100006137: 31 d2                       	xorl	%edx, %edx
100006139: 45 31 e4                    	xorl	%r12d, %r12d
10000613c: 85 c9                       	testl	%ecx, %ecx
10000613e: 75 0c                       	jne	12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1dc>
100006140: 31 c9                       	xorl	%ecx, %ecx
100006142: ff c2                       	incl	%edx
100006144: 39 c2                       	cmpl	%eax, %edx
100006146: 73 67                       	jae	103 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x23f>
100006148: 85 c9                       	testl	%ecx, %ecx
10000614a: 74 f4                       	je	-12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d0>
10000614c: 89 55 a8                    	movl	%edx, -88(%rbp)
10000614f: 4c 63 f2                    	movslq	%edx, %r14
100006152: 45 31 ed                    	xorl	%r13d, %r13d
100006155: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000615f: 90                          	nop
100006160: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100006167: 48 8b 00                    	movq	(%rax), %rax
10000616a: 49 0f af c6                 	imulq	%r14, %rax
10000616e: 48 03 85 40 ff ff ff        	addq	-192(%rbp), %rax
100006175: 49 63 cd                    	movslq	%r13d, %rcx
100006178: 0f b6 1c 01                 	movzbl	(%rcx,%rax), %ebx
10000617c: 4c 89 ff                    	movq	%r15, %rdi
10000617f: e8 7c ee ff ff              	callq	-4484 <__ZN14ModelInterface12input_bufferEv>
100006184: 43 8d 0c 2c                 	leal	(%r12,%r13), %ecx
100006188: d0 eb                       	shrb	%bl
10000618a: 89 c9                       	movl	%ecx, %ecx
10000618c: 88 1c 08                    	movb	%bl, (%rax,%rcx)
10000618f: 41 ff c5                    	incl	%r13d
100006192: 41 8b 4f 10                 	movl	16(%r15), %ecx
100006196: 41 39 cd                    	cmpl	%ecx, %r13d
100006199: 72 c5                       	jb	-59 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1f0>
10000619b: 41 8b 47 0c                 	movl	12(%r15), %eax
10000619f: 45 01 ec                    	addl	%r13d, %r12d
1000061a2: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
1000061a6: 8b 55 a8                    	movl	-88(%rbp), %edx
1000061a9: ff c2                       	incl	%edx
1000061ab: 39 c2                       	cmpl	%eax, %edx
1000061ad: 72 99                       	jb	-103 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x1d8>
1000061af: 49 8b 07                    	movq	(%r15), %rax
1000061b2: 4c 89 ff                    	movq	%r15, %rdi
1000061b5: ff 50 10                    	callq	*16(%rax)
1000061b8: 41 8b 47 18                 	movl	24(%r15), %eax
1000061bc: 41 8b 4f 1c                 	movl	28(%r15), %ecx
1000061c0: c7 03 00 00 ff 42           	movl	$1124007936, (%rbx)
1000061c6: 48 8d 53 08                 	leaq	8(%rbx), %rdx
1000061ca: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000061ce: c5 fc 11 43 04              	vmovups	%ymm0, 4(%rbx)
1000061d3: c5 fc 11 43 20              	vmovups	%ymm0, 32(%rbx)
1000061d8: 48 89 53 40                 	movq	%rdx, 64(%rbx)
1000061dc: 48 8d 53 50                 	leaq	80(%rbx), %rdx
1000061e0: 48 89 95 c8 fe ff ff        	movq	%rdx, -312(%rbp)
1000061e7: 48 89 53 48                 	movq	%rdx, 72(%rbx)
1000061eb: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000061ef: c5 f8 11 43 50              	vmovups	%xmm0, 80(%rbx)
1000061f4: 89 4d b8                    	movl	%ecx, -72(%rbp)
1000061f7: 89 45 bc                    	movl	%eax, -68(%rbp)
1000061fa: 48 8d 55 b8                 	leaq	-72(%rbp), %rdx
1000061fe: 48 89 df                    	movq	%rbx, %rdi
100006201: be 02 00 00 00              	movl	$2, %esi
100006206: 31 c9                       	xorl	%ecx, %ecx
100006208: c5 f8 77                    	vzeroupper
10000620b: e8 ea 1d 00 00              	callq	7658 <dyld_stub_binder+0x100007ffa>
100006210: 41 8b 47 18                 	movl	24(%r15), %eax
100006214: 41 83 7f 14 01              	cmpl	$1, 20(%r15)
100006219: 4c 89 fe                    	movq	%r15, %rsi
10000621c: 0f 85 aa 00 00 00           	jne	170 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x35c>
100006222: 85 c0                       	testl	%eax, %eax
100006224: 0f 84 b2 01 00 00           	je	434 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
10000622a: c5 fa 10 45 a0              	vmovss	-96(%rbp), %xmm0
10000622f: c5 fa 59 05 49 3a 00 00     	vmulss	14921(%rip), %xmm0, %xmm0
100006237: c5 fa 11 45 a8              	vmovss	%xmm0, -88(%rbp)
10000623c: 8b 4e 1c                    	movl	28(%rsi), %ecx
10000623f: 45 31 ff                    	xorl	%r15d, %r15d
100006242: 45 31 e4                    	xorl	%r12d, %r12d
100006245: 85 c9                       	testl	%ecx, %ecx
100006247: 75 19                       	jne	25 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2f2>
100006249: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100006250: 31 c9                       	xorl	%ecx, %ecx
100006252: 41 ff c7                    	incl	%r15d
100006255: 41 39 c7                    	cmpl	%eax, %r15d
100006258: 0f 83 7e 01 00 00           	jae	382 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
10000625e: 85 c9                       	testl	%ecx, %ecx
100006260: 74 ee                       	je	-18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2e0>
100006262: 4d 63 f7                    	movslq	%r15d, %r14
100006265: 31 db                       	xorl	%ebx, %ebx
100006267: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006270: 49 89 f5                    	movq	%rsi, %r13
100006273: 48 89 f7                    	movq	%rsi, %rdi
100006276: e8 95 ed ff ff              	callq	-4715 <__ZN14ModelInterface13output_bufferEv>
10000627b: 41 8d 0c 1c                 	leal	(%r12,%rbx), %ecx
10000627f: 89 c9                       	movl	%ecx, %ecx
100006281: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006285: c5 ea 2a c0                 	vcvtsi2ss	%eax, %xmm2, %xmm0
100006289: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
10000628d: 48 8b 41 48                 	movq	72(%rcx), %rax
100006291: 48 8b 00                    	movq	(%rax), %rax
100006294: 49 0f af c6                 	imulq	%r14, %rax
100006298: 48 03 41 10                 	addq	16(%rcx), %rax
10000629c: c5 f8 2e 45 a8              	vucomiss	-88(%rbp), %xmm0
1000062a1: 48 63 db                    	movslq	%ebx, %rbx
1000062a4: 0f 97 04 03                 	seta	(%rbx,%rax)
1000062a8: ff c3                       	incl	%ebx
1000062aa: 41 8b 4d 1c                 	movl	28(%r13), %ecx
1000062ae: 39 cb                       	cmpl	%ecx, %ebx
1000062b0: 4c 89 ee                    	movq	%r13, %rsi
1000062b3: 72 bb                       	jb	-69 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x300>
1000062b5: 8b 46 18                    	movl	24(%rsi), %eax
1000062b8: 41 01 dc                    	addl	%ebx, %r12d
1000062bb: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
1000062bf: 41 ff c7                    	incl	%r15d
1000062c2: 41 39 c7                    	cmpl	%eax, %r15d
1000062c5: 72 97                       	jb	-105 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x2ee>
1000062c7: e9 10 01 00 00              	jmp	272 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
1000062cc: 85 c0                       	testl	%eax, %eax
1000062ce: 0f 84 08 01 00 00           	je	264 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
1000062d4: c5 fa 10 45 a0              	vmovss	-96(%rbp), %xmm0
1000062d9: c5 fa 59 05 9f 39 00 00     	vmulss	14751(%rip), %xmm0, %xmm0
1000062e1: c5 fa 11 45 98              	vmovss	%xmm0, -104(%rbp)
1000062e6: 8b 4e 1c                    	movl	28(%rsi), %ecx
1000062e9: 31 d2                       	xorl	%edx, %edx
1000062eb: 45 31 ff                    	xorl	%r15d, %r15d
1000062ee: 85 c9                       	testl	%ecx, %ecx
1000062f0: 75 26                       	jne	38 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3a8>
1000062f2: e9 d9 00 00 00              	jmp	217 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x460>
1000062f7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006300: 8b 46 18                    	movl	24(%rsi), %eax
100006303: 8b 55 9c                    	movl	-100(%rbp), %edx
100006306: ff c2                       	incl	%edx
100006308: 39 c2                       	cmpl	%eax, %edx
10000630a: 0f 83 cc 00 00 00           	jae	204 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x46c>
100006310: 85 c9                       	testl	%ecx, %ecx
100006312: 0f 84 b8 00 00 00           	je	184 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x460>
100006318: 89 55 9c                    	movl	%edx, -100(%rbp)
10000631b: 48 63 c2                    	movslq	%edx, %rax
10000631e: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100006322: 31 d2                       	xorl	%edx, %edx
100006324: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100006328: 83 7e 14 00                 	cmpl	$0, 20(%rsi)
10000632c: 75 4c                       	jne	76 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x40a>
10000632e: 66 90                       	nop
100006330: 41 b5 81                    	movb	$-127, %r13b
100006333: 45 31 f6                    	xorl	%r14d, %r14d
100006336: 41 0f be c5                 	movsbl	%r13b, %eax
10000633a: c5 ea 2a c0                 	vcvtsi2ss	%eax, %xmm2, %xmm0
10000633e: c5 f8 2e 45 98              	vucomiss	-104(%rbp), %xmm0
100006343: b8 00 00 00 00              	movl	$0, %eax
100006348: 44 0f 46 f0                 	cmovbel	%eax, %r14d
10000634c: 48 8b 43 48                 	movq	72(%rbx), %rax
100006350: 48 8b 00                    	movq	(%rax), %rax
100006353: 48 0f af 45 a0              	imulq	-96(%rbp), %rax
100006358: 48 03 43 10                 	addq	16(%rbx), %rax
10000635c: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100006360: 48 63 d2                    	movslq	%edx, %rdx
100006363: 44 88 34 02                 	movb	%r14b, (%rdx,%rax)
100006367: ff c2                       	incl	%edx
100006369: 8b 4e 1c                    	movl	28(%rsi), %ecx
10000636c: 39 ca                       	cmpl	%ecx, %edx
10000636e: 73 90                       	jae	-112 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x390>
100006370: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100006374: 83 7e 14 00                 	cmpl	$0, 20(%rsi)
100006378: 74 b6                       	je	-74 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3c0>
10000637a: 41 b5 81                    	movb	$-127, %r13b
10000637d: 31 db                       	xorl	%ebx, %ebx
10000637f: 45 31 f6                    	xorl	%r14d, %r14d
100006382: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000638c: 0f 1f 40 00                 	nopl	(%rax)
100006390: 49 89 f4                    	movq	%rsi, %r12
100006393: 48 89 f7                    	movq	%rsi, %rdi
100006396: e8 75 ec ff ff              	callq	-5003 <__ZN14ModelInterface13output_bufferEv>
10000639b: 41 8d 0c 1f                 	leal	(%r15,%rbx), %ecx
10000639f: 89 c9                       	movl	%ecx, %ecx
1000063a1: 0f b6 04 08                 	movzbl	(%rax,%rcx), %eax
1000063a5: 44 38 e8                    	cmpb	%r13b, %al
1000063a8: 44 0f 4f f3                 	cmovgl	%ebx, %r14d
1000063ac: 45 0f b6 ed                 	movzbl	%r13b, %r13d
1000063b0: 44 0f 4d e8                 	cmovgel	%eax, %r13d
1000063b4: ff c3                       	incl	%ebx
1000063b6: 41 3b 5c 24 14              	cmpl	20(%r12), %ebx
1000063bb: 4c 89 e6                    	movq	%r12, %rsi
1000063be: 72 d0                       	jb	-48 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x420>
1000063c0: 41 01 df                    	addl	%ebx, %r15d
1000063c3: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
1000063c7: e9 6a ff ff ff              	jmp	-150 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3c6>
1000063cc: 0f 1f 40 00                 	nopl	(%rax)
1000063d0: 31 c9                       	xorl	%ecx, %ecx
1000063d2: ff c2                       	incl	%edx
1000063d4: 39 c2                       	cmpl	%eax, %edx
1000063d6: 0f 82 34 ff ff ff           	jb	-204 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x3a0>
1000063dc: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
1000063e3: 48 85 c0                    	testq	%rax, %rax
1000063e6: 74 12                       	je	18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x48a>
1000063e8: f0                          	lock
1000063e9: ff 48 14                    	decl	20(%rax)
1000063ec: 75 0c                       	jne	12 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x48a>
1000063ee: 48 8d bd 30 ff ff ff        	leaq	-208(%rbp), %rdi
1000063f5: e8 fa 1b 00 00              	callq	7162 <dyld_stub_binder+0x100007ff4>
1000063fa: 48 c7 85 68 ff ff ff 00 00 00 00    	movq	$0, -152(%rbp)
100006405: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100006409: c5 fc 11 85 40 ff ff ff     	vmovups	%ymm0, -192(%rbp)
100006411: 83 bd 34 ff ff ff 00        	cmpl	$0, -204(%rbp)
100006418: 7e 2c                       	jle	44 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4d6>
10000641a: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
100006421: 31 c9                       	xorl	%ecx, %ecx
100006423: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000642d: 0f 1f 00                    	nopl	(%rax)
100006430: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006437: 48 ff c1                    	incq	%rcx
10000643a: 48 63 95 34 ff ff ff        	movslq	-204(%rbp), %rdx
100006441: 48 39 d1                    	cmpq	%rdx, %rcx
100006444: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4c0>
100006446: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
10000644d: 48 8d 45 80                 	leaq	-128(%rbp), %rax
100006451: 48 39 c7                    	cmpq	%rax, %rdi
100006454: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x4ee>
100006456: c5 f8 77                    	vzeroupper
100006459: e8 cc 1b 00 00              	callq	7116 <dyld_stub_binder+0x10000802a>
10000645e: 48 8b 85 08 ff ff ff        	movq	-248(%rbp), %rax
100006465: 48 85 c0                    	testq	%rax, %rax
100006468: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x50f>
10000646a: f0                          	lock
10000646b: ff 48 14                    	decl	20(%rax)
10000646e: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x50f>
100006470: 48 8d bd d0 fe ff ff        	leaq	-304(%rbp), %rdi
100006477: c5 f8 77                    	vzeroupper
10000647a: e8 75 1b 00 00              	callq	7029 <dyld_stub_binder+0x100007ff4>
10000647f: 48 c7 85 08 ff ff ff 00 00 00 00    	movq	$0, -248(%rbp)
10000648a: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000648e: c5 fc 11 85 e0 fe ff ff     	vmovups	%ymm0, -288(%rbp)
100006496: 83 bd d4 fe ff ff 00        	cmpl	$0, -300(%rbp)
10000649d: 7e 27                       	jle	39 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x556>
10000649f: 48 8b 85 10 ff ff ff        	movq	-240(%rbp), %rax
1000064a6: 31 c9                       	xorl	%ecx, %ecx
1000064a8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000064b0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000064b7: 48 ff c1                    	incq	%rcx
1000064ba: 48 63 95 d4 fe ff ff        	movslq	-300(%rbp), %rdx
1000064c1: 48 39 d1                    	cmpq	%rdx, %rcx
1000064c4: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x540>
1000064c6: 48 8b bd 18 ff ff ff        	movq	-232(%rbp), %rdi
1000064cd: 48 8d 85 20 ff ff ff        	leaq	-224(%rbp), %rax
1000064d4: 48 39 c7                    	cmpq	%rax, %rdi
1000064d7: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x571>
1000064d9: c5 f8 77                    	vzeroupper
1000064dc: e8 49 1b 00 00              	callq	6985 <dyld_stub_binder+0x10000802a>
1000064e1: 48 8b 05 78 3b 00 00        	movq	15224(%rip), %rax
1000064e8: 48 8b 00                    	movq	(%rax), %rax
1000064eb: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
1000064ef: 75 18                       	jne	24 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x599>
1000064f1: 48 89 d8                    	movq	%rbx, %rax
1000064f4: 48 81 c4 28 01 00 00        	addq	$296, %rsp
1000064fb: 5b                          	popq	%rbx
1000064fc: 41 5c                       	popq	%r12
1000064fe: 41 5d                       	popq	%r13
100006500: 41 5e                       	popq	%r14
100006502: 41 5f                       	popq	%r15
100006504: 5d                          	popq	%rbp
100006505: c5 f8 77                    	vzeroupper
100006508: c3                          	retq
100006509: c5 f8 77                    	vzeroupper
10000650c: e8 8b 1b 00 00              	callq	7051 <dyld_stub_binder+0x10000809c>
100006511: 48 89 c7                    	movq	%rax, %rdi
100006514: e8 37 15 00 00              	callq	5431 <___clang_call_terminate>
100006519: 48 89 c7                    	movq	%rax, %rdi
10000651c: e8 2f 15 00 00              	callq	5423 <___clang_call_terminate>
100006521: eb 1e                       	jmp	30 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5d1>
100006523: eb 00                       	jmp	0 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5b5>
100006525: 49 89 c6                    	movq	%rax, %r14
100006528: 48 8b 85 08 ff ff ff        	movq	-248(%rbp), %rax
10000652f: 48 85 c0                    	testq	%rax, %rax
100006532: 0f 85 0f 01 00 00           	jne	271 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6d7>
100006538: e9 1f 01 00 00              	jmp	287 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6ec>
10000653d: eb 02                       	jmp	2 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5d1>
10000653f: eb 14                       	jmp	20 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x5e5>
100006541: 49 89 c6                    	movq	%rax, %r14
100006544: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
10000654b: 48 85 c0                    	testq	%rax, %rax
10000654e: 75 7f                       	jne	127 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x65f>
100006550: e9 8f 00 00 00              	jmp	143 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x674>
100006555: 49 89 c6                    	movq	%rax, %r14
100006558: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
10000655c: 48 8b 43 38                 	movq	56(%rbx), %rax
100006560: 48 85 c0                    	testq	%rax, %rax
100006563: 74 0e                       	je	14 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x603>
100006565: f0                          	lock
100006566: ff 48 14                    	decl	20(%rax)
100006569: 75 08                       	jne	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x603>
10000656b: 48 89 df                    	movq	%rbx, %rdi
10000656e: e8 81 1a 00 00              	callq	6785 <dyld_stub_binder+0x100007ff4>
100006573: 48 c7 43 38 00 00 00 00     	movq	$0, 56(%rbx)
10000657b: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000657f: c5 fc 11 43 10              	vmovups	%ymm0, 16(%rbx)
100006584: 83 7b 04 00                 	cmpl	$0, 4(%rbx)
100006588: 7e 20                       	jle	32 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x63a>
10000658a: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
10000658e: 48 8d 41 04                 	leaq	4(%rcx), %rax
100006592: 48 8b 49 40                 	movq	64(%rcx), %rcx
100006596: 31 d2                       	xorl	%edx, %edx
100006598: c7 04 91 00 00 00 00        	movl	$0, (%rcx,%rdx,4)
10000659f: 48 ff c2                    	incq	%rdx
1000065a2: 48 63 30                    	movslq	(%rax), %rsi
1000065a5: 48 39 f2                    	cmpq	%rsi, %rdx
1000065a8: 7c ee                       	jl	-18 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x628>
1000065aa: 48 8b 45 b0                 	movq	-80(%rbp), %rax
1000065ae: 48 8b 78 48                 	movq	72(%rax), %rdi
1000065b2: 48 3b bd c8 fe ff ff        	cmpq	-312(%rbp), %rdi
1000065b9: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x653>
1000065bb: c5 f8 77                    	vzeroupper
1000065be: e8 67 1a 00 00              	callq	6759 <dyld_stub_binder+0x10000802a>
1000065c3: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
1000065ca: 48 85 c0                    	testq	%rax, %rax
1000065cd: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x674>
1000065cf: f0                          	lock
1000065d0: ff 48 14                    	decl	20(%rax)
1000065d3: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x674>
1000065d5: 48 8d bd 30 ff ff ff        	leaq	-208(%rbp), %rdi
1000065dc: c5 f8 77                    	vzeroupper
1000065df: e8 10 1a 00 00              	callq	6672 <dyld_stub_binder+0x100007ff4>
1000065e4: 48 c7 85 68 ff ff ff 00 00 00 00    	movq	$0, -152(%rbp)
1000065ef: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000065f3: c5 fc 11 85 40 ff ff ff     	vmovups	%ymm0, -192(%rbp)
1000065fb: 83 bd 34 ff ff ff 00        	cmpl	$0, -204(%rbp)
100006602: 7e 1f                       	jle	31 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6b3>
100006604: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
10000660b: 31 c9                       	xorl	%ecx, %ecx
10000660d: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006614: 48 ff c1                    	incq	%rcx
100006617: 48 63 95 34 ff ff ff        	movslq	-204(%rbp), %rdx
10000661e: 48 39 d1                    	cmpq	%rdx, %rcx
100006621: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x69d>
100006623: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
10000662a: 48 8d 45 80                 	leaq	-128(%rbp), %rax
10000662e: 48 39 c7                    	cmpq	%rax, %rdi
100006631: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6cb>
100006633: c5 f8 77                    	vzeroupper
100006636: e8 ef 19 00 00              	callq	6639 <dyld_stub_binder+0x10000802a>
10000663b: 48 8b 85 08 ff ff ff        	movq	-248(%rbp), %rax
100006642: 48 85 c0                    	testq	%rax, %rax
100006645: 74 15                       	je	21 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6ec>
100006647: f0                          	lock
100006648: ff 48 14                    	decl	20(%rax)
10000664b: 75 0f                       	jne	15 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x6ec>
10000664d: 48 8d bd d0 fe ff ff        	leaq	-304(%rbp), %rdi
100006654: c5 f8 77                    	vzeroupper
100006657: e8 98 19 00 00              	callq	6552 <dyld_stub_binder+0x100007ff4>
10000665c: 48 c7 85 08 ff ff ff 00 00 00 00    	movq	$0, -248(%rbp)
100006667: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
10000666b: c5 fc 11 85 e0 fe ff ff     	vmovups	%ymm0, -288(%rbp)
100006673: 83 bd d4 fe ff ff 00        	cmpl	$0, -300(%rbp)
10000667a: 7e 2a                       	jle	42 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x736>
10000667c: 48 8b 85 10 ff ff ff        	movq	-240(%rbp), %rax
100006683: 31 c9                       	xorl	%ecx, %ecx
100006685: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000668f: 90                          	nop
100006690: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006697: 48 ff c1                    	incq	%rcx
10000669a: 48 63 95 d4 fe ff ff        	movslq	-300(%rbp), %rdx
1000066a1: 48 39 d1                    	cmpq	%rdx, %rcx
1000066a4: 7c ea                       	jl	-22 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x720>
1000066a6: 48 8b bd 18 ff ff ff        	movq	-232(%rbp), %rdi
1000066ad: 48 8d 85 20 ff ff ff        	leaq	-224(%rbp), %rax
1000066b4: 48 39 c7                    	cmpq	%rax, %rdi
1000066b7: 74 08                       	je	8 <__Z14get_predictionRN2cv3MatER14ModelInterfacef+0x751>
1000066b9: c5 f8 77                    	vzeroupper
1000066bc: e8 69 19 00 00              	callq	6505 <dyld_stub_binder+0x10000802a>
1000066c1: 4c 89 f7                    	movq	%r14, %rdi
1000066c4: c5 f8 77                    	vzeroupper
1000066c7: e8 10 19 00 00              	callq	6416 <dyld_stub_binder+0x100007fdc>
1000066cc: 0f 0b                       	ud2
1000066ce: 48 89 c7                    	movq	%rax, %rdi
1000066d1: e8 7a 13 00 00              	callq	4986 <___clang_call_terminate>
1000066d6: 48 89 c7                    	movq	%rax, %rdi
1000066d9: e8 72 13 00 00              	callq	4978 <___clang_call_terminate>
1000066de: 48 89 c7                    	movq	%rax, %rdi
1000066e1: e8 6a 13 00 00              	callq	4970 <___clang_call_terminate>
1000066e6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000066f0 _main:
1000066f0: 55                          	pushq	%rbp
1000066f1: 48 89 e5                    	movq	%rsp, %rbp
1000066f4: 41 57                       	pushq	%r15
1000066f6: 41 56                       	pushq	%r14
1000066f8: 41 55                       	pushq	%r13
1000066fa: 41 54                       	pushq	%r12
1000066fc: 53                          	pushq	%rbx
1000066fd: 48 83 e4 e0                 	andq	$-32, %rsp
100006701: 48 81 ec e0 03 00 00        	subq	$992, %rsp
100006708: 48 8b 05 51 39 00 00        	movq	14673(%rip), %rax
10000670f: 48 8b 00                    	movq	(%rax), %rax
100006712: 48 89 84 24 c0 03 00 00     	movq	%rax, 960(%rsp)
10000671a: 48 8d bc 24 c8 01 00 00     	leaq	456(%rsp), %rdi
100006722: e8 29 f5 ff ff              	callq	-2775 <__ZN11LineNetworkC1Ev>
100006727: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000672b: c5 f9 7f 84 24 40 02 00 00  	vmovdqa	%xmm0, 576(%rsp)
100006734: 48 c7 84 24 50 02 00 00 00 00 00 00 	movq	$0, 592(%rsp)
100006740: bf 30 00 00 00              	movl	$48, %edi
100006745: e8 40 19 00 00              	callq	6464 <dyld_stub_binder+0x10000808a>
10000674a: 48 89 84 24 50 02 00 00     	movq	%rax, 592(%rsp)
100006752: c5 f8 28 05 46 35 00 00     	vmovaps	13638(%rip), %xmm0
10000675a: c5 f8 29 84 24 40 02 00 00  	vmovaps	%xmm0, 576(%rsp)
100006763: c5 fe 6f 05 45 37 00 00     	vmovdqu	14149(%rip), %ymm0
10000676b: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
10000676f: 48 b9 69 64 65 6f 2e 6d 70 34       	movabsq	$3778640133568685161, %rcx
100006779: 48 89 48 20                 	movq	%rcx, 32(%rax)
10000677d: c6 40 28 00                 	movb	$0, 40(%rax)
100006781: 48 8d bc 24 98 01 00 00     	leaq	408(%rsp), %rdi
100006789: 48 8d b4 24 40 02 00 00     	leaq	576(%rsp), %rsi
100006791: 31 d2                       	xorl	%edx, %edx
100006793: c5 f8 77                    	vzeroupper
100006796: e8 47 18 00 00              	callq	6215 <dyld_stub_binder+0x100007fe2>
10000679b: f6 84 24 40 02 00 00 01     	testb	$1, 576(%rsp)
1000067a3: 74 0d                       	je	13 <_main+0xc2>
1000067a5: 48 8b bc 24 50 02 00 00     	movq	592(%rsp), %rdi
1000067ad: e8 cc 18 00 00              	callq	6348 <dyld_stub_binder+0x10000807e>
1000067b2: 4c 8d 7c 24 28              	leaq	40(%rsp), %r15
1000067b7: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000067bb: c5 f9 d6 84 24 60 01 00 00  	vmovq	%xmm0, 352(%rsp)
1000067c4: 48 8d 9c 24 98 01 00 00     	leaq	408(%rsp), %rbx
1000067cc: 4c 8d ac 24 e0 00 00 00     	leaq	224(%rsp), %r13
1000067d4: c4 e2 7d 59 05 6b 34 00 00  	vpbroadcastq	13419(%rip), %ymm0
1000067dd: c5 fd 7f 84 24 00 02 00 00  	vmovdqa	%ymm0, 512(%rsp)
1000067e6: eb 14                       	jmp	20 <_main+0x10c>
1000067e8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
1000067f0: 45 85 e4                    	testl	%r12d, %r12d
1000067f3: 4c 89 f3                    	movq	%r14, %rbx
1000067f6: 0f 85 6e 0e 00 00           	jne	3694 <_main+0xf7a>
1000067fc: 48 89 df                    	movq	%rbx, %rdi
1000067ff: c5 f8 77                    	vzeroupper
100006802: e8 2f 18 00 00              	callq	6191 <dyld_stub_binder+0x100008036>
100006807: 84 c0                       	testb	%al, %al
100006809: 0f 84 5b 0e 00 00           	je	3675 <_main+0xf7a>
10000680f: c7 44 24 20 00 00 ff 42     	movl	$1124007936, 32(%rsp)
100006817: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000681b: 48 8d 44 24 24              	leaq	36(%rsp), %rax
100006820: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
100006825: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100006829: 4c 89 7c 24 60              	movq	%r15, 96(%rsp)
10000682e: 48 8d 44 24 70              	leaq	112(%rsp), %rax
100006833: 48 89 44 24 68              	movq	%rax, 104(%rsp)
100006838: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000683c: c5 fa 7f 00                 	vmovdqu	%xmm0, (%rax)
100006840: 49 89 de                    	movq	%rbx, %r14
100006843: 48 89 df                    	movq	%rbx, %rdi
100006846: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
10000684b: c5 f8 77                    	vzeroupper
10000684e: e8 9b 17 00 00              	callq	6043 <dyld_stub_binder+0x100007fee>
100006853: 41 bc 03 00 00 00           	movl	$3, %r12d
100006859: 48 83 7c 24 30 00           	cmpq	$0, 48(%rsp)
10000685f: 0f 84 9b 08 00 00           	je	2203 <_main+0xa10>
100006865: 8b 44 24 24                 	movl	36(%rsp), %eax
100006869: 83 f8 03                    	cmpl	$3, %eax
10000686c: 0f 8d 7e 03 00 00           	jge	894 <_main+0x500>
100006872: 48 63 4c 24 28              	movslq	40(%rsp), %rcx
100006877: 48 63 74 24 2c              	movslq	44(%rsp), %rsi
10000687c: 48 0f af f1                 	imulq	%rcx, %rsi
100006880: 85 c0                       	testl	%eax, %eax
100006882: 0f 84 78 08 00 00           	je	2168 <_main+0xa10>
100006888: 48 85 f6                    	testq	%rsi, %rsi
10000688b: 0f 84 6f 08 00 00           	je	2159 <_main+0xa10>
100006891: bf 19 00 00 00              	movl	$25, %edi
100006896: c5 f8 77                    	vzeroupper
100006899: e8 80 17 00 00              	callq	6016 <dyld_stub_binder+0x10000801e>
10000689e: 3c 1b                       	cmpb	$27, %al
1000068a0: 0f 84 5a 08 00 00           	je	2138 <_main+0xa10>
1000068a6: e8 af 17 00 00              	callq	6063 <dyld_stub_binder+0x10000805a>
1000068ab: 49 89 c7                    	movq	%rax, %r15
1000068ae: 4c 89 eb                    	movq	%r13, %rbx
1000068b1: 4c 89 ef                    	movq	%r13, %rdi
1000068b4: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
1000068b9: 48 8d 94 24 c8 01 00 00     	leaq	456(%rsp), %rdx
1000068c1: c5 f9 6e 05 bb 33 00 00     	vmovd	13243(%rip), %xmm0
1000068c9: e8 a2 f6 ff ff              	callq	-2398 <__Z14get_predictionRN2cv3MatER14ModelInterfacef>
1000068ce: 48 8d bc 24 40 02 00 00     	leaq	576(%rsp), %rdi
1000068d6: c5 fa 7e 05 72 33 00 00     	vmovq	13170(%rip), %xmm0
1000068de: 48 89 de                    	movq	%rbx, %rsi
1000068e1: e8 4a 17 00 00              	callq	5962 <dyld_stub_binder+0x100008030>
1000068e6: 48 8b 84 24 18 01 00 00     	movq	280(%rsp), %rax
1000068ee: 48 85 c0                    	testq	%rax, %rax
1000068f1: 74 0e                       	je	14 <_main+0x211>
1000068f3: f0                          	lock
1000068f4: ff 48 14                    	decl	20(%rax)
1000068f7: 75 08                       	jne	8 <_main+0x211>
1000068f9: 4c 89 ef                    	movq	%r13, %rdi
1000068fc: e8 f3 16 00 00              	callq	5875 <dyld_stub_binder+0x100007ff4>
100006901: 48 c7 84 24 18 01 00 00 00 00 00 00 	movq	$0, 280(%rsp)
10000690d: 48 8d 84 24 f0 00 00 00     	leaq	240(%rsp), %rax
100006915: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006919: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
10000691d: 83 bc 24 e4 00 00 00 00     	cmpl	$0, 228(%rsp)
100006925: 7e 30                       	jle	48 <_main+0x267>
100006927: 48 8b 84 24 20 01 00 00     	movq	288(%rsp), %rax
10000692f: 31 c9                       	xorl	%ecx, %ecx
100006931: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000693b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006940: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006947: 48 ff c1                    	incq	%rcx
10000694a: 48 63 94 24 e4 00 00 00     	movslq	228(%rsp), %rdx
100006952: 48 39 d1                    	cmpq	%rdx, %rcx
100006955: 7c e9                       	jl	-23 <_main+0x250>
100006957: 48 8b bc 24 28 01 00 00     	movq	296(%rsp), %rdi
10000695f: 48 8d 84 24 30 01 00 00     	leaq	304(%rsp), %rax
100006967: 48 39 c7                    	cmpq	%rax, %rdi
10000696a: 74 08                       	je	8 <_main+0x284>
10000696c: c5 f8 77                    	vzeroupper
10000696f: e8 b6 16 00 00              	callq	5814 <dyld_stub_binder+0x10000802a>
100006974: 4c 89 bc 24 70 01 00 00     	movq	%r15, 368(%rsp)
10000697c: c5 f8 77                    	vzeroupper
10000697f: e8 d6 16 00 00              	callq	5846 <dyld_stub_binder+0x10000805a>
100006984: 49 89 c4                    	movq	%rax, %r12
100006987: c7 84 24 e0 00 00 00 00 00 ff 42    	movl	$1124007936, 224(%rsp)
100006992: 48 8d 84 24 f0 00 00 00     	leaq	240(%rsp), %rax
10000699a: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000699e: c5 fe 7f 40 f4              	vmovdqu	%ymm0, -12(%rax)
1000069a3: c5 fe 7f 40 10              	vmovdqu	%ymm0, 16(%rax)
1000069a8: 48 8b 44 24 28              	movq	40(%rsp), %rax
1000069ad: 48 8d 8c 24 e8 00 00 00     	leaq	232(%rsp), %rcx
1000069b5: 48 89 8c 24 20 01 00 00     	movq	%rcx, 288(%rsp)
1000069bd: 48 8d 8c 24 30 01 00 00     	leaq	304(%rsp), %rcx
1000069c5: 48 89 8c 24 28 01 00 00     	movq	%rcx, 296(%rsp)
1000069cd: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000069d1: c5 fa 7f 01                 	vmovdqu	%xmm0, (%rcx)
1000069d5: 48 89 84 24 a0 03 00 00     	movq	%rax, 928(%rsp)
1000069dd: 4d 89 ef                    	movq	%r13, %r15
1000069e0: 4c 89 ef                    	movq	%r13, %rdi
1000069e3: be 02 00 00 00              	movl	$2, %esi
1000069e8: 48 8d 94 24 a0 03 00 00     	leaq	928(%rsp), %rdx
1000069f0: 31 c9                       	xorl	%ecx, %ecx
1000069f2: c5 f8 77                    	vzeroupper
1000069f5: e8 00 16 00 00              	callq	5632 <dyld_stub_binder+0x100007ffa>
1000069fa: 48 c7 84 24 90 00 00 00 00 00 00 00 	movq	$0, 144(%rsp)
100006a06: c7 84 24 80 00 00 00 00 00 06 c1    	movl	$3238395904, 128(%rsp)
100006a11: 48 8d 84 24 40 02 00 00     	leaq	576(%rsp), %rax
100006a19: 48 89 84 24 88 00 00 00     	movq	%rax, 136(%rsp)
100006a21: 48 c7 84 24 50 01 00 00 00 00 00 00 	movq	$0, 336(%rsp)
100006a2d: c7 84 24 40 01 00 00 00 00 01 02    	movl	$33619968, 320(%rsp)
100006a38: 4c 89 bc 24 48 01 00 00     	movq	%r15, 328(%rsp)
100006a40: 8b 44 24 28                 	movl	40(%rsp), %eax
100006a44: 8b 4c 24 2c                 	movl	44(%rsp), %ecx
100006a48: 89 8c 24 68 01 00 00        	movl	%ecx, 360(%rsp)
100006a4f: 89 84 24 6c 01 00 00        	movl	%eax, 364(%rsp)
100006a56: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006a5a: c5 f1 ef c9                 	vpxor	%xmm1, %xmm1, %xmm1
100006a5e: 48 8d 9c 24 80 00 00 00     	leaq	128(%rsp), %rbx
100006a66: 48 89 df                    	movq	%rbx, %rdi
100006a69: 48 8d b4 24 40 01 00 00     	leaq	320(%rsp), %rsi
100006a71: 48 8d 94 24 68 01 00 00     	leaq	360(%rsp), %rdx
100006a79: b9 01 00 00 00              	movl	$1, %ecx
100006a7e: e8 8f 15 00 00              	callq	5519 <dyld_stub_binder+0x100008012>
100006a83: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006a87: c5 fd 7f 84 24 40 01 00 00  	vmovdqa	%ymm0, 320(%rsp)
100006a90: c7 84 24 80 00 00 00 00 00 ff 42    	movl	$1124007936, 128(%rsp)
100006a9b: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
100006aa3: c5 fe 7f 40 1c              	vmovdqu	%ymm0, 28(%rax)
100006aa8: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100006aac: 48 8b 44 24 28              	movq	40(%rsp), %rax
100006ab1: 48 8d 8c 24 88 00 00 00     	leaq	136(%rsp), %rcx
100006ab9: 48 89 8c 24 c0 00 00 00     	movq	%rcx, 192(%rsp)
100006ac1: 48 8d 8c 24 d0 00 00 00     	leaq	208(%rsp), %rcx
100006ac9: 48 89 8c 24 c8 00 00 00     	movq	%rcx, 200(%rsp)
100006ad1: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006ad5: c5 fa 7f 01                 	vmovdqu	%xmm0, (%rcx)
100006ad9: 48 89 84 24 a0 03 00 00     	movq	%rax, 928(%rsp)
100006ae1: 48 89 df                    	movq	%rbx, %rdi
100006ae4: be 02 00 00 00              	movl	$2, %esi
100006ae9: 48 8d 94 24 a0 03 00 00     	leaq	928(%rsp), %rdx
100006af1: b9 10 00 00 00              	movl	$16, %ecx
100006af6: c5 f8 77                    	vzeroupper
100006af9: e8 fc 14 00 00              	callq	5372 <dyld_stub_binder+0x100007ffa>
100006afe: 48 89 df                    	movq	%rbx, %rdi
100006b01: 48 8d b4 24 40 01 00 00     	leaq	320(%rsp), %rsi
100006b09: e8 f8 14 00 00              	callq	5368 <dyld_stub_binder+0x100008006>
100006b0e: 48 8b 44 24 58              	movq	88(%rsp), %rax
100006b13: 48 85 c0                    	testq	%rax, %rax
100006b16: 74 04                       	je	4 <_main+0x42c>
100006b18: f0                          	lock
100006b19: ff 40 14                    	incl	20(%rax)
100006b1c: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100006b24: 48 85 c0                    	testq	%rax, %rax
100006b27: 74 0e                       	je	14 <_main+0x447>
100006b29: f0                          	lock
100006b2a: ff 48 14                    	decl	20(%rax)
100006b2d: 75 08                       	jne	8 <_main+0x447>
100006b2f: 48 89 df                    	movq	%rbx, %rdi
100006b32: e8 bd 14 00 00              	callq	5309 <dyld_stub_binder+0x100007ff4>
100006b37: 48 c7 84 24 b8 00 00 00 00 00 00 00 	movq	$0, 184(%rsp)
100006b43: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
100006b4b: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100006b4f: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100006b54: 83 bc 24 84 00 00 00 00     	cmpl	$0, 132(%rsp)
100006b5c: 0f 8e 22 06 00 00           	jle	1570 <_main+0xa94>
100006b62: 48 8b 84 24 c0 00 00 00     	movq	192(%rsp), %rax
100006b6a: 31 c9                       	xorl	%ecx, %ecx
100006b6c: 0f 1f 40 00                 	nopl	(%rax)
100006b70: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100006b77: 48 ff c1                    	incq	%rcx
100006b7a: 48 63 94 24 84 00 00 00     	movslq	132(%rsp), %rdx
100006b82: 48 39 d1                    	cmpq	%rdx, %rcx
100006b85: 7c e9                       	jl	-23 <_main+0x480>
100006b87: 8b 44 24 20                 	movl	32(%rsp), %eax
100006b8b: 89 84 24 80 00 00 00        	movl	%eax, 128(%rsp)
100006b92: 83 fa 02                    	cmpl	$2, %edx
100006b95: 0f 8f 01 06 00 00           	jg	1537 <_main+0xaac>
100006b9b: 8b 44 24 24                 	movl	36(%rsp), %eax
100006b9f: 83 f8 02                    	cmpl	$2, %eax
100006ba2: 0f 8f f4 05 00 00           	jg	1524 <_main+0xaac>
100006ba8: 89 84 24 84 00 00 00        	movl	%eax, 132(%rsp)
100006baf: 8b 4c 24 28                 	movl	40(%rsp), %ecx
100006bb3: 8b 44 24 2c                 	movl	44(%rsp), %eax
100006bb7: 89 8c 24 88 00 00 00        	movl	%ecx, 136(%rsp)
100006bbe: 89 84 24 8c 00 00 00        	movl	%eax, 140(%rsp)
100006bc5: 48 8b 44 24 68              	movq	104(%rsp), %rax
100006bca: 48 8b 10                    	movq	(%rax), %rdx
100006bcd: 48 8b b4 24 c8 00 00 00     	movq	200(%rsp), %rsi
100006bd5: 48 89 16                    	movq	%rdx, (%rsi)
100006bd8: 48 8b 40 08                 	movq	8(%rax), %rax
100006bdc: 48 89 46 08                 	movq	%rax, 8(%rsi)
100006be0: e9 cb 05 00 00              	jmp	1483 <_main+0xac0>
100006be5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006bef: 90                          	nop
100006bf0: 48 8b 4c 24 60              	movq	96(%rsp), %rcx
100006bf5: 83 f8 0f                    	cmpl	$15, %eax
100006bf8: 77 0c                       	ja	12 <_main+0x516>
100006bfa: be 01 00 00 00              	movl	$1, %esi
100006bff: 31 d2                       	xorl	%edx, %edx
100006c01: e9 da 04 00 00              	jmp	1242 <_main+0x9f0>
100006c06: 89 c2                       	movl	%eax, %edx
100006c08: 83 e2 f0                    	andl	$-16, %edx
100006c0b: 48 8d 72 f0                 	leaq	-16(%rdx), %rsi
100006c0f: 48 89 f7                    	movq	%rsi, %rdi
100006c12: 48 c1 ef 04                 	shrq	$4, %rdi
100006c16: 48 ff c7                    	incq	%rdi
100006c19: 89 fb                       	movl	%edi, %ebx
100006c1b: 83 e3 03                    	andl	$3, %ebx
100006c1e: 48 83 fe 30                 	cmpq	$48, %rsi
100006c22: 73 25                       	jae	37 <_main+0x559>
100006c24: 31 ff                       	xorl	%edi, %edi
100006c26: c5 fd 6f 84 24 00 02 00 00  	vmovdqa	512(%rsp), %ymm0
100006c2f: c5 fd 6f c8                 	vmovdqa	%ymm0, %ymm1
100006c33: c5 fd 6f d8                 	vmovdqa	%ymm0, %ymm3
100006c37: c5 fd 6f d0                 	vmovdqa	%ymm0, %ymm2
100006c3b: 48 85 db                    	testq	%rbx, %rbx
100006c3e: 0f 85 0e 03 00 00           	jne	782 <_main+0x862>
100006c44: e9 d0 03 00 00              	jmp	976 <_main+0x929>
100006c49: 48 89 de                    	movq	%rbx, %rsi
100006c4c: 48 29 fe                    	subq	%rdi, %rsi
100006c4f: c4 e2 7d 59 0d f0 2f 00 00  	vpbroadcastq	12272(%rip), %ymm1
100006c58: 31 ff                       	xorl	%edi, %edi
100006c5a: c5 fd 6f d9                 	vmovdqa	%ymm1, %ymm3
100006c5e: c5 fd 6f d1                 	vmovdqa	%ymm1, %ymm2
100006c62: c5 fd 6f c1                 	vmovdqa	%ymm1, %ymm0
100006c66: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006c70: c4 e2 7d 25 24 b9           	vpmovsxdq	(%rcx,%rdi,4), %ymm4
100006c76: c4 e2 7d 25 6c b9 10        	vpmovsxdq	16(%rcx,%rdi,4), %ymm5
100006c7d: c4 e2 7d 25 74 b9 20        	vpmovsxdq	32(%rcx,%rdi,4), %ymm6
100006c84: c4 e2 7d 25 7c b9 30        	vpmovsxdq	48(%rcx,%rdi,4), %ymm7
100006c8b: c5 bd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm8
100006c90: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
100006c94: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
100006c99: c4 41 75 f4 c9              	vpmuludq	%ymm9, %ymm1, %ymm9
100006c9e: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
100006ca3: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006ca9: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006cad: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006cb2: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100006cb7: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
100006cbb: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
100006cc0: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
100006cc5: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
100006cc9: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006cce: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006cd2: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006cd6: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
100006cdb: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
100006cdf: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100006ce4: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100006ce8: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006cec: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006cf1: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006cf5: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006cf9: c5 dd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm4
100006cfe: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100006d02: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100006d07: c5 fd f4 ed                 	vpmuludq	%ymm5, %ymm0, %ymm5
100006d0b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006d0f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006d14: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006d18: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006d1c: c4 e2 7d 25 64 b9 40        	vpmovsxdq	64(%rcx,%rdi,4), %ymm4
100006d23: c4 e2 7d 25 6c b9 50        	vpmovsxdq	80(%rcx,%rdi,4), %ymm5
100006d2a: c4 e2 7d 25 74 b9 60        	vpmovsxdq	96(%rcx,%rdi,4), %ymm6
100006d31: c4 e2 7d 25 7c b9 70        	vpmovsxdq	112(%rcx,%rdi,4), %ymm7
100006d38: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006d3d: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
100006d42: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100006d47: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006d4b: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006d50: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006d56: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006d5a: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006d5f: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006d64: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006d68: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006d6d: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006d71: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006d76: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006d7b: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006d7f: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006d83: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006d88: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006d8c: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006d91: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006d95: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006d99: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006d9e: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006da2: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006da6: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006dab: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006daf: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006db4: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006db8: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006dbc: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006dc1: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006dc5: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006dc9: c4 e2 7d 25 a4 b9 80 00 00 00       	vpmovsxdq	128(%rcx,%rdi,4), %ymm4
100006dd3: c4 e2 7d 25 ac b9 90 00 00 00       	vpmovsxdq	144(%rcx,%rdi,4), %ymm5
100006ddd: c4 e2 7d 25 b4 b9 a0 00 00 00       	vpmovsxdq	160(%rcx,%rdi,4), %ymm6
100006de7: c4 e2 7d 25 bc b9 b0 00 00 00       	vpmovsxdq	176(%rcx,%rdi,4), %ymm7
100006df1: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006df6: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
100006dfb: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100006e00: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006e04: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006e09: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006e0f: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006e13: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006e18: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006e1d: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006e21: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006e26: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006e2a: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006e2f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006e34: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006e38: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006e3c: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006e41: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006e45: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006e4a: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006e4e: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006e52: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006e57: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006e5b: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006e5f: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006e64: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006e68: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006e6d: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006e71: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006e75: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006e7a: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006e7e: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006e82: c4 e2 7d 25 a4 b9 c0 00 00 00       	vpmovsxdq	192(%rcx,%rdi,4), %ymm4
100006e8c: c4 e2 7d 25 ac b9 d0 00 00 00       	vpmovsxdq	208(%rcx,%rdi,4), %ymm5
100006e96: c4 e2 7d 25 b4 b9 e0 00 00 00       	vpmovsxdq	224(%rcx,%rdi,4), %ymm6
100006ea0: c4 e2 7d 25 bc b9 f0 00 00 00       	vpmovsxdq	240(%rcx,%rdi,4), %ymm7
100006eaa: c5 bd 73 d4 20              	vpsrlq	$32, %ymm4, %ymm8
100006eaf: c4 41 75 f4 c0              	vpmuludq	%ymm8, %ymm1, %ymm8
100006eb4: c5 b5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm9
100006eb9: c5 35 f4 cc                 	vpmuludq	%ymm4, %ymm9, %ymm9
100006ebd: c4 41 3d d4 c1              	vpaddq	%ymm9, %ymm8, %ymm8
100006ec2: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006ec8: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006ecc: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006ed1: c5 dd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm4
100006ed6: c5 e5 f4 e4                 	vpmuludq	%ymm4, %ymm3, %ymm4
100006eda: c5 bd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm8
100006edf: c5 3d f4 c5                 	vpmuludq	%ymm5, %ymm8, %ymm8
100006ee3: c4 c1 5d d4 e0              	vpaddq	%ymm8, %ymm4, %ymm4
100006ee8: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006eed: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006ef1: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006ef5: c5 dd 73 d6 20              	vpsrlq	$32, %ymm6, %ymm4
100006efa: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
100006efe: c5 d5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm5
100006f03: c5 d5 f4 ee                 	vpmuludq	%ymm6, %ymm5, %ymm5
100006f07: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006f0b: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006f10: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006f14: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006f18: c5 dd 73 d7 20              	vpsrlq	$32, %ymm7, %ymm4
100006f1d: c5 fd f4 e4                 	vpmuludq	%ymm4, %ymm0, %ymm4
100006f21: c5 d5 73 d0 20              	vpsrlq	$32, %ymm0, %ymm5
100006f26: c5 d5 f4 ef                 	vpmuludq	%ymm7, %ymm5, %ymm5
100006f2a: c5 dd d4 e5                 	vpaddq	%ymm5, %ymm4, %ymm4
100006f2e: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006f33: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100006f37: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
100006f3b: 48 83 c7 40                 	addq	$64, %rdi
100006f3f: 48 83 c6 04                 	addq	$4, %rsi
100006f43: 0f 85 27 fd ff ff           	jne	-729 <_main+0x580>
100006f49: 48 85 db                    	testq	%rbx, %rbx
100006f4c: 0f 84 c7 00 00 00           	je	199 <_main+0x929>
100006f52: 48 8d 34 b9                 	leaq	(%rcx,%rdi,4), %rsi
100006f56: 48 83 c6 30                 	addq	$48, %rsi
100006f5a: 48 c1 e3 06                 	shlq	$6, %rbx
100006f5e: 31 ff                       	xorl	%edi, %edi
100006f60: c4 e2 7d 25 64 3e d0        	vpmovsxdq	-48(%rsi,%rdi), %ymm4
100006f67: c4 e2 7d 25 6c 3e e0        	vpmovsxdq	-32(%rsi,%rdi), %ymm5
100006f6e: c4 e2 7d 25 74 3e f0        	vpmovsxdq	-16(%rsi,%rdi), %ymm6
100006f75: c4 e2 7d 25 3c 3e           	vpmovsxdq	(%rsi,%rdi), %ymm7
100006f7b: c5 bd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm8
100006f80: c5 3d f4 c4                 	vpmuludq	%ymm4, %ymm8, %ymm8
100006f84: c5 b5 73 d4 20              	vpsrlq	$32, %ymm4, %ymm9
100006f89: c4 41 75 f4 c9              	vpmuludq	%ymm9, %ymm1, %ymm9
100006f8e: c4 41 35 d4 c0              	vpaddq	%ymm8, %ymm9, %ymm8
100006f93: c4 c1 3d 73 f0 20           	vpsllq	$32, %ymm8, %ymm8
100006f99: c5 f5 f4 cc                 	vpmuludq	%ymm4, %ymm1, %ymm1
100006f9d: c4 c1 75 d4 c8              	vpaddq	%ymm8, %ymm1, %ymm1
100006fa2: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
100006fa7: c5 dd f4 e5                 	vpmuludq	%ymm5, %ymm4, %ymm4
100006fab: c5 bd 73 d5 20              	vpsrlq	$32, %ymm5, %ymm8
100006fb0: c4 41 65 f4 c0              	vpmuludq	%ymm8, %ymm3, %ymm8
100006fb5: c5 bd d4 e4                 	vpaddq	%ymm4, %ymm8, %ymm4
100006fb9: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006fbe: c5 e5 f4 dd                 	vpmuludq	%ymm5, %ymm3, %ymm3
100006fc2: c5 e5 d4 dc                 	vpaddq	%ymm4, %ymm3, %ymm3
100006fc6: c5 dd 73 d2 20              	vpsrlq	$32, %ymm2, %ymm4
100006fcb: c5 dd f4 e6                 	vpmuludq	%ymm6, %ymm4, %ymm4
100006fcf: c5 d5 73 d6 20              	vpsrlq	$32, %ymm6, %ymm5
100006fd4: c5 ed f4 ed                 	vpmuludq	%ymm5, %ymm2, %ymm5
100006fd8: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006fdc: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100006fe1: c5 ed f4 d6                 	vpmuludq	%ymm6, %ymm2, %ymm2
100006fe5: c5 ed d4 d4                 	vpaddq	%ymm4, %ymm2, %ymm2
100006fe9: c5 dd 73 d0 20              	vpsrlq	$32, %ymm0, %ymm4
100006fee: c5 dd f4 e7                 	vpmuludq	%ymm7, %ymm4, %ymm4
100006ff2: c5 d5 73 d7 20              	vpsrlq	$32, %ymm7, %ymm5
100006ff7: c5 fd f4 ed                 	vpmuludq	%ymm5, %ymm0, %ymm5
100006ffb: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
100006fff: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100007004: c5 fd f4 c7                 	vpmuludq	%ymm7, %ymm0, %ymm0
100007008: c5 fd d4 c4                 	vpaddq	%ymm4, %ymm0, %ymm0
10000700c: 48 83 c7 40                 	addq	$64, %rdi
100007010: 48 39 fb                    	cmpq	%rdi, %rbx
100007013: 0f 85 47 ff ff ff           	jne	-185 <_main+0x870>
100007019: c5 dd 73 d3 20              	vpsrlq	$32, %ymm3, %ymm4
10000701e: c5 dd f4 e1                 	vpmuludq	%ymm1, %ymm4, %ymm4
100007022: c5 d5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm5
100007027: c5 e5 f4 ed                 	vpmuludq	%ymm5, %ymm3, %ymm5
10000702b: c5 d5 d4 e4                 	vpaddq	%ymm4, %ymm5, %ymm4
10000702f: c5 dd 73 f4 20              	vpsllq	$32, %ymm4, %ymm4
100007034: c5 e5 f4 c9                 	vpmuludq	%ymm1, %ymm3, %ymm1
100007038: c5 f5 d4 cc                 	vpaddq	%ymm4, %ymm1, %ymm1
10000703c: c5 e5 73 d2 20              	vpsrlq	$32, %ymm2, %ymm3
100007041: c5 e5 f4 d9                 	vpmuludq	%ymm1, %ymm3, %ymm3
100007045: c5 dd 73 d1 20              	vpsrlq	$32, %ymm1, %ymm4
10000704a: c5 ed f4 e4                 	vpmuludq	%ymm4, %ymm2, %ymm4
10000704e: c5 dd d4 db                 	vpaddq	%ymm3, %ymm4, %ymm3
100007052: c5 e5 73 f3 20              	vpsllq	$32, %ymm3, %ymm3
100007057: c5 ed f4 c9                 	vpmuludq	%ymm1, %ymm2, %ymm1
10000705b: c5 f5 d4 cb                 	vpaddq	%ymm3, %ymm1, %ymm1
10000705f: c5 ed 73 d0 20              	vpsrlq	$32, %ymm0, %ymm2
100007064: c5 ed f4 d1                 	vpmuludq	%ymm1, %ymm2, %ymm2
100007068: c5 e5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm3
10000706d: c5 fd f4 db                 	vpmuludq	%ymm3, %ymm0, %ymm3
100007071: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
100007075: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
10000707a: c5 fd f4 c1                 	vpmuludq	%ymm1, %ymm0, %ymm0
10000707e: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
100007082: c4 e3 7d 39 c1 01           	vextracti128	$1, %ymm0, %xmm1
100007088: c5 ed 73 d0 20              	vpsrlq	$32, %ymm0, %ymm2
10000708d: c5 ed f4 d1                 	vpmuludq	%ymm1, %ymm2, %ymm2
100007091: c5 e5 73 d1 20              	vpsrlq	$32, %ymm1, %ymm3
100007096: c5 fd f4 db                 	vpmuludq	%ymm3, %ymm0, %ymm3
10000709a: c5 e5 d4 d2                 	vpaddq	%ymm2, %ymm3, %ymm2
10000709e: c5 ed 73 f2 20              	vpsllq	$32, %ymm2, %ymm2
1000070a3: c5 fd f4 c1                 	vpmuludq	%ymm1, %ymm0, %ymm0
1000070a7: c5 fd d4 c2                 	vpaddq	%ymm2, %ymm0, %ymm0
1000070ab: c5 f9 70 c8 4e              	vpshufd	$78, %xmm0, %xmm1
1000070b0: c5 e9 73 d0 20              	vpsrlq	$32, %xmm0, %xmm2
1000070b5: c5 e9 f4 d1                 	vpmuludq	%xmm1, %xmm2, %xmm2
1000070b9: c5 e1 73 d8 0c              	vpsrldq	$12, %xmm0, %xmm3
1000070be: c5 f9 f4 db                 	vpmuludq	%xmm3, %xmm0, %xmm3
1000070c2: c5 e1 d4 d2                 	vpaddq	%xmm2, %xmm3, %xmm2
1000070c6: c5 e9 73 f2 20              	vpsllq	$32, %xmm2, %xmm2
1000070cb: c5 f9 f4 c1                 	vpmuludq	%xmm1, %xmm0, %xmm0
1000070cf: c5 f9 d4 c2                 	vpaddq	%xmm2, %xmm0, %xmm0
1000070d3: c4 e1 f9 7e c6              	vmovq	%xmm0, %rsi
1000070d8: 48 39 c2                    	cmpq	%rax, %rdx
1000070db: 74 13                       	je	19 <_main+0xa00>
1000070dd: 0f 1f 00                    	nopl	(%rax)
1000070e0: 48 63 3c 91                 	movslq	(%rcx,%rdx,4), %rdi
1000070e4: 48 0f af f7                 	imulq	%rdi, %rsi
1000070e8: 48 ff c2                    	incq	%rdx
1000070eb: 48 39 d0                    	cmpq	%rdx, %rax
1000070ee: 75 f0                       	jne	-16 <_main+0x9f0>
1000070f0: 85 c0                       	testl	%eax, %eax
1000070f2: 0f 85 90 f7 ff ff           	jne	-2160 <_main+0x198>
1000070f8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100007100: 48 8b 44 24 58              	movq	88(%rsp), %rax
100007105: 48 85 c0                    	testq	%rax, %rax
100007108: 74 13                       	je	19 <_main+0xa2d>
10000710a: f0                          	lock
10000710b: ff 48 14                    	decl	20(%rax)
10000710e: 75 0d                       	jne	13 <_main+0xa2d>
100007110: 48 8d 7c 24 20              	leaq	32(%rsp), %rdi
100007115: c5 f8 77                    	vzeroupper
100007118: e8 d7 0e 00 00              	callq	3799 <dyld_stub_binder+0x100007ff4>
10000711d: 48 c7 44 24 58 00 00 00 00  	movq	$0, 88(%rsp)
100007126: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
10000712a: 48 8d 44 24 24              	leaq	36(%rsp), %rax
10000712f: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
100007134: 83 7c 24 24 00              	cmpl	$0, 36(%rsp)
100007139: 7e 29                       	jle	41 <_main+0xa74>
10000713b: 48 8b 44 24 60              	movq	96(%rsp), %rax
100007140: 31 c9                       	xorl	%ecx, %ecx
100007142: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000714c: 0f 1f 40 00                 	nopl	(%rax)
100007150: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007157: 48 ff c1                    	incq	%rcx
10000715a: 48 63 54 24 24              	movslq	36(%rsp), %rdx
10000715f: 48 39 d1                    	cmpq	%rdx, %rcx
100007162: 7c ec                       	jl	-20 <_main+0xa60>
100007164: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100007169: 48 8d 44 24 70              	leaq	112(%rsp), %rax
10000716e: 48 39 c7                    	cmpq	%rax, %rdi
100007171: 0f 84 79 f6 ff ff           	je	-2439 <_main+0x100>
100007177: c5 f8 77                    	vzeroupper
10000717a: e8 ab 0e 00 00              	callq	3755 <dyld_stub_binder+0x10000802a>
10000717f: e9 6c f6 ff ff              	jmp	-2452 <_main+0x100>
100007184: 8b 44 24 20                 	movl	32(%rsp), %eax
100007188: 89 84 24 80 00 00 00        	movl	%eax, 128(%rsp)
10000718f: 8b 44 24 24                 	movl	36(%rsp), %eax
100007193: 83 f8 02                    	cmpl	$2, %eax
100007196: 0f 8e 0c fa ff ff           	jle	-1524 <_main+0x4b8>
10000719c: 48 89 df                    	movq	%rbx, %rdi
10000719f: 48 8d 74 24 20              	leaq	32(%rsp), %rsi
1000071a4: c5 f8 77                    	vzeroupper
1000071a7: e8 54 0e 00 00              	callq	3668 <dyld_stub_binder+0x100008000>
1000071ac: 8b 4c 24 28                 	movl	40(%rsp), %ecx
1000071b0: c4 e1 eb 2a 84 24 70 01 00 00       	vcvtsi2sdq	368(%rsp), %xmm2, %xmm0
1000071ba: c4 c1 eb 2a cc              	vcvtsi2sd	%r12, %xmm2, %xmm1
1000071bf: c5 fb 10 15 79 2a 00 00     	vmovsd	10873(%rip), %xmm2
1000071c7: c5 fb 5e c2                 	vdivsd	%xmm2, %xmm0, %xmm0
1000071cb: c5 f3 5e ca                 	vdivsd	%xmm2, %xmm1, %xmm1
1000071cf: c5 fc 10 54 24 30           	vmovups	48(%rsp), %ymm2
1000071d5: c5 fc 11 94 24 90 00 00 00  	vmovups	%ymm2, 144(%rsp)
1000071de: c5 f9 10 54 24 50           	vmovupd	80(%rsp), %xmm2
1000071e4: c5 f9 11 94 24 b0 00 00 00  	vmovupd	%xmm2, 176(%rsp)
1000071ed: 85 c9                       	testl	%ecx, %ecx
1000071ef: 4c 8d 7c 24 28              	leaq	40(%rsp), %r15
1000071f4: 0f 84 4c 01 00 00           	je	332 <_main+0xc56>
1000071fa: 31 c0                       	xorl	%eax, %eax
1000071fc: 8b 74 24 2c                 	movl	44(%rsp), %esi
100007200: 85 f6                       	testl	%esi, %esi
100007202: be 00 00 00 00              	movl	$0, %esi
100007207: 75 1a                       	jne	26 <_main+0xb33>
100007209: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100007210: ff c0                       	incl	%eax
100007212: 39 c8                       	cmpl	%ecx, %eax
100007214: 0f 83 2c 01 00 00           	jae	300 <_main+0xc56>
10000721a: 85 f6                       	testl	%esi, %esi
10000721c: be 00 00 00 00              	movl	$0, %esi
100007221: 74 ed                       	je	-19 <_main+0xb20>
100007223: 48 63 c8                    	movslq	%eax, %rcx
100007226: 31 d2                       	xorl	%edx, %edx
100007228: c5 fb 10 25 28 2a 00 00     	vmovsd	10792(%rip), %xmm4
100007230: c5 fa 10 2d 50 2a 00 00     	vmovss	10832(%rip), %xmm5
100007238: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100007240: 48 8b 74 24 68              	movq	104(%rsp), %rsi
100007245: 48 8b 3e                    	movq	(%rsi), %rdi
100007248: 48 0f af f9                 	imulq	%rcx, %rdi
10000724c: 48 03 7c 24 30              	addq	48(%rsp), %rdi
100007251: 48 63 d2                    	movslq	%edx, %rdx
100007254: 48 8d 34 52                 	leaq	(%rdx,%rdx,2), %rsi
100007258: 0f b6 3c 37                 	movzbl	(%rdi,%rsi), %edi
10000725c: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
100007260: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
100007264: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
100007268: 48 8b 9c 24 c8 00 00 00     	movq	200(%rsp), %rbx
100007270: 48 8b 1b                    	movq	(%rbx), %rbx
100007273: 48 0f af d9                 	imulq	%rcx, %rbx
100007277: 48 03 9c 24 90 00 00 00     	addq	144(%rsp), %rbx
10000727f: 40 88 3c 33                 	movb	%dil, (%rbx,%rsi)
100007283: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100007288: 48 8b 3f                    	movq	(%rdi), %rdi
10000728b: 48 0f af f9                 	imulq	%rcx, %rdi
10000728f: 48 03 7c 24 30              	addq	48(%rsp), %rdi
100007294: 0f b6 7c 37 01              	movzbl	1(%rdi,%rsi), %edi
100007299: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
10000729d: 48 8b bc 24 28 01 00 00     	movq	296(%rsp), %rdi
1000072a5: 48 8b 3f                    	movq	(%rdi), %rdi
1000072a8: 48 0f af f9                 	imulq	%rcx, %rdi
1000072ac: 48 03 bc 24 f0 00 00 00     	addq	240(%rsp), %rdi
1000072b4: 0f b6 3c 3a                 	movzbl	(%rdx,%rdi), %edi
1000072b8: c5 ca 2a df                 	vcvtsi2ss	%edi, %xmm6, %xmm3
1000072bc: c5 e2 59 dd                 	vmulss	%xmm5, %xmm3, %xmm3
1000072c0: c5 e2 5a db                 	vcvtss2sd	%xmm3, %xmm3, %xmm3
1000072c4: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
1000072c8: c5 eb 58 d3                 	vaddsd	%xmm3, %xmm2, %xmm2
1000072cc: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
1000072d0: 48 8b 9c 24 c8 00 00 00     	movq	200(%rsp), %rbx
1000072d8: 48 8b 1b                    	movq	(%rbx), %rbx
1000072db: 48 0f af d9                 	imulq	%rcx, %rbx
1000072df: 48 03 9c 24 90 00 00 00     	addq	144(%rsp), %rbx
1000072e7: 40 88 7c 33 01              	movb	%dil, 1(%rbx,%rsi)
1000072ec: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
1000072f1: 48 8b 3f                    	movq	(%rdi), %rdi
1000072f4: 48 0f af f9                 	imulq	%rcx, %rdi
1000072f8: 48 03 7c 24 30              	addq	48(%rsp), %rdi
1000072fd: 0f b6 7c 37 02              	movzbl	2(%rdi,%rsi), %edi
100007302: c5 cb 2a d7                 	vcvtsi2sd	%edi, %xmm6, %xmm2
100007306: c5 eb 59 d4                 	vmulsd	%xmm4, %xmm2, %xmm2
10000730a: c5 fb 2c fa                 	vcvttsd2si	%xmm2, %edi
10000730e: 48 8b 9c 24 c8 00 00 00     	movq	200(%rsp), %rbx
100007316: 48 8b 1b                    	movq	(%rbx), %rbx
100007319: 48 0f af d9                 	imulq	%rcx, %rbx
10000731d: 48 03 9c 24 90 00 00 00     	addq	144(%rsp), %rbx
100007325: 40 88 7c 33 02              	movb	%dil, 2(%rbx,%rsi)
10000732a: ff c2                       	incl	%edx
10000732c: 8b 74 24 2c                 	movl	44(%rsp), %esi
100007330: 39 f2                       	cmpl	%esi, %edx
100007332: 0f 82 08 ff ff ff           	jb	-248 <_main+0xb50>
100007338: 8b 4c 24 28                 	movl	40(%rsp), %ecx
10000733c: ff c0                       	incl	%eax
10000733e: 39 c8                       	cmpl	%ecx, %eax
100007340: 0f 82 d4 fe ff ff           	jb	-300 <_main+0xb2a>
100007346: c5 fb 10 15 12 29 00 00     	vmovsd	10514(%rip), %xmm2
10000734e: c5 eb 59 94 24 60 01 00 00  	vmulsd	352(%rsp), %xmm2, %xmm2
100007357: c5 f3 5c c0                 	vsubsd	%xmm0, %xmm1, %xmm0
10000735b: c5 fb 58 05 05 29 00 00     	vaddsd	10501(%rip), %xmm0, %xmm0
100007363: c5 fb 10 0d 05 29 00 00     	vmovsd	10501(%rip), %xmm1
10000736b: c5 f3 5e c0                 	vdivsd	%xmm0, %xmm1, %xmm0
10000736f: c5 eb 58 c0                 	vaddsd	%xmm0, %xmm2, %xmm0
100007373: c5 fb 11 84 24 60 01 00 00  	vmovsd	%xmm0, 352(%rsp)
10000737c: c5 f8 77                    	vzeroupper
10000737f: e8 24 0d 00 00              	callq	3364 <dyld_stub_binder+0x1000080a8>
100007384: c5 fb 2c f0                 	vcvttsd2si	%xmm0, %esi
100007388: 48 8d 9c 24 a0 03 00 00     	leaq	928(%rsp), %rbx
100007390: 48 89 df                    	movq	%rbx, %rdi
100007393: e8 da 0c 00 00              	callq	3290 <dyld_stub_binder+0x100008072>
100007398: 48 89 df                    	movq	%rbx, %rdi
10000739b: 31 f6                       	xorl	%esi, %esi
10000739d: 48 8d 15 35 2b 00 00        	leaq	11061(%rip), %rdx
1000073a4: e8 9f 0c 00 00              	callq	3231 <dyld_stub_binder+0x100008048>
1000073a9: 48 8b 48 10                 	movq	16(%rax), %rcx
1000073ad: 48 89 8c 24 50 01 00 00     	movq	%rcx, 336(%rsp)
1000073b5: c5 f8 10 00                 	vmovups	(%rax), %xmm0
1000073b9: c5 f8 29 84 24 40 01 00 00  	vmovaps	%xmm0, 320(%rsp)
1000073c2: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
1000073c6: c5 f8 11 00                 	vmovups	%xmm0, (%rax)
1000073ca: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000073d2: f6 84 24 a0 03 00 00 01     	testb	$1, 928(%rsp)
1000073da: 74 0d                       	je	13 <_main+0xcf9>
1000073dc: 48 8b bc 24 b0 03 00 00     	movq	944(%rsp), %rdi
1000073e4: e8 95 0c 00 00              	callq	3221 <dyld_stub_binder+0x10000807e>
1000073e9: 48 c7 84 24 b0 03 00 00 00 00 00 00 	movq	$0, 944(%rsp)
1000073f5: c7 84 24 a0 03 00 00 00 00 01 03    	movl	$50397184, 928(%rsp)
100007400: 4c 8d a4 24 80 00 00 00     	leaq	128(%rsp), %r12
100007408: 4c 89 a4 24 a8 03 00 00     	movq	%r12, 936(%rsp)
100007410: 48 b8 1e 00 00 00 1e 00 00 00       	movabsq	$128849018910, %rax
10000741a: 48 89 84 24 78 01 00 00     	movq	%rax, 376(%rsp)
100007422: c5 fc 28 05 96 28 00 00     	vmovaps	10390(%rip), %ymm0
10000742a: c5 fc 29 84 24 20 02 00 00  	vmovaps	%ymm0, 544(%rsp)
100007433: c7 44 24 08 00 00 00 00     	movl	$0, 8(%rsp)
10000743b: c7 04 24 10 00 00 00        	movl	$16, (%rsp)
100007442: 48 8d 9c 24 a0 03 00 00     	leaq	928(%rsp), %rbx
10000744a: 48 89 df                    	movq	%rbx, %rdi
10000744d: 48 8d b4 24 40 01 00 00     	leaq	320(%rsp), %rsi
100007455: 48 8d 94 24 78 01 00 00     	leaq	376(%rsp), %rdx
10000745d: 31 c9                       	xorl	%ecx, %ecx
10000745f: c5 fb 10 05 11 28 00 00     	vmovsd	10257(%rip), %xmm0
100007467: 4c 8d 84 24 20 02 00 00     	leaq	544(%rsp), %r8
10000746f: 41 b9 02 00 00 00           	movl	$2, %r9d
100007475: c5 f8 77                    	vzeroupper
100007478: e8 9b 0b 00 00              	callq	2971 <dyld_stub_binder+0x100008018>
10000747d: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007481: c5 f9 29 84 24 a0 03 00 00  	vmovapd	%xmm0, 928(%rsp)
10000748a: 48 c7 84 24 b0 03 00 00 00 00 00 00 	movq	$0, 944(%rsp)
100007496: c6 84 24 a0 03 00 00 0a     	movb	$10, 928(%rsp)
10000749e: 48 8d 84 24 a1 03 00 00     	leaq	929(%rsp), %rax
1000074a6: c6 40 04 65                 	movb	$101, 4(%rax)
1000074aa: c7 00 66 72 61 6d           	movl	$1835102822, (%rax)
1000074b0: c6 84 24 a6 03 00 00 00     	movb	$0, 934(%rsp)
1000074b8: 48 c7 84 24 90 01 00 00 00 00 00 00 	movq	$0, 400(%rsp)
1000074c4: c7 84 24 80 01 00 00 00 00 01 01    	movl	$16842752, 384(%rsp)
1000074cf: 4c 89 a4 24 88 01 00 00     	movq	%r12, 392(%rsp)
1000074d7: 48 89 df                    	movq	%rbx, %rdi
1000074da: 48 8d b4 24 80 01 00 00     	leaq	384(%rsp), %rsi
1000074e2: e8 25 0b 00 00              	callq	2853 <dyld_stub_binder+0x10000800c>
1000074e7: f6 84 24 a0 03 00 00 01     	testb	$1, 928(%rsp)
1000074ef: 75 2c                       	jne	44 <_main+0xe2d>
1000074f1: f6 84 24 40 01 00 00 01     	testb	$1, 320(%rsp)
1000074f9: 75 39                       	jne	57 <_main+0xe44>
1000074fb: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100007503: 48 85 c0                    	testq	%rax, %rax
100007506: 74 46                       	je	70 <_main+0xe5e>
100007508: f0                          	lock
100007509: ff 48 14                    	decl	20(%rax)
10000750c: 75 40                       	jne	64 <_main+0xe5e>
10000750e: 48 8d bc 24 80 00 00 00     	leaq	128(%rsp), %rdi
100007516: e8 d9 0a 00 00              	callq	2777 <dyld_stub_binder+0x100007ff4>
10000751b: eb 31                       	jmp	49 <_main+0xe5e>
10000751d: 48 8b bc 24 b0 03 00 00     	movq	944(%rsp), %rdi
100007525: e8 54 0b 00 00              	callq	2900 <dyld_stub_binder+0x10000807e>
10000752a: f6 84 24 40 01 00 00 01     	testb	$1, 320(%rsp)
100007532: 74 c7                       	je	-57 <_main+0xe0b>
100007534: 48 8b bc 24 50 01 00 00     	movq	336(%rsp), %rdi
10000753c: e8 3d 0b 00 00              	callq	2877 <dyld_stub_binder+0x10000807e>
100007541: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100007549: 48 85 c0                    	testq	%rax, %rax
10000754c: 75 ba                       	jne	-70 <_main+0xe18>
10000754e: 48 c7 84 24 b8 00 00 00 00 00 00 00 	movq	$0, 184(%rsp)
10000755a: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
100007562: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007566: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
10000756b: 83 bc 24 84 00 00 00 00     	cmpl	$0, 132(%rsp)
100007573: 7e 22                       	jle	34 <_main+0xea7>
100007575: 48 8b 84 24 c0 00 00 00     	movq	192(%rsp), %rax
10000757d: 31 c9                       	xorl	%ecx, %ecx
10000757f: 90                          	nop
100007580: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007587: 48 ff c1                    	incq	%rcx
10000758a: 48 63 94 24 84 00 00 00     	movslq	132(%rsp), %rdx
100007592: 48 39 d1                    	cmpq	%rdx, %rcx
100007595: 7c e9                       	jl	-23 <_main+0xe90>
100007597: 48 8b bc 24 c8 00 00 00     	movq	200(%rsp), %rdi
10000759f: 48 8d 84 24 d0 00 00 00     	leaq	208(%rsp), %rax
1000075a7: 48 39 c7                    	cmpq	%rax, %rdi
1000075aa: 74 08                       	je	8 <_main+0xec4>
1000075ac: c5 f8 77                    	vzeroupper
1000075af: e8 76 0a 00 00              	callq	2678 <dyld_stub_binder+0x10000802a>
1000075b4: 48 8b 84 24 18 01 00 00     	movq	280(%rsp), %rax
1000075bc: 48 85 c0                    	testq	%rax, %rax
1000075bf: 74 11                       	je	17 <_main+0xee2>
1000075c1: f0                          	lock
1000075c2: ff 48 14                    	decl	20(%rax)
1000075c5: 75 0b                       	jne	11 <_main+0xee2>
1000075c7: 4c 89 ef                    	movq	%r13, %rdi
1000075ca: c5 f8 77                    	vzeroupper
1000075cd: e8 22 0a 00 00              	callq	2594 <dyld_stub_binder+0x100007ff4>
1000075d2: 48 c7 84 24 18 01 00 00 00 00 00 00 	movq	$0, 280(%rsp)
1000075de: 48 8d 84 24 f0 00 00 00     	leaq	240(%rsp), %rax
1000075e6: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
1000075ea: c5 fd 11 00                 	vmovupd	%ymm0, (%rax)
1000075ee: 83 bc 24 e4 00 00 00 00     	cmpl	$0, 228(%rsp)
1000075f6: 7e 2f                       	jle	47 <_main+0xf37>
1000075f8: 48 8b 84 24 20 01 00 00     	movq	288(%rsp), %rax
100007600: 31 c9                       	xorl	%ecx, %ecx
100007602: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000760c: 0f 1f 40 00                 	nopl	(%rax)
100007610: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007617: 48 ff c1                    	incq	%rcx
10000761a: 48 63 94 24 e4 00 00 00     	movslq	228(%rsp), %rdx
100007622: 48 39 d1                    	cmpq	%rdx, %rcx
100007625: 7c e9                       	jl	-23 <_main+0xf20>
100007627: 48 8b bc 24 28 01 00 00     	movq	296(%rsp), %rdi
10000762f: 48 8d 84 24 30 01 00 00     	leaq	304(%rsp), %rax
100007637: 48 39 c7                    	cmpq	%rax, %rdi
10000763a: 74 08                       	je	8 <_main+0xf54>
10000763c: c5 f8 77                    	vzeroupper
10000763f: e8 e6 09 00 00              	callq	2534 <dyld_stub_binder+0x10000802a>
100007644: 48 8d bc 24 40 02 00 00     	leaq	576(%rsp), %rdi
10000764c: c5 f8 77                    	vzeroupper
10000764f: e8 0c 04 00 00              	callq	1036 <__ZN2cv7MatExprD2Ev>
100007654: 45 31 e4                    	xorl	%r12d, %r12d
100007657: 48 8b 44 24 58              	movq	88(%rsp), %rax
10000765c: 48 85 c0                    	testq	%rax, %rax
10000765f: 0f 85 a5 fa ff ff           	jne	-1371 <_main+0xa1a>
100007665: e9 b3 fa ff ff              	jmp	-1357 <_main+0xa2d>
10000766a: 48 8b 3d d7 29 00 00        	movq	10711(%rip), %rdi
100007671: 48 8d 35 6e 28 00 00        	leaq	10350(%rip), %rsi
100007678: ba 0d 00 00 00              	movl	$13, %edx
10000767d: c5 f8 77                    	vzeroupper
100007680: e8 6b 05 00 00              	callq	1387 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007685: 48 8d bc 24 98 01 00 00     	leaq	408(%rsp), %rdi
10000768d: e8 56 09 00 00              	callq	2390 <dyld_stub_binder+0x100007fe8>
100007692: 48 8d bc 24 c8 01 00 00     	leaq	456(%rsp), %rdi
10000769a: e8 91 d8 ff ff              	callq	-10095 <__ZN14ModelInterfaceD2Ev>
10000769f: 48 8b 05 ba 29 00 00        	movq	10682(%rip), %rax
1000076a6: 48 8b 00                    	movq	(%rax), %rax
1000076a9: 48 3b 84 24 c0 03 00 00     	cmpq	960(%rsp), %rax
1000076b1: 75 11                       	jne	17 <_main+0xfd4>
1000076b3: 31 c0                       	xorl	%eax, %eax
1000076b5: 48 8d 65 d8                 	leaq	-40(%rbp), %rsp
1000076b9: 5b                          	popq	%rbx
1000076ba: 41 5c                       	popq	%r12
1000076bc: 41 5d                       	popq	%r13
1000076be: 41 5e                       	popq	%r14
1000076c0: 41 5f                       	popq	%r15
1000076c2: 5d                          	popq	%rbp
1000076c3: c3                          	retq
1000076c4: e8 d3 09 00 00              	callq	2515 <dyld_stub_binder+0x10000809c>
1000076c9: e9 57 03 00 00              	jmp	855 <_main+0x1335>
1000076ce: 48 89 c3                    	movq	%rax, %rbx
1000076d1: f6 84 24 40 02 00 00 01     	testb	$1, 576(%rsp)
1000076d9: 0f 84 59 03 00 00           	je	857 <_main+0x1348>
1000076df: 48 8b bc 24 50 02 00 00     	movq	592(%rsp), %rdi
1000076e7: e8 92 09 00 00              	callq	2450 <dyld_stub_binder+0x10000807e>
1000076ec: e9 47 03 00 00              	jmp	839 <_main+0x1348>
1000076f1: 48 89 c3                    	movq	%rax, %rbx
1000076f4: e9 3f 03 00 00              	jmp	831 <_main+0x1348>
1000076f9: 48 89 c7                    	movq	%rax, %rdi
1000076fc: e8 4f 03 00 00              	callq	847 <___clang_call_terminate>
100007701: 48 89 c7                    	movq	%rax, %rdi
100007704: e8 47 03 00 00              	callq	839 <___clang_call_terminate>
100007709: 48 89 c7                    	movq	%rax, %rdi
10000770c: e8 3f 03 00 00              	callq	831 <___clang_call_terminate>
100007711: 48 89 c3                    	movq	%rax, %rbx
100007714: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
10000771c: 48 85 c0                    	testq	%rax, %rax
10000771f: 75 7b                       	jne	123 <_main+0x10ac>
100007721: e9 89 00 00 00              	jmp	137 <_main+0x10bf>
100007726: 48 89 c3                    	movq	%rax, %rbx
100007729: f6 84 24 a0 03 00 00 01     	testb	$1, 928(%rsp)
100007731: 74 1c                       	je	28 <_main+0x105f>
100007733: 48 8b bc 24 b0 03 00 00     	movq	944(%rsp), %rdi
10000773b: e8 3e 09 00 00              	callq	2366 <dyld_stub_binder+0x10000807e>
100007740: f6 84 24 40 01 00 00 01     	testb	$1, 320(%rsp)
100007748: 75 0f                       	jne	15 <_main+0x1069>
10000774a: eb 43                       	jmp	67 <_main+0x109f>
10000774c: 48 89 c3                    	movq	%rax, %rbx
10000774f: f6 84 24 40 01 00 00 01     	testb	$1, 320(%rsp)
100007757: 74 36                       	je	54 <_main+0x109f>
100007759: 48 8b bc 24 50 01 00 00     	movq	336(%rsp), %rdi
100007761: eb 15                       	jmp	21 <_main+0x1088>
100007763: 48 89 c3                    	movq	%rax, %rbx
100007766: f6 84 24 a0 03 00 00 01     	testb	$1, 928(%rsp)
10000776e: 74 1f                       	je	31 <_main+0x109f>
100007770: 48 8b bc 24 b0 03 00 00     	movq	944(%rsp), %rdi
100007778: e8 01 09 00 00              	callq	2305 <dyld_stub_binder+0x10000807e>
10000777d: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100007785: 48 85 c0                    	testq	%rax, %rax
100007788: 75 12                       	jne	18 <_main+0x10ac>
10000778a: eb 23                       	jmp	35 <_main+0x10bf>
10000778c: 48 89 c3                    	movq	%rax, %rbx
10000778f: 48 8b 84 24 b8 00 00 00     	movq	184(%rsp), %rax
100007797: 48 85 c0                    	testq	%rax, %rax
10000779a: 74 13                       	je	19 <_main+0x10bf>
10000779c: f0                          	lock
10000779d: ff 48 14                    	decl	20(%rax)
1000077a0: 75 0d                       	jne	13 <_main+0x10bf>
1000077a2: 48 8d bc 24 80 00 00 00     	leaq	128(%rsp), %rdi
1000077aa: e8 45 08 00 00              	callq	2117 <dyld_stub_binder+0x100007ff4>
1000077af: 48 c7 84 24 b8 00 00 00 00 00 00 00 	movq	$0, 184(%rsp)
1000077bb: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
1000077bf: 48 8d 84 24 84 00 00 00     	leaq	132(%rsp), %rax
1000077c7: c5 fd 11 40 0c              	vmovupd	%ymm0, 12(%rax)
1000077cc: 83 bc 24 84 00 00 00 00     	cmpl	$0, 132(%rsp)
1000077d4: 7e 21                       	jle	33 <_main+0x1107>
1000077d6: 48 8b 84 24 c0 00 00 00     	movq	192(%rsp), %rax
1000077de: 31 c9                       	xorl	%ecx, %ecx
1000077e0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000077e7: 48 ff c1                    	incq	%rcx
1000077ea: 48 63 94 24 84 00 00 00     	movslq	132(%rsp), %rdx
1000077f2: 48 39 d1                    	cmpq	%rdx, %rcx
1000077f5: 7c e9                       	jl	-23 <_main+0x10f0>
1000077f7: 48 8b bc 24 c8 00 00 00     	movq	200(%rsp), %rdi
1000077ff: 48 8d 84 24 d0 00 00 00     	leaq	208(%rsp), %rax
100007807: 48 39 c7                    	cmpq	%rax, %rdi
10000780a: 0f 84 d3 00 00 00           	je	211 <_main+0x11f3>
100007810: c5 f8 77                    	vzeroupper
100007813: e8 12 08 00 00              	callq	2066 <dyld_stub_binder+0x10000802a>
100007818: e9 c6 00 00 00              	jmp	198 <_main+0x11f3>
10000781d: 48 89 c7                    	movq	%rax, %rdi
100007820: e8 2b 02 00 00              	callq	555 <___clang_call_terminate>
100007825: e9 b6 00 00 00              	jmp	182 <_main+0x11f0>
10000782a: 48 89 c3                    	movq	%rax, %rbx
10000782d: e9 38 01 00 00              	jmp	312 <_main+0x127a>
100007832: 48 89 c3                    	movq	%rax, %rbx
100007835: 48 8b 84 24 18 01 00 00     	movq	280(%rsp), %rax
10000783d: 48 85 c0                    	testq	%rax, %rax
100007840: 74 13                       	je	19 <_main+0x1165>
100007842: f0                          	lock
100007843: ff 48 14                    	decl	20(%rax)
100007846: 75 0d                       	jne	13 <_main+0x1165>
100007848: 48 8d bc 24 e0 00 00 00     	leaq	224(%rsp), %rdi
100007850: e8 9f 07 00 00              	callq	1951 <dyld_stub_binder+0x100007ff4>
100007855: 48 c7 84 24 18 01 00 00 00 00 00 00 	movq	$0, 280(%rsp)
100007861: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
100007865: 48 8d 84 24 f0 00 00 00     	leaq	240(%rsp), %rax
10000786d: c5 fe 7f 00                 	vmovdqu	%ymm0, (%rax)
100007871: 83 bc 24 e4 00 00 00 00     	cmpl	$0, 228(%rsp)
100007879: 7e 21                       	jle	33 <_main+0x11ac>
10000787b: 48 8b 84 24 20 01 00 00     	movq	288(%rsp), %rax
100007883: 31 c9                       	xorl	%ecx, %ecx
100007885: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
10000788c: 48 ff c1                    	incq	%rcx
10000788f: 48 63 94 24 e4 00 00 00     	movslq	228(%rsp), %rdx
100007897: 48 39 d1                    	cmpq	%rdx, %rcx
10000789a: 7c e9                       	jl	-23 <_main+0x1195>
10000789c: 48 8b bc 24 28 01 00 00     	movq	296(%rsp), %rdi
1000078a4: 48 8d 84 24 30 01 00 00     	leaq	304(%rsp), %rax
1000078ac: 48 39 c7                    	cmpq	%rax, %rdi
1000078af: 0f 84 f3 00 00 00           	je	243 <_main+0x12b8>
1000078b5: c5 f8 77                    	vzeroupper
1000078b8: e8 6d 07 00 00              	callq	1901 <dyld_stub_binder+0x10000802a>
1000078bd: e9 e6 00 00 00              	jmp	230 <_main+0x12b8>
1000078c2: 48 89 c7                    	movq	%rax, %rdi
1000078c5: e8 86 01 00 00              	callq	390 <___clang_call_terminate>
1000078ca: 48 89 c3                    	movq	%rax, %rbx
1000078cd: 48 8b 44 24 58              	movq	88(%rsp), %rax
1000078d2: 48 85 c0                    	testq	%rax, %rax
1000078d5: 0f 85 d7 00 00 00           	jne	215 <_main+0x12c2>
1000078db: e9 e5 00 00 00              	jmp	229 <_main+0x12d5>
1000078e0: 48 89 c3                    	movq	%rax, %rbx
1000078e3: 48 8b 84 24 18 01 00 00     	movq	280(%rsp), %rax
1000078eb: 48 85 c0                    	testq	%rax, %rax
1000078ee: 74 16                       	je	22 <_main+0x1216>
1000078f0: f0                          	lock
1000078f1: ff 48 14                    	decl	20(%rax)
1000078f4: 75 10                       	jne	16 <_main+0x1216>
1000078f6: 48 8d bc 24 e0 00 00 00     	leaq	224(%rsp), %rdi
1000078fe: c5 f8 77                    	vzeroupper
100007901: e8 ee 06 00 00              	callq	1774 <dyld_stub_binder+0x100007ff4>
100007906: 48 c7 84 24 18 01 00 00 00 00 00 00 	movq	$0, 280(%rsp)
100007912: c5 f9 57 c0                 	vxorpd	%xmm0, %xmm0, %xmm0
100007916: 48 8d 84 24 f0 00 00 00     	leaq	240(%rsp), %rax
10000791e: c5 fd 11 00                 	vmovupd	%ymm0, (%rax)
100007922: 83 bc 24 e4 00 00 00 00     	cmpl	$0, 228(%rsp)
10000792a: 7e 21                       	jle	33 <_main+0x125d>
10000792c: 48 8b 84 24 20 01 00 00     	movq	288(%rsp), %rax
100007934: 31 c9                       	xorl	%ecx, %ecx
100007936: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
10000793d: 48 ff c1                    	incq	%rcx
100007940: 48 63 94 24 e4 00 00 00     	movslq	228(%rsp), %rdx
100007948: 48 39 d1                    	cmpq	%rdx, %rcx
10000794b: 7c e9                       	jl	-23 <_main+0x1246>
10000794d: 48 8b bc 24 28 01 00 00     	movq	296(%rsp), %rdi
100007955: 48 8d 84 24 30 01 00 00     	leaq	304(%rsp), %rax
10000795d: 48 39 c7                    	cmpq	%rax, %rdi
100007960: 74 08                       	je	8 <_main+0x127a>
100007962: c5 f8 77                    	vzeroupper
100007965: e8 c0 06 00 00              	callq	1728 <dyld_stub_binder+0x10000802a>
10000796a: 48 8d bc 24 40 02 00 00     	leaq	576(%rsp), %rdi
100007972: c5 f8 77                    	vzeroupper
100007975: e8 e6 00 00 00              	callq	230 <__ZN2cv7MatExprD2Ev>
10000797a: 48 8b 44 24 58              	movq	88(%rsp), %rax
10000797f: 48 85 c0                    	testq	%rax, %rax
100007982: 75 2e                       	jne	46 <_main+0x12c2>
100007984: eb 3f                       	jmp	63 <_main+0x12d5>
100007986: 48 89 c7                    	movq	%rax, %rdi
100007989: e8 c2 00 00 00              	callq	194 <___clang_call_terminate>
10000798e: 48 89 c3                    	movq	%rax, %rbx
100007991: 48 8b 44 24 58              	movq	88(%rsp), %rax
100007996: 48 85 c0                    	testq	%rax, %rax
100007999: 75 17                       	jne	23 <_main+0x12c2>
10000799b: eb 28                       	jmp	40 <_main+0x12d5>
10000799d: 48 89 c7                    	movq	%rax, %rdi
1000079a0: e8 ab 00 00 00              	callq	171 <___clang_call_terminate>
1000079a5: 48 89 c3                    	movq	%rax, %rbx
1000079a8: 48 8b 44 24 58              	movq	88(%rsp), %rax
1000079ad: 48 85 c0                    	testq	%rax, %rax
1000079b0: 74 13                       	je	19 <_main+0x12d5>
1000079b2: f0                          	lock
1000079b3: ff 48 14                    	decl	20(%rax)
1000079b6: 75 0d                       	jne	13 <_main+0x12d5>
1000079b8: 48 8d 7c 24 20              	leaq	32(%rsp), %rdi
1000079bd: c5 f8 77                    	vzeroupper
1000079c0: e8 2f 06 00 00              	callq	1583 <dyld_stub_binder+0x100007ff4>
1000079c5: 48 c7 44 24 58 00 00 00 00  	movq	$0, 88(%rsp)
1000079ce: c5 f9 ef c0                 	vpxor	%xmm0, %xmm0, %xmm0
1000079d2: 48 8d 44 24 24              	leaq	36(%rsp), %rax
1000079d7: c5 fe 7f 40 0c              	vmovdqu	%ymm0, 12(%rax)
1000079dc: 83 7c 24 24 00              	cmpl	$0, 36(%rsp)
1000079e1: 7e 21                       	jle	33 <_main+0x1314>
1000079e3: 48 8b 44 24 60              	movq	96(%rsp), %rax
1000079e8: 31 c9                       	xorl	%ecx, %ecx
1000079ea: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000079f0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
1000079f7: 48 ff c1                    	incq	%rcx
1000079fa: 48 63 54 24 24              	movslq	36(%rsp), %rdx
1000079ff: 48 39 d1                    	cmpq	%rdx, %rcx
100007a02: 7c ec                       	jl	-20 <_main+0x1300>
100007a04: 48 8b 7c 24 68              	movq	104(%rsp), %rdi
100007a09: 48 8d 44 24 70              	leaq	112(%rsp), %rax
100007a0e: 48 39 c7                    	cmpq	%rax, %rdi
100007a11: 74 15                       	je	21 <_main+0x1338>
100007a13: c5 f8 77                    	vzeroupper
100007a16: e8 0f 06 00 00              	callq	1551 <dyld_stub_binder+0x10000802a>
100007a1b: eb 0b                       	jmp	11 <_main+0x1338>
100007a1d: 48 89 c7                    	movq	%rax, %rdi
100007a20: e8 2b 00 00 00              	callq	43 <___clang_call_terminate>
100007a25: 48 89 c3                    	movq	%rax, %rbx
100007a28: 48 8d bc 24 98 01 00 00     	leaq	408(%rsp), %rdi
100007a30: c5 f8 77                    	vzeroupper
100007a33: e8 b0 05 00 00              	callq	1456 <dyld_stub_binder+0x100007fe8>
100007a38: 48 8d bc 24 c8 01 00 00     	leaq	456(%rsp), %rdi
100007a40: e8 eb d4 ff ff              	callq	-11029 <__ZN14ModelInterfaceD2Ev>
100007a45: 48 89 df                    	movq	%rbx, %rdi
100007a48: e8 8f 05 00 00              	callq	1423 <dyld_stub_binder+0x100007fdc>
100007a4d: 0f 0b                       	ud2
100007a4f: 90                          	nop

0000000100007a50 ___clang_call_terminate:
100007a50: 50                          	pushq	%rax
100007a51: e8 3a 06 00 00              	callq	1594 <dyld_stub_binder+0x100008090>
100007a56: e8 1d 06 00 00              	callq	1565 <dyld_stub_binder+0x100008078>
100007a5b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007a60 __ZN2cv7MatExprD2Ev:
100007a60: 55                          	pushq	%rbp
100007a61: 48 89 e5                    	movq	%rsp, %rbp
100007a64: 53                          	pushq	%rbx
100007a65: 50                          	pushq	%rax
100007a66: 48 89 fb                    	movq	%rdi, %rbx
100007a69: 48 8b 87 08 01 00 00        	movq	264(%rdi), %rax
100007a70: 48 85 c0                    	testq	%rax, %rax
100007a73: 74 12                       	je	18 <__ZN2cv7MatExprD2Ev+0x27>
100007a75: f0                          	lock
100007a76: ff 48 14                    	decl	20(%rax)
100007a79: 75 0c                       	jne	12 <__ZN2cv7MatExprD2Ev+0x27>
100007a7b: 48 8d bb d0 00 00 00        	leaq	208(%rbx), %rdi
100007a82: e8 6d 05 00 00              	callq	1389 <dyld_stub_binder+0x100007ff4>
100007a87: 48 c7 83 08 01 00 00 00 00 00 00    	movq	$0, 264(%rbx)
100007a92: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007a96: c5 fc 11 83 e0 00 00 00     	vmovups	%ymm0, 224(%rbx)
100007a9e: 83 bb d4 00 00 00 00        	cmpl	$0, 212(%rbx)
100007aa5: 7e 1f                       	jle	31 <__ZN2cv7MatExprD2Ev+0x66>
100007aa7: 48 8b 83 10 01 00 00        	movq	272(%rbx), %rax
100007aae: 31 c9                       	xorl	%ecx, %ecx
100007ab0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007ab7: 48 ff c1                    	incq	%rcx
100007aba: 48 63 93 d4 00 00 00        	movslq	212(%rbx), %rdx
100007ac1: 48 39 d1                    	cmpq	%rdx, %rcx
100007ac4: 7c ea                       	jl	-22 <__ZN2cv7MatExprD2Ev+0x50>
100007ac6: 48 8b bb 18 01 00 00        	movq	280(%rbx), %rdi
100007acd: 48 8d 83 20 01 00 00        	leaq	288(%rbx), %rax
100007ad4: 48 39 c7                    	cmpq	%rax, %rdi
100007ad7: 74 08                       	je	8 <__ZN2cv7MatExprD2Ev+0x81>
100007ad9: c5 f8 77                    	vzeroupper
100007adc: e8 49 05 00 00              	callq	1353 <dyld_stub_binder+0x10000802a>
100007ae1: 48 8b 83 a8 00 00 00        	movq	168(%rbx), %rax
100007ae8: 48 85 c0                    	testq	%rax, %rax
100007aeb: 74 12                       	je	18 <__ZN2cv7MatExprD2Ev+0x9f>
100007aed: f0                          	lock
100007aee: ff 48 14                    	decl	20(%rax)
100007af1: 75 0c                       	jne	12 <__ZN2cv7MatExprD2Ev+0x9f>
100007af3: 48 8d 7b 70                 	leaq	112(%rbx), %rdi
100007af7: c5 f8 77                    	vzeroupper
100007afa: e8 f5 04 00 00              	callq	1269 <dyld_stub_binder+0x100007ff4>
100007aff: 48 c7 83 a8 00 00 00 00 00 00 00    	movq	$0, 168(%rbx)
100007b0a: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007b0e: c5 fc 11 83 80 00 00 00     	vmovups	%ymm0, 128(%rbx)
100007b16: 83 7b 74 00                 	cmpl	$0, 116(%rbx)
100007b1a: 7e 27                       	jle	39 <__ZN2cv7MatExprD2Ev+0xe3>
100007b1c: 48 8b 83 b0 00 00 00        	movq	176(%rbx), %rax
100007b23: 31 c9                       	xorl	%ecx, %ecx
100007b25: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007b2f: 90                          	nop
100007b30: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007b37: 48 ff c1                    	incq	%rcx
100007b3a: 48 63 53 74                 	movslq	116(%rbx), %rdx
100007b3e: 48 39 d1                    	cmpq	%rdx, %rcx
100007b41: 7c ed                       	jl	-19 <__ZN2cv7MatExprD2Ev+0xd0>
100007b43: 48 8b bb b8 00 00 00        	movq	184(%rbx), %rdi
100007b4a: 48 8d 83 c0 00 00 00        	leaq	192(%rbx), %rax
100007b51: 48 39 c7                    	cmpq	%rax, %rdi
100007b54: 74 08                       	je	8 <__ZN2cv7MatExprD2Ev+0xfe>
100007b56: c5 f8 77                    	vzeroupper
100007b59: e8 cc 04 00 00              	callq	1228 <dyld_stub_binder+0x10000802a>
100007b5e: 48 8b 43 48                 	movq	72(%rbx), %rax
100007b62: 48 85 c0                    	testq	%rax, %rax
100007b65: 74 12                       	je	18 <__ZN2cv7MatExprD2Ev+0x119>
100007b67: f0                          	lock
100007b68: ff 48 14                    	decl	20(%rax)
100007b6b: 75 0c                       	jne	12 <__ZN2cv7MatExprD2Ev+0x119>
100007b6d: 48 8d 7b 10                 	leaq	16(%rbx), %rdi
100007b71: c5 f8 77                    	vzeroupper
100007b74: e8 7b 04 00 00              	callq	1147 <dyld_stub_binder+0x100007ff4>
100007b79: 48 c7 43 48 00 00 00 00     	movq	$0, 72(%rbx)
100007b81: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007b85: c5 fc 11 43 20              	vmovups	%ymm0, 32(%rbx)
100007b8a: 83 7b 14 00                 	cmpl	$0, 20(%rbx)
100007b8e: 7e 23                       	jle	35 <__ZN2cv7MatExprD2Ev+0x153>
100007b90: 48 8b 43 50                 	movq	80(%rbx), %rax
100007b94: 31 c9                       	xorl	%ecx, %ecx
100007b96: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007ba0: c7 04 88 00 00 00 00        	movl	$0, (%rax,%rcx,4)
100007ba7: 48 ff c1                    	incq	%rcx
100007baa: 48 63 53 14                 	movslq	20(%rbx), %rdx
100007bae: 48 39 d1                    	cmpq	%rdx, %rcx
100007bb1: 7c ed                       	jl	-19 <__ZN2cv7MatExprD2Ev+0x140>
100007bb3: 48 8b 7b 58                 	movq	88(%rbx), %rdi
100007bb7: 48 83 c3 60                 	addq	$96, %rbx
100007bbb: 48 39 df                    	cmpq	%rbx, %rdi
100007bbe: 74 08                       	je	8 <__ZN2cv7MatExprD2Ev+0x168>
100007bc0: c5 f8 77                    	vzeroupper
100007bc3: e8 62 04 00 00              	callq	1122 <dyld_stub_binder+0x10000802a>
100007bc8: 48 83 c4 08                 	addq	$8, %rsp
100007bcc: 5b                          	popq	%rbx
100007bcd: 5d                          	popq	%rbp
100007bce: c5 f8 77                    	vzeroupper
100007bd1: c3                          	retq
100007bd2: 48 89 c7                    	movq	%rax, %rdi
100007bd5: e8 76 fe ff ff              	callq	-394 <___clang_call_terminate>
100007bda: 48 89 c7                    	movq	%rax, %rdi
100007bdd: e8 6e fe ff ff              	callq	-402 <___clang_call_terminate>
100007be2: 48 89 c7                    	movq	%rax, %rdi
100007be5: e8 66 fe ff ff              	callq	-410 <___clang_call_terminate>
100007bea: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007bf0 __ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:
100007bf0: 55                          	pushq	%rbp
100007bf1: 48 89 e5                    	movq	%rsp, %rbp
100007bf4: 41 57                       	pushq	%r15
100007bf6: 41 56                       	pushq	%r14
100007bf8: 41 55                       	pushq	%r13
100007bfa: 41 54                       	pushq	%r12
100007bfc: 53                          	pushq	%rbx
100007bfd: 48 83 ec 28                 	subq	$40, %rsp
100007c01: 49 89 d6                    	movq	%rdx, %r14
100007c04: 49 89 f7                    	movq	%rsi, %r15
100007c07: 48 89 fb                    	movq	%rdi, %rbx
100007c0a: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007c0e: 48 89 de                    	movq	%rbx, %rsi
100007c11: e8 38 04 00 00              	callq	1080 <dyld_stub_binder+0x10000804e>
100007c16: 80 7d b0 00                 	cmpb	$0, -80(%rbp)
100007c1a: 0f 84 ae 00 00 00           	je	174 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007c20: 48 8b 03                    	movq	(%rbx), %rax
100007c23: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007c27: 4c 8d 24 03                 	leaq	(%rbx,%rax), %r12
100007c2b: 48 8b 7c 03 28              	movq	40(%rbx,%rax), %rdi
100007c30: 44 8b 6c 03 08              	movl	8(%rbx,%rax), %r13d
100007c35: 8b 84 03 90 00 00 00        	movl	144(%rbx,%rax), %eax
100007c3c: 83 f8 ff                    	cmpl	$-1, %eax
100007c3f: 75 4a                       	jne	74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9b>
100007c41: 48 89 7d c0                 	movq	%rdi, -64(%rbp)
100007c45: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007c49: 4c 89 e6                    	movq	%r12, %rsi
100007c4c: e8 f1 03 00 00              	callq	1009 <dyld_stub_binder+0x100008042>
100007c51: 48 8b 35 f8 23 00 00        	movq	9208(%rip), %rsi
100007c58: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007c5c: e8 db 03 00 00              	callq	987 <dyld_stub_binder+0x10000803c>
100007c61: 48 8b 08                    	movq	(%rax), %rcx
100007c64: 48 89 c7                    	movq	%rax, %rdi
100007c67: be 20 00 00 00              	movl	$32, %esi
100007c6c: ff 51 38                    	callq	*56(%rcx)
100007c6f: 88 45 d7                    	movb	%al, -41(%rbp)
100007c72: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007c76: e8 e5 03 00 00              	callq	997 <dyld_stub_binder+0x100008060>
100007c7b: 0f be 45 d7                 	movsbl	-41(%rbp), %eax
100007c7f: 41 89 84 24 90 00 00 00     	movl	%eax, 144(%r12)
100007c87: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100007c8b: 4d 01 fe                    	addq	%r15, %r14
100007c8e: 41 81 e5 b0 00 00 00        	andl	$176, %r13d
100007c95: 41 83 fd 20                 	cmpl	$32, %r13d
100007c99: 4c 89 fa                    	movq	%r15, %rdx
100007c9c: 49 0f 44 d6                 	cmoveq	%r14, %rdx
100007ca0: 44 0f be c8                 	movsbl	%al, %r9d
100007ca4: 4c 89 fe                    	movq	%r15, %rsi
100007ca7: 4c 89 f1                    	movq	%r14, %rcx
100007caa: 4d 89 e0                    	movq	%r12, %r8
100007cad: e8 9e 00 00 00              	callq	158 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100007cb2: 48 85 c0                    	testq	%rax, %rax
100007cb5: 75 17                       	jne	23 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007cb7: 48 8b 03                    	movq	(%rbx), %rax
100007cba: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007cbe: 48 8d 3c 03                 	leaq	(%rbx,%rax), %rdi
100007cc2: 8b 74 03 20                 	movl	32(%rbx,%rax), %esi
100007cc6: 83 ce 05                    	orl	$5, %esi
100007cc9: e8 9e 03 00 00              	callq	926 <dyld_stub_binder+0x10000806c>
100007cce: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007cd2: e8 7d 03 00 00              	callq	893 <dyld_stub_binder+0x100008054>
100007cd7: 48 89 d8                    	movq	%rbx, %rax
100007cda: 48 83 c4 28                 	addq	$40, %rsp
100007cde: 5b                          	popq	%rbx
100007cdf: 41 5c                       	popq	%r12
100007ce1: 41 5d                       	popq	%r13
100007ce3: 41 5e                       	popq	%r14
100007ce5: 41 5f                       	popq	%r15
100007ce7: 5d                          	popq	%rbp
100007ce8: c3                          	retq
100007ce9: eb 0e                       	jmp	14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x109>
100007ceb: 49 89 c6                    	movq	%rax, %r14
100007cee: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007cf2: e8 69 03 00 00              	callq	873 <dyld_stub_binder+0x100008060>
100007cf7: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x10c>
100007cf9: 49 89 c6                    	movq	%rax, %r14
100007cfc: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007d00: e8 4f 03 00 00              	callq	847 <dyld_stub_binder+0x100008054>
100007d05: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11a>
100007d07: 49 89 c6                    	movq	%rax, %r14
100007d0a: 4c 89 f7                    	movq	%r14, %rdi
100007d0d: e8 7e 03 00 00              	callq	894 <dyld_stub_binder+0x100008090>
100007d12: 48 8b 03                    	movq	(%rbx), %rax
100007d15: 48 8b 78 e8                 	movq	-24(%rax), %rdi
100007d19: 48 01 df                    	addq	%rbx, %rdi
100007d1c: e8 45 03 00 00              	callq	837 <dyld_stub_binder+0x100008066>
100007d21: e8 70 03 00 00              	callq	880 <dyld_stub_binder+0x100008096>
100007d26: eb af                       	jmp	-81 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe7>
100007d28: 48 89 c3                    	movq	%rax, %rbx
100007d2b: e8 66 03 00 00              	callq	870 <dyld_stub_binder+0x100008096>
100007d30: 48 89 df                    	movq	%rbx, %rdi
100007d33: e8 a4 02 00 00              	callq	676 <dyld_stub_binder+0x100007fdc>
100007d38: 0f 0b                       	ud2
100007d3a: 48 89 c7                    	movq	%rax, %rdi
100007d3d: e8 0e fd ff ff              	callq	-754 <___clang_call_terminate>
100007d42: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007d4c: 0f 1f 40 00                 	nopl	(%rax)

0000000100007d50 __ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:
100007d50: 55                          	pushq	%rbp
100007d51: 48 89 e5                    	movq	%rsp, %rbp
100007d54: 41 57                       	pushq	%r15
100007d56: 41 56                       	pushq	%r14
100007d58: 41 55                       	pushq	%r13
100007d5a: 41 54                       	pushq	%r12
100007d5c: 53                          	pushq	%rbx
100007d5d: 48 83 ec 38                 	subq	$56, %rsp
100007d61: 48 85 ff                    	testq	%rdi, %rdi
100007d64: 0f 84 17 01 00 00           	je	279 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007d6a: 4d 89 c4                    	movq	%r8, %r12
100007d6d: 49 89 cf                    	movq	%rcx, %r15
100007d70: 49 89 fe                    	movq	%rdi, %r14
100007d73: 44 89 4d bc                 	movl	%r9d, -68(%rbp)
100007d77: 48 89 c8                    	movq	%rcx, %rax
100007d7a: 48 29 f0                    	subq	%rsi, %rax
100007d7d: 49 8b 48 18                 	movq	24(%r8), %rcx
100007d81: 45 31 ed                    	xorl	%r13d, %r13d
100007d84: 48 29 c1                    	subq	%rax, %rcx
100007d87: 4c 0f 4f e9                 	cmovgq	%rcx, %r13
100007d8b: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100007d8f: 48 89 d3                    	movq	%rdx, %rbx
100007d92: 48 29 f3                    	subq	%rsi, %rbx
100007d95: 48 85 db                    	testq	%rbx, %rbx
100007d98: 7e 15                       	jle	21 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x5f>
100007d9a: 49 8b 06                    	movq	(%r14), %rax
100007d9d: 4c 89 f7                    	movq	%r14, %rdi
100007da0: 48 89 da                    	movq	%rbx, %rdx
100007da3: ff 50 60                    	callq	*96(%rax)
100007da6: 48 39 d8                    	cmpq	%rbx, %rax
100007da9: 0f 85 d2 00 00 00           	jne	210 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007daf: 4d 85 ed                    	testq	%r13, %r13
100007db2: 0f 8e a1 00 00 00           	jle	161 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x109>
100007db8: 4c 89 65 b0                 	movq	%r12, -80(%rbp)
100007dbc: c5 f8 57 c0                 	vxorps	%xmm0, %xmm0, %xmm0
100007dc0: c5 f8 29 45 c0              	vmovaps	%xmm0, -64(%rbp)
100007dc5: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100007dcd: 49 83 fd 17                 	cmpq	$23, %r13
100007dd1: 73 12                       	jae	18 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x95>
100007dd3: 43 8d 44 2d 00              	leal	(%r13,%r13), %eax
100007dd8: 88 45 c0                    	movb	%al, -64(%rbp)
100007ddb: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007ddf: 4c 8d 65 c1                 	leaq	-63(%rbp), %r12
100007de3: eb 27                       	jmp	39 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xbc>
100007de5: 49 8d 5d 10                 	leaq	16(%r13), %rbx
100007de9: 48 83 e3 f0                 	andq	$-16, %rbx
100007ded: 48 89 df                    	movq	%rbx, %rdi
100007df0: e8 95 02 00 00              	callq	661 <dyld_stub_binder+0x10000808a>
100007df5: 49 89 c4                    	movq	%rax, %r12
100007df8: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100007dfc: 48 83 cb 01                 	orq	$1, %rbx
100007e00: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
100007e04: 4c 89 6d c8                 	movq	%r13, -56(%rbp)
100007e08: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007e0c: 0f b6 75 bc                 	movzbl	-68(%rbp), %esi
100007e10: 4c 89 e7                    	movq	%r12, %rdi
100007e13: 4c 89 ea                    	movq	%r13, %rdx
100007e16: e8 87 02 00 00              	callq	647 <dyld_stub_binder+0x1000080a2>
100007e1b: 43 c6 04 2c 00              	movb	$0, (%r12,%r13)
100007e20: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007e24: 74 06                       	je	6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100007e26: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
100007e2a: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdf>
100007e2c: 48 ff c3                    	incq	%rbx
100007e2f: 4c 8b 65 b0                 	movq	-80(%rbp), %r12
100007e33: 49 8b 06                    	movq	(%r14), %rax
100007e36: 4c 89 f7                    	movq	%r14, %rdi
100007e39: 48 89 de                    	movq	%rbx, %rsi
100007e3c: 4c 89 ea                    	movq	%r13, %rdx
100007e3f: ff 50 60                    	callq	*96(%rax)
100007e42: 48 89 c3                    	movq	%rax, %rbx
100007e45: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007e49: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x104>
100007e4b: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007e4f: e8 2a 02 00 00              	callq	554 <dyld_stub_binder+0x10000807e>
100007e54: 4c 39 eb                    	cmpq	%r13, %rbx
100007e57: 75 28                       	jne	40 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007e59: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
100007e5d: 49 29 f7                    	subq	%rsi, %r15
100007e60: 4d 85 ff                    	testq	%r15, %r15
100007e63: 7e 11                       	jle	17 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x126>
100007e65: 49 8b 06                    	movq	(%r14), %rax
100007e68: 4c 89 f7                    	movq	%r14, %rdi
100007e6b: 4c 89 fa                    	movq	%r15, %rdx
100007e6e: ff 50 60                    	callq	*96(%rax)
100007e71: 4c 39 f8                    	cmpq	%r15, %rax
100007e74: 75 0b                       	jne	11 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x131>
100007e76: 49 c7 44 24 18 00 00 00 00  	movq	$0, 24(%r12)
100007e7f: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x134>
100007e81: 45 31 f6                    	xorl	%r14d, %r14d
100007e84: 4c 89 f0                    	movq	%r14, %rax
100007e87: 48 83 c4 38                 	addq	$56, %rsp
100007e8b: 5b                          	popq	%rbx
100007e8c: 41 5c                       	popq	%r12
100007e8e: 41 5d                       	popq	%r13
100007e90: 41 5e                       	popq	%r14
100007e92: 41 5f                       	popq	%r15
100007e94: 5d                          	popq	%rbp
100007e95: c3                          	retq
100007e96: 48 89 c3                    	movq	%rax, %rbx
100007e99: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007e9d: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x158>
100007e9f: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007ea3: e8 d6 01 00 00              	callq	470 <dyld_stub_binder+0x10000807e>
100007ea8: 48 89 df                    	movq	%rbx, %rdi
100007eab: e8 2c 01 00 00              	callq	300 <dyld_stub_binder+0x100007fdc>
100007eb0: 0f 0b                       	ud2
100007eb2: 90                          	nop
100007eb3: 90                          	nop
100007eb4: 90                          	nop
100007eb5: 90                          	nop
100007eb6: 90                          	nop
100007eb7: 90                          	nop
100007eb8: 90                          	nop
100007eb9: 90                          	nop
100007eba: 90                          	nop
100007ebb: 90                          	nop
100007ebc: 90                          	nop
100007ebd: 90                          	nop
100007ebe: 90                          	nop
100007ebf: 90                          	nop

0000000100007ec0 ___cxx_global_var_init:
100007ec0: 55                          	pushq	%rbp
100007ec1: 48 89 e5                    	movq	%rsp, %rbp
100007ec4: 48 8b 05 35 21 00 00        	movq	8501(%rip), %rax
100007ecb: 80 38 00                    	cmpb	$0, (%rax)
100007ece: 74 02                       	je	2 <___cxx_global_var_init+0x12>
100007ed0: 5d                          	popq	%rbp
100007ed1: c3                          	retq
100007ed2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007ed9: 5d                          	popq	%rbp
100007eda: c3                          	retq
100007edb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007ee0 ___cxx_global_var_init.4:
100007ee0: 55                          	pushq	%rbp
100007ee1: 48 89 e5                    	movq	%rsp, %rbp
100007ee4: 48 8b 05 35 21 00 00        	movq	8501(%rip), %rax
100007eeb: 80 38 00                    	cmpb	$0, (%rax)
100007eee: 74 02                       	je	2 <___cxx_global_var_init.4+0x12>
100007ef0: 5d                          	popq	%rbp
100007ef1: c3                          	retq
100007ef2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007ef9: 5d                          	popq	%rbp
100007efa: c3                          	retq
100007efb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f00 ___cxx_global_var_init.5:
100007f00: 55                          	pushq	%rbp
100007f01: 48 89 e5                    	movq	%rsp, %rbp
100007f04: 48 8b 05 2d 21 00 00        	movq	8493(%rip), %rax
100007f0b: 80 38 00                    	cmpb	$0, (%rax)
100007f0e: 74 02                       	je	2 <___cxx_global_var_init.5+0x12>
100007f10: 5d                          	popq	%rbp
100007f11: c3                          	retq
100007f12: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f19: 5d                          	popq	%rbp
100007f1a: c3                          	retq
100007f1b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f20 ___cxx_global_var_init.6:
100007f20: 55                          	pushq	%rbp
100007f21: 48 89 e5                    	movq	%rsp, %rbp
100007f24: 48 8b 05 05 21 00 00        	movq	8453(%rip), %rax
100007f2b: 80 38 00                    	cmpb	$0, (%rax)
100007f2e: 74 02                       	je	2 <___cxx_global_var_init.6+0x12>
100007f30: 5d                          	popq	%rbp
100007f31: c3                          	retq
100007f32: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f39: 5d                          	popq	%rbp
100007f3a: c3                          	retq
100007f3b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f40 ___cxx_global_var_init.7:
100007f40: 55                          	pushq	%rbp
100007f41: 48 89 e5                    	movq	%rsp, %rbp
100007f44: 48 8b 05 dd 20 00 00        	movq	8413(%rip), %rax
100007f4b: 80 38 00                    	cmpb	$0, (%rax)
100007f4e: 74 02                       	je	2 <___cxx_global_var_init.7+0x12>
100007f50: 5d                          	popq	%rbp
100007f51: c3                          	retq
100007f52: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f59: 5d                          	popq	%rbp
100007f5a: c3                          	retq
100007f5b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f60 ___cxx_global_var_init.8:
100007f60: 55                          	pushq	%rbp
100007f61: 48 89 e5                    	movq	%rsp, %rbp
100007f64: 48 8b 05 9d 20 00 00        	movq	8349(%rip), %rax
100007f6b: 80 38 00                    	cmpb	$0, (%rax)
100007f6e: 74 02                       	je	2 <___cxx_global_var_init.8+0x12>
100007f70: 5d                          	popq	%rbp
100007f71: c3                          	retq
100007f72: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f79: 5d                          	popq	%rbp
100007f7a: c3                          	retq
100007f7b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007f80 ___cxx_global_var_init.9:
100007f80: 55                          	pushq	%rbp
100007f81: 48 89 e5                    	movq	%rsp, %rbp
100007f84: 48 8b 05 85 20 00 00        	movq	8325(%rip), %rax
100007f8b: 80 38 00                    	cmpb	$0, (%rax)
100007f8e: 74 02                       	je	2 <___cxx_global_var_init.9+0x12>
100007f90: 5d                          	popq	%rbp
100007f91: c3                          	retq
100007f92: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007f99: 5d                          	popq	%rbp
100007f9a: c3                          	retq
100007f9b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007fa0 ___cxx_global_var_init.10:
100007fa0: 55                          	pushq	%rbp
100007fa1: 48 89 e5                    	movq	%rsp, %rbp
100007fa4: 48 8b 05 95 20 00 00        	movq	8341(%rip), %rax
100007fab: 80 38 00                    	cmpb	$0, (%rax)
100007fae: 74 02                       	je	2 <___cxx_global_var_init.10+0x12>
100007fb0: 5d                          	popq	%rbp
100007fb1: c3                          	retq
100007fb2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007fb9: 5d                          	popq	%rbp
100007fba: c3                          	retq
100007fbb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007fc0 ___cxx_global_var_init.11:
100007fc0: 55                          	pushq	%rbp
100007fc1: 48 89 e5                    	movq	%rsp, %rbp
100007fc4: 48 8b 05 4d 20 00 00        	movq	8269(%rip), %rax
100007fcb: 80 38 00                    	cmpb	$0, (%rax)
100007fce: 74 02                       	je	2 <___cxx_global_var_init.11+0x12>
100007fd0: 5d                          	popq	%rbp
100007fd1: c3                          	retq
100007fd2: 48 c7 00 01 00 00 00        	movq	$1, (%rax)
100007fd9: 5d                          	popq	%rbp
100007fda: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100007fdc __stubs:
100007fdc: ff 25 1e 30 00 00           	jmpq	*12318(%rip)
100007fe2: ff 25 20 30 00 00           	jmpq	*12320(%rip)
100007fe8: ff 25 22 30 00 00           	jmpq	*12322(%rip)
100007fee: ff 25 24 30 00 00           	jmpq	*12324(%rip)
100007ff4: ff 25 26 30 00 00           	jmpq	*12326(%rip)
100007ffa: ff 25 28 30 00 00           	jmpq	*12328(%rip)
100008000: ff 25 2a 30 00 00           	jmpq	*12330(%rip)
100008006: ff 25 2c 30 00 00           	jmpq	*12332(%rip)
10000800c: ff 25 2e 30 00 00           	jmpq	*12334(%rip)
100008012: ff 25 30 30 00 00           	jmpq	*12336(%rip)
100008018: ff 25 32 30 00 00           	jmpq	*12338(%rip)
10000801e: ff 25 34 30 00 00           	jmpq	*12340(%rip)
100008024: ff 25 36 30 00 00           	jmpq	*12342(%rip)
10000802a: ff 25 38 30 00 00           	jmpq	*12344(%rip)
100008030: ff 25 3a 30 00 00           	jmpq	*12346(%rip)
100008036: ff 25 3c 30 00 00           	jmpq	*12348(%rip)
10000803c: ff 25 3e 30 00 00           	jmpq	*12350(%rip)
100008042: ff 25 40 30 00 00           	jmpq	*12352(%rip)
100008048: ff 25 42 30 00 00           	jmpq	*12354(%rip)
10000804e: ff 25 44 30 00 00           	jmpq	*12356(%rip)
100008054: ff 25 46 30 00 00           	jmpq	*12358(%rip)
10000805a: ff 25 48 30 00 00           	jmpq	*12360(%rip)
100008060: ff 25 4a 30 00 00           	jmpq	*12362(%rip)
100008066: ff 25 4c 30 00 00           	jmpq	*12364(%rip)
10000806c: ff 25 4e 30 00 00           	jmpq	*12366(%rip)
100008072: ff 25 50 30 00 00           	jmpq	*12368(%rip)
100008078: ff 25 52 30 00 00           	jmpq	*12370(%rip)
10000807e: ff 25 54 30 00 00           	jmpq	*12372(%rip)
100008084: ff 25 56 30 00 00           	jmpq	*12374(%rip)
10000808a: ff 25 58 30 00 00           	jmpq	*12376(%rip)
100008090: ff 25 5a 30 00 00           	jmpq	*12378(%rip)
100008096: ff 25 5c 30 00 00           	jmpq	*12380(%rip)
10000809c: ff 25 5e 30 00 00           	jmpq	*12382(%rip)
1000080a2: ff 25 60 30 00 00           	jmpq	*12384(%rip)
1000080a8: ff 25 62 30 00 00           	jmpq	*12386(%rip)

Disassembly of section __TEXT,__stub_helper:

00000001000080b0 __stub_helper:
1000080b0: 4c 8d 1d 61 30 00 00        	leaq	12385(%rip), %r11
1000080b7: 41 53                       	pushq	%r11
1000080b9: ff 25 a9 1f 00 00           	jmpq	*8105(%rip)
1000080bf: 90                          	nop
1000080c0: 68 4e 01 00 00              	pushq	$334
1000080c5: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>
1000080ca: 68 9c 02 00 00              	pushq	$668
1000080cf: e9 dc ff ff ff              	jmp	-36 <__stub_helper>
1000080d4: 68 17 00 00 00              	pushq	$23
1000080d9: e9 d2 ff ff ff              	jmp	-46 <__stub_helper>
1000080de: 68 7a 00 00 00              	pushq	$122
1000080e3: e9 c8 ff ff ff              	jmp	-56 <__stub_helper>
1000080e8: 68 9b 00 00 00              	pushq	$155
1000080ed: e9 be ff ff ff              	jmp	-66 <__stub_helper>
1000080f2: 68 2e 03 00 00              	pushq	$814
1000080f7: e9 b4 ff ff ff              	jmp	-76 <__stub_helper>
1000080fc: 68 b9 01 00 00              	pushq	$441
100008101: e9 aa ff ff ff              	jmp	-86 <__stub_helper>
100008106: 68 07 02 00 00              	pushq	$519
10000810b: e9 a0 ff ff ff              	jmp	-96 <__stub_helper>
100008110: 68 b4 02 00 00              	pushq	$692
100008115: e9 96 ff ff ff              	jmp	-106 <__stub_helper>
10000811a: 68 c4 00 00 00              	pushq	$196
10000811f: e9 8c ff ff ff              	jmp	-116 <__stub_helper>
100008124: 68 e5 00 00 00              	pushq	$229
100008129: e9 82 ff ff ff              	jmp	-126 <__stub_helper>
10000812e: 68 05 01 00 00              	pushq	$261
100008133: e9 78 ff ff ff              	jmp	-136 <__stub_helper>
100008138: 68 27 01 00 00              	pushq	$295
10000813d: e9 6e ff ff ff              	jmp	-146 <__stub_helper>
100008142: 68 f6 02 00 00              	pushq	$758
100008147: e9 64 ff ff ff              	jmp	-156 <__stub_helper>
10000814c: 68 11 03 00 00              	pushq	$785
100008151: e9 5a ff ff ff              	jmp	-166 <__stub_helper>
100008156: 68 57 03 00 00              	pushq	$855
10000815b: e9 50 ff ff ff              	jmp	-176 <__stub_helper>
100008160: 68 86 03 00 00              	pushq	$902
100008165: e9 46 ff ff ff              	jmp	-186 <__stub_helper>
10000816a: 68 ac 03 00 00              	pushq	$940
10000816f: e9 3c ff ff ff              	jmp	-196 <__stub_helper>
100008174: 68 01 04 00 00              	pushq	$1025
100008179: e9 32 ff ff ff              	jmp	-206 <__stub_helper>
10000817e: 68 48 04 00 00              	pushq	$1096
100008183: e9 28 ff ff ff              	jmp	-216 <__stub_helper>
100008188: 68 8c 04 00 00              	pushq	$1164
10000818d: e9 1e ff ff ff              	jmp	-226 <__stub_helper>
100008192: 68 ba 04 00 00              	pushq	$1210
100008197: e9 14 ff ff ff              	jmp	-236 <__stub_helper>
10000819c: 68 d8 04 00 00              	pushq	$1240
1000081a1: e9 0a ff ff ff              	jmp	-246 <__stub_helper>
1000081a6: 68 19 05 00 00              	pushq	$1305
1000081ab: e9 00 ff ff ff              	jmp	-256 <__stub_helper>
1000081b0: 68 3d 05 00 00              	pushq	$1341
1000081b5: e9 f6 fe ff ff              	jmp	-266 <__stub_helper>
1000081ba: 68 5c 05 00 00              	pushq	$1372
1000081bf: e9 ec fe ff ff              	jmp	-276 <__stub_helper>
1000081c4: 68 75 05 00 00              	pushq	$1397
1000081c9: e9 e2 fe ff ff              	jmp	-286 <__stub_helper>
1000081ce: 68 90 05 00 00              	pushq	$1424
1000081d3: e9 d8 fe ff ff              	jmp	-296 <__stub_helper>
1000081d8: 68 00 00 00 00              	pushq	$0
1000081dd: e9 ce fe ff ff              	jmp	-306 <__stub_helper>
1000081e2: 68 a9 05 00 00              	pushq	$1449
1000081e7: e9 c4 fe ff ff              	jmp	-316 <__stub_helper>
1000081ec: 68 c3 05 00 00              	pushq	$1475
1000081f1: e9 ba fe ff ff              	jmp	-326 <__stub_helper>
1000081f6: 68 d3 05 00 00              	pushq	$1491
1000081fb: e9 b0 fe ff ff              	jmp	-336 <__stub_helper>
