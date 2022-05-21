
shell.elf:     file format elf32-i386


Disassembly of section .text:

00400000 <_ZN5shell5ShellC1Ev>:
  400000:	55                   	push   %ebp
  400001:	89 e5                	mov    %esp,%ebp
  400003:	53                   	push   %ebx
  400004:	83 ec 04             	sub    $0x4,%esp
  400007:	e8 b0 25 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40000c:	81 c3 70 40 00 00    	add    $0x4070,%ebx
  400012:	8b 45 08             	mov    0x8(%ebp),%eax
  400015:	83 ec 08             	sub    $0x8,%esp
  400018:	8d 93 84 ff ff ff    	lea    -0x7c(%ebx),%edx
  40001e:	52                   	push   %edx
  40001f:	50                   	push   %eax
  400020:	e8 fb 0a 00 00       	call   400b20 <_ZNSt6stringC1EPKc>
  400025:	83 c4 10             	add    $0x10,%esp
  400028:	8b 45 08             	mov    0x8(%ebp),%eax
  40002b:	8d 50 0c             	lea    0xc(%eax),%edx
  40002e:	83 ec 08             	sub    $0x8,%esp
  400031:	8d 83 90 ff ff ff    	lea    -0x70(%ebx),%eax
  400037:	50                   	push   %eax
  400038:	52                   	push   %edx
  400039:	e8 e2 0a 00 00       	call   400b20 <_ZNSt6stringC1EPKc>
  40003e:	83 c4 10             	add    $0x10,%esp
  400041:	8b 45 08             	mov    0x8(%ebp),%eax
  400044:	83 c0 18             	add    $0x18,%eax
  400047:	83 ec 08             	sub    $0x8,%esp
  40004a:	68 00 04 00 00       	push   $0x400
  40004f:	50                   	push   %eax
  400050:	e8 4b 09 00 00       	call   4009a0 <_ZNSt6stringC1Ei>
  400055:	83 c4 10             	add    $0x10,%esp
  400058:	8b 45 08             	mov    0x8(%ebp),%eax
  40005b:	8d 50 24             	lea    0x24(%eax),%edx
  40005e:	83 ec 08             	sub    $0x8,%esp
  400061:	8d 83 92 ff ff ff    	lea    -0x6e(%ebx),%eax
  400067:	50                   	push   %eax
  400068:	52                   	push   %edx
  400069:	e8 b2 0a 00 00       	call   400b20 <_ZNSt6stringC1EPKc>
  40006e:	83 c4 10             	add    $0x10,%esp
  400071:	8b 45 08             	mov    0x8(%ebp),%eax
  400074:	83 c0 30             	add    $0x30,%eax
  400077:	83 ec 04             	sub    $0x4,%esp
  40007a:	6a 50                	push   $0x50
  40007c:	6a 14                	push   $0x14
  40007e:	50                   	push   %eax
  40007f:	e8 3c 15 00 00       	call   4015c0 <_ZN3vga8GraphicsC1Ejj>
  400084:	83 c4 10             	add    $0x10,%esp
  400087:	8b 45 08             	mov    0x8(%ebp),%eax
  40008a:	c7 40 3c 00 00 00 00 	movl   $0x0,0x3c(%eax)
  400091:	8b 45 08             	mov    0x8(%ebp),%eax
  400094:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
  40009b:	90                   	nop
  40009c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40009f:	c9                   	leave  
  4000a0:	c3                   	ret    
  4000a1:	90                   	nop

004000a2 <_ZN5shell5ShellD1Ev>:
  4000a2:	55                   	push   %ebp
  4000a3:	89 e5                	mov    %esp,%ebp
  4000a5:	53                   	push   %ebx
  4000a6:	83 ec 04             	sub    $0x4,%esp
  4000a9:	e8 0e 25 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4000ae:	81 c3 ce 3f 00 00    	add    $0x3fce,%ebx
  4000b4:	8b 45 08             	mov    0x8(%ebp),%eax
  4000b7:	83 c0 30             	add    $0x30,%eax
  4000ba:	83 ec 0c             	sub    $0xc,%esp
  4000bd:	50                   	push   %eax
  4000be:	e8 7d 18 00 00       	call   401940 <_ZN3vga8GraphicsD1Ev>
  4000c3:	83 c4 10             	add    $0x10,%esp
  4000c6:	8b 45 08             	mov    0x8(%ebp),%eax
  4000c9:	83 c0 24             	add    $0x24,%eax
  4000cc:	83 ec 0c             	sub    $0xc,%esp
  4000cf:	50                   	push   %eax
  4000d0:	e8 8b 0b 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  4000d5:	83 c4 10             	add    $0x10,%esp
  4000d8:	8b 45 08             	mov    0x8(%ebp),%eax
  4000db:	83 c0 18             	add    $0x18,%eax
  4000de:	83 ec 0c             	sub    $0xc,%esp
  4000e1:	50                   	push   %eax
  4000e2:	e8 79 0b 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  4000e7:	83 c4 10             	add    $0x10,%esp
  4000ea:	8b 45 08             	mov    0x8(%ebp),%eax
  4000ed:	83 c0 0c             	add    $0xc,%eax
  4000f0:	83 ec 0c             	sub    $0xc,%esp
  4000f3:	50                   	push   %eax
  4000f4:	e8 67 0b 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  4000f9:	83 c4 10             	add    $0x10,%esp
  4000fc:	8b 45 08             	mov    0x8(%ebp),%eax
  4000ff:	83 ec 0c             	sub    $0xc,%esp
  400102:	50                   	push   %eax
  400103:	e8 58 0b 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  400108:	83 c4 10             	add    $0x10,%esp
  40010b:	90                   	nop
  40010c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40010f:	c9                   	leave  
  400110:	c3                   	ret    
  400111:	90                   	nop

00400112 <_ZN5shell5Shell13displayPromptE6Colors>:
  400112:	55                   	push   %ebp
  400113:	89 e5                	mov    %esp,%ebp
  400115:	57                   	push   %edi
  400116:	56                   	push   %esi
  400117:	53                   	push   %ebx
  400118:	83 ec 1c             	sub    $0x1c,%esp
  40011b:	e8 98 24 00 00       	call   4025b8 <__x86.get_pc_thunk.dx>
  400120:	81 c2 5c 3f 00 00    	add    $0x3f5c,%edx
  400126:	8b 45 08             	mov    0x8(%ebp),%eax
  400129:	8d 70 30             	lea    0x30(%eax),%esi
  40012c:	8b 45 08             	mov    0x8(%ebp),%eax
  40012f:	8d 78 0c             	lea    0xc(%eax),%edi
  400132:	8b 45 08             	mov    0x8(%ebp),%eax
  400135:	8b 40 40             	mov    0x40(%eax),%eax
  400138:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  40013b:	8b 45 08             	mov    0x8(%ebp),%eax
  40013e:	8b 40 3c             	mov    0x3c(%eax),%eax
  400141:	8d 58 01             	lea    0x1(%eax),%ebx
  400144:	8b 4d 08             	mov    0x8(%ebp),%ecx
  400147:	89 59 3c             	mov    %ebx,0x3c(%ecx)
  40014a:	83 ec 0c             	sub    $0xc,%esp
  40014d:	ff 75 0c             	push   0xc(%ebp)
  400150:	57                   	push   %edi
  400151:	ff 75 e4             	push   -0x1c(%ebp)
  400154:	50                   	push   %eax
  400155:	56                   	push   %esi
  400156:	89 d3                	mov    %edx,%ebx
  400158:	e8 43 15 00 00       	call   4016a0 <_ZN3vga8Graphics11putStringAtEiiRKSt6string6Colors>
  40015d:	83 c4 20             	add    $0x20,%esp
  400160:	90                   	nop
  400161:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400164:	5b                   	pop    %ebx
  400165:	5e                   	pop    %esi
  400166:	5f                   	pop    %edi
  400167:	5d                   	pop    %ebp
  400168:	c3                   	ret    
  400169:	90                   	nop

0040016a <_ZN5shell5Shell14shell_readlineERSt6stringb>:
  40016a:	55                   	push   %ebp
  40016b:	89 e5                	mov    %esp,%ebp
  40016d:	57                   	push   %edi
  40016e:	56                   	push   %esi
  40016f:	53                   	push   %ebx
  400170:	83 ec 2c             	sub    $0x2c,%esp
  400173:	e8 44 24 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400178:	81 c3 04 3f 00 00    	add    $0x3f04,%ebx
  40017e:	8b 45 10             	mov    0x10(%ebp),%eax
  400181:	88 45 d4             	mov    %al,-0x2c(%ebp)
  400184:	80 7d e7 0d          	cmpb   $0xd,-0x19(%ebp)
  400188:	0f 84 d5 00 00 00    	je     400263 <_ZN5shell5Shell14shell_readlineERSt6stringb+0xf9>
  40018e:	e8 6d 19 00 00       	call   401b00 <smollos_getkeyblock>
  400193:	88 45 e7             	mov    %al,-0x19(%ebp)
  400196:	80 7d d4 00          	cmpb   $0x0,-0x2c(%ebp)
  40019a:	74 e8                	je     400184 <_ZN5shell5Shell14shell_readlineERSt6stringb+0x1a>
  40019c:	0f be 45 e7          	movsbl -0x19(%ebp),%eax
  4001a0:	83 f8 08             	cmp    $0x8,%eax
  4001a3:	75 6e                	jne    400213 <_ZN5shell5Shell14shell_readlineERSt6stringb+0xa9>
  4001a5:	83 ec 0c             	sub    $0xc,%esp
  4001a8:	ff 75 0c             	push   0xc(%ebp)
  4001ab:	e8 e0 0a 00 00       	call   400c90 <_ZNKSt6string3lenEv>
  4001b0:	83 c4 10             	add    $0x10,%esp
  4001b3:	83 e8 01             	sub    $0x1,%eax
  4001b6:	83 ec 04             	sub    $0x4,%esp
  4001b9:	6a 01                	push   $0x1
  4001bb:	50                   	push   %eax
  4001bc:	ff 75 0c             	push   0xc(%ebp)
  4001bf:	e8 0c 13 00 00       	call   4014d0 <_ZNSt6string5eraseEjj>
  4001c4:	83 c4 10             	add    $0x10,%esp
  4001c7:	80 7d d4 00          	cmpb   $0x0,-0x2c(%ebp)
  4001cb:	0f 84 8c 00 00 00    	je     40025d <_ZN5shell5Shell14shell_readlineERSt6stringb+0xf3>
  4001d1:	8b 45 08             	mov    0x8(%ebp),%eax
  4001d4:	8d 50 30             	lea    0x30(%eax),%edx
  4001d7:	8b 45 08             	mov    0x8(%ebp),%eax
  4001da:	8b 40 40             	mov    0x40(%eax),%eax
  4001dd:	89 c1                	mov    %eax,%ecx
  4001df:	8b 45 08             	mov    0x8(%ebp),%eax
  4001e2:	8b 40 3c             	mov    0x3c(%eax),%eax
  4001e5:	83 ec 0c             	sub    $0xc,%esp
  4001e8:	6a 00                	push   $0x0
  4001ea:	6a 20                	push   $0x20
  4001ec:	51                   	push   %ecx
  4001ed:	50                   	push   %eax
  4001ee:	52                   	push   %edx
  4001ef:	e8 6c 14 00 00       	call   401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>
  4001f4:	83 c4 20             	add    $0x20,%esp
  4001f7:	8b 45 08             	mov    0x8(%ebp),%eax
  4001fa:	8b 40 3c             	mov    0x3c(%eax),%eax
  4001fd:	83 f8 01             	cmp    $0x1,%eax
  400200:	74 5b                	je     40025d <_ZN5shell5Shell14shell_readlineERSt6stringb+0xf3>
  400202:	8b 45 08             	mov    0x8(%ebp),%eax
  400205:	8b 40 3c             	mov    0x3c(%eax),%eax
  400208:	8d 50 ff             	lea    -0x1(%eax),%edx
  40020b:	8b 45 08             	mov    0x8(%ebp),%eax
  40020e:	89 50 3c             	mov    %edx,0x3c(%eax)
  400211:	eb 4a                	jmp    40025d <_ZN5shell5Shell14shell_readlineERSt6stringb+0xf3>
  400213:	8b 45 08             	mov    0x8(%ebp),%eax
  400216:	8d 78 30             	lea    0x30(%eax),%edi
  400219:	0f be 55 e7          	movsbl -0x19(%ebp),%edx
  40021d:	8b 45 08             	mov    0x8(%ebp),%eax
  400220:	8b 40 40             	mov    0x40(%eax),%eax
  400223:	89 45 d0             	mov    %eax,-0x30(%ebp)
  400226:	8b 45 08             	mov    0x8(%ebp),%eax
  400229:	8b 40 3c             	mov    0x3c(%eax),%eax
  40022c:	8d 70 01             	lea    0x1(%eax),%esi
  40022f:	8b 4d 08             	mov    0x8(%ebp),%ecx
  400232:	89 71 3c             	mov    %esi,0x3c(%ecx)
  400235:	83 ec 0c             	sub    $0xc,%esp
  400238:	6a 02                	push   $0x2
  40023a:	52                   	push   %edx
  40023b:	ff 75 d0             	push   -0x30(%ebp)
  40023e:	50                   	push   %eax
  40023f:	57                   	push   %edi
  400240:	e8 1b 14 00 00       	call   401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>
  400245:	83 c4 20             	add    $0x20,%esp
  400248:	0f be 45 e7          	movsbl -0x19(%ebp),%eax
  40024c:	83 ec 08             	sub    $0x8,%esp
  40024f:	50                   	push   %eax
  400250:	ff 75 0c             	push   0xc(%ebp)
  400253:	e8 88 0c 00 00       	call   400ee0 <_ZNSt6stringpLEc>
  400258:	83 c4 10             	add    $0x10,%esp
  40025b:	eb 01                	jmp    40025e <_ZN5shell5Shell14shell_readlineERSt6stringb+0xf4>
  40025d:	90                   	nop
  40025e:	e9 21 ff ff ff       	jmp    400184 <_ZN5shell5Shell14shell_readlineERSt6stringb+0x1a>
  400263:	83 ec 0c             	sub    $0xc,%esp
  400266:	ff 75 0c             	push   0xc(%ebp)
  400269:	e8 22 0a 00 00       	call   400c90 <_ZNKSt6string3lenEv>
  40026e:	83 c4 10             	add    $0x10,%esp
  400271:	83 e8 01             	sub    $0x1,%eax
  400274:	83 ec 04             	sub    $0x4,%esp
  400277:	6a 01                	push   $0x1
  400279:	50                   	push   %eax
  40027a:	ff 75 0c             	push   0xc(%ebp)
  40027d:	e8 4e 12 00 00       	call   4014d0 <_ZNSt6string5eraseEjj>
  400282:	83 c4 10             	add    $0x10,%esp
  400285:	90                   	nop
  400286:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400289:	5b                   	pop    %ebx
  40028a:	5e                   	pop    %esi
  40028b:	5f                   	pop    %edi
  40028c:	5d                   	pop    %ebp
  40028d:	c3                   	ret    

0040028e <_ZNK5shell5Shell7cmdhashEPKcii>:
  40028e:	55                   	push   %ebp
  40028f:	89 e5                	mov    %esp,%ebp
  400291:	83 ec 10             	sub    $0x10,%esp
  400294:	e8 1b 23 00 00       	call   4025b4 <__x86.get_pc_thunk.ax>
  400299:	05 e3 3d 00 00       	add    $0x3de3,%eax
  40029e:	c7 45 fc 05 15 00 00 	movl   $0x1505,-0x4(%ebp)
  4002a5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  4002ac:	8b 45 10             	mov    0x10(%ebp),%eax
  4002af:	8d 50 ff             	lea    -0x1(%eax),%edx
  4002b2:	89 55 10             	mov    %edx,0x10(%ebp)
  4002b5:	85 c0                	test   %eax,%eax
  4002b7:	74 1f                	je     4002d8 <_ZNK5shell5Shell7cmdhashEPKcii+0x4a>
  4002b9:	8b 45 0c             	mov    0xc(%ebp),%eax
  4002bc:	8d 50 01             	lea    0x1(%eax),%edx
  4002bf:	89 55 0c             	mov    %edx,0xc(%ebp)
  4002c2:	0f b6 00             	movzbl (%eax),%eax
  4002c5:	0f be c0             	movsbl %al,%eax
  4002c8:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4002cb:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4002cf:	74 07                	je     4002d8 <_ZNK5shell5Shell7cmdhashEPKcii+0x4a>
  4002d1:	b8 01 00 00 00       	mov    $0x1,%eax
  4002d6:	eb 05                	jmp    4002dd <_ZNK5shell5Shell7cmdhashEPKcii+0x4f>
  4002d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4002dd:	84 c0                	test   %al,%al
  4002df:	74 17                	je     4002f8 <_ZNK5shell5Shell7cmdhashEPKcii+0x6a>
  4002e1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4002e4:	c1 e0 05             	shl    $0x5,%eax
  4002e7:	89 c2                	mov    %eax,%edx
  4002e9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4002ec:	01 c2                	add    %eax,%edx
  4002ee:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4002f1:	01 d0                	add    %edx,%eax
  4002f3:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4002f6:	eb b4                	jmp    4002ac <_ZNK5shell5Shell7cmdhashEPKcii+0x1e>
  4002f8:	8b 4d 14             	mov    0x14(%ebp),%ecx
  4002fb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4002fe:	ba 00 00 00 00       	mov    $0x0,%edx
  400303:	f7 f1                	div    %ecx
  400305:	89 d0                	mov    %edx,%eax
  400307:	c9                   	leave  
  400308:	c3                   	ret    
  400309:	90                   	nop

0040030a <_ZN5shell5Shell3dirERKSt6string>:
  40030a:	55                   	push   %ebp
  40030b:	89 e5                	mov    %esp,%ebp
  40030d:	53                   	push   %ebx
  40030e:	81 ec 24 04 00 00    	sub    $0x424,%esp
  400314:	e8 a3 22 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400319:	81 c3 63 3d 00 00    	add    $0x3d63,%ebx
  40031f:	83 ec 0c             	sub    $0xc,%esp
  400322:	6a 18                	push   $0x18
  400324:	e8 27 05 00 00       	call   400850 <_Znwm>
  400329:	83 c4 10             	add    $0x10,%esp
  40032c:	89 45 e8             	mov    %eax,-0x18(%ebp)
  40032f:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  400336:	8b 45 08             	mov    0x8(%ebp),%eax
  400339:	8b 40 40             	mov    0x40(%eax),%eax
  40033c:	83 c0 01             	add    $0x1,%eax
  40033f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  400342:	83 ec 0c             	sub    $0xc,%esp
  400345:	ff 75 0c             	push   0xc(%ebp)
  400348:	e8 33 12 00 00       	call   401580 <_ZNKSt6string5c_strEv>
  40034d:	83 c4 10             	add    $0x10,%esp
  400350:	83 ec 0c             	sub    $0xc,%esp
  400353:	50                   	push   %eax
  400354:	e8 f2 2d 00 00       	call   40314b <smollos_opendir>
  400359:	83 c4 10             	add    $0x10,%esp
  40035c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  40035f:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
  400366:	83 ec 08             	sub    $0x8,%esp
  400369:	ff 75 e8             	push   -0x18(%ebp)
  40036c:	ff 75 e4             	push   -0x1c(%ebp)
  40036f:	e8 fe 2d 00 00       	call   403172 <smollos_freaddir>
  400374:	83 c4 10             	add    $0x10,%esp
  400377:	8b 45 e8             	mov    -0x18(%ebp),%eax
  40037a:	0f b6 40 09          	movzbl 0x9(%eax),%eax
  40037e:	84 c0                	test   %al,%al
  400380:	74 61                	je     4003e3 <_ZN5shell5Shell3dirERKSt6string+0xd9>
  400382:	8b 45 08             	mov    0x8(%ebp),%eax
  400385:	83 c0 30             	add    $0x30,%eax
  400388:	8b 55 e8             	mov    -0x18(%ebp),%edx
  40038b:	83 c2 09             	add    $0x9,%edx
  40038e:	83 ec 0c             	sub    $0xc,%esp
  400391:	6a 0f                	push   $0xf
  400393:	52                   	push   %edx
  400394:	ff 75 f0             	push   -0x10(%ebp)
  400397:	ff 75 f4             	push   -0xc(%ebp)
  40039a:	50                   	push   %eax
  40039b:	e8 80 13 00 00       	call   401720 <_ZN3vga8Graphics11putStringAtEiiPKc6Colors>
  4003a0:	83 c4 20             	add    $0x20,%esp
  4003a3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  4003a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4003a9:	8d 50 01             	lea    0x1(%eax),%edx
  4003ac:	89 55 ec             	mov    %edx,-0x14(%ebp)
  4003af:	83 e0 03             	and    $0x3,%eax
  4003b2:	85 c0                	test   %eax,%eax
  4003b4:	0f 94 c0             	sete   %al
  4003b7:	84 c0                	test   %al,%al
  4003b9:	74 0d                	je     4003c8 <_ZN5shell5Shell3dirERKSt6string+0xbe>
  4003bb:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  4003bf:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  4003c6:	eb 9e                	jmp    400366 <_ZN5shell5Shell3dirERKSt6string+0x5c>
  4003c8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  4003cb:	83 c0 09             	add    $0x9,%eax
  4003ce:	83 ec 0c             	sub    $0xc,%esp
  4003d1:	50                   	push   %eax
  4003d2:	e8 a9 1b 00 00       	call   401f80 <strlen>
  4003d7:	83 c4 10             	add    $0x10,%esp
  4003da:	01 45 f4             	add    %eax,-0xc(%ebp)
  4003dd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  4003e1:	eb 83                	jmp    400366 <_ZN5shell5Shell3dirERKSt6string+0x5c>
  4003e3:	90                   	nop
  4003e4:	8b 45 e8             	mov    -0x18(%ebp),%eax
  4003e7:	85 c0                	test   %eax,%eax
  4003e9:	74 0c                	je     4003f7 <_ZN5shell5Shell3dirERKSt6string+0xed>
  4003eb:	83 ec 0c             	sub    $0xc,%esp
  4003ee:	50                   	push   %eax
  4003ef:	e8 dc 04 00 00       	call   4008d0 <_ZdlPv>
  4003f4:	83 c4 10             	add    $0x10,%esp
  4003f7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  4003fa:	8b 45 08             	mov    0x8(%ebp),%eax
  4003fd:	8b 48 40             	mov    0x40(%eax),%ecx
  400400:	89 d0                	mov    %edx,%eax
  400402:	29 c8                	sub    %ecx,%eax
  400404:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400407:	c9                   	leave  
  400408:	c3                   	ret    
  400409:	90                   	nop

0040040a <_ZN5shell5Shell3clsEv>:
  40040a:	55                   	push   %ebp
  40040b:	89 e5                	mov    %esp,%ebp
  40040d:	53                   	push   %ebx
  40040e:	83 ec 04             	sub    $0x4,%esp
  400411:	e8 a6 21 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400416:	81 c3 66 3c 00 00    	add    $0x3c66,%ebx
  40041c:	8b 45 08             	mov    0x8(%ebp),%eax
  40041f:	83 c0 0c             	add    $0xc,%eax
  400422:	83 ec 0c             	sub    $0xc,%esp
  400425:	50                   	push   %eax
  400426:	e8 65 08 00 00       	call   400c90 <_ZNKSt6string3lenEv>
  40042b:	83 c4 10             	add    $0x10,%esp
  40042e:	8b 55 08             	mov    0x8(%ebp),%edx
  400431:	89 42 3c             	mov    %eax,0x3c(%edx)
  400434:	8b 45 08             	mov    0x8(%ebp),%eax
  400437:	c7 40 40 00 00 00 00 	movl   $0x0,0x40(%eax)
  40043e:	8b 45 08             	mov    0x8(%ebp),%eax
  400441:	83 c0 30             	add    $0x30,%eax
  400444:	83 ec 0c             	sub    $0xc,%esp
  400447:	50                   	push   %eax
  400448:	e8 43 14 00 00       	call   401890 <_ZN3vga8Graphics3clsEv>
  40044d:	83 c4 10             	add    $0x10,%esp
  400450:	90                   	nop
  400451:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400454:	c9                   	leave  
  400455:	c3                   	ret    

