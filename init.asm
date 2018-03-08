
_init:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:

char *argv[] = { "sh", 0 };

int
main(void)
{
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	53                   	push   %ebx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
    1007:	83 ec 10             	sub    $0x10,%esp
  int pid, wpid;

printf(1,"begin init%c\n");
    100a:	c7 44 24 04 e1 18 00 	movl   $0x18e1,0x4(%esp)
    1011:	00 
    1012:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1019:	e8 22 05 00 00       	call   1540 <printf>

  if(open("console", O_RDWR) < 0){
    101e:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    1025:	00 
    1026:	c7 04 24 ef 18 00 00 	movl   $0x18ef,(%esp)
    102d:	e8 f0 03 00 00       	call   1422 <open>
    1032:	85 c0                	test   %eax,%eax
    1034:	0f 88 4e 01 00 00    	js     1188 <main+0x188>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
    103a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1041:	e8 14 04 00 00       	call   145a <dup>
  dup(0);  // stderr
    1046:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    104d:	e8 08 04 00 00       	call   145a <dup>

printf(1,"before loop%c\n");
    1052:	c7 44 24 04 f7 18 00 	movl   $0x18f7,0x4(%esp)
    1059:	00 
    105a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1061:	e8 da 04 00 00       	call   1540 <printf>
    1066:	66 90                	xchg   %ax,%ax

  for(;;){

printf(1,"fuck%c\n");
    1068:	c7 44 24 04 06 19 00 	movl   $0x1906,0x4(%esp)
    106f:	00 
    1070:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1077:	e8 c4 04 00 00       	call   1540 <printf>
    printf(1, "init: starting sh\n");
    107c:	c7 44 24 04 0e 19 00 	movl   $0x190e,0x4(%esp)
    1083:	00 
    1084:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    108b:	e8 b0 04 00 00       	call   1540 <printf>
    pid = fork();
    1090:	e8 45 03 00 00       	call   13da <fork>
    if(pid < 0){
    1095:	85 c0                	test   %eax,%eax

  for(;;){

printf(1,"fuck%c\n");
    printf(1, "init: starting sh\n");
    pid = fork();
    1097:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1099:	78 57                	js     10f2 <main+0xf2>
printf(1,"this%c\n");
      printf(1, "init: fork failed\n");
printf(1,"this2%c\n");
      exit();
    }
    if(pid == 0){
    109b:	0f 84 92 00 00 00    	je     1133 <main+0x133>

printf(1,"shit2%c\n");
      exit();
    }

printf(1,"hate this class%c\n");
    10a1:	c7 44 24 04 6f 19 00 	movl   $0x196f,0x4(%esp)
    10a8:	00 
    10a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10b0:	e8 8b 04 00 00       	call   1540 <printf>
    while((wpid=wait()) >= 0 && wpid != pid)
    10b5:	eb 19                	jmp    10d0 <main+0xd0>
    10b7:	90                   	nop
    10b8:	39 d8                	cmp    %ebx,%eax
    10ba:	74 1d                	je     10d9 <main+0xd9>

printf(1,"dumbitch%c\n");
    10bc:	c7 44 24 04 82 19 00 	movl   $0x1982,0x4(%esp)
    10c3:	00 
    10c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10cb:	e8 70 04 00 00       	call   1540 <printf>
printf(1,"shit2%c\n");
      exit();
    }

printf(1,"hate this class%c\n");
    while((wpid=wait()) >= 0 && wpid != pid)
    10d0:	e8 15 03 00 00       	call   13ea <wait>
    10d5:	85 c0                	test   %eax,%eax
    10d7:	79 df                	jns    10b8 <main+0xb8>

printf(1,"dumbitch%c\n");
      printf(1, "zombie!\n");
    10d9:	c7 44 24 04 8e 19 00 	movl   $0x198e,0x4(%esp)
    10e0:	00 
    10e1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10e8:	e8 53 04 00 00       	call   1540 <printf>
  }
    10ed:	e9 76 ff ff ff       	jmp    1068 <main+0x68>
printf(1,"fuck%c\n");
    printf(1, "init: starting sh\n");
    pid = fork();
    if(pid < 0){

printf(1,"this%c\n");
    10f2:	c7 44 24 04 21 19 00 	movl   $0x1921,0x4(%esp)
    10f9:	00 
    10fa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1101:	e8 3a 04 00 00       	call   1540 <printf>
      printf(1, "init: fork failed\n");
    1106:	c7 44 24 04 29 19 00 	movl   $0x1929,0x4(%esp)
    110d:	00 
    110e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1115:	e8 26 04 00 00       	call   1540 <printf>
printf(1,"this2%c\n");
    111a:	c7 44 24 04 3c 19 00 	movl   $0x193c,0x4(%esp)
    1121:	00 
    1122:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1129:	e8 12 04 00 00       	call   1540 <printf>
      exit();
    112e:	e8 af 02 00 00       	call   13e2 <exit>
    }
    if(pid == 0){

printf(1,"shit%c\n");
    1133:	c7 44 24 04 45 19 00 	movl   $0x1945,0x4(%esp)
    113a:	00 
    113b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1142:	e8 f9 03 00 00       	call   1540 <printf>
      exec("sh", argv);
    1147:	c7 44 24 04 54 1c 00 	movl   $0x1c54,0x4(%esp)
    114e:	00 
    114f:	c7 04 24 4d 19 00 00 	movl   $0x194d,(%esp)
    1156:	e8 bf 02 00 00       	call   141a <exec>
      printf(1, "init: exec sh failed\n");
    115b:	c7 44 24 04 50 19 00 	movl   $0x1950,0x4(%esp)
    1162:	00 
    1163:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    116a:	e8 d1 03 00 00       	call   1540 <printf>

printf(1,"shit2%c\n");
    116f:	c7 44 24 04 66 19 00 	movl   $0x1966,0x4(%esp)
    1176:	00 
    1177:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    117e:	e8 bd 03 00 00       	call   1540 <printf>
      exit();
    1183:	e8 5a 02 00 00       	call   13e2 <exit>
  int pid, wpid;

printf(1,"begin init%c\n");

  if(open("console", O_RDWR) < 0){
    mknod("console", 1, 1);
    1188:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    118f:	00 
    1190:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    1197:	00 
    1198:	c7 04 24 ef 18 00 00 	movl   $0x18ef,(%esp)
    119f:	e8 86 02 00 00       	call   142a <mknod>
    open("console", O_RDWR);
    11a4:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    11ab:	00 
    11ac:	c7 04 24 ef 18 00 00 	movl   $0x18ef,(%esp)
    11b3:	e8 6a 02 00 00       	call   1422 <open>
    11b8:	e9 7d fe ff ff       	jmp    103a <main+0x3a>
    11bd:	66 90                	xchg   %ax,%ax
    11bf:	90                   	nop

000011c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    11c0:	55                   	push   %ebp
    11c1:	89 e5                	mov    %esp,%ebp
    11c3:	8b 45 08             	mov    0x8(%ebp),%eax
    11c6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    11c9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    11ca:	89 c2                	mov    %eax,%edx
    11cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11d0:	83 c1 01             	add    $0x1,%ecx
    11d3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    11d7:	83 c2 01             	add    $0x1,%edx
    11da:	84 db                	test   %bl,%bl
    11dc:	88 5a ff             	mov    %bl,-0x1(%edx)
    11df:	75 ef                	jne    11d0 <strcpy+0x10>
    ;
  return os;
}
    11e1:	5b                   	pop    %ebx
    11e2:	5d                   	pop    %ebp
    11e3:	c3                   	ret    
    11e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000011f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    11f0:	55                   	push   %ebp
    11f1:	89 e5                	mov    %esp,%ebp
    11f3:	8b 55 08             	mov    0x8(%ebp),%edx
    11f6:	53                   	push   %ebx
    11f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    11fa:	0f b6 02             	movzbl (%edx),%eax
    11fd:	84 c0                	test   %al,%al
    11ff:	74 2d                	je     122e <strcmp+0x3e>
    1201:	0f b6 19             	movzbl (%ecx),%ebx
    1204:	38 d8                	cmp    %bl,%al
    1206:	74 0e                	je     1216 <strcmp+0x26>
    1208:	eb 2b                	jmp    1235 <strcmp+0x45>
    120a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1210:	38 c8                	cmp    %cl,%al
    1212:	75 15                	jne    1229 <strcmp+0x39>
    p++, q++;
    1214:	89 d9                	mov    %ebx,%ecx
    1216:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1219:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    121c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    121f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    1223:	84 c0                	test   %al,%al
    1225:	75 e9                	jne    1210 <strcmp+0x20>
    1227:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    1229:	29 c8                	sub    %ecx,%eax
}
    122b:	5b                   	pop    %ebx
    122c:	5d                   	pop    %ebp
    122d:	c3                   	ret    
    122e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    1231:	31 c0                	xor    %eax,%eax
    1233:	eb f4                	jmp    1229 <strcmp+0x39>
    1235:	0f b6 cb             	movzbl %bl,%ecx
    1238:	eb ef                	jmp    1229 <strcmp+0x39>
    123a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001240 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1246:	80 39 00             	cmpb   $0x0,(%ecx)
    1249:	74 12                	je     125d <strlen+0x1d>
    124b:	31 d2                	xor    %edx,%edx
    124d:	8d 76 00             	lea    0x0(%esi),%esi
    1250:	83 c2 01             	add    $0x1,%edx
    1253:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    1257:	89 d0                	mov    %edx,%eax
    1259:	75 f5                	jne    1250 <strlen+0x10>
    ;
  return n;
}
    125b:	5d                   	pop    %ebp
    125c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    125d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    125f:	5d                   	pop    %ebp
    1260:	c3                   	ret    
    1261:	eb 0d                	jmp    1270 <memset>
    1263:	90                   	nop
    1264:	90                   	nop
    1265:	90                   	nop
    1266:	90                   	nop
    1267:	90                   	nop
    1268:	90                   	nop
    1269:	90                   	nop
    126a:	90                   	nop
    126b:	90                   	nop
    126c:	90                   	nop
    126d:	90                   	nop
    126e:	90                   	nop
    126f:	90                   	nop

00001270 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1270:	55                   	push   %ebp
    1271:	89 e5                	mov    %esp,%ebp
    1273:	8b 55 08             	mov    0x8(%ebp),%edx
    1276:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    1277:	8b 4d 10             	mov    0x10(%ebp),%ecx
    127a:	8b 45 0c             	mov    0xc(%ebp),%eax
    127d:	89 d7                	mov    %edx,%edi
    127f:	fc                   	cld    
    1280:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1282:	89 d0                	mov    %edx,%eax
    1284:	5f                   	pop    %edi
    1285:	5d                   	pop    %ebp
    1286:	c3                   	ret    
    1287:	89 f6                	mov    %esi,%esi
    1289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001290 <strchr>:

char*
strchr(const char *s, char c)
{
    1290:	55                   	push   %ebp
    1291:	89 e5                	mov    %esp,%ebp
    1293:	8b 45 08             	mov    0x8(%ebp),%eax
    1296:	53                   	push   %ebx
    1297:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    129a:	0f b6 18             	movzbl (%eax),%ebx
    129d:	84 db                	test   %bl,%bl
    129f:	74 1d                	je     12be <strchr+0x2e>
    if(*s == c)
    12a1:	38 d3                	cmp    %dl,%bl
    12a3:	89 d1                	mov    %edx,%ecx
    12a5:	75 0d                	jne    12b4 <strchr+0x24>
    12a7:	eb 17                	jmp    12c0 <strchr+0x30>
    12a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12b0:	38 ca                	cmp    %cl,%dl
    12b2:	74 0c                	je     12c0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    12b4:	83 c0 01             	add    $0x1,%eax
    12b7:	0f b6 10             	movzbl (%eax),%edx
    12ba:	84 d2                	test   %dl,%dl
    12bc:	75 f2                	jne    12b0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    12be:	31 c0                	xor    %eax,%eax
}
    12c0:	5b                   	pop    %ebx
    12c1:	5d                   	pop    %ebp
    12c2:	c3                   	ret    
    12c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    12c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012d0 <gets>:

char*
gets(char *buf, int max)
{
    12d0:	55                   	push   %ebp
    12d1:	89 e5                	mov    %esp,%ebp
    12d3:	57                   	push   %edi
    12d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    12d5:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
    12d7:	53                   	push   %ebx
    12d8:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    12db:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    12de:	eb 31                	jmp    1311 <gets+0x41>
    cc = read(0, &c, 1);
    12e0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    12e7:	00 
    12e8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    12ec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12f3:	e8 02 01 00 00       	call   13fa <read>
    if(cc < 1)
    12f8:	85 c0                	test   %eax,%eax
    12fa:	7e 1d                	jle    1319 <gets+0x49>
      break;
    buf[i++] = c;
    12fc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1300:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    1302:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    1305:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    1307:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    130b:	74 0c                	je     1319 <gets+0x49>
    130d:	3c 0a                	cmp    $0xa,%al
    130f:	74 08                	je     1319 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1311:	8d 5e 01             	lea    0x1(%esi),%ebx
    1314:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1317:	7c c7                	jl     12e0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    1319:	8b 45 08             	mov    0x8(%ebp),%eax
    131c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    1320:	83 c4 2c             	add    $0x2c,%esp
    1323:	5b                   	pop    %ebx
    1324:	5e                   	pop    %esi
    1325:	5f                   	pop    %edi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret    
    1328:	90                   	nop
    1329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001330 <stat>:

int
stat(char *n, struct stat *st)
{
    1330:	55                   	push   %ebp
    1331:	89 e5                	mov    %esp,%ebp
    1333:	56                   	push   %esi
    1334:	53                   	push   %ebx
    1335:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1338:	8b 45 08             	mov    0x8(%ebp),%eax
    133b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1342:	00 
    1343:	89 04 24             	mov    %eax,(%esp)
    1346:	e8 d7 00 00 00       	call   1422 <open>
  if(fd < 0)
    134b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    134d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    134f:	78 27                	js     1378 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    1351:	8b 45 0c             	mov    0xc(%ebp),%eax
    1354:	89 1c 24             	mov    %ebx,(%esp)
    1357:	89 44 24 04          	mov    %eax,0x4(%esp)
    135b:	e8 da 00 00 00       	call   143a <fstat>
  close(fd);
    1360:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
    1363:	89 c6                	mov    %eax,%esi
  close(fd);
    1365:	e8 a0 00 00 00       	call   140a <close>
  return r;
    136a:	89 f0                	mov    %esi,%eax
}
    136c:	83 c4 10             	add    $0x10,%esp
    136f:	5b                   	pop    %ebx
    1370:	5e                   	pop    %esi
    1371:	5d                   	pop    %ebp
    1372:	c3                   	ret    
    1373:	90                   	nop
    1374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    1378:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    137d:	eb ed                	jmp    136c <stat+0x3c>
    137f:	90                   	nop

00001380 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    1380:	55                   	push   %ebp
    1381:	89 e5                	mov    %esp,%ebp
    1383:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1386:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1387:	0f be 11             	movsbl (%ecx),%edx
    138a:	8d 42 d0             	lea    -0x30(%edx),%eax
    138d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
    138f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1394:	77 17                	ja     13ad <atoi+0x2d>
    1396:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    1398:	83 c1 01             	add    $0x1,%ecx
    139b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    139e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    13a2:	0f be 11             	movsbl (%ecx),%edx
    13a5:	8d 5a d0             	lea    -0x30(%edx),%ebx
    13a8:	80 fb 09             	cmp    $0x9,%bl
    13ab:	76 eb                	jbe    1398 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
    13ad:	5b                   	pop    %ebx
    13ae:	5d                   	pop    %ebp
    13af:	c3                   	ret    

000013b0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    13b0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    13b1:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
    13b3:	89 e5                	mov    %esp,%ebp
    13b5:	56                   	push   %esi
    13b6:	8b 45 08             	mov    0x8(%ebp),%eax
    13b9:	53                   	push   %ebx
    13ba:	8b 5d 10             	mov    0x10(%ebp),%ebx
    13bd:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    13c0:	85 db                	test   %ebx,%ebx
    13c2:	7e 12                	jle    13d6 <memmove+0x26>
    13c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    13c8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    13cc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    13cf:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    13d2:	39 da                	cmp    %ebx,%edx
    13d4:	75 f2                	jne    13c8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    13d6:	5b                   	pop    %ebx
    13d7:	5e                   	pop    %esi
    13d8:	5d                   	pop    %ebp
    13d9:	c3                   	ret    

000013da <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    13da:	b8 01 00 00 00       	mov    $0x1,%eax
    13df:	cd 40                	int    $0x40
    13e1:	c3                   	ret    

000013e2 <exit>:
SYSCALL(exit)
    13e2:	b8 02 00 00 00       	mov    $0x2,%eax
    13e7:	cd 40                	int    $0x40
    13e9:	c3                   	ret    

000013ea <wait>:
SYSCALL(wait)
    13ea:	b8 03 00 00 00       	mov    $0x3,%eax
    13ef:	cd 40                	int    $0x40
    13f1:	c3                   	ret    

000013f2 <pipe>:
SYSCALL(pipe)
    13f2:	b8 04 00 00 00       	mov    $0x4,%eax
    13f7:	cd 40                	int    $0x40
    13f9:	c3                   	ret    

000013fa <read>:
SYSCALL(read)
    13fa:	b8 05 00 00 00       	mov    $0x5,%eax
    13ff:	cd 40                	int    $0x40
    1401:	c3                   	ret    

00001402 <write>:
SYSCALL(write)
    1402:	b8 10 00 00 00       	mov    $0x10,%eax
    1407:	cd 40                	int    $0x40
    1409:	c3                   	ret    

0000140a <close>:
SYSCALL(close)
    140a:	b8 15 00 00 00       	mov    $0x15,%eax
    140f:	cd 40                	int    $0x40
    1411:	c3                   	ret    

00001412 <kill>:
SYSCALL(kill)
    1412:	b8 06 00 00 00       	mov    $0x6,%eax
    1417:	cd 40                	int    $0x40
    1419:	c3                   	ret    

0000141a <exec>:
SYSCALL(exec)
    141a:	b8 07 00 00 00       	mov    $0x7,%eax
    141f:	cd 40                	int    $0x40
    1421:	c3                   	ret    

00001422 <open>:
SYSCALL(open)
    1422:	b8 0f 00 00 00       	mov    $0xf,%eax
    1427:	cd 40                	int    $0x40
    1429:	c3                   	ret    

0000142a <mknod>:
SYSCALL(mknod)
    142a:	b8 11 00 00 00       	mov    $0x11,%eax
    142f:	cd 40                	int    $0x40
    1431:	c3                   	ret    

00001432 <unlink>:
SYSCALL(unlink)
    1432:	b8 12 00 00 00       	mov    $0x12,%eax
    1437:	cd 40                	int    $0x40
    1439:	c3                   	ret    

0000143a <fstat>:
SYSCALL(fstat)
    143a:	b8 08 00 00 00       	mov    $0x8,%eax
    143f:	cd 40                	int    $0x40
    1441:	c3                   	ret    

00001442 <link>:
SYSCALL(link)
    1442:	b8 13 00 00 00       	mov    $0x13,%eax
    1447:	cd 40                	int    $0x40
    1449:	c3                   	ret    

0000144a <mkdir>:
SYSCALL(mkdir)
    144a:	b8 14 00 00 00       	mov    $0x14,%eax
    144f:	cd 40                	int    $0x40
    1451:	c3                   	ret    

00001452 <chdir>:
SYSCALL(chdir)
    1452:	b8 09 00 00 00       	mov    $0x9,%eax
    1457:	cd 40                	int    $0x40
    1459:	c3                   	ret    

0000145a <dup>:
SYSCALL(dup)
    145a:	b8 0a 00 00 00       	mov    $0xa,%eax
    145f:	cd 40                	int    $0x40
    1461:	c3                   	ret    

00001462 <getpid>:
SYSCALL(getpid)
    1462:	b8 0b 00 00 00       	mov    $0xb,%eax
    1467:	cd 40                	int    $0x40
    1469:	c3                   	ret    

0000146a <sbrk>:
SYSCALL(sbrk)
    146a:	b8 0c 00 00 00       	mov    $0xc,%eax
    146f:	cd 40                	int    $0x40
    1471:	c3                   	ret    

00001472 <sleep>:
SYSCALL(sleep)
    1472:	b8 0d 00 00 00       	mov    $0xd,%eax
    1477:	cd 40                	int    $0x40
    1479:	c3                   	ret    

0000147a <uptime>:
SYSCALL(uptime)
    147a:	b8 0e 00 00 00       	mov    $0xe,%eax
    147f:	cd 40                	int    $0x40
    1481:	c3                   	ret    

00001482 <shm_open>:
SYSCALL(shm_open)
    1482:	b8 16 00 00 00       	mov    $0x16,%eax
    1487:	cd 40                	int    $0x40
    1489:	c3                   	ret    

0000148a <shm_close>:
SYSCALL(shm_close)	
    148a:	b8 17 00 00 00       	mov    $0x17,%eax
    148f:	cd 40                	int    $0x40
    1491:	c3                   	ret    
    1492:	66 90                	xchg   %ax,%ax
    1494:	66 90                	xchg   %ax,%ax
    1496:	66 90                	xchg   %ax,%ax
    1498:	66 90                	xchg   %ax,%ax
    149a:	66 90                	xchg   %ax,%ax
    149c:	66 90                	xchg   %ax,%ax
    149e:	66 90                	xchg   %ax,%ax

000014a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    14a0:	55                   	push   %ebp
    14a1:	89 e5                	mov    %esp,%ebp
    14a3:	57                   	push   %edi
    14a4:	56                   	push   %esi
    14a5:	89 c6                	mov    %eax,%esi
    14a7:	53                   	push   %ebx
    14a8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    14ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
    14ae:	85 db                	test   %ebx,%ebx
    14b0:	74 09                	je     14bb <printint+0x1b>
    14b2:	89 d0                	mov    %edx,%eax
    14b4:	c1 e8 1f             	shr    $0x1f,%eax
    14b7:	84 c0                	test   %al,%al
    14b9:	75 75                	jne    1530 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    14bb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    14bd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    14c4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
    14c7:	31 ff                	xor    %edi,%edi
    14c9:	89 ce                	mov    %ecx,%esi
    14cb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    14ce:	eb 02                	jmp    14d2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    14d0:	89 cf                	mov    %ecx,%edi
    14d2:	31 d2                	xor    %edx,%edx
    14d4:	f7 f6                	div    %esi
    14d6:	8d 4f 01             	lea    0x1(%edi),%ecx
    14d9:	0f b6 92 9e 19 00 00 	movzbl 0x199e(%edx),%edx
  }while((x /= base) != 0);
    14e0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    14e2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    14e5:	75 e9                	jne    14d0 <printint+0x30>
  if(neg)
    14e7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    14ea:	89 c8                	mov    %ecx,%eax
    14ec:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
    14ef:	85 d2                	test   %edx,%edx
    14f1:	74 08                	je     14fb <printint+0x5b>
    buf[i++] = '-';
    14f3:	8d 4f 02             	lea    0x2(%edi),%ecx
    14f6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    14fb:	8d 79 ff             	lea    -0x1(%ecx),%edi
    14fe:	66 90                	xchg   %ax,%ax
    1500:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    1505:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1508:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    150f:	00 
    1510:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1514:	89 34 24             	mov    %esi,(%esp)
    1517:	88 45 d7             	mov    %al,-0x29(%ebp)
    151a:	e8 e3 fe ff ff       	call   1402 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    151f:	83 ff ff             	cmp    $0xffffffff,%edi
    1522:	75 dc                	jne    1500 <printint+0x60>
    putc(fd, buf[i]);
}
    1524:	83 c4 4c             	add    $0x4c,%esp
    1527:	5b                   	pop    %ebx
    1528:	5e                   	pop    %esi
    1529:	5f                   	pop    %edi
    152a:	5d                   	pop    %ebp
    152b:	c3                   	ret    
    152c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    1530:	89 d0                	mov    %edx,%eax
    1532:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    1534:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    153b:	eb 87                	jmp    14c4 <printint+0x24>
    153d:	8d 76 00             	lea    0x0(%esi),%esi