00400456 <_ZN5shell5Shell5mkdirERKSt6string>:
  400456:	55                   	push   %ebp
  400457:	89 e5                	mov    %esp,%ebp
  400459:	53                   	push   %ebx
  40045a:	83 ec 14             	sub    $0x14,%esp
  40045d:	e8 5a 21 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400462:	81 c3 1a 3c 00 00    	add    $0x3c1a,%ebx
  400468:	83 ec 08             	sub    $0x8,%esp
  40046b:	ff 75 0c             	push   0xc(%ebp)
  40046e:	8d 45 e8             	lea    -0x18(%ebp),%eax
  400471:	50                   	push   %eax
  400472:	e8 59 09 00 00       	call   400dd0 <_ZNSt6stringC1ERKS_>
  400477:	83 c4 10             	add    $0x10,%esp
  40047a:	83 ec 08             	sub    $0x8,%esp
  40047d:	6a 20                	push   $0x20
  40047f:	ff 75 0c             	push   0xc(%ebp)
  400482:	e8 59 0b 00 00       	call   400fe0 <_ZNKSt6string4findEc>
  400487:	83 c4 10             	add    $0x10,%esp
  40048a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40048d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400490:	83 c0 01             	add    $0x1,%eax
  400493:	83 ec 04             	sub    $0x4,%esp
  400496:	50                   	push   %eax
  400497:	6a 00                	push   $0x0
  400499:	8d 45 e8             	lea    -0x18(%ebp),%eax
  40049c:	50                   	push   %eax
  40049d:	e8 2e 10 00 00       	call   4014d0 <_ZNSt6string5eraseEjj>
  4004a2:	83 c4 10             	add    $0x10,%esp
  4004a5:	83 ec 0c             	sub    $0xc,%esp
  4004a8:	8d 45 e8             	lea    -0x18(%ebp),%eax
  4004ab:	50                   	push   %eax
  4004ac:	e8 cf 10 00 00       	call   401580 <_ZNKSt6string5c_strEv>
  4004b1:	83 c4 10             	add    $0x10,%esp
  4004b4:	83 ec 0c             	sub    $0xc,%esp
  4004b7:	50                   	push   %eax
  4004b8:	e8 4c 2c 00 00       	call   403109 <smollos_mkdir>
  4004bd:	83 c4 10             	add    $0x10,%esp
  4004c0:	83 ec 0c             	sub    $0xc,%esp
  4004c3:	8d 45 e8             	lea    -0x18(%ebp),%eax
  4004c6:	50                   	push   %eax
  4004c7:	e8 94 07 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  4004cc:	83 c4 10             	add    $0x10,%esp
  4004cf:	90                   	nop
  4004d0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4004d3:	c9                   	leave  
  4004d4:	c3                   	ret    
  4004d5:	90                   	nop

004004d6 <_ZN5shell5Shell3delERKSt6string>:
  4004d6:	55                   	push   %ebp
  4004d7:	89 e5                	mov    %esp,%ebp
  4004d9:	53                   	push   %ebx
  4004da:	83 ec 14             	sub    $0x14,%esp
  4004dd:	e8 da 20 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4004e2:	81 c3 9a 3b 00 00    	add    $0x3b9a,%ebx
  4004e8:	83 ec 08             	sub    $0x8,%esp
  4004eb:	ff 75 0c             	push   0xc(%ebp)
  4004ee:	8d 45 e8             	lea    -0x18(%ebp),%eax
  4004f1:	50                   	push   %eax
  4004f2:	e8 d9 08 00 00       	call   400dd0 <_ZNSt6stringC1ERKS_>
  4004f7:	83 c4 10             	add    $0x10,%esp
  4004fa:	83 ec 08             	sub    $0x8,%esp
  4004fd:	6a 20                	push   $0x20
  4004ff:	ff 75 0c             	push   0xc(%ebp)
  400502:	e8 d9 0a 00 00       	call   400fe0 <_ZNKSt6string4findEc>
  400507:	83 c4 10             	add    $0x10,%esp
  40050a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40050d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  400510:	83 c0 01             	add    $0x1,%eax
  400513:	83 ec 04             	sub    $0x4,%esp
  400516:	50                   	push   %eax
  400517:	6a 00                	push   $0x0
  400519:	8d 45 e8             	lea    -0x18(%ebp),%eax
  40051c:	50                   	push   %eax
  40051d:	e8 ae 0f 00 00       	call   4014d0 <_ZNSt6string5eraseEjj>
  400522:	83 c4 10             	add    $0x10,%esp
  400525:	83 ec 0c             	sub    $0xc,%esp
  400528:	8d 45 e8             	lea    -0x18(%ebp),%eax
  40052b:	50                   	push   %eax
  40052c:	e8 4f 10 00 00       	call   401580 <_ZNKSt6string5c_strEv>
  400531:	83 c4 10             	add    $0x10,%esp
  400534:	83 ec 0c             	sub    $0xc,%esp
  400537:	50                   	push   %eax
  400538:	e8 4a 2c 00 00       	call   403187 <smollos_funlink>
  40053d:	83 c4 10             	add    $0x10,%esp
  400540:	83 ec 0c             	sub    $0xc,%esp
  400543:	8d 45 e8             	lea    -0x18(%ebp),%eax
  400546:	50                   	push   %eax
  400547:	e8 14 07 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  40054c:	83 c4 10             	add    $0x10,%esp
  40054f:	90                   	nop
  400550:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400553:	c9                   	leave  
  400554:	c3                   	ret    
  400555:	90                   	nop

00400556 <_ZN5shell5Shell13parse_commandERSt6stringRj>:
  400556:	55                   	push   %ebp
  400557:	89 e5                	mov    %esp,%ebp
  400559:	53                   	push   %ebx
  40055a:	83 ec 14             	sub    $0x14,%esp
  40055d:	e8 5a 20 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400562:	81 c3 1a 3b 00 00    	add    $0x3b1a,%ebx
  400568:	83 ec 08             	sub    $0x8,%esp
  40056b:	6a 20                	push   $0x20
  40056d:	ff 75 0c             	push   0xc(%ebp)
  400570:	e8 6b 0a 00 00       	call   400fe0 <_ZNKSt6string4findEc>
  400575:	83 c4 10             	add    $0x10,%esp
  400578:	89 45 f0             	mov    %eax,-0x10(%ebp)
  40057b:	83 ec 0c             	sub    $0xc,%esp
  40057e:	ff 75 0c             	push   0xc(%ebp)
  400581:	e8 0a 07 00 00       	call   400c90 <_ZNKSt6string3lenEv>
  400586:	83 c4 10             	add    $0x10,%esp
  400589:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40058c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  400590:	7e 06                	jle    400598 <_ZN5shell5Shell13parse_commandERSt6stringRj+0x42>
  400592:	8b 45 f0             	mov    -0x10(%ebp),%eax
  400595:	89 45 f4             	mov    %eax,-0xc(%ebp)
  400598:	83 ec 0c             	sub    $0xc,%esp
  40059b:	ff 75 0c             	push   0xc(%ebp)
  40059e:	e8 dd 0f 00 00       	call   401580 <_ZNKSt6string5c_strEv>
  4005a3:	83 c4 10             	add    $0x10,%esp
  4005a6:	6a 64                	push   $0x64
  4005a8:	ff 75 f4             	push   -0xc(%ebp)
  4005ab:	50                   	push   %eax
  4005ac:	ff 75 08             	push   0x8(%ebp)
  4005af:	e8 da fc ff ff       	call   40028e <_ZNK5shell5Shell7cmdhashEPKcii>
  4005b4:	83 c4 10             	add    $0x10,%esp
  4005b7:	89 45 ec             	mov    %eax,-0x14(%ebp)
  4005ba:	83 7d ec 4c          	cmpl   $0x4c,-0x14(%ebp)
  4005be:	74 20                	je     4005e0 <_ZN5shell5Shell13parse_commandERSt6stringRj+0x8a>
  4005c0:	83 7d ec 4c          	cmpl   $0x4c,-0x14(%ebp)
  4005c4:	77 7b                	ja     400641 <_ZN5shell5Shell13parse_commandERSt6stringRj+0xeb>
  4005c6:	83 7d ec 38          	cmpl   $0x38,-0x14(%ebp)
  4005ca:	74 37                	je     400603 <_ZN5shell5Shell13parse_commandERSt6stringRj+0xad>
  4005cc:	83 7d ec 38          	cmpl   $0x38,-0x14(%ebp)
  4005d0:	77 6f                	ja     400641 <_ZN5shell5Shell13parse_commandERSt6stringRj+0xeb>
  4005d2:	83 7d ec 08          	cmpl   $0x8,-0x14(%ebp)
  4005d6:	74 59                	je     400631 <_ZN5shell5Shell13parse_commandERSt6stringRj+0xdb>
  4005d8:	83 7d ec 26          	cmpl   $0x26,-0x14(%ebp)
  4005dc:	74 3c                	je     40061a <_ZN5shell5Shell13parse_commandERSt6stringRj+0xc4>
  4005de:	eb 61                	jmp    400641 <_ZN5shell5Shell13parse_commandERSt6stringRj+0xeb>
  4005e0:	8b 45 08             	mov    0x8(%ebp),%eax
  4005e3:	83 c0 24             	add    $0x24,%eax
  4005e6:	83 ec 08             	sub    $0x8,%esp
  4005e9:	50                   	push   %eax
  4005ea:	ff 75 08             	push   0x8(%ebp)
  4005ed:	e8 18 fd ff ff       	call   40030a <_ZN5shell5Shell3dirERKSt6string>
  4005f2:	83 c4 10             	add    $0x10,%esp
  4005f5:	8b 55 10             	mov    0x10(%ebp),%edx
  4005f8:	8b 12                	mov    (%edx),%edx
  4005fa:	01 c2                	add    %eax,%edx
  4005fc:	8b 45 10             	mov    0x10(%ebp),%eax
  4005ff:	89 10                	mov    %edx,(%eax)
  400601:	eb 59                	jmp    40065c <_ZN5shell5Shell13parse_commandERSt6stringRj+0x106>
  400603:	8b 45 08             	mov    0x8(%ebp),%eax
  400606:	83 c0 18             	add    $0x18,%eax
  400609:	83 ec 08             	sub    $0x8,%esp
  40060c:	50                   	push   %eax
  40060d:	ff 75 08             	push   0x8(%ebp)
  400610:	e8 41 fe ff ff       	call   400456 <_ZN5shell5Shell5mkdirERKSt6string>
  400615:	83 c4 10             	add    $0x10,%esp
  400618:	eb 42                	jmp    40065c <_ZN5shell5Shell13parse_commandERSt6stringRj+0x106>
  40061a:	8b 45 08             	mov    0x8(%ebp),%eax
  40061d:	83 c0 18             	add    $0x18,%eax
  400620:	83 ec 08             	sub    $0x8,%esp
  400623:	50                   	push   %eax
  400624:	ff 75 08             	push   0x8(%ebp)
  400627:	e8 aa fe ff ff       	call   4004d6 <_ZN5shell5Shell3delERKSt6string>
  40062c:	83 c4 10             	add    $0x10,%esp
  40062f:	eb 2b                	jmp    40065c <_ZN5shell5Shell13parse_commandERSt6stringRj+0x106>
  400631:	83 ec 0c             	sub    $0xc,%esp
  400634:	ff 75 08             	push   0x8(%ebp)
  400637:	e8 ce fd ff ff       	call   40040a <_ZN5shell5Shell3clsEv>
  40063c:	83 c4 10             	add    $0x10,%esp
  40063f:	eb 1b                	jmp    40065c <_ZN5shell5Shell13parse_commandERSt6stringRj+0x106>
  400641:	83 ec 0c             	sub    $0xc,%esp
  400644:	ff 75 0c             	push   0xc(%ebp)
  400647:	e8 34 0f 00 00       	call   401580 <_ZNKSt6string5c_strEv>
  40064c:	83 c4 10             	add    $0x10,%esp
  40064f:	83 ec 0c             	sub    $0xc,%esp
  400652:	50                   	push   %eax
  400653:	e8 56 2b 00 00       	call   4031ae <smollos_spawnp>
  400658:	83 c4 10             	add    $0x10,%esp
  40065b:	90                   	nop
  40065c:	90                   	nop
  40065d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400660:	c9                   	leave  
  400661:	c3                   	ret    

00400662 <_ZN5shell5Shell3runEv>:
  400662:	55                   	push   %ebp
  400663:	89 e5                	mov    %esp,%ebp
  400665:	53                   	push   %ebx
  400666:	83 ec 04             	sub    $0x4,%esp
  400669:	e8 4e 1f 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40066e:	81 c3 0e 3a 00 00    	add    $0x3a0e,%ebx
  400674:	83 ec 08             	sub    $0x8,%esp
  400677:	6a 02                	push   $0x2
  400679:	ff 75 08             	push   0x8(%ebp)
  40067c:	e8 91 fa ff ff       	call   400112 <_ZN5shell5Shell13displayPromptE6Colors>
  400681:	83 c4 10             	add    $0x10,%esp
  400684:	8b 45 08             	mov    0x8(%ebp),%eax
  400687:	83 c0 18             	add    $0x18,%eax
  40068a:	83 ec 04             	sub    $0x4,%esp
  40068d:	6a 01                	push   $0x1
  40068f:	50                   	push   %eax
  400690:	ff 75 08             	push   0x8(%ebp)
  400693:	e8 d2 fa ff ff       	call   40016a <_ZN5shell5Shell14shell_readlineERSt6stringb>
  400698:	83 c4 10             	add    $0x10,%esp
  40069b:	8b 45 08             	mov    0x8(%ebp),%eax
  40069e:	8d 50 40             	lea    0x40(%eax),%edx
  4006a1:	8b 45 08             	mov    0x8(%ebp),%eax
  4006a4:	83 c0 18             	add    $0x18,%eax
  4006a7:	83 ec 04             	sub    $0x4,%esp
  4006aa:	52                   	push   %edx
  4006ab:	50                   	push   %eax
  4006ac:	ff 75 08             	push   0x8(%ebp)
  4006af:	e8 a2 fe ff ff       	call   400556 <_ZN5shell5Shell13parse_commandERSt6stringRj>
  4006b4:	83 c4 10             	add    $0x10,%esp
  4006b7:	8b 45 08             	mov    0x8(%ebp),%eax
  4006ba:	8b 40 40             	mov    0x40(%eax),%eax
  4006bd:	8d 50 01             	lea    0x1(%eax),%edx
  4006c0:	8b 45 08             	mov    0x8(%ebp),%eax
  4006c3:	89 50 40             	mov    %edx,0x40(%eax)
  4006c6:	8b 45 08             	mov    0x8(%ebp),%eax
  4006c9:	c7 40 3c 00 00 00 00 	movl   $0x0,0x3c(%eax)
  4006d0:	83 ec 08             	sub    $0x8,%esp
  4006d3:	6a 02                	push   $0x2
  4006d5:	ff 75 08             	push   0x8(%ebp)
  4006d8:	e8 35 fa ff ff       	call   400112 <_ZN5shell5Shell13displayPromptE6Colors>
  4006dd:	83 c4 10             	add    $0x10,%esp
  4006e0:	8b 45 08             	mov    0x8(%ebp),%eax
  4006e3:	83 c0 18             	add    $0x18,%eax
  4006e6:	83 ec 0c             	sub    $0xc,%esp
  4006e9:	50                   	push   %eax
  4006ea:	e8 31 03 00 00       	call   400a20 <_ZNSt6string5clearEv>
  4006ef:	83 c4 10             	add    $0x10,%esp
  4006f2:	eb 90                	jmp    400684 <_ZN5shell5Shell3runEv+0x22>

004006f4 <main>:
  4006f4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  4006f8:	83 e4 f0             	and    $0xfffffff0,%esp
  4006fb:	ff 71 fc             	push   -0x4(%ecx)
  4006fe:	55                   	push   %ebp
  4006ff:	89 e5                	mov    %esp,%ebp
  400701:	56                   	push   %esi
  400702:	53                   	push   %ebx
  400703:	51                   	push   %ecx
  400704:	83 ec 7c             	sub    $0x7c,%esp
  400707:	e8 b0 1e 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40070c:	81 c3 70 39 00 00    	add    $0x3970,%ebx
  400712:	83 ec 08             	sub    $0x8,%esp
  400715:	8d 83 94 ff ff ff    	lea    -0x6c(%ebx),%eax
  40071b:	50                   	push   %eax
  40071c:	8d 45 d8             	lea    -0x28(%ebp),%eax
  40071f:	50                   	push   %eax
  400720:	e8 fb 03 00 00       	call   400b20 <_ZNSt6stringC1EPKc>
  400725:	83 c4 10             	add    $0x10,%esp
  400728:	83 ec 0c             	sub    $0xc,%esp
  40072b:	8d 45 94             	lea    -0x6c(%ebp),%eax
  40072e:	50                   	push   %eax
  40072f:	e8 cc f8 ff ff       	call   400000 <_ZN5shell5ShellC1Ev>
  400734:	83 c4 10             	add    $0x10,%esp
  400737:	83 ec 0c             	sub    $0xc,%esp
  40073a:	8d 45 94             	lea    -0x6c(%ebp),%eax
  40073d:	50                   	push   %eax
  40073e:	e8 1f ff ff ff       	call   400662 <_ZN5shell5Shell3runEv>
  400743:	83 c4 10             	add    $0x10,%esp
  400746:	83 ec 08             	sub    $0x8,%esp
  400749:	8d 83 9f ff ff ff    	lea    -0x61(%ebx),%eax
  40074f:	50                   	push   %eax
  400750:	8d 45 88             	lea    -0x78(%ebp),%eax
  400753:	50                   	push   %eax
  400754:	e8 c7 03 00 00       	call   400b20 <_ZNSt6stringC1EPKc>
  400759:	83 c4 10             	add    $0x10,%esp
  40075c:	83 ec 08             	sub    $0x8,%esp
  40075f:	8d 45 88             	lea    -0x78(%ebp),%eax
  400762:	50                   	push   %eax
  400763:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
  400769:	50                   	push   %eax
  40076a:	e8 01 07 00 00       	call   400e70 <_ZNSt6stringC1ERS_>
  40076f:	83 c4 10             	add    $0x10,%esp
  400772:	83 ec 08             	sub    $0x8,%esp
  400775:	6a 20                	push   $0x20
  400777:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
  40077d:	50                   	push   %eax
  40077e:	e8 5d 08 00 00       	call   400fe0 <_ZNKSt6string4findEc>
  400783:	83 c4 10             	add    $0x10,%esp
  400786:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  400789:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
  40078d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  400790:	83 ec 04             	sub    $0x4,%esp
  400793:	50                   	push   %eax
  400794:	6a 00                	push   $0x0
  400796:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
  40079c:	50                   	push   %eax
  40079d:	e8 2e 0d 00 00       	call   4014d0 <_ZNSt6string5eraseEjj>
  4007a2:	83 c4 10             	add    $0x10,%esp
  4007a5:	83 ec 0c             	sub    $0xc,%esp
  4007a8:	8d 83 aa ff ff ff    	lea    -0x56(%ebx),%eax
  4007ae:	50                   	push   %eax
  4007af:	e8 60 28 00 00       	call   403014 <print>
  4007b4:	83 c4 10             	add    $0x10,%esp
  4007b7:	83 ec 0c             	sub    $0xc,%esp
  4007ba:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
  4007c0:	50                   	push   %eax
  4007c1:	e8 ba 0d 00 00       	call   401580 <_ZNKSt6string5c_strEv>
  4007c6:	83 c4 10             	add    $0x10,%esp
  4007c9:	83 ec 0c             	sub    $0xc,%esp
  4007cc:	50                   	push   %eax
  4007cd:	e8 42 28 00 00       	call   403014 <print>
  4007d2:	83 c4 10             	add    $0x10,%esp
  4007d5:	83 ec 0c             	sub    $0xc,%esp
  4007d8:	8d 83 aa ff ff ff    	lea    -0x56(%ebx),%eax
  4007de:	50                   	push   %eax
  4007df:	e8 30 28 00 00       	call   403014 <print>
  4007e4:	83 c4 10             	add    $0x10,%esp
  4007e7:	83 ec 0c             	sub    $0xc,%esp
  4007ea:	8d 83 ac ff ff ff    	lea    -0x54(%ebx),%eax
  4007f0:	50                   	push   %eax
  4007f1:	e8 1e 28 00 00       	call   403014 <print>
  4007f6:	83 c4 10             	add    $0x10,%esp
  4007f9:	be 00 00 00 00       	mov    $0x0,%esi
  4007fe:	83 ec 0c             	sub    $0xc,%esp
  400801:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
  400807:	50                   	push   %eax
  400808:	e8 53 04 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  40080d:	83 c4 10             	add    $0x10,%esp
  400810:	83 ec 0c             	sub    $0xc,%esp
  400813:	8d 45 88             	lea    -0x78(%ebp),%eax
  400816:	50                   	push   %eax
  400817:	e8 44 04 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  40081c:	83 c4 10             	add    $0x10,%esp
  40081f:	83 ec 0c             	sub    $0xc,%esp
  400822:	8d 45 94             	lea    -0x6c(%ebp),%eax
  400825:	50                   	push   %eax
  400826:	e8 77 f8 ff ff       	call   4000a2 <_ZN5shell5ShellD1Ev>
  40082b:	83 c4 10             	add    $0x10,%esp
  40082e:	83 ec 0c             	sub    $0xc,%esp
  400831:	8d 45 d8             	lea    -0x28(%ebp),%eax
  400834:	50                   	push   %eax
  400835:	e8 26 04 00 00       	call   400c60 <_ZNSt6stringD1Ev>
  40083a:	83 c4 10             	add    $0x10,%esp
  40083d:	89 f0                	mov    %esi,%eax
  40083f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400842:	59                   	pop    %ecx
  400843:	5b                   	pop    %ebx
  400844:	5e                   	pop    %esi
  400845:	5d                   	pop    %ebp
  400846:	8d 61 fc             	lea    -0x4(%ecx),%esp
  400849:	c3                   	ret    
  40084a:	66 90                	xchg   %ax,%ax
  40084c:	66 90                	xchg   %ax,%ax
  40084e:	66 90                	xchg   %ax,%ax

00400850 <_Znwm>:
  400850:	55                   	push   %ebp
  400851:	89 e5                	mov    %esp,%ebp
  400853:	53                   	push   %ebx
  400854:	e8 63 1d 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400859:	81 c3 23 38 00 00    	add    $0x3823,%ebx
  40085f:	83 ec 10             	sub    $0x10,%esp
  400862:	ff 75 08             	push   0x8(%ebp)
  400865:	e8 da 27 00 00       	call   403044 <smollos_malloc>
  40086a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40086d:	c9                   	leave  
  40086e:	c3                   	ret    
  40086f:	90                   	nop

00400870 <_Z6mallocm>:
  400870:	55                   	push   %ebp
  400871:	89 e5                	mov    %esp,%ebp
  400873:	53                   	push   %ebx
  400874:	e8 43 1d 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400879:	81 c3 03 38 00 00    	add    $0x3803,%ebx
  40087f:	83 ec 10             	sub    $0x10,%esp
  400882:	ff 75 08             	push   0x8(%ebp)
  400885:	e8 ba 27 00 00       	call   403044 <smollos_malloc>
  40088a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40088d:	c9                   	leave  
  40088e:	c3                   	ret    
  40088f:	90                   	nop

00400890 <_ZnwmPv>:
  400890:	55                   	push   %ebp
  400891:	89 e5                	mov    %esp,%ebp
  400893:	8b 45 0c             	mov    0xc(%ebp),%eax
  400896:	5d                   	pop    %ebp
  400897:	c3                   	ret    
  400898:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40089f:	90                   	nop

004008a0 <_Znam>:
  4008a0:	55                   	push   %ebp
  4008a1:	89 e5                	mov    %esp,%ebp
  4008a3:	53                   	push   %ebx
  4008a4:	e8 13 1d 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4008a9:	81 c3 d3 37 00 00    	add    $0x37d3,%ebx
  4008af:	83 ec 10             	sub    $0x10,%esp
  4008b2:	ff 75 08             	push   0x8(%ebp)
  4008b5:	e8 8a 27 00 00       	call   403044 <smollos_malloc>
  4008ba:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4008bd:	c9                   	leave  
  4008be:	c3                   	ret    
  4008bf:	90                   	nop

004008c0 <_ZnamPv>:
  4008c0:	55                   	push   %ebp
  4008c1:	89 e5                	mov    %esp,%ebp
  4008c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  4008c6:	5d                   	pop    %ebp
  4008c7:	c3                   	ret    
  4008c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4008cf:	90                   	nop

004008d0 <_ZdlPv>:
  4008d0:	55                   	push   %ebp
  4008d1:	89 e5                	mov    %esp,%ebp
  4008d3:	53                   	push   %ebx
  4008d4:	e8 e3 1c 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4008d9:	81 c3 a3 37 00 00    	add    $0x37a3,%ebx
  4008df:	83 ec 10             	sub    $0x10,%esp
  4008e2:	ff 75 08             	push   0x8(%ebp)
  4008e5:	e8 6c 27 00 00       	call   403056 <smollos_free>
  4008ea:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4008ed:	83 c4 10             	add    $0x10,%esp
  4008f0:	c9                   	leave  
  4008f1:	c3                   	ret    
  4008f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4008f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00400900 <_ZdaPv>:
  400900:	55                   	push   %ebp
  400901:	89 e5                	mov    %esp,%ebp
  400903:	53                   	push   %ebx
  400904:	e8 b3 1c 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400909:	81 c3 73 37 00 00    	add    $0x3773,%ebx
  40090f:	83 ec 10             	sub    $0x10,%esp
  400912:	ff 75 08             	push   0x8(%ebp)
  400915:	e8 3c 27 00 00       	call   403056 <smollos_free>
  40091a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40091d:	83 c4 10             	add    $0x10,%esp
  400920:	c9                   	leave  
  400921:	c3                   	ret    
  400922:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00400930 <_ZdlPvm>:
  400930:	55                   	push   %ebp
  400931:	89 e5                	mov    %esp,%ebp
  400933:	53                   	push   %ebx
  400934:	e8 83 1c 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400939:	81 c3 43 37 00 00    	add    $0x3743,%ebx
  40093f:	83 ec 10             	sub    $0x10,%esp
  400942:	ff 75 08             	push   0x8(%ebp)
  400945:	e8 0c 27 00 00       	call   403056 <smollos_free>
  40094a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40094d:	83 c4 10             	add    $0x10,%esp
  400950:	c9                   	leave  
  400951:	c3                   	ret    
  400952:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00400960 <_ZdaPvm>:
  400960:	55                   	push   %ebp
  400961:	89 e5                	mov    %esp,%ebp
  400963:	53                   	push   %ebx
  400964:	e8 53 1c 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400969:	81 c3 13 37 00 00    	add    $0x3713,%ebx
  40096f:	83 ec 10             	sub    $0x10,%esp
  400972:	ff 75 08             	push   0x8(%ebp)
  400975:	e8 dc 26 00 00       	call   403056 <smollos_free>
  40097a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40097d:	83 c4 10             	add    $0x10,%esp
  400980:	c9                   	leave  
  400981:	c3                   	ret    
  400982:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00400990 <__cxa_pure_virtual>:
  400990:	c3                   	ret    
  400991:	66 90                	xchg   %ax,%ax
  400993:	66 90                	xchg   %ax,%ax
  400995:	66 90                	xchg   %ax,%ax
  400997:	66 90                	xchg   %ax,%ax
  400999:	66 90                	xchg   %ax,%ax
  40099b:	66 90                	xchg   %ax,%ax
  40099d:	66 90                	xchg   %ax,%ax
  40099f:	90                   	nop

004009a0 <_ZNSt6stringC1Ei>:
  4009a0:	55                   	push   %ebp
  4009a1:	89 e5                	mov    %esp,%ebp
  4009a3:	57                   	push   %edi
  4009a4:	56                   	push   %esi
  4009a5:	53                   	push   %ebx
  4009a6:	e8 11 1c 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4009ab:	81 c3 d1 36 00 00    	add    $0x36d1,%ebx
  4009b1:	83 ec 0c             	sub    $0xc,%esp
  4009b4:	8b 7d 0c             	mov    0xc(%ebp),%edi
  4009b7:	8b 75 08             	mov    0x8(%ebp),%esi
  4009ba:	85 ff                	test   %edi,%edi
  4009bc:	78 22                	js     4009e0 <_ZNSt6stringC1Ei+0x40>
  4009be:	83 ec 0c             	sub    $0xc,%esp
  4009c1:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
  4009c8:	57                   	push   %edi
  4009c9:	e8 d2 fe ff ff       	call   4008a0 <_Znam>
  4009ce:	89 7e 08             	mov    %edi,0x8(%esi)
  4009d1:	83 c4 10             	add    $0x10,%esp
  4009d4:	89 06                	mov    %eax,(%esi)
  4009d6:	8d 65 f4             	lea    -0xc(%ebp),%esp
  4009d9:	5b                   	pop    %ebx
  4009da:	5e                   	pop    %esi
  4009db:	5f                   	pop    %edi
  4009dc:	5d                   	pop    %ebp
  4009dd:	c3                   	ret    
  4009de:	66 90                	xchg   %ax,%ax
  4009e0:	83 ec 0c             	sub    $0xc,%esp
  4009e3:	8d 83 bd ff ff ff    	lea    -0x43(%ebx),%eax
  4009e9:	50                   	push   %eax
  4009ea:	e8 25 26 00 00       	call   403014 <print>
  4009ef:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
  4009f6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  4009fd:	e8 9e fe ff ff       	call   4008a0 <_Znam>
  400a02:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
  400a09:	83 c4 10             	add    $0x10,%esp
  400a0c:	89 06                	mov    %eax,(%esi)
  400a0e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400a11:	5b                   	pop    %ebx
  400a12:	5e                   	pop    %esi
  400a13:	5f                   	pop    %edi
  400a14:	5d                   	pop    %ebp
  400a15:	c3                   	ret    
  400a16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400a1d:	8d 76 00             	lea    0x0(%esi),%esi

00400a20 <_ZNSt6string5clearEv>:
  400a20:	55                   	push   %ebp
  400a21:	89 e5                	mov    %esp,%ebp
  400a23:	56                   	push   %esi
  400a24:	53                   	push   %ebx
  400a25:	8b 75 08             	mov    0x8(%ebp),%esi
  400a28:	e8 8f 1b 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400a2d:	81 c3 4f 36 00 00    	add    $0x364f,%ebx
  400a33:	8b 46 04             	mov    0x4(%esi),%eax
  400a36:	03 46 08             	add    0x8(%esi),%eax
  400a39:	83 ec 04             	sub    $0x4,%esp
  400a3c:	50                   	push   %eax
  400a3d:	6a 00                	push   $0x0
  400a3f:	ff 36                	push   (%esi)
  400a41:	e8 5a 12 00 00       	call   401ca0 <memset>
  400a46:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
  400a4d:	83 c4 10             	add    $0x10,%esp
  400a50:	8d 65 f8             	lea    -0x8(%ebp),%esp
  400a53:	5b                   	pop    %ebx
  400a54:	5e                   	pop    %esi
  400a55:	5d                   	pop    %ebp
  400a56:	c3                   	ret    
  400a57:	90                   	nop
  400a58:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400a5f:	90                   	nop

00400a60 <_ZNSt6stringC1Ej>:
  400a60:	55                   	push   %ebp
  400a61:	89 e5                	mov    %esp,%ebp
  400a63:	56                   	push   %esi
  400a64:	53                   	push   %ebx
  400a65:	8b 75 08             	mov    0x8(%ebp),%esi
  400a68:	e8 4f 1b 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400a6d:	81 c3 0f 36 00 00    	add    $0x360f,%ebx
  400a73:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
  400a7a:	83 ec 0c             	sub    $0xc,%esp
  400a7d:	6a 00                	push   $0x0
  400a7f:	e8 1c fe ff ff       	call   4008a0 <_Znam>
  400a84:	83 c4 10             	add    $0x10,%esp
  400a87:	89 06                	mov    %eax,(%esi)
  400a89:	8b 45 0c             	mov    0xc(%ebp),%eax
  400a8c:	89 46 08             	mov    %eax,0x8(%esi)
  400a8f:	8d 65 f8             	lea    -0x8(%ebp),%esp
  400a92:	5b                   	pop    %ebx
  400a93:	5e                   	pop    %esi
  400a94:	5d                   	pop    %ebp
  400a95:	c3                   	ret    
  400a96:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400a9d:	8d 76 00             	lea    0x0(%esi),%esi

00400aa0 <_ZNSt6stringC1Ev>:
  400aa0:	55                   	push   %ebp
  400aa1:	89 e5                	mov    %esp,%ebp
  400aa3:	56                   	push   %esi
  400aa4:	53                   	push   %ebx
  400aa5:	8b 75 08             	mov    0x8(%ebp),%esi
  400aa8:	e8 0f 1b 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400aad:	81 c3 cf 35 00 00    	add    $0x35cf,%ebx
  400ab3:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
  400aba:	83 ec 0c             	sub    $0xc,%esp
  400abd:	6a 00                	push   $0x0
  400abf:	e8 dc fd ff ff       	call   4008a0 <_Znam>
  400ac4:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
  400acb:	83 c4 10             	add    $0x10,%esp
  400ace:	89 06                	mov    %eax,(%esi)
  400ad0:	8d 65 f8             	lea    -0x8(%ebp),%esp
  400ad3:	5b                   	pop    %ebx
  400ad4:	5e                   	pop    %esi
  400ad5:	5d                   	pop    %ebp
  400ad6:	c3                   	ret    
  400ad7:	90                   	nop
  400ad8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400adf:	90                   	nop

00400ae0 <_ZNSt6stringC1Ec>:
  400ae0:	55                   	push   %ebp
  400ae1:	89 e5                	mov    %esp,%ebp
  400ae3:	57                   	push   %edi
  400ae4:	56                   	push   %esi
  400ae5:	53                   	push   %ebx
  400ae6:	e8 d1 1a 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400aeb:	81 c3 91 35 00 00    	add    $0x3591,%ebx
  400af1:	83 ec 18             	sub    $0x18,%esp
  400af4:	8b 75 08             	mov    0x8(%ebp),%esi
  400af7:	8b 7d 0c             	mov    0xc(%ebp),%edi
  400afa:	c7 46 04 01 00 00 00 	movl   $0x1,0x4(%esi)
  400b01:	6a 01                	push   $0x1
  400b03:	e8 48 fd ff ff       	call   400850 <_Znwm>
  400b08:	89 fa                	mov    %edi,%edx
  400b0a:	c7 46 08 00 00 00 00 	movl   $0x0,0x8(%esi)
  400b11:	83 c4 10             	add    $0x10,%esp
  400b14:	88 10                	mov    %dl,(%eax)
  400b16:	89 06                	mov    %eax,(%esi)
  400b18:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400b1b:	5b                   	pop    %ebx
  400b1c:	5e                   	pop    %esi
  400b1d:	5f                   	pop    %edi
  400b1e:	5d                   	pop    %ebp
  400b1f:	c3                   	ret    

00400b20 <_ZNSt6stringC1EPKc>:
  400b20:	55                   	push   %ebp
  400b21:	89 e5                	mov    %esp,%ebp
  400b23:	57                   	push   %edi
  400b24:	56                   	push   %esi
  400b25:	53                   	push   %ebx
  400b26:	e8 91 1a 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400b2b:	81 c3 51 35 00 00    	add    $0x3551,%ebx
  400b31:	83 ec 0c             	sub    $0xc,%esp
  400b34:	8b 75 0c             	mov    0xc(%ebp),%esi
  400b37:	8b 7d 08             	mov    0x8(%ebp),%edi
  400b3a:	85 f6                	test   %esi,%esi
  400b3c:	74 62                	je     400ba0 <_ZNSt6stringC1EPKc+0x80>
  400b3e:	31 c0                	xor    %eax,%eax
  400b40:	80 3e 00             	cmpb   $0x0,(%esi)
  400b43:	74 14                	je     400b59 <_ZNSt6stringC1EPKc+0x39>
  400b45:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400b50:	83 c0 01             	add    $0x1,%eax
  400b53:	80 3c 06 00          	cmpb   $0x0,(%esi,%eax,1)
  400b57:	75 f7                	jne    400b50 <_ZNSt6stringC1EPKc+0x30>
  400b59:	83 ec 0c             	sub    $0xc,%esp
  400b5c:	89 47 04             	mov    %eax,0x4(%edi)
  400b5f:	50                   	push   %eax
  400b60:	e8 3b fd ff ff       	call   4008a0 <_Znam>
  400b65:	8b 4f 04             	mov    0x4(%edi),%ecx
  400b68:	83 c4 10             	add    $0x10,%esp
  400b6b:	89 07                	mov    %eax,(%edi)
  400b6d:	89 c2                	mov    %eax,%edx
  400b6f:	85 c9                	test   %ecx,%ecx
  400b71:	74 1d                	je     400b90 <_ZNSt6stringC1EPKc+0x70>
  400b73:	89 f0                	mov    %esi,%eax
  400b75:	01 ce                	add    %ecx,%esi
  400b77:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400b7e:	66 90                	xchg   %ax,%ax
  400b80:	0f b6 08             	movzbl (%eax),%ecx
  400b83:	83 c0 01             	add    $0x1,%eax
  400b86:	83 c2 01             	add    $0x1,%edx
  400b89:	88 4a ff             	mov    %cl,-0x1(%edx)
  400b8c:	39 f0                	cmp    %esi,%eax
  400b8e:	75 f0                	jne    400b80 <_ZNSt6stringC1EPKc+0x60>
  400b90:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
  400b97:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400b9a:	5b                   	pop    %ebx
  400b9b:	5e                   	pop    %esi
  400b9c:	5f                   	pop    %edi
  400b9d:	5d                   	pop    %ebp
  400b9e:	c3                   	ret    
  400b9f:	90                   	nop
  400ba0:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
  400ba7:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
  400bad:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
  400bb4:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400bb7:	5b                   	pop    %ebx
  400bb8:	5e                   	pop    %esi
  400bb9:	5f                   	pop    %edi
  400bba:	5d                   	pop    %ebp
  400bbb:	c3                   	ret    
  400bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00400bc0 <_ZNSt6stringC1EPc>:
  400bc0:	55                   	push   %ebp
  400bc1:	89 e5                	mov    %esp,%ebp
  400bc3:	57                   	push   %edi
  400bc4:	56                   	push   %esi
  400bc5:	53                   	push   %ebx
  400bc6:	e8 f1 19 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400bcb:	81 c3 b1 34 00 00    	add    $0x34b1,%ebx
  400bd1:	83 ec 0c             	sub    $0xc,%esp
  400bd4:	8b 75 0c             	mov    0xc(%ebp),%esi
  400bd7:	8b 7d 08             	mov    0x8(%ebp),%edi
  400bda:	85 f6                	test   %esi,%esi
  400bdc:	74 62                	je     400c40 <_ZNSt6stringC1EPc+0x80>
  400bde:	31 c0                	xor    %eax,%eax
  400be0:	80 3e 00             	cmpb   $0x0,(%esi)
  400be3:	74 14                	je     400bf9 <_ZNSt6stringC1EPc+0x39>
  400be5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400bf0:	83 c0 01             	add    $0x1,%eax
  400bf3:	80 3c 06 00          	cmpb   $0x0,(%esi,%eax,1)
  400bf7:	75 f7                	jne    400bf0 <_ZNSt6stringC1EPc+0x30>
  400bf9:	83 ec 0c             	sub    $0xc,%esp
  400bfc:	89 47 04             	mov    %eax,0x4(%edi)
  400bff:	50                   	push   %eax
  400c00:	e8 9b fc ff ff       	call   4008a0 <_Znam>
  400c05:	8b 4f 04             	mov    0x4(%edi),%ecx
  400c08:	83 c4 10             	add    $0x10,%esp
  400c0b:	89 07                	mov    %eax,(%edi)
  400c0d:	89 c2                	mov    %eax,%edx
  400c0f:	89 f0                	mov    %esi,%eax
  400c11:	01 ce                	add    %ecx,%esi
  400c13:	85 c9                	test   %ecx,%ecx
  400c15:	74 19                	je     400c30 <_ZNSt6stringC1EPc+0x70>
  400c17:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400c1e:	66 90                	xchg   %ax,%ax
  400c20:	0f b6 08             	movzbl (%eax),%ecx
  400c23:	83 c0 01             	add    $0x1,%eax
  400c26:	83 c2 01             	add    $0x1,%edx
  400c29:	88 4a ff             	mov    %cl,-0x1(%edx)
  400c2c:	39 f0                	cmp    %esi,%eax
  400c2e:	75 f0                	jne    400c20 <_ZNSt6stringC1EPc+0x60>
  400c30:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
  400c37:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400c3a:	5b                   	pop    %ebx
  400c3b:	5e                   	pop    %esi
  400c3c:	5f                   	pop    %edi
  400c3d:	5d                   	pop    %ebp
  400c3e:	c3                   	ret    
  400c3f:	90                   	nop
  400c40:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
  400c47:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
  400c4d:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
  400c54:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400c57:	5b                   	pop    %ebx
  400c58:	5e                   	pop    %esi
  400c59:	5f                   	pop    %edi
  400c5a:	5d                   	pop    %ebp
  400c5b:	c3                   	ret    
  400c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00400c60 <_ZNSt6stringD1Ev>:
  400c60:	55                   	push   %ebp
  400c61:	89 e5                	mov    %esp,%ebp
  400c63:	53                   	push   %ebx
  400c64:	e8 53 19 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400c69:	81 c3 13 34 00 00    	add    $0x3413,%ebx
  400c6f:	83 ec 04             	sub    $0x4,%esp
  400c72:	8b 45 08             	mov    0x8(%ebp),%eax
  400c75:	8b 00                	mov    (%eax),%eax
  400c77:	85 c0                	test   %eax,%eax
  400c79:	74 0c                	je     400c87 <_ZNSt6stringD1Ev+0x27>
  400c7b:	83 ec 0c             	sub    $0xc,%esp
  400c7e:	50                   	push   %eax
  400c7f:	e8 7c fc ff ff       	call   400900 <_ZdaPv>
  400c84:	83 c4 10             	add    $0x10,%esp
  400c87:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400c8a:	c9                   	leave  
  400c8b:	c3                   	ret    
  400c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00400c90 <_ZNKSt6string3lenEv>:
  400c90:	55                   	push   %ebp
  400c91:	89 e5                	mov    %esp,%ebp
  400c93:	8b 45 08             	mov    0x8(%ebp),%eax
  400c96:	5d                   	pop    %ebp
  400c97:	8b 40 04             	mov    0x4(%eax),%eax
  400c9a:	c3                   	ret    
  400c9b:	90                   	nop
  400c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00400ca0 <_ZNKSt6string12getAvailableEv>:
  400ca0:	55                   	push   %ebp
  400ca1:	89 e5                	mov    %esp,%ebp
  400ca3:	8b 45 08             	mov    0x8(%ebp),%eax
  400ca6:	5d                   	pop    %ebp
  400ca7:	8b 40 08             	mov    0x8(%eax),%eax
  400caa:	c3                   	ret    
  400cab:	90                   	nop
  400cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00400cb0 <_ZNKSt6string5indexEc>:
  400cb0:	55                   	push   %ebp
  400cb1:	89 e5                	mov    %esp,%ebp
  400cb3:	53                   	push   %ebx
  400cb4:	8b 45 08             	mov    0x8(%ebp),%eax
  400cb7:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  400cbb:	8b 50 04             	mov    0x4(%eax),%edx
  400cbe:	85 d2                	test   %edx,%edx
  400cc0:	74 2e                	je     400cf0 <_ZNKSt6string5indexEc+0x40>
  400cc2:	8b 18                	mov    (%eax),%ebx
  400cc4:	31 c0                	xor    %eax,%eax
  400cc6:	eb 0f                	jmp    400cd7 <_ZNKSt6string5indexEc+0x27>
  400cc8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400ccf:	90                   	nop
  400cd0:	83 c0 01             	add    $0x1,%eax
  400cd3:	39 d0                	cmp    %edx,%eax
  400cd5:	74 19                	je     400cf0 <_ZNKSt6string5indexEc+0x40>
  400cd7:	38 0c 03             	cmp    %cl,(%ebx,%eax,1)
  400cda:	75 f4                	jne    400cd0 <_ZNKSt6string5indexEc+0x20>
  400cdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400cdf:	c9                   	leave  
  400ce0:	c3                   	ret    
  400ce1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400ce8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400cef:	90                   	nop
  400cf0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400cf3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400cf8:	c9                   	leave  
  400cf9:	c3                   	ret    
  400cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00400d00 <_ZNSt6string6upcaseEjj>:
  400d00:	55                   	push   %ebp
  400d01:	89 e5                	mov    %esp,%ebp
  400d03:	57                   	push   %edi
  400d04:	8b 45 0c             	mov    0xc(%ebp),%eax
  400d07:	56                   	push   %esi
  400d08:	8b 75 08             	mov    0x8(%ebp),%esi
  400d0b:	53                   	push   %ebx
  400d0c:	3b 45 10             	cmp    0x10(%ebp),%eax
  400d0f:	73 2d                	jae    400d3e <_ZNSt6string6upcaseEjj+0x3e>
  400d11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400d18:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400d1f:	90                   	nop
  400d20:	8b 0e                	mov    (%esi),%ecx
  400d22:	01 c1                	add    %eax,%ecx
  400d24:	0f b6 11             	movzbl (%ecx),%edx
  400d27:	8d 7a 9f             	lea    -0x61(%edx),%edi
  400d2a:	89 fb                	mov    %edi,%ebx
  400d2c:	80 fb 19             	cmp    $0x19,%bl
  400d2f:	77 05                	ja     400d36 <_ZNSt6string6upcaseEjj+0x36>
  400d31:	83 ea 20             	sub    $0x20,%edx
  400d34:	88 11                	mov    %dl,(%ecx)
  400d36:	83 c0 01             	add    $0x1,%eax
  400d39:	39 45 10             	cmp    %eax,0x10(%ebp)
  400d3c:	75 e2                	jne    400d20 <_ZNSt6string6upcaseEjj+0x20>
  400d3e:	5b                   	pop    %ebx
  400d3f:	5e                   	pop    %esi
  400d40:	5f                   	pop    %edi
  400d41:	5d                   	pop    %ebp
  400d42:	c3                   	ret    
  400d43:	90                   	nop
  400d44:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400d4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400d4f:	90                   	nop

00400d50 <_ZNSt6string8downcaseEjj>:
  400d50:	55                   	push   %ebp
  400d51:	89 e5                	mov    %esp,%ebp
  400d53:	57                   	push   %edi
  400d54:	8b 45 0c             	mov    0xc(%ebp),%eax
  400d57:	56                   	push   %esi
  400d58:	8b 75 08             	mov    0x8(%ebp),%esi
  400d5b:	53                   	push   %ebx
  400d5c:	3b 45 10             	cmp    0x10(%ebp),%eax
  400d5f:	73 2d                	jae    400d8e <_ZNSt6string8downcaseEjj+0x3e>
  400d61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400d68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400d6f:	90                   	nop
  400d70:	8b 0e                	mov    (%esi),%ecx
  400d72:	01 c1                	add    %eax,%ecx
  400d74:	0f b6 11             	movzbl (%ecx),%edx
  400d77:	8d 7a bf             	lea    -0x41(%edx),%edi
  400d7a:	89 fb                	mov    %edi,%ebx
  400d7c:	80 fb 19             	cmp    $0x19,%bl
  400d7f:	77 05                	ja     400d86 <_ZNSt6string8downcaseEjj+0x36>
  400d81:	83 c2 20             	add    $0x20,%edx
  400d84:	88 11                	mov    %dl,(%ecx)
  400d86:	83 c0 01             	add    $0x1,%eax
  400d89:	39 45 10             	cmp    %eax,0x10(%ebp)
  400d8c:	75 e2                	jne    400d70 <_ZNSt6string8downcaseEjj+0x20>
  400d8e:	5b                   	pop    %ebx
  400d8f:	5e                   	pop    %esi
  400d90:	5f                   	pop    %edi
  400d91:	5d                   	pop    %ebp
  400d92:	c3                   	ret    
  400d93:	90                   	nop
  400d94:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400d9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400d9f:	90                   	nop