00001540 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1540:	55                   	push   %ebp
    1541:	89 e5                	mov    %esp,%ebp
    1543:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    1544:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1546:	56                   	push   %esi
    1547:	53                   	push   %ebx
    1548:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    154b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    154e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1551:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    1554:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    1557:	0f b6 13             	movzbl (%ebx),%edx
    155a:	83 c3 01             	add    $0x1,%ebx
    155d:	84 d2                	test   %dl,%dl
    155f:	75 39                	jne    159a <printf+0x5a>
    1561:	e9 c2 00 00 00       	jmp    1628 <printf+0xe8>
    1566:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1568:	83 fa 25             	cmp    $0x25,%edx
    156b:	0f 84 bf 00 00 00    	je     1630 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1571:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1574:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    157b:	00 
    157c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1580:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
    1583:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1586:	e8 77 fe ff ff       	call   1402 <write>
    158b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    158e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1592:	84 d2                	test   %dl,%dl
    1594:	0f 84 8e 00 00 00    	je     1628 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
    159a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    159c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    159f:	74 c7                	je     1568 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    15a1:	83 ff 25             	cmp    $0x25,%edi
    15a4:	75 e5                	jne    158b <printf+0x4b>
      if(c == 'd'){
    15a6:	83 fa 64             	cmp    $0x64,%edx
    15a9:	0f 84 31 01 00 00    	je     16e0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    15af:	25 f7 00 00 00       	and    $0xf7,%eax
    15b4:	83 f8 70             	cmp    $0x70,%eax
    15b7:	0f 84 83 00 00 00    	je     1640 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    15bd:	83 fa 73             	cmp    $0x73,%edx
    15c0:	0f 84 a2 00 00 00    	je     1668 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    15c6:	83 fa 63             	cmp    $0x63,%edx
    15c9:	0f 84 35 01 00 00    	je     1704 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    15cf:	83 fa 25             	cmp    $0x25,%edx
    15d2:	0f 84 e0 00 00 00    	je     16b8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    15d8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    15db:	83 c3 01             	add    $0x1,%ebx
    15de:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    15e5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    15e6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    15e8:	89 44 24 04          	mov    %eax,0x4(%esp)
    15ec:	89 34 24             	mov    %esi,(%esp)
    15ef:	89 55 d0             	mov    %edx,-0x30(%ebp)
    15f2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    15f6:	e8 07 fe ff ff       	call   1402 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    15fb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    15fe:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1601:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1608:	00 
    1609:	89 44 24 04          	mov    %eax,0x4(%esp)
    160d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    1610:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1613:	e8 ea fd ff ff       	call   1402 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1618:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    161c:	84 d2                	test   %dl,%dl
    161e:	0f 85 76 ff ff ff    	jne    159a <printf+0x5a>
    1624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1628:	83 c4 3c             	add    $0x3c,%esp
    162b:	5b                   	pop    %ebx
    162c:	5e                   	pop    %esi
    162d:	5f                   	pop    %edi
    162e:	5d                   	pop    %ebp
    162f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1630:	bf 25 00 00 00       	mov    $0x25,%edi
    1635:	e9 51 ff ff ff       	jmp    158b <printf+0x4b>
    163a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    1640:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1643:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1648:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    164a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1651:	8b 10                	mov    (%eax),%edx
    1653:	89 f0                	mov    %esi,%eax
    1655:	e8 46 fe ff ff       	call   14a0 <printint>
        ap++;
    165a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    165e:	e9 28 ff ff ff       	jmp    158b <printf+0x4b>
    1663:	90                   	nop
    1664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    1668:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    166b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    166f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    1671:	b8 97 19 00 00       	mov    $0x1997,%eax
    1676:	85 ff                	test   %edi,%edi
    1678:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    167b:	0f b6 07             	movzbl (%edi),%eax
    167e:	84 c0                	test   %al,%al
    1680:	74 2a                	je     16ac <printf+0x16c>
    1682:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1688:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    168b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    168e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1691:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1698:	00 
    1699:	89 44 24 04          	mov    %eax,0x4(%esp)
    169d:	89 34 24             	mov    %esi,(%esp)
    16a0:	e8 5d fd ff ff       	call   1402 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    16a5:	0f b6 07             	movzbl (%edi),%eax
    16a8:	84 c0                	test   %al,%al
    16aa:	75 dc                	jne    1688 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    16ac:	31 ff                	xor    %edi,%edi
    16ae:	e9 d8 fe ff ff       	jmp    158b <printf+0x4b>
    16b3:	90                   	nop
    16b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    16b8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    16bb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    16bd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    16c4:	00 
    16c5:	89 44 24 04          	mov    %eax,0x4(%esp)
    16c9:	89 34 24             	mov    %esi,(%esp)
    16cc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    16d0:	e8 2d fd ff ff       	call   1402 <write>
    16d5:	e9 b1 fe ff ff       	jmp    158b <printf+0x4b>
    16da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    16e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    16e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    16e8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    16eb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16f2:	8b 10                	mov    (%eax),%edx
    16f4:	89 f0                	mov    %esi,%eax
    16f6:	e8 a5 fd ff ff       	call   14a0 <printint>
        ap++;
    16fb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    16ff:	e9 87 fe ff ff       	jmp    158b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1704:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1707:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1709:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    170b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1712:	00 
    1713:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    1716:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1719:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    171c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1720:	e8 dd fc ff ff       	call   1402 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    1725:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    1729:	e9 5d fe ff ff       	jmp    158b <printf+0x4b>
    172e:	66 90                	xchg   %ax,%ax

00001730 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1730:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1731:	a1 5c 1c 00 00       	mov    0x1c5c,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1736:	89 e5                	mov    %esp,%ebp
    1738:	57                   	push   %edi
    1739:	56                   	push   %esi
    173a:	53                   	push   %ebx
    173b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    173e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1740:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1743:	39 d0                	cmp    %edx,%eax
    1745:	72 11                	jb     1758 <free+0x28>
    1747:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1748:	39 c8                	cmp    %ecx,%eax
    174a:	72 04                	jb     1750 <free+0x20>
    174c:	39 ca                	cmp    %ecx,%edx
    174e:	72 10                	jb     1760 <free+0x30>
    1750:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1752:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1754:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1756:	73 f0                	jae    1748 <free+0x18>
    1758:	39 ca                	cmp    %ecx,%edx
    175a:	72 04                	jb     1760 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    175c:	39 c8                	cmp    %ecx,%eax
    175e:	72 f0                	jb     1750 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1760:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1763:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    1766:	39 cf                	cmp    %ecx,%edi
    1768:	74 1e                	je     1788 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    176a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    176d:	8b 48 04             	mov    0x4(%eax),%ecx
    1770:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    1773:	39 f2                	cmp    %esi,%edx
    1775:	74 28                	je     179f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1777:	89 10                	mov    %edx,(%eax)
  freep = p;
    1779:	a3 5c 1c 00 00       	mov    %eax,0x1c5c
}
    177e:	5b                   	pop    %ebx
    177f:	5e                   	pop    %esi
    1780:	5f                   	pop    %edi
    1781:	5d                   	pop    %ebp
    1782:	c3                   	ret    
    1783:	90                   	nop
    1784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    1788:	03 71 04             	add    0x4(%ecx),%esi
    178b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    178e:	8b 08                	mov    (%eax),%ecx
    1790:	8b 09                	mov    (%ecx),%ecx
    1792:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1795:	8b 48 04             	mov    0x4(%eax),%ecx
    1798:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    179b:	39 f2                	cmp    %esi,%edx
    179d:	75 d8                	jne    1777 <free+0x47>
    p->s.size += bp->s.size;
    179f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    17a2:	a3 5c 1c 00 00       	mov    %eax,0x1c5c
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    17a7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    17aa:	8b 53 f8             	mov    -0x8(%ebx),%edx
    17ad:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    17af:	5b                   	pop    %ebx
    17b0:	5e                   	pop    %esi
    17b1:	5f                   	pop    %edi
    17b2:	5d                   	pop    %ebp
    17b3:	c3                   	ret    
    17b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    17ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000017c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    17c0:	55                   	push   %ebp
    17c1:	89 e5                	mov    %esp,%ebp
    17c3:	57                   	push   %edi
    17c4:	56                   	push   %esi
    17c5:	53                   	push   %ebx
    17c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    17c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    17cc:	8b 1d 5c 1c 00 00    	mov    0x1c5c,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    17d2:	8d 48 07             	lea    0x7(%eax),%ecx
    17d5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    17d8:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    17da:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    17dd:	0f 84 9b 00 00 00    	je     187e <malloc+0xbe>
    17e3:	8b 13                	mov    (%ebx),%edx
    17e5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    17e8:	39 fe                	cmp    %edi,%esi
    17ea:	76 64                	jbe    1850 <malloc+0x90>
    17ec:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    17f3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    17f8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    17fb:	eb 0e                	jmp    180b <malloc+0x4b>
    17fd:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1800:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1802:	8b 78 04             	mov    0x4(%eax),%edi
    1805:	39 fe                	cmp    %edi,%esi
    1807:	76 4f                	jbe    1858 <malloc+0x98>
    1809:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    180b:	3b 15 5c 1c 00 00    	cmp    0x1c5c,%edx
    1811:	75 ed                	jne    1800 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    1813:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1816:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    181c:	bf 00 10 00 00       	mov    $0x1000,%edi
    1821:	0f 43 fe             	cmovae %esi,%edi
    1824:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    1827:	89 04 24             	mov    %eax,(%esp)
    182a:	e8 3b fc ff ff       	call   146a <sbrk>
  if(p == (char*)-1)
    182f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1832:	74 18                	je     184c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    1834:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    1837:	83 c0 08             	add    $0x8,%eax
    183a:	89 04 24             	mov    %eax,(%esp)
    183d:	e8 ee fe ff ff       	call   1730 <free>
  return freep;
    1842:	8b 15 5c 1c 00 00    	mov    0x1c5c,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1848:	85 d2                	test   %edx,%edx
    184a:	75 b4                	jne    1800 <malloc+0x40>
        return 0;
    184c:	31 c0                	xor    %eax,%eax
    184e:	eb 20                	jmp    1870 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1850:	89 d0                	mov    %edx,%eax
    1852:	89 da                	mov    %ebx,%edx
    1854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1858:	39 fe                	cmp    %edi,%esi
    185a:	74 1c                	je     1878 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    185c:	29 f7                	sub    %esi,%edi
    185e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    1861:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    1864:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
    1867:	89 15 5c 1c 00 00    	mov    %edx,0x1c5c
      return (void*)(p + 1);
    186d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    1870:	83 c4 1c             	add    $0x1c,%esp
    1873:	5b                   	pop    %ebx
    1874:	5e                   	pop    %esi
    1875:	5f                   	pop    %edi
    1876:	5d                   	pop    %ebp
    1877:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    1878:	8b 08                	mov    (%eax),%ecx
    187a:	89 0a                	mov    %ecx,(%edx)
    187c:	eb e9                	jmp    1867 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    187e:	c7 05 5c 1c 00 00 60 	movl   $0x1c60,0x1c5c
    1885:	1c 00 00 
    base.s.size = 0;
    1888:	ba 60 1c 00 00       	mov    $0x1c60,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    188d:	c7 05 60 1c 00 00 60 	movl   $0x1c60,0x1c60
    1894:	1c 00 00 
    base.s.size = 0;
    1897:	c7 05 64 1c 00 00 00 	movl   $0x0,0x1c64
    189e:	00 00 00 
    18a1:	e9 46 ff ff ff       	jmp    17ec <malloc+0x2c>
    18a6:	66 90                	xchg   %ax,%ax
    18a8:	66 90                	xchg   %ax,%ax
    18aa:	66 90                	xchg   %ax,%ax
    18ac:	66 90                	xchg   %ax,%ax
    18ae:	66 90                	xchg   %ax,%ax

000018b0 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    18b0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    18b1:	b9 01 00 00 00       	mov    $0x1,%ecx
    18b6:	89 e5                	mov    %esp,%ebp
    18b8:	8b 55 08             	mov    0x8(%ebp),%edx
    18bb:	90                   	nop
    18bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    18c0:	89 c8                	mov    %ecx,%eax
    18c2:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    18c5:	85 c0                	test   %eax,%eax
    18c7:	75 f7                	jne    18c0 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    18c9:	0f ae f0             	mfence 
}
    18cc:	5d                   	pop    %ebp
    18cd:	c3                   	ret    
    18ce:	66 90                	xchg   %ax,%ax

000018d0 <urelease>:

void urelease (struct uspinlock *lk) {
    18d0:	55                   	push   %ebp
    18d1:	89 e5                	mov    %esp,%ebp
    18d3:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    18d6:	0f ae f0             	mfence 

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    18d9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    18df:	5d                   	pop    %ebp
    18e0:	c3                   	ret    