00400da0 <_ZNKSt6stringixEj>:
  400da0:	55                   	push   %ebp
  400da1:	89 e5                	mov    %esp,%ebp
  400da3:	8b 55 08             	mov    0x8(%ebp),%edx
  400da6:	8b 45 0c             	mov    0xc(%ebp),%eax
  400da9:	39 42 04             	cmp    %eax,0x4(%edx)
  400dac:	76 12                	jbe    400dc0 <_ZNKSt6stringixEj+0x20>
  400dae:	8b 12                	mov    (%edx),%edx
  400db0:	5d                   	pop    %ebp
  400db1:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
  400db5:	c3                   	ret    
  400db6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400dbd:	8d 76 00             	lea    0x0(%esi),%esi
  400dc0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400dc5:	5d                   	pop    %ebp
  400dc6:	c3                   	ret    
  400dc7:	90                   	nop
  400dc8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400dcf:	90                   	nop

00400dd0 <_ZNSt6stringC1ERKS_>:
  400dd0:	55                   	push   %ebp
  400dd1:	89 e5                	mov    %esp,%ebp
  400dd3:	57                   	push   %edi
  400dd4:	56                   	push   %esi
  400dd5:	53                   	push   %ebx
  400dd6:	e8 e1 17 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400ddb:	81 c3 a1 32 00 00    	add    $0x32a1,%ebx
  400de1:	83 ec 28             	sub    $0x28,%esp
  400de4:	8b 45 0c             	mov    0xc(%ebp),%eax
  400de7:	8b 7d 08             	mov    0x8(%ebp),%edi
  400dea:	8b 40 04             	mov    0x4(%eax),%eax
  400ded:	89 47 04             	mov    %eax,0x4(%edi)
  400df0:	50                   	push   %eax
  400df1:	e8 aa fa ff ff       	call   4008a0 <_Znam>
  400df6:	8b 57 04             	mov    0x4(%edi),%edx
  400df9:	83 c4 10             	add    $0x10,%esp
  400dfc:	89 07                	mov    %eax,(%edi)
  400dfe:	85 d2                	test   %edx,%edx
  400e00:	74 31                	je     400e33 <_ZNSt6stringC1ERKS_+0x63>
  400e02:	89 c6                	mov    %eax,%esi
  400e04:	31 d2                	xor    %edx,%edx
  400e06:	eb 0a                	jmp    400e12 <_ZNSt6stringC1ERKS_+0x42>
  400e08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400e0f:	90                   	nop
  400e10:	8b 37                	mov    (%edi),%esi
  400e12:	83 ec 08             	sub    $0x8,%esp
  400e15:	01 d6                	add    %edx,%esi
  400e17:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  400e1a:	52                   	push   %edx
  400e1b:	ff 75 0c             	push   0xc(%ebp)
  400e1e:	e8 7d ff ff ff       	call   400da0 <_ZNKSt6stringixEj>
  400e23:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  400e26:	83 c4 10             	add    $0x10,%esp
  400e29:	88 06                	mov    %al,(%esi)
  400e2b:	83 c2 01             	add    $0x1,%edx
  400e2e:	39 57 04             	cmp    %edx,0x4(%edi)
  400e31:	77 dd                	ja     400e10 <_ZNSt6stringC1ERKS_+0x40>
  400e33:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e36:	8b 40 08             	mov    0x8(%eax),%eax
  400e39:	89 47 08             	mov    %eax,0x8(%edi)
  400e3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400e3f:	5b                   	pop    %ebx
  400e40:	5e                   	pop    %esi
  400e41:	5f                   	pop    %edi
  400e42:	5d                   	pop    %ebp
  400e43:	c3                   	ret    
  400e44:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400e4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400e4f:	90                   	nop

00400e50 <_ZNSt6stringixEj>:
  400e50:	55                   	push   %ebp
  400e51:	89 e5                	mov    %esp,%ebp
  400e53:	8b 45 08             	mov    0x8(%ebp),%eax
  400e56:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  400e59:	8b 10                	mov    (%eax),%edx
  400e5b:	39 48 04             	cmp    %ecx,0x4(%eax)
  400e5e:	76 02                	jbe    400e62 <_ZNSt6stringixEj+0x12>
  400e60:	01 ca                	add    %ecx,%edx
  400e62:	89 d0                	mov    %edx,%eax
  400e64:	5d                   	pop    %ebp
  400e65:	c3                   	ret    
  400e66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400e6d:	8d 76 00             	lea    0x0(%esi),%esi

00400e70 <_ZNSt6stringC1ERS_>:
  400e70:	55                   	push   %ebp
  400e71:	89 e5                	mov    %esp,%ebp
  400e73:	57                   	push   %edi
  400e74:	56                   	push   %esi
  400e75:	53                   	push   %ebx
  400e76:	e8 41 17 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400e7b:	81 c3 01 32 00 00    	add    $0x3201,%ebx
  400e81:	83 ec 18             	sub    $0x18,%esp
  400e84:	8b 45 0c             	mov    0xc(%ebp),%eax
  400e87:	8b 7d 08             	mov    0x8(%ebp),%edi
  400e8a:	8b 40 04             	mov    0x4(%eax),%eax
  400e8d:	89 47 04             	mov    %eax,0x4(%edi)
  400e90:	50                   	push   %eax
  400e91:	e8 0a fa ff ff       	call   4008a0 <_Znam>
  400e96:	83 c4 10             	add    $0x10,%esp
  400e99:	89 07                	mov    %eax,(%edi)
  400e9b:	8b 47 04             	mov    0x4(%edi),%eax
  400e9e:	85 c0                	test   %eax,%eax
  400ea0:	74 2d                	je     400ecf <_ZNSt6stringC1ERS_+0x5f>
  400ea2:	31 f6                	xor    %esi,%esi
  400ea4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400eab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400eaf:	90                   	nop
  400eb0:	83 ec 08             	sub    $0x8,%esp
  400eb3:	56                   	push   %esi
  400eb4:	ff 75 0c             	push   0xc(%ebp)
  400eb7:	e8 94 ff ff ff       	call   400e50 <_ZNSt6stringixEj>
  400ebc:	83 c4 10             	add    $0x10,%esp
  400ebf:	0f b6 08             	movzbl (%eax),%ecx
  400ec2:	8b 07                	mov    (%edi),%eax
  400ec4:	88 0c 30             	mov    %cl,(%eax,%esi,1)
  400ec7:	83 c6 01             	add    $0x1,%esi
  400eca:	39 77 04             	cmp    %esi,0x4(%edi)
  400ecd:	77 e1                	ja     400eb0 <_ZNSt6stringC1ERS_+0x40>
  400ecf:	8b 45 0c             	mov    0xc(%ebp),%eax
  400ed2:	8b 40 08             	mov    0x8(%eax),%eax
  400ed5:	89 47 08             	mov    %eax,0x8(%edi)
  400ed8:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400edb:	5b                   	pop    %ebx
  400edc:	5e                   	pop    %esi
  400edd:	5f                   	pop    %edi
  400ede:	5d                   	pop    %ebp
  400edf:	c3                   	ret    

00400ee0 <_ZNSt6stringpLEc>:
  400ee0:	55                   	push   %ebp
  400ee1:	89 e5                	mov    %esp,%ebp
  400ee3:	53                   	push   %ebx
  400ee4:	8b 45 08             	mov    0x8(%ebp),%eax
  400ee7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  400eea:	8b 50 08             	mov    0x8(%eax),%edx
  400eed:	85 d2                	test   %edx,%edx
  400eef:	74 14                	je     400f05 <_ZNSt6stringpLEc+0x25>
  400ef1:	83 ea 01             	sub    $0x1,%edx
  400ef4:	89 50 08             	mov    %edx,0x8(%eax)
  400ef7:	8b 50 04             	mov    0x4(%eax),%edx
  400efa:	8d 5a 01             	lea    0x1(%edx),%ebx
  400efd:	89 58 04             	mov    %ebx,0x4(%eax)
  400f00:	8b 18                	mov    (%eax),%ebx
  400f02:	88 0c 13             	mov    %cl,(%ebx,%edx,1)
  400f05:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  400f08:	c9                   	leave  
  400f09:	c3                   	ret    
  400f0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00400f10 <_ZNSt6stringpLERKS_>:
  400f10:	55                   	push   %ebp
  400f11:	89 e5                	mov    %esp,%ebp
  400f13:	57                   	push   %edi
  400f14:	56                   	push   %esi
  400f15:	53                   	push   %ebx
  400f16:	e8 a1 16 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  400f1b:	81 c3 61 31 00 00    	add    $0x3161,%ebx
  400f21:	83 ec 28             	sub    $0x28,%esp
  400f24:	8b 7d 0c             	mov    0xc(%ebp),%edi
  400f27:	8b 55 08             	mov    0x8(%ebp),%edx
  400f2a:	8b 47 04             	mov    0x4(%edi),%eax
  400f2d:	03 42 04             	add    0x4(%edx),%eax
  400f30:	50                   	push   %eax
  400f31:	e8 6a f9 ff ff       	call   4008a0 <_Znam>
  400f36:	83 c4 10             	add    $0x10,%esp
  400f39:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  400f3c:	8b 45 08             	mov    0x8(%ebp),%eax
  400f3f:	8b 70 04             	mov    0x4(%eax),%esi
  400f42:	85 f6                	test   %esi,%esi
  400f44:	74 2b                	je     400f71 <_ZNSt6stringpLERKS_+0x61>
  400f46:	8b 45 08             	mov    0x8(%ebp),%eax
  400f49:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  400f4c:	8b 00                	mov    (%eax),%eax
  400f4e:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
  400f51:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  400f54:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400f5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  400f5f:	90                   	nop
  400f60:	0f b6 08             	movzbl (%eax),%ecx
  400f63:	83 c2 01             	add    $0x1,%edx
  400f66:	83 c0 01             	add    $0x1,%eax
  400f69:	88 4a ff             	mov    %cl,-0x1(%edx)
  400f6c:	3b 45 e0             	cmp    -0x20(%ebp),%eax
  400f6f:	75 ef                	jne    400f60 <_ZNSt6stringpLERKS_+0x50>
  400f71:	8b 47 04             	mov    0x4(%edi),%eax
  400f74:	85 c0                	test   %eax,%eax
  400f76:	74 32                	je     400faa <_ZNSt6stringpLERKS_+0x9a>
  400f78:	31 d2                	xor    %edx,%edx
  400f7a:	89 f9                	mov    %edi,%ecx
  400f7c:	89 d7                	mov    %edx,%edi
  400f7e:	eb 06                	jmp    400f86 <_ZNSt6stringpLERKS_+0x76>
  400f80:	8b 45 08             	mov    0x8(%ebp),%eax
  400f83:	8b 70 04             	mov    0x4(%eax),%esi
  400f86:	83 ec 08             	sub    $0x8,%esp
  400f89:	89 4d 0c             	mov    %ecx,0xc(%ebp)
  400f8c:	01 fe                	add    %edi,%esi
  400f8e:	03 75 e4             	add    -0x1c(%ebp),%esi
  400f91:	57                   	push   %edi
  400f92:	83 c7 01             	add    $0x1,%edi
  400f95:	51                   	push   %ecx
  400f96:	e8 05 fe ff ff       	call   400da0 <_ZNKSt6stringixEj>
  400f9b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  400f9e:	83 c4 10             	add    $0x10,%esp
  400fa1:	88 06                	mov    %al,(%esi)
  400fa3:	39 79 04             	cmp    %edi,0x4(%ecx)
  400fa6:	77 d8                	ja     400f80 <_ZNSt6stringpLERKS_+0x70>
  400fa8:	89 cf                	mov    %ecx,%edi
  400faa:	8b 45 08             	mov    0x8(%ebp),%eax
  400fad:	8b 00                	mov    (%eax),%eax
  400faf:	85 c0                	test   %eax,%eax
  400fb1:	74 0c                	je     400fbf <_ZNSt6stringpLERKS_+0xaf>
  400fb3:	83 ec 0c             	sub    $0xc,%esp
  400fb6:	50                   	push   %eax
  400fb7:	e8 44 f9 ff ff       	call   400900 <_ZdaPv>
  400fbc:	83 c4 10             	add    $0x10,%esp
  400fbf:	8b 45 08             	mov    0x8(%ebp),%eax
  400fc2:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  400fc5:	89 18                	mov    %ebx,(%eax)
  400fc7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  400fca:	8b 47 04             	mov    0x4(%edi),%eax
  400fcd:	01 43 04             	add    %eax,0x4(%ebx)
  400fd0:	8d 65 f4             	lea    -0xc(%ebp),%esp
  400fd3:	89 d8                	mov    %ebx,%eax
  400fd5:	5b                   	pop    %ebx
  400fd6:	5e                   	pop    %esi
  400fd7:	5f                   	pop    %edi
  400fd8:	5d                   	pop    %ebp
  400fd9:	c3                   	ret    
  400fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00400fe0 <_ZNKSt6string4findEc>:
  400fe0:	55                   	push   %ebp
  400fe1:	89 e5                	mov    %esp,%ebp
  400fe3:	53                   	push   %ebx
  400fe4:	8b 45 08             	mov    0x8(%ebp),%eax
  400fe7:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  400feb:	8b 50 04             	mov    0x4(%eax),%edx
  400fee:	85 d2                	test   %edx,%edx
  400ff0:	74 2e                	je     401020 <_ZNKSt6string4findEc+0x40>
  400ff2:	8b 18                	mov    (%eax),%ebx
  400ff4:	31 c0                	xor    %eax,%eax
  400ff6:	eb 0f                	jmp    401007 <_ZNKSt6string4findEc+0x27>
  400ff8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  400fff:	90                   	nop
  401000:	83 c0 01             	add    $0x1,%eax
  401003:	39 d0                	cmp    %edx,%eax
  401005:	74 19                	je     401020 <_ZNKSt6string4findEc+0x40>
  401007:	38 0c 03             	cmp    %cl,(%ebx,%eax,1)
  40100a:	75 f4                	jne    401000 <_ZNKSt6string4findEc+0x20>
  40100c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40100f:	c9                   	leave  
  401010:	c3                   	ret    
  401011:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401018:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40101f:	90                   	nop
  401020:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  401023:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401028:	c9                   	leave  
  401029:	c3                   	ret    
  40102a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00401030 <_ZStplRKSt6stringPKc>:
  401030:	55                   	push   %ebp
  401031:	89 e5                	mov    %esp,%ebp
  401033:	57                   	push   %edi
  401034:	56                   	push   %esi
  401035:	8d 7d dc             	lea    -0x24(%ebp),%edi
  401038:	8d 75 d0             	lea    -0x30(%ebp),%esi
  40103b:	53                   	push   %ebx
  40103c:	e8 7b 15 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  401041:	81 c3 3b 30 00 00    	add    $0x303b,%ebx
  401047:	83 ec 34             	sub    $0x34,%esp
  40104a:	ff 75 10             	push   0x10(%ebp)
  40104d:	57                   	push   %edi
  40104e:	e8 cd fa ff ff       	call   400b20 <_ZNSt6stringC1EPKc>
  401053:	58                   	pop    %eax
  401054:	5a                   	pop    %edx
  401055:	ff 75 0c             	push   0xc(%ebp)
  401058:	56                   	push   %esi
  401059:	e8 72 fd ff ff       	call   400dd0 <_ZNSt6stringC1ERKS_>
  40105e:	59                   	pop    %ecx
  40105f:	58                   	pop    %eax
  401060:	57                   	push   %edi
  401061:	56                   	push   %esi
  401062:	e8 a9 fe ff ff       	call   400f10 <_ZNSt6stringpLERKS_>
  401067:	5a                   	pop    %edx
  401068:	59                   	pop    %ecx
  401069:	50                   	push   %eax
  40106a:	ff 75 08             	push   0x8(%ebp)
  40106d:	e8 fe fd ff ff       	call   400e70 <_ZNSt6stringC1ERS_>
  401072:	89 34 24             	mov    %esi,(%esp)
  401075:	e8 e6 fb ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  40107a:	89 3c 24             	mov    %edi,(%esp)
  40107d:	e8 de fb ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  401082:	8b 45 08             	mov    0x8(%ebp),%eax
  401085:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401088:	5b                   	pop    %ebx
  401089:	5e                   	pop    %esi
  40108a:	5f                   	pop    %edi
  40108b:	5d                   	pop    %ebp
  40108c:	c2 04 00             	ret    $0x4
  40108f:	90                   	nop

00401090 <_ZStplcRKSt6string>:
  401090:	55                   	push   %ebp
  401091:	89 e5                	mov    %esp,%ebp
  401093:	57                   	push   %edi
  401094:	56                   	push   %esi
  401095:	8d 7d dc             	lea    -0x24(%ebp),%edi
  401098:	53                   	push   %ebx
  401099:	e8 1e 15 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40109e:	81 c3 de 2f 00 00    	add    $0x2fde,%ebx
  4010a4:	83 ec 24             	sub    $0x24,%esp
  4010a7:	0f be 45 0c          	movsbl 0xc(%ebp),%eax
  4010ab:	8b 75 08             	mov    0x8(%ebp),%esi
  4010ae:	50                   	push   %eax
  4010af:	57                   	push   %edi
  4010b0:	e8 2b fa ff ff       	call   400ae0 <_ZNSt6stringC1Ec>
  4010b5:	58                   	pop    %eax
  4010b6:	5a                   	pop    %edx
  4010b7:	ff 75 10             	push   0x10(%ebp)
  4010ba:	57                   	push   %edi
  4010bb:	e8 50 fe ff ff       	call   400f10 <_ZNSt6stringpLERKS_>
  4010c0:	59                   	pop    %ecx
  4010c1:	5a                   	pop    %edx
  4010c2:	50                   	push   %eax
  4010c3:	56                   	push   %esi
  4010c4:	e8 a7 fd ff ff       	call   400e70 <_ZNSt6stringC1ERS_>
  4010c9:	89 3c 24             	mov    %edi,(%esp)
  4010cc:	e8 8f fb ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  4010d1:	8d 65 f4             	lea    -0xc(%ebp),%esp
  4010d4:	89 f0                	mov    %esi,%eax
  4010d6:	5b                   	pop    %ebx
  4010d7:	5e                   	pop    %esi
  4010d8:	5f                   	pop    %edi
  4010d9:	5d                   	pop    %ebp
  4010da:	c2 04 00             	ret    $0x4
  4010dd:	8d 76 00             	lea    0x0(%esi),%esi

004010e0 <_ZStplPKcRKSt6string>:
  4010e0:	55                   	push   %ebp
  4010e1:	89 e5                	mov    %esp,%ebp
  4010e3:	57                   	push   %edi
  4010e4:	56                   	push   %esi
  4010e5:	8d 7d dc             	lea    -0x24(%ebp),%edi
  4010e8:	8d 75 d0             	lea    -0x30(%ebp),%esi
  4010eb:	53                   	push   %ebx
  4010ec:	e8 cb 14 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4010f1:	81 c3 8b 2f 00 00    	add    $0x2f8b,%ebx
  4010f7:	83 ec 34             	sub    $0x34,%esp
  4010fa:	ff 75 0c             	push   0xc(%ebp)
  4010fd:	57                   	push   %edi
  4010fe:	e8 1d fa ff ff       	call   400b20 <_ZNSt6stringC1EPKc>
  401103:	58                   	pop    %eax
  401104:	5a                   	pop    %edx
  401105:	ff 75 10             	push   0x10(%ebp)
  401108:	56                   	push   %esi
  401109:	e8 c2 fc ff ff       	call   400dd0 <_ZNSt6stringC1ERKS_>
  40110e:	59                   	pop    %ecx
  40110f:	58                   	pop    %eax
  401110:	57                   	push   %edi
  401111:	56                   	push   %esi
  401112:	e8 f9 fd ff ff       	call   400f10 <_ZNSt6stringpLERKS_>
  401117:	5a                   	pop    %edx
  401118:	59                   	pop    %ecx
  401119:	50                   	push   %eax
  40111a:	ff 75 08             	push   0x8(%ebp)
  40111d:	e8 4e fd ff ff       	call   400e70 <_ZNSt6stringC1ERS_>
  401122:	89 34 24             	mov    %esi,(%esp)
  401125:	e8 36 fb ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  40112a:	89 3c 24             	mov    %edi,(%esp)
  40112d:	e8 2e fb ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  401132:	8b 45 08             	mov    0x8(%ebp),%eax
  401135:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401138:	5b                   	pop    %ebx
  401139:	5e                   	pop    %esi
  40113a:	5f                   	pop    %edi
  40113b:	5d                   	pop    %ebp
  40113c:	c2 04 00             	ret    $0x4
  40113f:	90                   	nop

00401140 <_ZStplRKSt6stringS1_>:
  401140:	55                   	push   %ebp
  401141:	89 e5                	mov    %esp,%ebp
  401143:	57                   	push   %edi
  401144:	56                   	push   %esi
  401145:	8d 7d dc             	lea    -0x24(%ebp),%edi
  401148:	53                   	push   %ebx
  401149:	e8 6e 14 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40114e:	81 c3 2e 2f 00 00    	add    $0x2f2e,%ebx
  401154:	83 ec 24             	sub    $0x24,%esp
  401157:	ff 75 0c             	push   0xc(%ebp)
  40115a:	8b 75 08             	mov    0x8(%ebp),%esi
  40115d:	57                   	push   %edi
  40115e:	e8 6d fc ff ff       	call   400dd0 <_ZNSt6stringC1ERKS_>
  401163:	58                   	pop    %eax
  401164:	5a                   	pop    %edx
  401165:	ff 75 10             	push   0x10(%ebp)
  401168:	57                   	push   %edi
  401169:	e8 a2 fd ff ff       	call   400f10 <_ZNSt6stringpLERKS_>
  40116e:	59                   	pop    %ecx
  40116f:	5a                   	pop    %edx
  401170:	50                   	push   %eax
  401171:	56                   	push   %esi
  401172:	e8 f9 fc ff ff       	call   400e70 <_ZNSt6stringC1ERS_>
  401177:	89 3c 24             	mov    %edi,(%esp)
  40117a:	e8 e1 fa ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  40117f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401182:	89 f0                	mov    %esi,%eax
  401184:	5b                   	pop    %ebx
  401185:	5e                   	pop    %esi
  401186:	5f                   	pop    %edi
  401187:	5d                   	pop    %ebp
  401188:	c2 04 00             	ret    $0x4
  40118b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  40118f:	90                   	nop

00401190 <_ZStplRKSt6stringc>:
  401190:	55                   	push   %ebp
  401191:	89 e5                	mov    %esp,%ebp
  401193:	57                   	push   %edi
  401194:	56                   	push   %esi
  401195:	8d 7d dc             	lea    -0x24(%ebp),%edi
  401198:	8d 75 d0             	lea    -0x30(%ebp),%esi
  40119b:	53                   	push   %ebx
  40119c:	e8 1b 14 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4011a1:	81 c3 db 2e 00 00    	add    $0x2edb,%ebx
  4011a7:	83 ec 34             	sub    $0x34,%esp
  4011aa:	0f be 45 10          	movsbl 0x10(%ebp),%eax
  4011ae:	50                   	push   %eax
  4011af:	57                   	push   %edi
  4011b0:	e8 2b f9 ff ff       	call   400ae0 <_ZNSt6stringC1Ec>
  4011b5:	58                   	pop    %eax
  4011b6:	5a                   	pop    %edx
  4011b7:	ff 75 0c             	push   0xc(%ebp)
  4011ba:	56                   	push   %esi
  4011bb:	e8 10 fc ff ff       	call   400dd0 <_ZNSt6stringC1ERKS_>
  4011c0:	83 c4 0c             	add    $0xc,%esp
  4011c3:	57                   	push   %edi
  4011c4:	56                   	push   %esi
  4011c5:	ff 75 08             	push   0x8(%ebp)
  4011c8:	e8 73 ff ff ff       	call   401140 <_ZStplRKSt6stringS1_>
  4011cd:	56                   	push   %esi
  4011ce:	e8 8d fa ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  4011d3:	89 3c 24             	mov    %edi,(%esp)
  4011d6:	e8 85 fa ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  4011db:	8b 45 08             	mov    0x8(%ebp),%eax
  4011de:	8d 65 f4             	lea    -0xc(%ebp),%esp
  4011e1:	5b                   	pop    %ebx
  4011e2:	5e                   	pop    %esi
  4011e3:	5f                   	pop    %edi
  4011e4:	5d                   	pop    %ebp
  4011e5:	c2 04 00             	ret    $0x4
  4011e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4011ef:	90                   	nop

004011f0 <_ZSteqRKSt6stringS1_>:
  4011f0:	55                   	push   %ebp
  4011f1:	89 e5                	mov    %esp,%ebp
  4011f3:	57                   	push   %edi
  4011f4:	56                   	push   %esi
  4011f5:	53                   	push   %ebx
  4011f6:	e8 c1 13 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4011fb:	81 c3 81 2e 00 00    	add    $0x2e81,%ebx
  401201:	83 ec 28             	sub    $0x28,%esp
  401204:	ff 75 08             	push   0x8(%ebp)
  401207:	e8 84 fa ff ff       	call   400c90 <_ZNKSt6string3lenEv>
  40120c:	59                   	pop    %ecx
  40120d:	ff 75 0c             	push   0xc(%ebp)
  401210:	89 c6                	mov    %eax,%esi
  401212:	e8 79 fa ff ff       	call   400c90 <_ZNKSt6string3lenEv>
  401217:	83 c4 10             	add    $0x10,%esp
  40121a:	89 c2                	mov    %eax,%edx
  40121c:	31 c0                	xor    %eax,%eax
  40121e:	39 d6                	cmp    %edx,%esi
  401220:	74 0e                	je     401230 <_ZSteqRKSt6stringS1_+0x40>
  401222:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401225:	5b                   	pop    %ebx
  401226:	5e                   	pop    %esi
  401227:	5f                   	pop    %edi
  401228:	5d                   	pop    %ebp
  401229:	c3                   	ret    
  40122a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401230:	83 ec 0c             	sub    $0xc,%esp
  401233:	ff 75 08             	push   0x8(%ebp)
  401236:	31 ff                	xor    %edi,%edi
  401238:	e8 53 fa ff ff       	call   400c90 <_ZNKSt6string3lenEv>
  40123d:	83 c4 10             	add    $0x10,%esp
  401240:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  401243:	85 c0                	test   %eax,%eax
  401245:	75 11                	jne    401258 <_ZSteqRKSt6stringS1_+0x68>
  401247:	eb 31                	jmp    40127a <_ZSteqRKSt6stringS1_+0x8a>
  401249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401250:	83 c7 01             	add    $0x1,%edi
  401253:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  401256:	74 22                	je     40127a <_ZSteqRKSt6stringS1_+0x8a>
  401258:	83 ec 08             	sub    $0x8,%esp
  40125b:	57                   	push   %edi
  40125c:	ff 75 08             	push   0x8(%ebp)
  40125f:	e8 3c fb ff ff       	call   400da0 <_ZNKSt6stringixEj>
  401264:	89 c6                	mov    %eax,%esi
  401266:	58                   	pop    %eax
  401267:	5a                   	pop    %edx
  401268:	57                   	push   %edi
  401269:	ff 75 0c             	push   0xc(%ebp)
  40126c:	e8 2f fb ff ff       	call   400da0 <_ZNKSt6stringixEj>
  401271:	89 f1                	mov    %esi,%ecx
  401273:	83 c4 10             	add    $0x10,%esp
  401276:	38 c1                	cmp    %al,%cl
  401278:	74 d6                	je     401250 <_ZSteqRKSt6stringS1_+0x60>
  40127a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  40127d:	0f 94 c0             	sete   %al
  401280:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401283:	5b                   	pop    %ebx
  401284:	5e                   	pop    %esi
  401285:	5f                   	pop    %edi
  401286:	5d                   	pop    %ebp
  401287:	c3                   	ret    
  401288:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40128f:	90                   	nop

00401290 <_ZSteqRKSt6stringPKc>:
  401290:	55                   	push   %ebp
  401291:	89 e5                	mov    %esp,%ebp
  401293:	57                   	push   %edi
  401294:	56                   	push   %esi
  401295:	8d 7d dc             	lea    -0x24(%ebp),%edi
  401298:	53                   	push   %ebx
  401299:	e8 1e 13 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40129e:	81 c3 de 2d 00 00    	add    $0x2dde,%ebx
  4012a4:	83 ec 24             	sub    $0x24,%esp
  4012a7:	ff 75 0c             	push   0xc(%ebp)
  4012aa:	57                   	push   %edi
  4012ab:	e8 70 f8 ff ff       	call   400b20 <_ZNSt6stringC1EPKc>
  4012b0:	58                   	pop    %eax
  4012b1:	5a                   	pop    %edx
  4012b2:	57                   	push   %edi
  4012b3:	ff 75 08             	push   0x8(%ebp)
  4012b6:	e8 35 ff ff ff       	call   4011f0 <_ZSteqRKSt6stringS1_>
  4012bb:	89 3c 24             	mov    %edi,(%esp)
  4012be:	89 c6                	mov    %eax,%esi
  4012c0:	e8 9b f9 ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  4012c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
  4012c8:	89 f0                	mov    %esi,%eax
  4012ca:	5b                   	pop    %ebx
  4012cb:	5e                   	pop    %esi
  4012cc:	5f                   	pop    %edi
  4012cd:	5d                   	pop    %ebp
  4012ce:	c3                   	ret    
  4012cf:	90                   	nop

004012d0 <_ZSteqcRKSt6string>:
  4012d0:	55                   	push   %ebp
  4012d1:	89 e5                	mov    %esp,%ebp
  4012d3:	57                   	push   %edi
  4012d4:	56                   	push   %esi
  4012d5:	8d 7d dc             	lea    -0x24(%ebp),%edi
  4012d8:	53                   	push   %ebx
  4012d9:	e8 de 12 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4012de:	81 c3 9e 2d 00 00    	add    $0x2d9e,%ebx
  4012e4:	83 ec 24             	sub    $0x24,%esp
  4012e7:	0f be 45 08          	movsbl 0x8(%ebp),%eax
  4012eb:	50                   	push   %eax
  4012ec:	57                   	push   %edi
  4012ed:	e8 ee f7 ff ff       	call   400ae0 <_ZNSt6stringC1Ec>
  4012f2:	58                   	pop    %eax
  4012f3:	5a                   	pop    %edx
  4012f4:	ff 75 0c             	push   0xc(%ebp)
  4012f7:	57                   	push   %edi
  4012f8:	e8 f3 fe ff ff       	call   4011f0 <_ZSteqRKSt6stringS1_>
  4012fd:	89 3c 24             	mov    %edi,(%esp)
  401300:	89 c6                	mov    %eax,%esi
  401302:	e8 59 f9 ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  401307:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40130a:	89 f0                	mov    %esi,%eax
  40130c:	5b                   	pop    %ebx
  40130d:	5e                   	pop    %esi
  40130e:	5f                   	pop    %edi
  40130f:	5d                   	pop    %ebp
  401310:	c3                   	ret    
  401311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401318:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40131f:	90                   	nop

00401320 <_ZSteqPKcRKSt6string>:
  401320:	55                   	push   %ebp
  401321:	89 e5                	mov    %esp,%ebp
  401323:	57                   	push   %edi
  401324:	56                   	push   %esi
  401325:	8d 7d dc             	lea    -0x24(%ebp),%edi
  401328:	53                   	push   %ebx
  401329:	e8 8e 12 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40132e:	81 c3 4e 2d 00 00    	add    $0x2d4e,%ebx
  401334:	83 ec 24             	sub    $0x24,%esp
  401337:	ff 75 08             	push   0x8(%ebp)
  40133a:	57                   	push   %edi
  40133b:	e8 e0 f7 ff ff       	call   400b20 <_ZNSt6stringC1EPKc>
  401340:	58                   	pop    %eax
  401341:	5a                   	pop    %edx
  401342:	ff 75 0c             	push   0xc(%ebp)
  401345:	57                   	push   %edi
  401346:	e8 a5 fe ff ff       	call   4011f0 <_ZSteqRKSt6stringS1_>
  40134b:	89 3c 24             	mov    %edi,(%esp)
  40134e:	89 c6                	mov    %eax,%esi
  401350:	e8 0b f9 ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  401355:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401358:	89 f0                	mov    %esi,%eax
  40135a:	5b                   	pop    %ebx
  40135b:	5e                   	pop    %esi
  40135c:	5f                   	pop    %edi
  40135d:	5d                   	pop    %ebp
  40135e:	c3                   	ret    
  40135f:	90                   	nop

00401360 <_ZSteqRKSt6stringc>:
  401360:	55                   	push   %ebp
  401361:	89 e5                	mov    %esp,%ebp
  401363:	57                   	push   %edi
  401364:	56                   	push   %esi
  401365:	8d 7d dc             	lea    -0x24(%ebp),%edi
  401368:	53                   	push   %ebx
  401369:	e8 4e 12 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40136e:	81 c3 0e 2d 00 00    	add    $0x2d0e,%ebx
  401374:	83 ec 24             	sub    $0x24,%esp
  401377:	0f be 45 0c          	movsbl 0xc(%ebp),%eax
  40137b:	50                   	push   %eax
  40137c:	57                   	push   %edi
  40137d:	e8 5e f7 ff ff       	call   400ae0 <_ZNSt6stringC1Ec>
  401382:	58                   	pop    %eax
  401383:	5a                   	pop    %edx
  401384:	57                   	push   %edi
  401385:	ff 75 08             	push   0x8(%ebp)
  401388:	e8 63 fe ff ff       	call   4011f0 <_ZSteqRKSt6stringS1_>
  40138d:	89 3c 24             	mov    %edi,(%esp)
  401390:	89 c6                	mov    %eax,%esi
  401392:	e8 c9 f8 ff ff       	call   400c60 <_ZNSt6stringD1Ev>
  401397:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40139a:	89 f0                	mov    %esi,%eax
  40139c:	5b                   	pop    %ebx
  40139d:	5e                   	pop    %esi
  40139e:	5f                   	pop    %edi
  40139f:	5d                   	pop    %ebp
  4013a0:	c3                   	ret    
  4013a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4013a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4013af:	90                   	nop

004013b0 <_ZStneRKSt6stringc>:
  4013b0:	55                   	push   %ebp
  4013b1:	89 e5                	mov    %esp,%ebp
  4013b3:	53                   	push   %ebx
  4013b4:	e8 03 12 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4013b9:	81 c3 c3 2c 00 00    	add    $0x2cc3,%ebx
  4013bf:	83 ec 0c             	sub    $0xc,%esp
  4013c2:	0f be 45 0c          	movsbl 0xc(%ebp),%eax
  4013c6:	50                   	push   %eax
  4013c7:	ff 75 08             	push   0x8(%ebp)
  4013ca:	e8 91 ff ff ff       	call   401360 <_ZSteqRKSt6stringc>
  4013cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4013d2:	c9                   	leave  
  4013d3:	83 f0 01             	xor    $0x1,%eax
  4013d6:	c3                   	ret    
  4013d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4013de:	66 90                	xchg   %ax,%ax

004013e0 <_ZStneRKSt6stringS_>:
  4013e0:	55                   	push   %ebp
  4013e1:	89 e5                	mov    %esp,%ebp
  4013e3:	53                   	push   %ebx
  4013e4:	e8 d3 11 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4013e9:	81 c3 93 2c 00 00    	add    $0x2c93,%ebx
  4013ef:	83 ec 0c             	sub    $0xc,%esp
  4013f2:	ff 75 0c             	push   0xc(%ebp)
  4013f5:	ff 75 08             	push   0x8(%ebp)
  4013f8:	e8 f3 fd ff ff       	call   4011f0 <_ZSteqRKSt6stringS1_>
  4013fd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  401400:	c9                   	leave  
  401401:	83 f0 01             	xor    $0x1,%eax
  401404:	c3                   	ret    
  401405:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40140c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401410 <_ZStneRKSt6stringPKc>:
  401410:	55                   	push   %ebp
  401411:	89 e5                	mov    %esp,%ebp
  401413:	53                   	push   %ebx
  401414:	e8 a3 11 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  401419:	81 c3 63 2c 00 00    	add    $0x2c63,%ebx
  40141f:	83 ec 0c             	sub    $0xc,%esp
  401422:	ff 75 0c             	push   0xc(%ebp)
  401425:	ff 75 08             	push   0x8(%ebp)
  401428:	e8 63 fe ff ff       	call   401290 <_ZSteqRKSt6stringPKc>
  40142d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  401430:	c9                   	leave  
  401431:	83 f0 01             	xor    $0x1,%eax
  401434:	c3                   	ret    
  401435:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40143c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401440 <_ZStnePcRKSt6string>:
  401440:	55                   	push   %ebp
  401441:	89 e5                	mov    %esp,%ebp
  401443:	53                   	push   %ebx
  401444:	e8 73 11 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  401449:	81 c3 33 2c 00 00    	add    $0x2c33,%ebx
  40144f:	83 ec 0c             	sub    $0xc,%esp
  401452:	ff 75 0c             	push   0xc(%ebp)
  401455:	ff 75 08             	push   0x8(%ebp)
  401458:	e8 c3 fe ff ff       	call   401320 <_ZSteqPKcRKSt6string>
  40145d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  401460:	c9                   	leave  
  401461:	83 f0 01             	xor    $0x1,%eax
  401464:	c3                   	ret    
  401465:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40146c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401470 <_ZStnecRKSt6string>:
  401470:	55                   	push   %ebp
  401471:	89 e5                	mov    %esp,%ebp
  401473:	53                   	push   %ebx
  401474:	e8 43 11 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  401479:	81 c3 03 2c 00 00    	add    $0x2c03,%ebx
  40147f:	83 ec 0c             	sub    $0xc,%esp
  401482:	0f be 45 08          	movsbl 0x8(%ebp),%eax
  401486:	ff 75 0c             	push   0xc(%ebp)
  401489:	50                   	push   %eax
  40148a:	e8 41 fe ff ff       	call   4012d0 <_ZSteqcRKSt6string>
  40148f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  401492:	c9                   	leave  
  401493:	83 f0 01             	xor    $0x1,%eax
  401496:	c3                   	ret    
  401497:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40149e:	66 90                	xchg   %ax,%ax

004014a0 <_ZStnePKcRKSt6string>:
  4014a0:	55                   	push   %ebp
  4014a1:	89 e5                	mov    %esp,%ebp
  4014a3:	53                   	push   %ebx
  4014a4:	e8 13 11 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4014a9:	81 c3 d3 2b 00 00    	add    $0x2bd3,%ebx
  4014af:	83 ec 0c             	sub    $0xc,%esp
  4014b2:	ff 75 0c             	push   0xc(%ebp)
  4014b5:	ff 75 08             	push   0x8(%ebp)
  4014b8:	e8 63 fe ff ff       	call   401320 <_ZSteqPKcRKSt6string>
  4014bd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4014c0:	c9                   	leave  
  4014c1:	83 f0 01             	xor    $0x1,%eax
  4014c4:	c3                   	ret    
  4014c5:	90                   	nop
  4014c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4014cd:	8d 76 00             	lea    0x0(%esi),%esi

004014d0 <_ZNSt6string5eraseEjj>:
  4014d0:	55                   	push   %ebp
  4014d1:	89 e5                	mov    %esp,%ebp
  4014d3:	57                   	push   %edi
  4014d4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  4014d7:	8b 45 0c             	mov    0xc(%ebp),%eax
  4014da:	56                   	push   %esi
  4014db:	8b 75 10             	mov    0x10(%ebp),%esi
  4014de:	53                   	push   %ebx
  4014df:	8b 79 04             	mov    0x4(%ecx),%edi
  4014e2:	8d 1c 30             	lea    (%eax,%esi,1),%ebx
  4014e5:	39 fb                	cmp    %edi,%ebx
  4014e7:	77 2f                	ja     401518 <_ZNSt6string5eraseEjj+0x48>
  4014e9:	8d 57 ff             	lea    -0x1(%edi),%edx
  4014ec:	39 d3                	cmp    %edx,%ebx
  4014ee:	74 60                	je     401550 <_ZNSt6string5eraseEjj+0x80>
  4014f0:	89 fa                	mov    %edi,%edx
  4014f2:	29 f2                	sub    %esi,%edx
  4014f4:	39 d0                	cmp    %edx,%eax
  4014f6:	72 2b                	jb     401523 <_ZNSt6string5eraseEjj+0x53>
  4014f8:	eb 12                	jmp    40150c <_ZNSt6string5eraseEjj+0x3c>
  4014fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  401500:	8b 01                	mov    (%ecx),%eax
  401502:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)
  401506:	8b 79 04             	mov    0x4(%ecx),%edi
  401509:	83 c2 01             	add    $0x1,%edx
  40150c:	39 d7                	cmp    %edx,%edi
  40150e:	77 f0                	ja     401500 <_ZNSt6string5eraseEjj+0x30>
  401510:	29 f7                	sub    %esi,%edi
  401512:	01 71 08             	add    %esi,0x8(%ecx)
  401515:	89 79 04             	mov    %edi,0x4(%ecx)
  401518:	5b                   	pop    %ebx
  401519:	5e                   	pop    %esi
  40151a:	5f                   	pop    %edi
  40151b:	5d                   	pop    %ebp
  40151c:	c3                   	ret    
  40151d:	8d 76 00             	lea    0x0(%esi),%esi
  401520:	8d 1c 30             	lea    (%eax,%esi,1),%ebx
  401523:	8b 39                	mov    (%ecx),%edi
  401525:	0f b6 14 1f          	movzbl (%edi,%ebx,1),%edx
  401529:	88 14 07             	mov    %dl,(%edi,%eax,1)
  40152c:	8b 11                	mov    (%ecx),%edx
  40152e:	83 c0 01             	add    $0x1,%eax
  401531:	c6 04 1a 00          	movb   $0x0,(%edx,%ebx,1)
  401535:	8b 79 04             	mov    0x4(%ecx),%edi
  401538:	89 fa                	mov    %edi,%edx
  40153a:	29 f2                	sub    %esi,%edx
  40153c:	39 c2                	cmp    %eax,%edx
  40153e:	77 e0                	ja     401520 <_ZNSt6string5eraseEjj+0x50>
  401540:	eb ca                	jmp    40150c <_ZNSt6string5eraseEjj+0x3c>
  401542:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401550:	39 c3                	cmp    %eax,%ebx
  401552:	76 bc                	jbe    401510 <_ZNSt6string5eraseEjj+0x40>
  401554:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40155b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  40155f:	90                   	nop
  401560:	8b 11                	mov    (%ecx),%edx
  401562:	c6 04 02 00          	movb   $0x0,(%edx,%eax,1)
  401566:	83 c0 01             	add    $0x1,%eax
  401569:	39 c3                	cmp    %eax,%ebx
  40156b:	75 f3                	jne    401560 <_ZNSt6string5eraseEjj+0x90>
  40156d:	8b 79 04             	mov    0x4(%ecx),%edi
  401570:	eb 9e                	jmp    401510 <_ZNSt6string5eraseEjj+0x40>
  401572:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00401580 <_ZNKSt6string5c_strEv>:
  401580:	55                   	push   %ebp
  401581:	89 e5                	mov    %esp,%ebp
  401583:	8b 45 08             	mov    0x8(%ebp),%eax
  401586:	5d                   	pop    %ebp
  401587:	8b 00                	mov    (%eax),%eax
  401589:	c3                   	ret    
  40158a:	66 90                	xchg   %ax,%ax
  40158c:	66 90                	xchg   %ax,%ax
  40158e:	66 90                	xchg   %ax,%ax

00401590 <_ZN3vga8Graphics4testEv>:
  401590:	e8 1f 10 00 00       	call   4025b4 <__x86.get_pc_thunk.ax>
  401595:	05 e7 2a 00 00       	add    $0x2ae7,%eax
  40159a:	c7 c2 00 50 40 00    	mov    $0x405000,%edx
  4015a0:	c7 c0 04 50 40 00    	mov    $0x405004,%eax
  4015a6:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  4015ac:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  4015b2:	c3                   	ret    
  4015b3:	90                   	nop
  4015b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4015bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4015bf:	90                   	nop

004015c0 <_ZN3vga8GraphicsC1Ejj>:
  4015c0:	55                   	push   %ebp
  4015c1:	89 e5                	mov    %esp,%ebp
  4015c3:	56                   	push   %esi
  4015c4:	53                   	push   %ebx
  4015c5:	8b 75 08             	mov    0x8(%ebp),%esi
  4015c8:	e8 ef 0f 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4015cd:	81 c3 af 2a 00 00    	add    $0x2aaf,%ebx
  4015d3:	83 ec 0c             	sub    $0xc,%esp
  4015d6:	56                   	push   %esi
  4015d7:	e8 b4 ff ff ff       	call   401590 <_ZN3vga8Graphics4testEv>
  4015dc:	8d 83 cd ff ff ff    	lea    -0x33(%ebx),%eax
  4015e2:	89 04 24             	mov    %eax,(%esp)
  4015e5:	e8 2a 1a 00 00       	call   403014 <print>
  4015ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  4015ed:	c7 46 08 00 80 0b 00 	movl   $0xb8000,0x8(%esi)
  4015f4:	83 c4 10             	add    $0x10,%esp
  4015f7:	89 46 04             	mov    %eax,0x4(%esi)
  4015fa:	8b 45 10             	mov    0x10(%ebp),%eax
  4015fd:	89 06                	mov    %eax,(%esi)
  4015ff:	8d 65 f8             	lea    -0x8(%ebp),%esp
  401602:	5b                   	pop    %ebx
  401603:	5e                   	pop    %esi
  401604:	5d                   	pop    %ebp
  401605:	c3                   	ret    
  401606:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40160d:	8d 76 00             	lea    0x0(%esi),%esi

00401610 <_ZN3vga8GraphicsC1Ev>:
  401610:	55                   	push   %ebp
  401611:	89 e5                	mov    %esp,%ebp
  401613:	8b 45 08             	mov    0x8(%ebp),%eax
  401616:	c7 00 50 00 00 00    	movl   $0x50,(%eax)
  40161c:	c7 40 04 14 00 00 00 	movl   $0x14,0x4(%eax)
  401623:	c7 40 08 00 80 0b 00 	movl   $0xb8000,0x8(%eax)
  40162a:	5d                   	pop    %ebp
  40162b:	c3                   	ret    
  40162c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401630 <_ZN3vga8Graphics8downLineEv>:
  401630:	c3                   	ret    
  401631:	90                   	nop
  401632:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00401640 <_ZNK3vga8Graphics9make_charEc6Colors>:
  401640:	55                   	push   %ebp
  401641:	89 e5                	mov    %esp,%ebp
  401643:	0f be 45 10          	movsbl 0x10(%ebp),%eax
  401647:	c1 e0 08             	shl    $0x8,%eax
  40164a:	89 c2                	mov    %eax,%edx
  40164c:	66 0f be 45 0c       	movsbw 0xc(%ebp),%ax
  401651:	5d                   	pop    %ebp
  401652:	09 d0                	or     %edx,%eax
  401654:	c3                   	ret    
  401655:	90                   	nop
  401656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40165d:	8d 76 00             	lea    0x0(%esi),%esi

00401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>:
  401660:	55                   	push   %ebp
  401661:	89 e5                	mov    %esp,%ebp
  401663:	53                   	push   %ebx
  401664:	e8 53 0f 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  401669:	81 c3 13 2a 00 00    	add    $0x2a13,%ebx
  40166f:	83 ec 08             	sub    $0x8,%esp
  401672:	0f be 45 14          	movsbl 0x14(%ebp),%eax
  401676:	ff 75 18             	push   0x18(%ebp)
  401679:	50                   	push   %eax
  40167a:	ff 75 08             	push   0x8(%ebp)
  40167d:	e8 be ff ff ff       	call   401640 <_ZNK3vga8Graphics9make_charEc6Colors>
  401682:	83 c4 0c             	add    $0xc,%esp
  401685:	0f b7 c0             	movzwl %ax,%eax
  401688:	50                   	push   %eax
  401689:	0f b7 45 10          	movzwl 0x10(%ebp),%eax
  40168d:	50                   	push   %eax
  40168e:	0f b7 45 0c          	movzwl 0xc(%ebp),%eax
  401692:	50                   	push   %eax
  401693:	e8 17 1a 00 00       	call   4030af <user_putchar>
  401698:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40169b:	83 c4 10             	add    $0x10,%esp
  40169e:	c9                   	leave  
  40169f:	c3                   	ret    

004016a0 <_ZN3vga8Graphics11putStringAtEiiRKSt6string6Colors>:
  4016a0:	55                   	push   %ebp
  4016a1:	89 e5                	mov    %esp,%ebp
  4016a3:	57                   	push   %edi
  4016a4:	56                   	push   %esi
  4016a5:	31 f6                	xor    %esi,%esi
  4016a7:	53                   	push   %ebx
  4016a8:	89 f7                	mov    %esi,%edi
  4016aa:	e8 0d 0f 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  4016af:	81 c3 cd 29 00 00    	add    $0x29cd,%ebx
  4016b5:	83 ec 1c             	sub    $0x1c,%esp
  4016b8:	c7 c0 04 50 40 00    	mov    $0x405004,%eax
  4016be:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  4016c1:	eb 39                	jmp    4016fc <_ZN3vga8Graphics11putStringAtEiiRKSt6string6Colors+0x5c>
  4016c3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4016ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  4016d0:	83 ec 08             	sub    $0x8,%esp
  4016d3:	57                   	push   %edi
  4016d4:	83 c7 01             	add    $0x1,%edi
  4016d7:	ff 75 14             	push   0x14(%ebp)
  4016da:	e8 c1 f6 ff ff       	call   400da0 <_ZNKSt6stringixEj>
  4016df:	5a                   	pop    %edx
  4016e0:	ff 75 18             	push   0x18(%ebp)
  4016e3:	0f be c0             	movsbl %al,%eax
  4016e6:	50                   	push   %eax
  4016e7:	ff 75 10             	push   0x10(%ebp)
  4016ea:	56                   	push   %esi
  4016eb:	ff 75 08             	push   0x8(%ebp)
  4016ee:	e8 6d ff ff ff       	call   401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>
  4016f3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4016f6:	83 c4 20             	add    $0x20,%esp
  4016f9:	83 00 01             	addl   $0x1,(%eax)
  4016fc:	83 ec 0c             	sub    $0xc,%esp
  4016ff:	ff 75 14             	push   0x14(%ebp)
  401702:	8b 75 0c             	mov    0xc(%ebp),%esi
  401705:	01 fe                	add    %edi,%esi
  401707:	e8 84 f5 ff ff       	call   400c90 <_ZNKSt6string3lenEv>
  40170c:	83 c4 10             	add    $0x10,%esp
  40170f:	39 f8                	cmp    %edi,%eax
  401711:	77 bd                	ja     4016d0 <_ZN3vga8Graphics11putStringAtEiiRKSt6string6Colors+0x30>
  401713:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401716:	5b                   	pop    %ebx
  401717:	5e                   	pop    %esi
  401718:	5f                   	pop    %edi
  401719:	5d                   	pop    %ebp
  40171a:	c3                   	ret    
  40171b:	90                   	nop
  40171c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401720 <_ZN3vga8Graphics11putStringAtEiiPKc6Colors>:
  401720:	55                   	push   %ebp
  401721:	89 e5                	mov    %esp,%ebp
  401723:	57                   	push   %edi
  401724:	56                   	push   %esi
  401725:	53                   	push   %ebx
  401726:	e8 91 0e 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40172b:	81 c3 51 29 00 00    	add    $0x2951,%ebx
  401731:	83 ec 1c             	sub    $0x1c,%esp
  401734:	8b 45 14             	mov    0x14(%ebp),%eax
  401737:	8b 7d 0c             	mov    0xc(%ebp),%edi
  40173a:	0f be 08             	movsbl (%eax),%ecx
  40173d:	84 c9                	test   %cl,%cl
  40173f:	74 36                	je     401777 <_ZN3vga8Graphics11putStringAtEiiPKc6Colors+0x57>
  401741:	29 f8                	sub    %edi,%eax
  401743:	c7 c6 04 50 40 00    	mov    $0x405004,%esi
  401749:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  40174c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  401750:	83 ec 0c             	sub    $0xc,%esp
  401753:	ff 75 18             	push   0x18(%ebp)
  401756:	51                   	push   %ecx
  401757:	ff 75 10             	push   0x10(%ebp)
  40175a:	57                   	push   %edi
  40175b:	83 c7 01             	add    $0x1,%edi
  40175e:	ff 75 08             	push   0x8(%ebp)
  401761:	e8 fa fe ff ff       	call   401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>
  401766:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  401769:	83 06 01             	addl   $0x1,(%esi)
  40176c:	83 c4 20             	add    $0x20,%esp
  40176f:	0f be 0c 38          	movsbl (%eax,%edi,1),%ecx
  401773:	84 c9                	test   %cl,%cl
  401775:	75 d9                	jne    401750 <_ZN3vga8Graphics11putStringAtEiiPKc6Colors+0x30>
  401777:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40177a:	89 f8                	mov    %edi,%eax
  40177c:	5b                   	pop    %ebx
  40177d:	5e                   	pop    %esi
  40177e:	5f                   	pop    %edi
  40177f:	5d                   	pop    %ebp
  401780:	c3                   	ret    
  401781:	90                   	nop
  401782:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00401790 <_ZN3vga8Graphics15putStringAtCurrERKSt6string6Colors>:
  401790:	55                   	push   %ebp
  401791:	89 e5                	mov    %esp,%ebp
  401793:	57                   	push   %edi
  401794:	56                   	push   %esi
  401795:	31 f6                	xor    %esi,%esi
  401797:	53                   	push   %ebx
  401798:	e8 1f 0e 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40179d:	81 c3 df 28 00 00    	add    $0x28df,%ebx
  4017a3:	83 ec 1c             	sub    $0x1c,%esp
  4017a6:	c7 c0 00 50 40 00    	mov    $0x405000,%eax
  4017ac:	c7 c7 04 50 40 00    	mov    $0x405004,%edi
  4017b2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  4017b5:	eb 35                	jmp    4017ec <_ZN3vga8Graphics15putStringAtCurrERKSt6string6Colors+0x5c>
  4017b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4017be:	66 90                	xchg   %ax,%ax
  4017c0:	83 ec 08             	sub    $0x8,%esp
  4017c3:	56                   	push   %esi
  4017c4:	83 c6 01             	add    $0x1,%esi
  4017c7:	ff 75 0c             	push   0xc(%ebp)
  4017ca:	e8 d1 f5 ff ff       	call   400da0 <_ZNKSt6stringixEj>
  4017cf:	5a                   	pop    %edx
  4017d0:	ff 75 10             	push   0x10(%ebp)
  4017d3:	0f be c0             	movsbl %al,%eax
  4017d6:	50                   	push   %eax
  4017d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4017da:	ff 30                	push   (%eax)
  4017dc:	ff 37                	push   (%edi)
  4017de:	ff 75 08             	push   0x8(%ebp)
  4017e1:	e8 7a fe ff ff       	call   401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>
  4017e6:	83 07 01             	addl   $0x1,(%edi)
  4017e9:	83 c4 20             	add    $0x20,%esp
  4017ec:	83 ec 0c             	sub    $0xc,%esp
  4017ef:	ff 75 0c             	push   0xc(%ebp)
  4017f2:	e8 99 f4 ff ff       	call   400c90 <_ZNKSt6string3lenEv>
  4017f7:	83 c4 10             	add    $0x10,%esp
  4017fa:	39 f0                	cmp    %esi,%eax
  4017fc:	77 c2                	ja     4017c0 <_ZN3vga8Graphics15putStringAtCurrERKSt6string6Colors+0x30>
  4017fe:	8d 65 f4             	lea    -0xc(%ebp),%esp
  401801:	5b                   	pop    %ebx
  401802:	5e                   	pop    %esi
  401803:	5f                   	pop    %edi
  401804:	5d                   	pop    %ebp
  401805:	c3                   	ret    
  401806:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40180d:	8d 76 00             	lea    0x0(%esi),%esi

00401810 <_ZN3vga8Graphics15putStringAtCurrEPKc6Colors>:
  401810:	55                   	push   %ebp
  401811:	89 e5                	mov    %esp,%ebp
  401813:	57                   	push   %edi
  401814:	56                   	push   %esi
  401815:	53                   	push   %ebx
  401816:	e8 a1 0d 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40181b:	81 c3 61 28 00 00    	add    $0x2861,%ebx
  401821:	83 ec 1c             	sub    $0x1c,%esp
  401824:	8b 7d 0c             	mov    0xc(%ebp),%edi
  401827:	0f be 07             	movsbl (%edi),%eax
  40182a:	84 c0                	test   %al,%al
  40182c:	74 4c                	je     40187a <_ZN3vga8Graphics15putStringAtCurrEPKc6Colors+0x6a>
  40182e:	c7 c1 00 50 40 00    	mov    $0x405000,%ecx
  401834:	c7 c6 04 50 40 00    	mov    $0x405004,%esi
  40183a:	83 c7 01             	add    $0x1,%edi
  40183d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  401840:	8b 16                	mov    (%esi),%edx
  401842:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401850:	83 ec 0c             	sub    $0xc,%esp
  401853:	ff 75 10             	push   0x10(%ebp)
  401856:	83 c7 01             	add    $0x1,%edi
  401859:	50                   	push   %eax
  40185a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  40185d:	ff 30                	push   (%eax)
  40185f:	52                   	push   %edx
  401860:	ff 75 08             	push   0x8(%ebp)
  401863:	e8 f8 fd ff ff       	call   401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>
  401868:	8b 06                	mov    (%esi),%eax
  40186a:	83 c4 20             	add    $0x20,%esp
  40186d:	8d 50 01             	lea    0x1(%eax),%edx
  401870:	89 16                	mov    %edx,(%esi)
  401872:	0f be 47 ff          	movsbl -0x1(%edi),%eax
  401876:	84 c0                	test   %al,%al
  401878:	75 d6                	jne    401850 <_ZN3vga8Graphics15putStringAtCurrEPKc6Colors+0x40>
  40187a:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40187d:	5b                   	pop    %ebx
  40187e:	5e                   	pop    %esi
  40187f:	5f                   	pop    %edi
  401880:	5d                   	pop    %ebp
  401881:	c3                   	ret    
  401882:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00401890 <_ZN3vga8Graphics3clsEv>:
  401890:	55                   	push   %ebp
  401891:	89 e5                	mov    %esp,%ebp
  401893:	57                   	push   %edi
  401894:	56                   	push   %esi
  401895:	53                   	push   %ebx
  401896:	e8 21 0d 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  40189b:	81 c3 e1 27 00 00    	add    $0x27e1,%ebx
  4018a1:	83 ec 1c             	sub    $0x1c,%esp
  4018a4:	8b 7d 08             	mov    0x8(%ebp),%edi
  4018a7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  4018ae:	8b 17                	mov    (%edi),%edx
  4018b0:	85 d2                	test   %edx,%edx
  4018b2:	74 54                	je     401908 <_ZN3vga8Graphics3clsEv+0x78>
  4018b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4018bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4018bf:	90                   	nop
  4018c0:	8b 47 04             	mov    0x4(%edi),%eax
  4018c3:	31 f6                	xor    %esi,%esi
  4018c5:	85 c0                	test   %eax,%eax
  4018c7:	74 34                	je     4018fd <_ZN3vga8Graphics3clsEv+0x6d>
  4018c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4018d0:	83 ec 04             	sub    $0x4,%esp
  4018d3:	6a 00                	push   $0x0
  4018d5:	6a 20                	push   $0x20
  4018d7:	57                   	push   %edi
  4018d8:	e8 63 fd ff ff       	call   401640 <_ZNK3vga8Graphics9make_charEc6Colors>
  4018dd:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
  4018e4:	0f be c0             	movsbl %al,%eax
  4018e7:	50                   	push   %eax
  4018e8:	56                   	push   %esi
  4018e9:	83 c6 01             	add    $0x1,%esi
  4018ec:	ff 75 e4             	push   -0x1c(%ebp)
  4018ef:	57                   	push   %edi
  4018f0:	e8 6b fd ff ff       	call   401660 <_ZN3vga8Graphics9putCharAtEiic6Colors>
  4018f5:	83 c4 20             	add    $0x20,%esp
  4018f8:	39 77 04             	cmp    %esi,0x4(%edi)
  4018fb:	77 d3                	ja     4018d0 <_ZN3vga8Graphics3clsEv+0x40>
  4018fd:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
  401901:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  401904:	39 07                	cmp    %eax,(%edi)
  401906:	77 b8                	ja     4018c0 <_ZN3vga8Graphics3clsEv+0x30>
  401908:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40190b:	5b                   	pop    %ebx
  40190c:	5e                   	pop    %esi
  40190d:	5f                   	pop    %edi
  40190e:	5d                   	pop    %ebp
  40190f:	c3                   	ret    

00401910 <_ZNK3vga8Graphics19getVideoMemoryStartEv>:
  401910:	55                   	push   %ebp
  401911:	89 e5                	mov    %esp,%ebp
  401913:	8b 45 08             	mov    0x8(%ebp),%eax
  401916:	5d                   	pop    %ebp
  401917:	8b 40 08             	mov    0x8(%eax),%eax
  40191a:	0f b7 00             	movzwl (%eax),%eax
  40191d:	c3                   	ret    
  40191e:	66 90                	xchg   %ax,%ax

00401920 <_ZNK3vga8Graphics9getHeightEv>:
  401920:	55                   	push   %ebp
  401921:	89 e5                	mov    %esp,%ebp
  401923:	8b 45 08             	mov    0x8(%ebp),%eax
  401926:	5d                   	pop    %ebp
  401927:	8b 40 04             	mov    0x4(%eax),%eax
  40192a:	c3                   	ret    
  40192b:	90                   	nop
  40192c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401930 <_ZNK3vga8Graphics8getWidthEv>:
  401930:	55                   	push   %ebp
  401931:	89 e5                	mov    %esp,%ebp
  401933:	8b 45 08             	mov    0x8(%ebp),%eax
  401936:	5d                   	pop    %ebp
  401937:	8b 00                	mov    (%eax),%eax
  401939:	c3                   	ret    
  40193a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00401940 <_ZN3vga8GraphicsD1Ev>:
  401940:	c3                   	ret    
  401941:	66 90                	xchg   %ax,%ax
  401943:	66 90                	xchg   %ax,%ax
  401945:	66 90                	xchg   %ax,%ax
  401947:	66 90                	xchg   %ax,%ax
  401949:	66 90                	xchg   %ax,%ax
  40194b:	66 90                	xchg   %ax,%ax
  40194d:	66 90                	xchg   %ax,%ax
  40194f:	90                   	nop

00401950 <smollos_parse_command>:
  401950:	81 ec 1c 04 00 00    	sub    $0x41c,%esp
  401956:	c7 84 24 0c 04 00 00 	movl   $0x0,0x40c(%esp)
  40195d:	00 00 00 00 
  401961:	81 bc 24 24 04 00 00 	cmpl   $0x3ff,0x424(%esp)
  401968:	ff 03 00 00 
  40196c:	7e 0a                	jle    401978 <smollos_parse_command+0x28>
  40196e:	b8 00 00 00 00       	mov    $0x0,%eax
  401973:	e9 75 01 00 00       	jmp    401aed <smollos_parse_command+0x19d>
  401978:	83 ec 04             	sub    $0x4,%esp
  40197b:	68 00 04 00 00       	push   $0x400
  401980:	ff b4 24 28 04 00 00 	push   0x428(%esp)
  401987:	8d 44 24 0c          	lea    0xc(%esp),%eax
  40198b:	50                   	push   %eax
  40198c:	e8 af 06 00 00       	call   402040 <strncpy>
  401991:	83 c4 10             	add    $0x10,%esp
  401994:	83 ec 08             	sub    $0x8,%esp
  401997:	68 63 40 40 00       	push   $0x404063
  40199c:	8d 44 24 0c          	lea    0xc(%esp),%eax
  4019a0:	50                   	push   %eax
  4019a1:	e8 8a 07 00 00       	call   402130 <strtok>
  4019a6:	83 c4 10             	add    $0x10,%esp
  4019a9:	89 84 24 08 04 00 00 	mov    %eax,0x408(%esp)
  4019b0:	83 bc 24 08 04 00 00 	cmpl   $0x0,0x408(%esp)
  4019b7:	00 
  4019b8:	0f 84 21 01 00 00    	je     401adf <smollos_parse_command+0x18f>
  4019be:	83 ec 0c             	sub    $0xc,%esp
  4019c1:	68 04 02 00 00       	push   $0x204
  4019c6:	e8 79 16 00 00       	call   403044 <smollos_malloc>
  4019cb:	83 c4 10             	add    $0x10,%esp
  4019ce:	89 84 24 0c 04 00 00 	mov    %eax,0x40c(%esp)
  4019d5:	83 bc 24 0c 04 00 00 	cmpl   $0x0,0x40c(%esp)
  4019dc:	00 
  4019dd:	0f 84 ff 00 00 00    	je     401ae2 <smollos_parse_command+0x192>
  4019e3:	8b 84 24 0c 04 00 00 	mov    0x40c(%esp),%eax
  4019ea:	83 ec 04             	sub    $0x4,%esp
  4019ed:	68 00 02 00 00       	push   $0x200
  4019f2:	ff b4 24 10 04 00 00 	push   0x410(%esp)
  4019f9:	50                   	push   %eax
  4019fa:	e8 41 06 00 00       	call   402040 <strncpy>
  4019ff:	83 c4 10             	add    $0x10,%esp
  401a02:	8b 84 24 0c 04 00 00 	mov    0x40c(%esp),%eax
  401a09:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  401a10:	00 00 00 
  401a13:	8b 84 24 0c 04 00 00 	mov    0x40c(%esp),%eax
  401a1a:	89 84 24 04 04 00 00 	mov    %eax,0x404(%esp)
  401a21:	83 ec 08             	sub    $0x8,%esp
  401a24:	68 63 40 40 00       	push   $0x404063
  401a29:	6a 00                	push   $0x0
  401a2b:	e8 00 07 00 00       	call   402130 <strtok>
  401a30:	83 c4 10             	add    $0x10,%esp
  401a33:	89 84 24 08 04 00 00 	mov    %eax,0x408(%esp)
  401a3a:	e9 90 00 00 00       	jmp    401acf <smollos_parse_command+0x17f>
  401a3f:	83 ec 0c             	sub    $0xc,%esp
  401a42:	68 04 02 00 00       	push   $0x204
  401a47:	e8 f8 15 00 00       	call   403044 <smollos_malloc>
  401a4c:	83 c4 10             	add    $0x10,%esp
  401a4f:	89 84 24 00 04 00 00 	mov    %eax,0x400(%esp)
  401a56:	83 bc 24 00 04 00 00 	cmpl   $0x0,0x400(%esp)
  401a5d:	00 
  401a5e:	0f 84 81 00 00 00    	je     401ae5 <smollos_parse_command+0x195>
  401a64:	8b 84 24 00 04 00 00 	mov    0x400(%esp),%eax
  401a6b:	83 ec 04             	sub    $0x4,%esp
  401a6e:	68 00 02 00 00       	push   $0x200
  401a73:	ff b4 24 10 04 00 00 	push   0x410(%esp)
  401a7a:	50                   	push   %eax
  401a7b:	e8 c0 05 00 00       	call   402040 <strncpy>
  401a80:	83 c4 10             	add    $0x10,%esp
  401a83:	8b 84 24 00 04 00 00 	mov    0x400(%esp),%eax
  401a8a:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  401a91:	00 00 00 
  401a94:	8b 84 24 04 04 00 00 	mov    0x404(%esp),%eax
  401a9b:	8b 94 24 00 04 00 00 	mov    0x400(%esp),%edx
  401aa2:	89 90 00 02 00 00    	mov    %edx,0x200(%eax)
  401aa8:	8b 84 24 00 04 00 00 	mov    0x400(%esp),%eax
  401aaf:	89 84 24 04 04 00 00 	mov    %eax,0x404(%esp)
  401ab6:	83 ec 08             	sub    $0x8,%esp
  401ab9:	68 63 40 40 00       	push   $0x404063
  401abe:	6a 00                	push   $0x0
  401ac0:	e8 6b 06 00 00       	call   402130 <strtok>
  401ac5:	83 c4 10             	add    $0x10,%esp
  401ac8:	89 84 24 08 04 00 00 	mov    %eax,0x408(%esp)
  401acf:	83 bc 24 08 04 00 00 	cmpl   $0x0,0x408(%esp)
  401ad6:	00 
  401ad7:	0f 85 62 ff ff ff    	jne    401a3f <smollos_parse_command+0xef>
  401add:	eb 07                	jmp    401ae6 <smollos_parse_command+0x196>
  401adf:	90                   	nop
  401ae0:	eb 04                	jmp    401ae6 <smollos_parse_command+0x196>
  401ae2:	90                   	nop
  401ae3:	eb 01                	jmp    401ae6 <smollos_parse_command+0x196>
  401ae5:	90                   	nop
  401ae6:	8b 84 24 0c 04 00 00 	mov    0x40c(%esp),%eax
  401aed:	81 c4 1c 04 00 00    	add    $0x41c,%esp
  401af3:	c3                   	ret    
  401af4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401afb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  401aff:	90                   	nop

00401b00 <smollos_getkeyblock>:
  401b00:	83 ec 1c             	sub    $0x1c,%esp
  401b03:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  401b0a:	00 
  401b0b:	e8 16 15 00 00       	call   403026 <smollos_getkey>
  401b10:	89 44 24 0c          	mov    %eax,0xc(%esp)
  401b14:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
  401b19:	74 f0                	je     401b0b <smollos_getkeyblock+0xb>
  401b1b:	8b 44 24 0c          	mov    0xc(%esp),%eax
  401b1f:	83 c4 1c             	add    $0x1c,%esp
  401b22:	c3                   	ret    
  401b23:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00401b30 <smollos_terminal_readline>:
  401b30:	83 ec 2c             	sub    $0x2c,%esp
  401b33:	8b 44 24 38          	mov    0x38(%esp),%eax
  401b37:	88 44 24 0c          	mov    %al,0xc(%esp)
  401b3b:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
  401b42:	00 
  401b43:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
  401b4a:	00 
  401b4b:	eb 63                	jmp    401bb0 <smollos_terminal_readline+0x80>
  401b4d:	e8 ae ff ff ff       	call   401b00 <smollos_getkeyblock>
  401b52:	88 44 24 1b          	mov    %al,0x1b(%esp)
  401b56:	80 7c 24 1b 0d       	cmpb   $0xd,0x1b(%esp)
  401b5b:	74 62                	je     401bbf <smollos_terminal_readline+0x8f>
  401b5d:	80 7c 24 0c 00       	cmpb   $0x0,0xc(%esp)
  401b62:	74 11                	je     401b75 <smollos_terminal_readline+0x45>
  401b64:	0f be 44 24 1b       	movsbl 0x1b(%esp),%eax
  401b69:	83 ec 0c             	sub    $0xc,%esp
  401b6c:	50                   	push   %eax
  401b6d:	e8 c0 14 00 00       	call   403032 <smollos_putchar>
  401b72:	83 c4 10             	add    $0x10,%esp
  401b75:	80 7c 24 1b 08       	cmpb   $0x8,0x1b(%esp)
  401b7a:	75 1e                	jne    401b9a <smollos_terminal_readline+0x6a>
  401b7c:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
  401b81:	7e 17                	jle    401b9a <smollos_terminal_readline+0x6a>
  401b83:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  401b87:	8d 50 ff             	lea    -0x1(%eax),%edx
  401b8a:	8b 44 24 30          	mov    0x30(%esp),%eax
  401b8e:	01 d0                	add    %edx,%eax
  401b90:	c6 00 00             	movb   $0x0,(%eax)
  401b93:	83 6c 24 1c 02       	subl   $0x2,0x1c(%esp)
  401b98:	eb 11                	jmp    401bab <smollos_terminal_readline+0x7b>
  401b9a:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  401b9e:	8b 44 24 30          	mov    0x30(%esp),%eax
  401ba2:	01 c2                	add    %eax,%edx
  401ba4:	0f b6 44 24 1b       	movzbl 0x1b(%esp),%eax
  401ba9:	88 02                	mov    %al,(%edx)
  401bab:	83 44 24 1c 01       	addl   $0x1,0x1c(%esp)
  401bb0:	8b 44 24 34          	mov    0x34(%esp),%eax
  401bb4:	83 e8 01             	sub    $0x1,%eax
  401bb7:	39 44 24 1c          	cmp    %eax,0x1c(%esp)
  401bbb:	7c 90                	jl     401b4d <smollos_terminal_readline+0x1d>
  401bbd:	eb 01                	jmp    401bc0 <smollos_terminal_readline+0x90>
  401bbf:	90                   	nop
  401bc0:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  401bc4:	8b 44 24 30          	mov    0x30(%esp),%eax
  401bc8:	01 d0                	add    %edx,%eax
  401bca:	c6 00 00             	movb   $0x0,(%eax)
  401bcd:	83 ec 0c             	sub    $0xc,%esp
  401bd0:	68 65 40 40 00       	push   $0x404065
  401bd5:	e8 3a 14 00 00       	call   403014 <print>
  401bda:	83 c4 10             	add    $0x10,%esp
  401bdd:	90                   	nop
  401bde:	83 c4 2c             	add    $0x2c,%esp
  401be1:	c3                   	ret    
  401be2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00401bf0 <smollos_system_run>:
  401bf0:	81 ec 1c 04 00 00    	sub    $0x41c,%esp
  401bf6:	83 ec 04             	sub    $0x4,%esp
  401bf9:	68 00 04 00 00       	push   $0x400
  401bfe:	ff b4 24 28 04 00 00 	push   0x428(%esp)
  401c05:	8d 44 24 18          	lea    0x18(%esp),%eax
  401c09:	50                   	push   %eax
  401c0a:	e8 31 04 00 00       	call   402040 <strncpy>
  401c0f:	83 c4 10             	add    $0x10,%esp
  401c12:	83 ec 08             	sub    $0x8,%esp
  401c15:	68 00 04 00 00       	push   $0x400
  401c1a:	8d 44 24 18          	lea    0x18(%esp),%eax
  401c1e:	50                   	push   %eax
  401c1f:	e8 2c fd ff ff       	call   401950 <smollos_parse_command>
  401c24:	83 c4 10             	add    $0x10,%esp
  401c27:	89 84 24 0c 04 00 00 	mov    %eax,0x40c(%esp)
  401c2e:	83 bc 24 0c 04 00 00 	cmpl   $0x0,0x40c(%esp)
  401c35:	00 
  401c36:	75 07                	jne    401c3f <smollos_system_run+0x4f>
  401c38:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c3d:	eb 12                	jmp    401c51 <smollos_system_run+0x61>
  401c3f:	83 ec 0c             	sub    $0xc,%esp
  401c42:	ff b4 24 18 04 00 00 	push   0x418(%esp)
  401c49:	e8 2c 14 00 00       	call   40307a <smollos_system>
  401c4e:	83 c4 10             	add    $0x10,%esp
  401c51:	81 c4 1c 04 00 00    	add    $0x41c,%esp
  401c57:	c3                   	ret    
  401c58:	66 90                	xchg   %ax,%ax
  401c5a:	66 90                	xchg   %ax,%ax
  401c5c:	66 90                	xchg   %ax,%ax
  401c5e:	66 90                	xchg   %ax,%ax

00401c60 <c_start>:
  401c60:	83 ec 1c             	sub    $0x1c,%esp
  401c63:	83 ec 0c             	sub    $0xc,%esp
  401c66:	8d 44 24 10          	lea    0x10(%esp),%eax
  401c6a:	50                   	push   %eax
  401c6b:	e8 1c 14 00 00       	call   40308c <smollos_process_get_arguments>
  401c70:	83 c4 10             	add    $0x10,%esp
  401c73:	8b 54 24 08          	mov    0x8(%esp),%edx
  401c77:	8b 44 24 04          	mov    0x4(%esp),%eax
  401c7b:	83 ec 08             	sub    $0x8,%esp
  401c7e:	52                   	push   %edx
  401c7f:	50                   	push   %eax
  401c80:	e8 6f ea ff ff       	call   4006f4 <main>
  401c85:	83 c4 10             	add    $0x10,%esp
  401c88:	89 44 24 0c          	mov    %eax,0xc(%esp)
  401c8c:	90                   	nop
  401c8d:	83 c4 1c             	add    $0x1c,%esp
  401c90:	c3                   	ret    
  401c91:	66 90                	xchg   %ax,%ax
  401c93:	66 90                	xchg   %ax,%ax
  401c95:	66 90                	xchg   %ax,%ax
  401c97:	66 90                	xchg   %ax,%ax
  401c99:	66 90                	xchg   %ax,%ax
  401c9b:	66 90                	xchg   %ax,%ax
  401c9d:	66 90                	xchg   %ax,%ax
  401c9f:	90                   	nop

00401ca0 <memset>:
  401ca0:	83 ec 10             	sub    $0x10,%esp
  401ca3:	8b 44 24 14          	mov    0x14(%esp),%eax
  401ca7:	89 44 24 08          	mov    %eax,0x8(%esp)
  401cab:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  401cb2:	00 
  401cb3:	eb 15                	jmp    401cca <memset+0x2a>
  401cb5:	8b 54 24 0c          	mov    0xc(%esp),%edx
  401cb9:	8b 44 24 08          	mov    0x8(%esp),%eax
  401cbd:	01 d0                	add    %edx,%eax
  401cbf:	8b 54 24 18          	mov    0x18(%esp),%edx
  401cc3:	88 10                	mov    %dl,(%eax)
  401cc5:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  401cca:	8b 44 24 0c          	mov    0xc(%esp),%eax
  401cce:	39 44 24 1c          	cmp    %eax,0x1c(%esp)
  401cd2:	77 e1                	ja     401cb5 <memset+0x15>
  401cd4:	8b 44 24 14          	mov    0x14(%esp),%eax
  401cd8:	83 c4 10             	add    $0x10,%esp
  401cdb:	c3                   	ret    
  401cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00401ce0 <memcmp>:
  401ce0:	83 ec 10             	sub    $0x10,%esp
  401ce3:	8b 44 24 14          	mov    0x14(%esp),%eax
  401ce7:	89 44 24 0c          	mov    %eax,0xc(%esp)
  401ceb:	8b 44 24 18          	mov    0x18(%esp),%eax
  401cef:	89 44 24 08          	mov    %eax,0x8(%esp)
  401cf3:	eb 46                	jmp    401d3b <memcmp+0x5b>
  401cf5:	8b 44 24 0c          	mov    0xc(%esp),%eax
  401cf9:	8d 50 01             	lea    0x1(%eax),%edx
  401cfc:	89 54 24 0c          	mov    %edx,0xc(%esp)
  401d00:	0f b6 08             	movzbl (%eax),%ecx
  401d03:	8b 44 24 08          	mov    0x8(%esp),%eax
  401d07:	8d 50 01             	lea    0x1(%eax),%edx
  401d0a:	89 54 24 08          	mov    %edx,0x8(%esp)
  401d0e:	0f b6 00             	movzbl (%eax),%eax
  401d11:	38 c1                	cmp    %al,%cl
  401d13:	74 26                	je     401d3b <memcmp+0x5b>
  401d15:	8b 44 24 0c          	mov    0xc(%esp),%eax
  401d19:	83 e8 01             	sub    $0x1,%eax
  401d1c:	0f b6 10             	movzbl (%eax),%edx
  401d1f:	8b 44 24 08          	mov    0x8(%esp),%eax
  401d23:	83 e8 01             	sub    $0x1,%eax
  401d26:	0f b6 00             	movzbl (%eax),%eax
  401d29:	38 c2                	cmp    %al,%dl
  401d2b:	7d 07                	jge    401d34 <memcmp+0x54>
  401d2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d32:	eb 1b                	jmp    401d4f <memcmp+0x6f>
  401d34:	b8 01 00 00 00       	mov    $0x1,%eax
  401d39:	eb 14                	jmp    401d4f <memcmp+0x6f>
  401d3b:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  401d3f:	8d 50 ff             	lea    -0x1(%eax),%edx
  401d42:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  401d46:	85 c0                	test   %eax,%eax
  401d48:	7f ab                	jg     401cf5 <memcmp+0x15>
  401d4a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4f:	83 c4 10             	add    $0x10,%esp
  401d52:	c3                   	ret    
  401d53:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00401d60 <memcpy>:
  401d60:	83 ec 10             	sub    $0x10,%esp
  401d63:	8b 44 24 14          	mov    0x14(%esp),%eax
  401d67:	89 44 24 0c          	mov    %eax,0xc(%esp)
  401d6b:	8b 44 24 18          	mov    0x18(%esp),%eax
  401d6f:	89 44 24 08          	mov    %eax,0x8(%esp)
  401d73:	eb 1b                	jmp    401d90 <memcpy+0x30>
  401d75:	8b 54 24 08          	mov    0x8(%esp),%edx
  401d79:	8d 42 01             	lea    0x1(%edx),%eax
  401d7c:	89 44 24 08          	mov    %eax,0x8(%esp)
  401d80:	8b 44 24 0c          	mov    0xc(%esp),%eax
  401d84:	8d 48 01             	lea    0x1(%eax),%ecx
  401d87:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
  401d8b:	0f b6 12             	movzbl (%edx),%edx
  401d8e:	88 10                	mov    %dl,(%eax)
  401d90:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  401d94:	8d 50 ff             	lea    -0x1(%eax),%edx
  401d97:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  401d9b:	85 c0                	test   %eax,%eax
  401d9d:	75 d6                	jne    401d75 <memcpy+0x15>
  401d9f:	8b 44 24 14          	mov    0x14(%esp),%eax
  401da3:	83 c4 10             	add    $0x10,%esp
  401da6:	c3                   	ret    
  401da7:	66 90                	xchg   %ax,%ax
  401da9:	66 90                	xchg   %ax,%ax
  401dab:	66 90                	xchg   %ax,%ax
  401dad:	66 90                	xchg   %ax,%ax
  401daf:	90                   	nop

00401db0 <ischar>:
  401db0:	83 ec 04             	sub    $0x4,%esp
  401db3:	8b 44 24 08          	mov    0x8(%esp),%eax
  401db7:	88 04 24             	mov    %al,(%esp)
  401dba:	80 3c 24 40          	cmpb   $0x40,(%esp)
  401dbe:	7e 0d                	jle    401dcd <ischar+0x1d>
  401dc0:	80 3c 24 5a          	cmpb   $0x5a,(%esp)
  401dc4:	7f 07                	jg     401dcd <ischar+0x1d>
  401dc6:	b8 01 00 00 00       	mov    $0x1,%eax
  401dcb:	eb 05                	jmp    401dd2 <ischar+0x22>
  401dcd:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd2:	83 e0 01             	and    $0x1,%eax
  401dd5:	83 c4 04             	add    $0x4,%esp
  401dd8:	c3                   	ret    
  401dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00401de0 <tolower>:
  401de0:	83 ec 04             	sub    $0x4,%esp
  401de3:	8b 44 24 08          	mov    0x8(%esp),%eax
  401de7:	88 04 24             	mov    %al,(%esp)
  401dea:	0f be 04 24          	movsbl (%esp),%eax
  401dee:	50                   	push   %eax
  401def:	e8 bc ff ff ff       	call   401db0 <ischar>
  401df4:	83 c4 04             	add    $0x4,%esp
  401df7:	84 c0                	test   %al,%al
  401df9:	74 0a                	je     401e05 <tolower+0x25>
  401dfb:	0f b6 04 24          	movzbl (%esp),%eax
  401dff:	83 c0 20             	add    $0x20,%eax
  401e02:	88 04 24             	mov    %al,(%esp)
  401e05:	0f b6 04 24          	movzbl (%esp),%eax
  401e09:	83 c4 04             	add    $0x4,%esp
  401e0c:	c3                   	ret    
  401e0d:	8d 76 00             	lea    0x0(%esi),%esi

00401e10 <istrncmp>:
  401e10:	53                   	push   %ebx
  401e11:	83 ec 10             	sub    $0x10,%esp
  401e14:	eb 73                	jmp    401e89 <istrncmp+0x79>
  401e16:	8b 44 24 18          	mov    0x18(%esp),%eax
  401e1a:	8d 50 01             	lea    0x1(%eax),%edx
  401e1d:	89 54 24 18          	mov    %edx,0x18(%esp)
  401e21:	0f b6 00             	movzbl (%eax),%eax
  401e24:	88 44 24 0f          	mov    %al,0xf(%esp)
  401e28:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  401e2c:	8d 50 01             	lea    0x1(%eax),%edx
  401e2f:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  401e33:	0f b6 00             	movzbl (%eax),%eax
  401e36:	88 44 24 0e          	mov    %al,0xe(%esp)
  401e3a:	0f b6 44 24 0f       	movzbl 0xf(%esp),%eax
  401e3f:	3a 44 24 0e          	cmp    0xe(%esp),%al
  401e43:	74 36                	je     401e7b <istrncmp+0x6b>
  401e45:	0f b6 44 24 0f       	movzbl 0xf(%esp),%eax
  401e4a:	0f be c0             	movsbl %al,%eax
  401e4d:	50                   	push   %eax
  401e4e:	e8 8d ff ff ff       	call   401de0 <tolower>
  401e53:	83 c4 04             	add    $0x4,%esp
  401e56:	89 c3                	mov    %eax,%ebx
  401e58:	0f b6 44 24 0e       	movzbl 0xe(%esp),%eax
  401e5d:	0f be c0             	movsbl %al,%eax
  401e60:	50                   	push   %eax
  401e61:	e8 7a ff ff ff       	call   401de0 <tolower>
  401e66:	83 c4 04             	add    $0x4,%esp
  401e69:	38 c3                	cmp    %al,%bl
  401e6b:	74 0e                	je     401e7b <istrncmp+0x6b>
  401e6d:	0f b6 44 24 0f       	movzbl 0xf(%esp),%eax
  401e72:	0f b6 54 24 0e       	movzbl 0xe(%esp),%edx
  401e77:	29 d0                	sub    %edx,%eax
  401e79:	eb 26                	jmp    401ea1 <istrncmp+0x91>
  401e7b:	80 7c 24 0f 00       	cmpb   $0x0,0xf(%esp)
  401e80:	75 07                	jne    401e89 <istrncmp+0x79>
  401e82:	b8 00 00 00 00       	mov    $0x0,%eax
  401e87:	eb 18                	jmp    401ea1 <istrncmp+0x91>
  401e89:	8b 44 24 20          	mov    0x20(%esp),%eax
  401e8d:	8d 50 ff             	lea    -0x1(%eax),%edx
  401e90:	89 54 24 20          	mov    %edx,0x20(%esp)
  401e94:	85 c0                	test   %eax,%eax
  401e96:	0f 8f 7a ff ff ff    	jg     401e16 <istrncmp+0x6>
  401e9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea1:	83 c4 10             	add    $0x10,%esp
  401ea4:	5b                   	pop    %ebx
  401ea5:	c3                   	ret    
  401ea6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401ead:	8d 76 00             	lea    0x0(%esi),%esi

00401eb0 <strncmp>:
  401eb0:	83 ec 10             	sub    $0x10,%esp
  401eb3:	eb 4b                	jmp    401f00 <strncmp+0x50>
  401eb5:	8b 44 24 14          	mov    0x14(%esp),%eax
  401eb9:	8d 50 01             	lea    0x1(%eax),%edx
  401ebc:	89 54 24 14          	mov    %edx,0x14(%esp)
  401ec0:	0f b6 00             	movzbl (%eax),%eax
  401ec3:	88 44 24 0f          	mov    %al,0xf(%esp)
  401ec7:	8b 44 24 18          	mov    0x18(%esp),%eax
  401ecb:	8d 50 01             	lea    0x1(%eax),%edx
  401ece:	89 54 24 18          	mov    %edx,0x18(%esp)
  401ed2:	0f b6 00             	movzbl (%eax),%eax
  401ed5:	88 44 24 0e          	mov    %al,0xe(%esp)
  401ed9:	0f b6 44 24 0f       	movzbl 0xf(%esp),%eax
  401ede:	3a 44 24 0e          	cmp    0xe(%esp),%al
  401ee2:	74 0e                	je     401ef2 <strncmp+0x42>
  401ee4:	0f b6 44 24 0f       	movzbl 0xf(%esp),%eax
  401ee9:	0f b6 54 24 0e       	movzbl 0xe(%esp),%edx
  401eee:	29 d0                	sub    %edx,%eax
  401ef0:	eb 22                	jmp    401f14 <strncmp+0x64>
  401ef2:	80 7c 24 0f 00       	cmpb   $0x0,0xf(%esp)
  401ef7:	75 07                	jne    401f00 <strncmp+0x50>
  401ef9:	b8 00 00 00 00       	mov    $0x0,%eax
  401efe:	eb 14                	jmp    401f14 <strncmp+0x64>
  401f00:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  401f04:	8d 50 ff             	lea    -0x1(%eax),%edx
  401f07:	89 54 24 1c          	mov    %edx,0x1c(%esp)
  401f0b:	85 c0                	test   %eax,%eax
  401f0d:	7f a6                	jg     401eb5 <strncmp+0x5>
  401f0f:	b8 00 00 00 00       	mov    $0x0,%eax
  401f14:	83 c4 10             	add    $0x10,%esp
  401f17:	c3                   	ret    
  401f18:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401f1f:	90                   	nop

00401f20 <strlen_terminator>:
  401f20:	83 ec 14             	sub    $0x14,%esp
  401f23:	8b 44 24 20          	mov    0x20(%esp),%eax
  401f27:	88 04 24             	mov    %al,(%esp)
  401f2a:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  401f31:	00 
  401f32:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  401f39:	00 
  401f3a:	eb 28                	jmp    401f64 <strlen_terminator+0x44>
  401f3c:	8b 54 24 10          	mov    0x10(%esp),%edx
  401f40:	8b 44 24 18          	mov    0x18(%esp),%eax
  401f44:	01 d0                	add    %edx,%eax
  401f46:	0f b6 00             	movzbl (%eax),%eax
  401f49:	84 c0                	test   %al,%al
  401f4b:	74 21                	je     401f6e <strlen_terminator+0x4e>
  401f4d:	8b 54 24 10          	mov    0x10(%esp),%edx
  401f51:	8b 44 24 18          	mov    0x18(%esp),%eax
  401f55:	01 d0                	add    %edx,%eax
  401f57:	0f b6 00             	movzbl (%eax),%eax
  401f5a:	38 04 24             	cmp    %al,(%esp)
  401f5d:	74 0f                	je     401f6e <strlen_terminator+0x4e>
  401f5f:	83 44 24 10 01       	addl   $0x1,0x10(%esp)
  401f64:	8b 44 24 10          	mov    0x10(%esp),%eax
  401f68:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
  401f6c:	7c ce                	jl     401f3c <strlen_terminator+0x1c>
  401f6e:	8b 44 24 0c          	mov    0xc(%esp),%eax
  401f72:	83 c4 14             	add    $0x14,%esp
  401f75:	c3                   	ret    
  401f76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401f7d:	8d 76 00             	lea    0x0(%esi),%esi

00401f80 <strlen>:
  401f80:	83 ec 10             	sub    $0x10,%esp
  401f83:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  401f8a:	00 
  401f8b:	eb 0a                	jmp    401f97 <strlen+0x17>
  401f8d:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  401f92:	83 44 24 14 01       	addl   $0x1,0x14(%esp)
  401f97:	8b 44 24 14          	mov    0x14(%esp),%eax
  401f9b:	0f b6 00             	movzbl (%eax),%eax
  401f9e:	84 c0                	test   %al,%al
  401fa0:	75 eb                	jne    401f8d <strlen+0xd>
  401fa2:	8b 44 24 0c          	mov    0xc(%esp),%eax
  401fa6:	83 c4 10             	add    $0x10,%esp
  401fa9:	c3                   	ret    
  401faa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00401fb0 <isdigit>:
  401fb0:	83 ec 04             	sub    $0x4,%esp
  401fb3:	8b 44 24 08          	mov    0x8(%esp),%eax
  401fb7:	88 04 24             	mov    %al,(%esp)
  401fba:	80 3c 24 2f          	cmpb   $0x2f,(%esp)
  401fbe:	7e 0d                	jle    401fcd <isdigit+0x1d>
  401fc0:	80 3c 24 39          	cmpb   $0x39,(%esp)
  401fc4:	7f 07                	jg     401fcd <isdigit+0x1d>
  401fc6:	b8 01 00 00 00       	mov    $0x1,%eax
  401fcb:	eb 05                	jmp    401fd2 <isdigit+0x22>
  401fcd:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd2:	83 e0 01             	and    $0x1,%eax
  401fd5:	83 c4 04             	add    $0x4,%esp
  401fd8:	c3                   	ret    
  401fd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00401fe0 <tonummericdigit>:
  401fe0:	83 ec 04             	sub    $0x4,%esp
  401fe3:	8b 44 24 08          	mov    0x8(%esp),%eax
  401fe7:	88 04 24             	mov    %al,(%esp)
  401fea:	0f be 04 24          	movsbl (%esp),%eax
  401fee:	83 e8 30             	sub    $0x30,%eax
  401ff1:	83 c4 04             	add    $0x4,%esp
  401ff4:	c3                   	ret    
  401ff5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  401ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00402000 <strcpy>:
  402000:	83 ec 10             	sub    $0x10,%esp
  402003:	8b 44 24 14          	mov    0x14(%esp),%eax
  402007:	89 44 24 0c          	mov    %eax,0xc(%esp)
  40200b:	eb 17                	jmp    402024 <strcpy+0x24>
  40200d:	8b 44 24 18          	mov    0x18(%esp),%eax
  402011:	0f b6 10             	movzbl (%eax),%edx
  402014:	8b 44 24 14          	mov    0x14(%esp),%eax
  402018:	88 10                	mov    %dl,(%eax)
  40201a:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
  40201f:	83 44 24 14 01       	addl   $0x1,0x14(%esp)
  402024:	8b 44 24 18          	mov    0x18(%esp),%eax
  402028:	0f b6 00             	movzbl (%eax),%eax
  40202b:	84 c0                	test   %al,%al
  40202d:	75 de                	jne    40200d <strcpy+0xd>
  40202f:	8b 44 24 14          	mov    0x14(%esp),%eax
  402033:	c6 00 00             	movb   $0x0,(%eax)
  402036:	8b 44 24 0c          	mov    0xc(%esp),%eax
  40203a:	83 c4 10             	add    $0x10,%esp
  40203d:	c3                   	ret    
  40203e:	66 90                	xchg   %ax,%ax

00402040 <strncpy>:
  402040:	83 ec 10             	sub    $0x10,%esp
  402043:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  40204a:	00 
  40204b:	eb 2f                	jmp    40207c <strncpy+0x3c>
  40204d:	8b 54 24 0c          	mov    0xc(%esp),%edx
  402051:	8b 44 24 18          	mov    0x18(%esp),%eax
  402055:	01 d0                	add    %edx,%eax
  402057:	0f b6 00             	movzbl (%eax),%eax
  40205a:	84 c0                	test   %al,%al
  40205c:	74 2d                	je     40208b <strncpy+0x4b>
  40205e:	8b 54 24 0c          	mov    0xc(%esp),%edx
  402062:	8b 44 24 18          	mov    0x18(%esp),%eax
  402066:	01 d0                	add    %edx,%eax
  402068:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  40206c:	8b 54 24 14          	mov    0x14(%esp),%edx
  402070:	01 ca                	add    %ecx,%edx
  402072:	0f b6 00             	movzbl (%eax),%eax
  402075:	88 02                	mov    %al,(%edx)
  402077:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  40207c:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  402080:	83 e8 01             	sub    $0x1,%eax
  402083:	39 44 24 0c          	cmp    %eax,0xc(%esp)
  402087:	7c c4                	jl     40204d <strncpy+0xd>
  402089:	eb 01                	jmp    40208c <strncpy+0x4c>
  40208b:	90                   	nop
  40208c:	8b 54 24 0c          	mov    0xc(%esp),%edx
  402090:	8b 44 24 14          	mov    0x14(%esp),%eax
  402094:	01 d0                	add    %edx,%eax
  402096:	c6 00 00             	movb   $0x0,(%eax)
  402099:	8b 44 24 14          	mov    0x14(%esp),%eax
  40209d:	83 c4 10             	add    $0x10,%esp
  4020a0:	c3                   	ret    
  4020a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4020a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4020af:	90                   	nop

004020b0 <strnlen>:
  4020b0:	83 ec 10             	sub    $0x10,%esp
  4020b3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  4020ba:	00 
  4020bb:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  4020c2:	00 
  4020c3:	eb 16                	jmp    4020db <strnlen+0x2b>
  4020c5:	8b 54 24 0c          	mov    0xc(%esp),%edx
  4020c9:	8b 44 24 14          	mov    0x14(%esp),%eax
  4020cd:	01 d0                	add    %edx,%eax
  4020cf:	0f b6 00             	movzbl (%eax),%eax
  4020d2:	84 c0                	test   %al,%al
  4020d4:	74 11                	je     4020e7 <strnlen+0x37>
  4020d6:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  4020db:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4020df:	3b 44 24 18          	cmp    0x18(%esp),%eax
  4020e3:	7c e0                	jl     4020c5 <strnlen+0x15>
  4020e5:	eb 01                	jmp    4020e8 <strnlen+0x38>
  4020e7:	90                   	nop
  4020e8:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4020ec:	83 c4 10             	add    $0x10,%esp
  4020ef:	c3                   	ret    

004020f0 <is_delim>:
  4020f0:	83 ec 04             	sub    $0x4,%esp
  4020f3:	8b 44 24 08          	mov    0x8(%esp),%eax
  4020f7:	88 04 24             	mov    %al,(%esp)
  4020fa:	eb 18                	jmp    402114 <is_delim+0x24>
  4020fc:	8b 44 24 0c          	mov    0xc(%esp),%eax
  402100:	0f b6 00             	movzbl (%eax),%eax
  402103:	38 04 24             	cmp    %al,(%esp)
  402106:	75 07                	jne    40210f <is_delim+0x1f>
  402108:	b8 01 00 00 00       	mov    $0x1,%eax
  40210d:	eb 15                	jmp    402124 <is_delim+0x34>
  40210f:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  402114:	8b 44 24 0c          	mov    0xc(%esp),%eax
  402118:	0f b6 00             	movzbl (%eax),%eax
  40211b:	84 c0                	test   %al,%al
  40211d:	75 dd                	jne    4020fc <is_delim+0xc>
  40211f:	b8 00 00 00 00       	mov    $0x0,%eax
  402124:	83 c4 04             	add    $0x4,%esp
  402127:	c3                   	ret    
  402128:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40212f:	90                   	nop

00402130 <strtok>:
  402130:	83 ec 10             	sub    $0x10,%esp
  402133:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
  402138:	75 09                	jne    402143 <strtok+0x13>
  40213a:	a1 20 50 40 00       	mov    0x405020,%eax
  40213f:	89 44 24 14          	mov    %eax,0x14(%esp)
  402143:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
  402148:	75 0a                	jne    402154 <strtok+0x24>
  40214a:	b8 00 00 00 00       	mov    $0x0,%eax
  40214f:	e9 92 00 00 00       	jmp    4021e6 <strtok+0xb6>
  402154:	8b 44 24 14          	mov    0x14(%esp),%eax
  402158:	0f b6 00             	movzbl (%eax),%eax
  40215b:	0f be c0             	movsbl %al,%eax
  40215e:	ff 74 24 18          	push   0x18(%esp)
  402162:	50                   	push   %eax
  402163:	e8 88 ff ff ff       	call   4020f0 <is_delim>
  402168:	83 c4 08             	add    $0x8,%esp
  40216b:	84 c0                	test   %al,%al
  40216d:	74 07                	je     402176 <strtok+0x46>
  40216f:	83 44 24 14 01       	addl   $0x1,0x14(%esp)
  402174:	eb de                	jmp    402154 <strtok+0x24>
  402176:	8b 44 24 14          	mov    0x14(%esp),%eax
  40217a:	0f b6 00             	movzbl (%eax),%eax
  40217d:	84 c0                	test   %al,%al
  40217f:	75 07                	jne    402188 <strtok+0x58>
  402181:	b8 00 00 00 00       	mov    $0x0,%eax
  402186:	eb 5e                	jmp    4021e6 <strtok+0xb6>
  402188:	90                   	nop
  402189:	8b 44 24 14          	mov    0x14(%esp),%eax
  40218d:	89 44 24 0c          	mov    %eax,0xc(%esp)
  402191:	8b 44 24 14          	mov    0x14(%esp),%eax
  402195:	0f b6 00             	movzbl (%eax),%eax
  402198:	84 c0                	test   %al,%al
  40219a:	75 0f                	jne    4021ab <strtok+0x7b>
  40219c:	8b 44 24 14          	mov    0x14(%esp),%eax
  4021a0:	a3 20 50 40 00       	mov    %eax,0x405020
  4021a5:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4021a9:	eb 3b                	jmp    4021e6 <strtok+0xb6>
  4021ab:	8b 44 24 14          	mov    0x14(%esp),%eax
  4021af:	0f b6 00             	movzbl (%eax),%eax
  4021b2:	0f be c0             	movsbl %al,%eax
  4021b5:	ff 74 24 18          	push   0x18(%esp)
  4021b9:	50                   	push   %eax
  4021ba:	e8 31 ff ff ff       	call   4020f0 <is_delim>
  4021bf:	83 c4 08             	add    $0x8,%esp
  4021c2:	84 c0                	test   %al,%al
  4021c4:	74 19                	je     4021df <strtok+0xaf>
  4021c6:	8b 44 24 14          	mov    0x14(%esp),%eax
  4021ca:	c6 00 00             	movb   $0x0,(%eax)
  4021cd:	8b 44 24 14          	mov    0x14(%esp),%eax
  4021d1:	83 c0 01             	add    $0x1,%eax
  4021d4:	a3 20 50 40 00       	mov    %eax,0x405020
  4021d9:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4021dd:	eb 07                	jmp    4021e6 <strtok+0xb6>
  4021df:	83 44 24 14 01       	addl   $0x1,0x14(%esp)
  4021e4:	eb ab                	jmp    402191 <strtok+0x61>
  4021e6:	83 c4 10             	add    $0x10,%esp
  4021e9:	c3                   	ret    
  4021ea:	66 90                	xchg   %ax,%ax
  4021ec:	66 90                	xchg   %ax,%ax
  4021ee:	66 90                	xchg   %ax,%ax

004021f0 <malloc>:
  4021f0:	83 ec 0c             	sub    $0xc,%esp
  4021f3:	83 ec 0c             	sub    $0xc,%esp
  4021f6:	ff 74 24 1c          	push   0x1c(%esp)
  4021fa:	e8 45 0e 00 00       	call   403044 <smollos_malloc>
  4021ff:	83 c4 10             	add    $0x10,%esp
  402202:	83 c4 0c             	add    $0xc,%esp
  402205:	c3                   	ret    
  402206:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40220d:	8d 76 00             	lea    0x0(%esi),%esi

00402210 <free>:
  402210:	83 ec 0c             	sub    $0xc,%esp
  402213:	83 ec 0c             	sub    $0xc,%esp
  402216:	ff 74 24 1c          	push   0x1c(%esp)
  40221a:	e8 37 0e 00 00       	call   403056 <smollos_free>
  40221f:	83 c4 10             	add    $0x10,%esp
  402222:	90                   	nop
  402223:	83 c4 0c             	add    $0xc,%esp
  402226:	c3                   	ret    
  402227:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40222e:	66 90                	xchg   %ax,%ax

00402230 <reverse>:
  402230:	83 ec 1c             	sub    $0x1c,%esp
  402233:	83 7c 24 20 00       	cmpl   $0x0,0x20(%esp)
  402238:	74 70                	je     4022aa <reverse+0x7a>
  40223a:	83 ec 0c             	sub    $0xc,%esp
  40223d:	ff 74 24 2c          	push   0x2c(%esp)
  402241:	e8 3a fd ff ff       	call   401f80 <strlen>
  402246:	83 c4 10             	add    $0x10,%esp
  402249:	89 44 24 04          	mov    %eax,0x4(%esp)
  40224d:	83 7c 24 04 01       	cmpl   $0x1,0x4(%esp)
  402252:	76 56                	jbe    4022aa <reverse+0x7a>
  402254:	8b 44 24 20          	mov    0x20(%esp),%eax
  402258:	89 44 24 0c          	mov    %eax,0xc(%esp)
  40225c:	8b 44 24 04          	mov    0x4(%esp),%eax
  402260:	8d 50 ff             	lea    -0x1(%eax),%edx
  402263:	8b 44 24 0c          	mov    0xc(%esp),%eax
  402267:	01 d0                	add    %edx,%eax
  402269:	89 44 24 08          	mov    %eax,0x8(%esp)
  40226d:	eb 31                	jmp    4022a0 <reverse+0x70>
  40226f:	8b 44 24 0c          	mov    0xc(%esp),%eax
  402273:	0f b6 00             	movzbl (%eax),%eax
  402276:	88 44 24 03          	mov    %al,0x3(%esp)
  40227a:	8b 44 24 0c          	mov    0xc(%esp),%eax
  40227e:	8d 50 01             	lea    0x1(%eax),%edx
  402281:	89 54 24 0c          	mov    %edx,0xc(%esp)
  402285:	8b 54 24 08          	mov    0x8(%esp),%edx
  402289:	0f b6 12             	movzbl (%edx),%edx
  40228c:	88 10                	mov    %dl,(%eax)
  40228e:	8b 44 24 08          	mov    0x8(%esp),%eax
  402292:	8d 50 ff             	lea    -0x1(%eax),%edx
  402295:	89 54 24 08          	mov    %edx,0x8(%esp)
  402299:	0f b6 54 24 03       	movzbl 0x3(%esp),%edx
  40229e:	88 10                	mov    %dl,(%eax)
  4022a0:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4022a4:	3b 44 24 08          	cmp    0x8(%esp),%eax
  4022a8:	72 c5                	jb     40226f <reverse+0x3f>
  4022aa:	8b 44 24 20          	mov    0x20(%esp),%eax
  4022ae:	83 c4 1c             	add    $0x1c,%esp
  4022b1:	c3                   	ret    
  4022b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4022b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

004022c0 <itoa>:
  4022c0:	53                   	push   %ebx
  4022c1:	83 ec 48             	sub    $0x48,%esp
  4022c4:	8b 44 24 50          	mov    0x50(%esp),%eax
  4022c8:	89 44 24 38          	mov    %eax,0x38(%esp)
  4022cc:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
  4022d1:	79 04                	jns    4022d7 <itoa+0x17>
  4022d3:	f7 5c 24 50          	negl   0x50(%esp)
  4022d7:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
  4022de:	00 
  4022df:	8b 4c 24 50          	mov    0x50(%esp),%ecx
  4022e3:	ba 67 66 66 66       	mov    $0x66666667,%edx
  4022e8:	89 c8                	mov    %ecx,%eax
  4022ea:	f7 ea                	imul   %edx
  4022ec:	89 d0                	mov    %edx,%eax
  4022ee:	c1 f8 02             	sar    $0x2,%eax
  4022f1:	89 cb                	mov    %ecx,%ebx
  4022f3:	c1 fb 1f             	sar    $0x1f,%ebx
  4022f6:	29 d8                	sub    %ebx,%eax
  4022f8:	89 c2                	mov    %eax,%edx
  4022fa:	89 d0                	mov    %edx,%eax
  4022fc:	c1 e0 02             	shl    $0x2,%eax
  4022ff:	01 d0                	add    %edx,%eax
  402301:	01 c0                	add    %eax,%eax
  402303:	29 c1                	sub    %eax,%ecx
  402305:	89 ca                	mov    %ecx,%edx
  402307:	89 d0                	mov    %edx,%eax
  402309:	8d 48 30             	lea    0x30(%eax),%ecx
  40230c:	8b 44 24 3c          	mov    0x3c(%esp),%eax
  402310:	8d 50 01             	lea    0x1(%eax),%edx
  402313:	89 54 24 3c          	mov    %edx,0x3c(%esp)
  402317:	89 ca                	mov    %ecx,%edx
  402319:	88 54 04 06          	mov    %dl,0x6(%esp,%eax,1)
  40231d:	8b 4c 24 50          	mov    0x50(%esp),%ecx
  402321:	ba 67 66 66 66       	mov    $0x66666667,%edx
  402326:	89 c8                	mov    %ecx,%eax
  402328:	f7 ea                	imul   %edx
  40232a:	89 d0                	mov    %edx,%eax
  40232c:	c1 f8 02             	sar    $0x2,%eax
  40232f:	c1 f9 1f             	sar    $0x1f,%ecx
  402332:	89 ca                	mov    %ecx,%edx
  402334:	29 d0                	sub    %edx,%eax
  402336:	89 44 24 50          	mov    %eax,0x50(%esp)
  40233a:	83 7c 24 50 00       	cmpl   $0x0,0x50(%esp)
  40233f:	7f 9e                	jg     4022df <itoa+0x1f>
  402341:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
  402346:	79 10                	jns    402358 <itoa+0x98>
  402348:	8b 44 24 3c          	mov    0x3c(%esp),%eax
  40234c:	8d 50 01             	lea    0x1(%eax),%edx
  40234f:	89 54 24 3c          	mov    %edx,0x3c(%esp)
  402353:	c6 44 04 06 2d       	movb   $0x2d,0x6(%esp,%eax,1)
  402358:	83 ec 0c             	sub    $0xc,%esp
  40235b:	8d 44 24 12          	lea    0x12(%esp),%eax
  40235f:	50                   	push   %eax
  402360:	e8 cb fe ff ff       	call   402230 <reverse>
  402365:	83 c4 10             	add    $0x10,%esp
  402368:	8d 54 24 06          	lea    0x6(%esp),%edx
  40236c:	8b 44 24 3c          	mov    0x3c(%esp),%eax
  402370:	01 d0                	add    %edx,%eax
  402372:	c6 00 00             	movb   $0x0,(%eax)
  402375:	b8 00 00 00 00       	mov    $0x0,%eax
  40237a:	83 c4 48             	add    $0x48,%esp
  40237d:	5b                   	pop    %ebx
  40237e:	c3                   	ret    
  40237f:	90                   	nop

00402380 <putchar>:
  402380:	83 ec 1c             	sub    $0x1c,%esp
  402383:	8b 44 24 20          	mov    0x20(%esp),%eax
  402387:	88 44 24 0c          	mov    %al,0xc(%esp)
  40238b:	0f be 44 24 0c       	movsbl 0xc(%esp),%eax
  402390:	83 ec 0c             	sub    $0xc,%esp
  402393:	50                   	push   %eax
  402394:	e8 99 0c 00 00       	call   403032 <smollos_putchar>
  402399:	83 c4 10             	add    $0x10,%esp
  40239c:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a1:	83 c4 1c             	add    $0x1c,%esp
  4023a4:	c3                   	ret    
  4023a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4023ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

004023b0 <printf>:
  4023b0:	83 ec 1c             	sub    $0x1c,%esp
  4023b3:	8d 44 24 24          	lea    0x24(%esp),%eax
  4023b7:	89 04 24             	mov    %eax,(%esp)
  4023ba:	8b 44 24 20          	mov    0x20(%esp),%eax
  4023be:	89 44 24 0c          	mov    %eax,0xc(%esp)
  4023c2:	e9 a6 00 00 00       	jmp    40246d <printf+0xbd>
  4023c7:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4023cb:	0f b6 00             	movzbl (%eax),%eax
  4023ce:	3c 25                	cmp    $0x25,%al
  4023d0:	74 18                	je     4023ea <printf+0x3a>
  4023d2:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4023d6:	0f b6 00             	movzbl (%eax),%eax
  4023d9:	0f be c0             	movsbl %al,%eax
  4023dc:	83 ec 0c             	sub    $0xc,%esp
  4023df:	50                   	push   %eax
  4023e0:	e8 9b ff ff ff       	call   402380 <putchar>
  4023e5:	83 c4 10             	add    $0x10,%esp
  4023e8:	eb 7e                	jmp    402468 <printf+0xb8>
  4023ea:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  4023ef:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4023f3:	0f b6 00             	movzbl (%eax),%eax
  4023f6:	0f be c0             	movsbl %al,%eax
  4023f9:	83 f8 69             	cmp    $0x69,%eax
  4023fc:	74 07                	je     402405 <printf+0x55>
  4023fe:	83 f8 73             	cmp    $0x73,%eax
  402401:	74 2e                	je     402431 <printf+0x81>
  402403:	eb 4c                	jmp    402451 <printf+0xa1>
  402405:	8b 04 24             	mov    (%esp),%eax
  402408:	8d 50 04             	lea    0x4(%eax),%edx
  40240b:	89 14 24             	mov    %edx,(%esp)
  40240e:	8b 00                	mov    (%eax),%eax
  402410:	89 44 24 04          	mov    %eax,0x4(%esp)
  402414:	83 ec 0c             	sub    $0xc,%esp
  402417:	ff 74 24 10          	push   0x10(%esp)
  40241b:	e8 a0 fe ff ff       	call   4022c0 <itoa>
  402420:	83 c4 10             	add    $0x10,%esp
  402423:	83 ec 0c             	sub    $0xc,%esp
  402426:	50                   	push   %eax
  402427:	e8 e8 0b 00 00       	call   403014 <print>
  40242c:	83 c4 10             	add    $0x10,%esp
  40242f:	eb 37                	jmp    402468 <printf+0xb8>
  402431:	8b 04 24             	mov    (%esp),%eax
  402434:	8d 50 04             	lea    0x4(%eax),%edx
  402437:	89 14 24             	mov    %edx,(%esp)
  40243a:	8b 00                	mov    (%eax),%eax
  40243c:	89 44 24 08          	mov    %eax,0x8(%esp)
  402440:	83 ec 0c             	sub    $0xc,%esp
  402443:	ff 74 24 14          	push   0x14(%esp)
  402447:	e8 c8 0b 00 00       	call   403014 <print>
  40244c:	83 c4 10             	add    $0x10,%esp
  40244f:	eb 17                	jmp    402468 <printf+0xb8>
  402451:	8b 44 24 0c          	mov    0xc(%esp),%eax
  402455:	0f b6 00             	movzbl (%eax),%eax
  402458:	0f be c0             	movsbl %al,%eax
  40245b:	83 ec 0c             	sub    $0xc,%esp
  40245e:	50                   	push   %eax
  40245f:	e8 1c ff ff ff       	call   402380 <putchar>
  402464:	83 c4 10             	add    $0x10,%esp
  402467:	90                   	nop
  402468:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  40246d:	8b 44 24 0c          	mov    0xc(%esp),%eax
  402471:	0f b6 00             	movzbl (%eax),%eax
  402474:	84 c0                	test   %al,%al
  402476:	0f 85 4b ff ff ff    	jne    4023c7 <printf+0x17>
  40247c:	b8 00 00 00 00       	mov    $0x0,%eax
  402481:	83 c4 1c             	add    $0x1c,%esp
  402484:	c3                   	ret    
  402485:	66 90                	xchg   %ax,%ax
  402487:	66 90                	xchg   %ax,%ax
  402489:	66 90                	xchg   %ax,%ax
  40248b:	66 90                	xchg   %ax,%ax
  40248d:	66 90                	xchg   %ax,%ax
  40248f:	90                   	nop

00402490 <__cxa_atexit>:
  402490:	55                   	push   %ebp
  402491:	89 e5                	mov    %esp,%ebp
  402493:	53                   	push   %ebx
  402494:	e8 23 01 00 00       	call   4025bc <__x86.get_pc_thunk.bx>
  402499:	81 c3 e3 1b 00 00    	add    $0x1be3,%ebx
  40249f:	c7 c1 44 50 40 00    	mov    $0x405044,%ecx
  4024a5:	8b 11                	mov    (%ecx),%edx
  4024a7:	83 fa 7f             	cmp    $0x7f,%edx
  4024aa:	77 34                	ja     4024e0 <__cxa_atexit+0x50>
  4024ac:	8d 04 52             	lea    (%edx,%edx,2),%eax
  4024af:	83 c2 01             	add    $0x1,%edx
  4024b2:	c1 e0 02             	shl    $0x2,%eax
  4024b5:	81 c0 60 50 40 00    	add    $0x405060,%eax
  4024bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  4024be:	89 11                	mov    %edx,(%ecx)
  4024c0:	89 18                	mov    %ebx,(%eax)
  4024c2:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  4024c5:	89 58 04             	mov    %ebx,0x4(%eax)
  4024c8:	8b 5d 10             	mov    0x10(%ebp),%ebx
  4024cb:	89 58 08             	mov    %ebx,0x8(%eax)
  4024ce:	31 c0                	xor    %eax,%eax
  4024d0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4024d3:	c9                   	leave  
  4024d4:	c3                   	ret    
  4024d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4024dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  4024e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024e5:	eb e9                	jmp    4024d0 <__cxa_atexit+0x40>
  4024e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4024ee:	66 90                	xchg   %ax,%ax

004024f0 <__cxa_finalize>:
  4024f0:	e8 c3 00 00 00       	call   4025b8 <__x86.get_pc_thunk.dx>
  4024f5:	81 c2 87 1b 00 00    	add    $0x1b87,%edx
  4024fb:	55                   	push   %ebp
  4024fc:	89 e5                	mov    %esp,%ebp
  4024fe:	57                   	push   %edi
  4024ff:	56                   	push   %esi
  402500:	53                   	push   %ebx
  402501:	83 ec 0c             	sub    $0xc,%esp
  402504:	c7 c0 44 50 40 00    	mov    $0x405044,%eax
  40250a:	8b 7d 08             	mov    0x8(%ebp),%edi
  40250d:	8b 00                	mov    (%eax),%eax
  40250f:	8d 58 ff             	lea    -0x1(%eax),%ebx
  402512:	85 ff                	test   %edi,%edi
  402514:	74 5a                	je     402570 <__cxa_finalize+0x80>
  402516:	85 c0                	test   %eax,%eax
  402518:	74 42                	je     40255c <__cxa_finalize+0x6c>
  40251a:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
  40251d:	c7 c0 60 50 40 00    	mov    $0x405060,%eax
  402523:	8d 74 88 f4          	lea    -0xc(%eax,%ecx,4),%esi
  402527:	eb 12                	jmp    40253b <__cxa_finalize+0x4b>
  402529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  402530:	83 eb 01             	sub    $0x1,%ebx
  402533:	83 ee 0c             	sub    $0xc,%esi
  402536:	83 fb ff             	cmp    $0xffffffff,%ebx
  402539:	74 21                	je     40255c <__cxa_finalize+0x6c>
  40253b:	39 3e                	cmp    %edi,(%esi)
  40253d:	75 f1                	jne    402530 <__cxa_finalize+0x40>
  40253f:	83 ec 0c             	sub    $0xc,%esp
  402542:	ff 76 04             	push   0x4(%esi)
  402545:	83 eb 01             	sub    $0x1,%ebx
  402548:	83 ee 0c             	sub    $0xc,%esi
  40254b:	ff d7                	call   *%edi
  40254d:	c7 46 0c 00 00 00 00 	movl   $0x0,0xc(%esi)
  402554:	83 c4 10             	add    $0x10,%esp
  402557:	83 fb ff             	cmp    $0xffffffff,%ebx
  40255a:	75 df                	jne    40253b <__cxa_finalize+0x4b>
  40255c:	8d 65 f4             	lea    -0xc(%ebp),%esp
  40255f:	5b                   	pop    %ebx
  402560:	5e                   	pop    %esi
  402561:	5f                   	pop    %edi
  402562:	5d                   	pop    %ebp
  402563:	c3                   	ret    
  402564:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40256b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  40256f:	90                   	nop
  402570:	85 c0                	test   %eax,%eax
  402572:	74 e8                	je     40255c <__cxa_finalize+0x6c>
  402574:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
  402577:	c7 c0 60 50 40 00    	mov    $0x405060,%eax
  40257d:	8d 74 88 f4          	lea    -0xc(%eax,%ecx,4),%esi
  402581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  402588:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  40258f:	90                   	nop
  402590:	8b 06                	mov    (%esi),%eax
  402592:	85 c0                	test   %eax,%eax
  402594:	74 0b                	je     4025a1 <__cxa_finalize+0xb1>
  402596:	83 ec 0c             	sub    $0xc,%esp
  402599:	ff 76 04             	push   0x4(%esi)
  40259c:	ff d0                	call   *%eax
  40259e:	83 c4 10             	add    $0x10,%esp
  4025a1:	83 eb 01             	sub    $0x1,%ebx
  4025a4:	83 ee 0c             	sub    $0xc,%esi
  4025a7:	83 fb ff             	cmp    $0xffffffff,%ebx
  4025aa:	75 e4                	jne    402590 <__cxa_finalize+0xa0>
  4025ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
  4025af:	5b                   	pop    %ebx
  4025b0:	5e                   	pop    %esi
  4025b1:	5f                   	pop    %edi
  4025b2:	5d                   	pop    %ebp
  4025b3:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.ax:

004025b4 <__x86.get_pc_thunk.ax>:
  4025b4:	8b 04 24             	mov    (%esp),%eax
  4025b7:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.dx:

004025b8 <__x86.get_pc_thunk.dx>:
  4025b8:	8b 14 24             	mov    (%esp),%edx
  4025bb:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.bx:

004025bc <__x86.get_pc_thunk.bx>:
  4025bc:	8b 1c 24             	mov    (%esp),%ebx
  4025bf:	c3                   	ret    
