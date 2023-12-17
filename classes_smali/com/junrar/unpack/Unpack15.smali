.class abstract Lcom/junrar/unpack/Unpack15;
.super Lcom/junrar/unpack/vm/BitInput;
.source "Unpack15.java"


# static fields
.field private static DecHf0:[I = null

.field private static DecHf1:[I = null

.field private static DecHf2:[I = null

.field private static DecHf3:[I = null

.field private static DecHf4:[I = null

.field private static DecL1:[I = null

.field private static DecL2:[I = null

.field private static PosHf0:[I = null

.field private static PosHf1:[I = null

.field private static PosHf2:[I = null

.field private static PosHf3:[I = null

.field private static PosHf4:[I = null

.field private static PosL1:[I = null

.field private static PosL2:[I = null

.field private static final STARTHF0:I = 0x4

.field private static final STARTHF1:I = 0x5

.field private static final STARTHF2:I = 0x5

.field private static final STARTHF3:I = 0x6

.field private static final STARTHF4:I = 0x8

.field private static final STARTL1:I = 0x2

.field private static final STARTL2:I = 0x3

.field private static ShortLen1:[I

.field private static ShortLen2:[I

.field private static ShortXor1:[I

.field private static ShortXor2:[I


# instance fields
.field private AvrLn1:I

.field private AvrLn2:I

.field private AvrLn3:I

.field private AvrPlc:I

.field private AvrPlcB:I

.field private Buf60:I

.field private ChSet:[I

.field private ChSetA:[I

.field private ChSetB:[I

.field private ChSetC:[I

.field private FlagBuf:I

.field private FlagsCnt:I

.field private LCount:I

.field private MaxDist3:I

.field private NToPl:[I

.field private NToPlB:[I

.field private NToPlC:[I

.field private Nhfb:I

.field private Nlzb:I

.field private NumHuf:I

.field private Place:[I

.field private PlaceA:[I

.field private PlaceB:[I

.field private PlaceC:[I

.field private StMode:I

.field public destUnpSize:J

.field public lastDist:I

.field public lastLength:I

.field public oldDist:[I

.field public oldDistPtr:I

.field public readBorder:I

.field public readTop:I

.field public suspended:Z

.field public unpAllBuf:Z

.field public unpIO:Lcom/junrar/unpack/ComprDataIO;

.field public unpPtr:I

.field public unpSomeRead:Z

.field public window:[B

.field public wrPtr:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0xb

    .line 3
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_90

    .line 8
    sput-object v0, Lcom/junrar/unpack/Unpack15;->DecL1:[I

    .line 10
    const/16 v0, 0xd

    .line 12
    new-array v1, v0, [I

    .line 14
    fill-array-data v1, :array_aa

    .line 17
    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosL1:[I

    .line 19
    const/16 v1, 0xa

    .line 21
    new-array v1, v1, [I

    .line 23
    fill-array-data v1, :array_c8

    .line 26
    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecL2:[I

    .line 28
    new-array v1, v0, [I

    .line 30
    fill-array-data v1, :array_e0

    .line 33
    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosL2:[I

    .line 35
    const/16 v1, 0x9

    .line 37
    new-array v1, v1, [I

    .line 39
    fill-array-data v1, :array_fe

    .line 42
    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf0:[I

    .line 44
    new-array v1, v0, [I

    .line 46
    fill-array-data v1, :array_114

    .line 49
    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosHf0:[I

    .line 51
    const/16 v1, 0x8

    .line 53
    new-array v2, v1, [I

    .line 55
    fill-array-data v2, :array_132

    .line 58
    sput-object v2, Lcom/junrar/unpack/Unpack15;->DecHf1:[I

    .line 60
    new-array v2, v0, [I

    .line 62
    fill-array-data v2, :array_146

    .line 65
    sput-object v2, Lcom/junrar/unpack/Unpack15;->PosHf1:[I

    .line 67
    new-array v1, v1, [I

    .line 69
    fill-array-data v1, :array_164

    .line 72
    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    .line 74
    new-array v1, v0, [I

    .line 76
    fill-array-data v1, :array_178

    .line 79
    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    .line 81
    const/4 v1, 0x7

    .line 82
    new-array v1, v1, [I

    .line 84
    fill-array-data v1, :array_196

    .line 87
    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf3:[I

    .line 89
    new-array v1, v0, [I

    .line 91
    fill-array-data v1, :array_1a8

    .line 94
    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosHf3:[I

    .line 96
    const/4 v1, 0x6

    .line 97
    new-array v1, v1, [I

    .line 99
    fill-array-data v1, :array_1c6

    .line 102
    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf4:[I

    .line 104
    new-array v0, v0, [I

    .line 106
    fill-array-data v0, :array_1d6

    .line 109
    sput-object v0, Lcom/junrar/unpack/Unpack15;->PosHf4:[I

    .line 111
    const/16 v0, 0x10

    .line 113
    new-array v1, v0, [I

    .line 115
    fill-array-data v1, :array_1f4

    .line 118
    sput-object v1, Lcom/junrar/unpack/Unpack15;->ShortLen1:[I

    .line 120
    const/16 v1, 0xf

    .line 122
    new-array v2, v1, [I

    .line 124
    fill-array-data v2, :array_218

    .line 127
    sput-object v2, Lcom/junrar/unpack/Unpack15;->ShortXor1:[I

    .line 129
    new-array v0, v0, [I

    .line 131
    fill-array-data v0, :array_23a

    .line 134
    sput-object v0, Lcom/junrar/unpack/Unpack15;->ShortLen2:[I

    .line 136
    new-array v0, v1, [I

    .line 138
    fill-array-data v0, :array_25e

    .line 141
    sput-object v0, Lcom/junrar/unpack/Unpack15;->ShortXor2:[I

    .line 143
    return-void

    .line 144
    nop

    .line 145
    :array_90
    .array-data 4
        0x8000
        0xa000
        0xc000
        0xd000
        0xe000
        0xea00
        0xee00
        0xf000
        0xf200
        0xf200
        0xffff
    .end array-data

    :array_aa
    .array-data 4
        0x0
        0x0
        0x0
        0x2
        0x3
        0x5
        0x7
        0xb
        0x10
        0x14
        0x18
        0x20
        0x20
    .end array-data

    :array_c8
    .array-data 4
        0xa000
        0xc000
        0xd000
        0xe000
        0xea00
        0xee00
        0xf000
        0xf200
        0xf240
        0xffff
    .end array-data

    :array_e0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x5
        0x7
        0x9
        0xd
        0x12
        0x16
        0x1a
        0x22
        0x24
    .end array-data

    :array_fe
    .array-data 4
        0x8000
        0xc000
        0xe000
        0xf200
        0xf200
        0xf200
        0xf200
        0xf200
        0xffff
    .end array-data

    :array_114
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x10
        0x18
        0x21
        0x21
        0x21
        0x21
        0x21
    .end array-data

    :array_132
    .array-data 4
        0x2000
        0xc000
        0xe000
        0xf000
        0xf200
        0xf200
        0xf7e0
        0xffff
    .end array-data

    :array_146
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x2c
        0x3c
        0x4c
        0x50
        0x50
        0x7f
    .end array-data

    :array_164
    .array-data 4
        0x1000
        0x2400
        0x8000
        0xc000
        0xfa00
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_178
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x7
        0x35
        0x75
        0xe9
        0x0
        0x0
    .end array-data

    :array_196
    .array-data 4
        0x800
        0x2400
        0xee00
        0xfe80
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_1a8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x10
        0xda
        0xfb
        0x0
        0x0
    .end array-data

    :array_1c6
    .array-data 4
        0xff00
        0xffff
        0xffff
        0xffff
        0xffff
        0xffff
    .end array-data

    :array_1d6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xff
        0x0
        0x0
        0x0
    .end array-data

    :array_1f4
    .array-data 4
        0x1
        0x3
        0x4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x8
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x0
    .end array-data

    :array_218
    .array-data 4
        0x0
        0xa0
        0xd0
        0xe0
        0xf0
        0xf8
        0xfc
        0xfe
        0xff
        0xc0
        0x80
        0x90
        0x98
        0x9c
        0xb0
    .end array-data

    :array_23a
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x4
        0x5
        0x6
        0x6
        0x4
        0x0
    .end array-data

    :array_25e
    .array-data 4
        0x0
        0x40
        0x60
        0xa0
        0xd0
        0xe0
        0xf0
        0xf8
        0xfc
        0xc0
        0x80
        0x90
        0x98
        0x9c
        0xb0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/junrar/unpack/vm/BitInput;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 9
    const/16 v0, 0x100

    .line 11
    new-array v1, v0, [I

    .line 13
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    .line 15
    new-array v1, v0, [I

    .line 17
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetA:[I

    .line 19
    new-array v1, v0, [I

    .line 21
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    .line 23
    new-array v1, v0, [I

    .line 25
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetC:[I

    .line 27
    new-array v1, v0, [I

    .line 29
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->Place:[I

    .line 31
    new-array v1, v0, [I

    .line 33
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->PlaceA:[I

    .line 35
    new-array v1, v0, [I

    .line 37
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->PlaceB:[I

    .line 39
    new-array v1, v0, [I

    .line 41
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->PlaceC:[I

    .line 43
    new-array v1, v0, [I

    .line 45
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPl:[I

    .line 47
    new-array v1, v0, [I

    .line 49
    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    .line 51
    new-array v0, v0, [I

    .line 53
    iput-object v0, p0, Lcom/junrar/unpack/Unpack15;->NToPlC:[I

    .line 55
    return-void
.end method

.method private corrHuff([I[I)V
    .registers 9

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    const/16 v3, 0x20

    .line 6
    if-ltz v0, :cond_19

    .line 8
    move v4, v1

    .line 9
    :goto_8
    if-ge v4, v3, :cond_16

    .line 11
    aget v5, p1, v2

    .line 13
    and-int/lit16 v5, v5, -0x100

    .line 15
    or-int/2addr v5, v0

    .line 16
    aput v5, p1, v2

    .line 18
    add-int/lit8 v4, v4, 0x1

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_8

    .line 23
    :cond_16
    add-int/lit8 v0, v0, -0x1

    .line 25
    goto :goto_3

    .line 26
    :cond_19
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 29
    const/4 p1, 0x6

    .line 30
    :goto_1d
    if-ltz p1, :cond_27

    .line 32
    rsub-int/lit8 v0, p1, 0x7

    .line 34
    mul-int/2addr v0, v3

    .line 35
    aput v0, p2, p1

    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 39
    goto :goto_1d

    .line 40
    :cond_27
    return-void
.end method

.method private decodeNum(II[I[I)I
    .registers 8

    .line 1
    const v0, 0xfff0

    .line 4
    and-int/2addr p1, v0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_6
    aget v2, p3, v1

    .line 9
    if-gt v2, p1, :cond_f

    .line 11
    add-int/lit8 p2, p2, 0x1

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_6

    .line 16
    :cond_f
    invoke-virtual {p0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 19
    if-eqz v1, :cond_18

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 23
    aget v0, p3, v1

    .line 25
    :cond_18
    sub-int/2addr p1, v0

    .line 26
    rsub-int/lit8 p3, p2, 0x10

    .line 28
    ushr-int/2addr p1, p3

    .line 29
    aget p2, p4, p2

    .line 31
    add-int/2addr p1, p2

    .line 32
    return p1
.end method

.method private getFlagsBuf()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    .line 7
    sget-object v2, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    .line 9
    const/4 v3, 0x5

    .line 10
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 13
    move-result v0

    .line 14
    :goto_d
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetC:[I

    .line 16
    aget v2, v1, v0

    .line 18
    ushr-int/lit8 v3, v2, 0x8

    .line 20
    iput v3, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 22
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->NToPlC:[I

    .line 24
    add-int/lit8 v4, v2, 0x1

    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 28
    aget v5, v3, v2

    .line 30
    add-int/lit8 v6, v5, 0x1

    .line 32
    aput v6, v3, v2

    .line 34
    and-int/lit16 v2, v4, 0xff

    .line 36
    if-eqz v2, :cond_2c

    .line 38
    aget v2, v1, v5

    .line 40
    aput v2, v1, v0

    .line 42
    aput v4, v1, v5

    .line 44
    return-void

    .line 45
    :cond_2c
    invoke-direct {p0, v1, v3}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    .line 48
    goto :goto_d
.end method

.method private getShortLen1(I)I
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_8

    .line 4
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    .line 6
    add-int/lit8 p1, p1, 0x3

    .line 8
    goto :goto_c

    .line 9
    :cond_8
    sget-object v0, Lcom/junrar/unpack/Unpack15;->ShortLen1:[I

    .line 11
    aget p1, v0, p1

    .line 13
    :goto_c
    return p1
.end method

.method private getShortLen2(I)I
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_7

    .line 4
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    .line 6
    add-int/2addr p1, v0

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    sget-object v0, Lcom/junrar/unpack/Unpack15;->ShortLen2:[I

    .line 10
    aget p1, v0, p1

    .line 12
    :goto_b
    return p1
.end method

.method private huffDecode()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    .line 7
    const/4 v2, 0x4

    .line 8
    const/16 v3, 0x8

    .line 10
    const/4 v4, 0x5

    .line 11
    const/16 v5, 0x75ff

    .line 13
    if-le v1, v5, :cond_17

    .line 15
    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf4:[I

    .line 17
    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf4:[I

    .line 19
    invoke-direct {p0, v0, v3, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 22
    move-result v1

    .line 23
    goto :goto_47

    .line 24
    :cond_17
    const/16 v5, 0x5dff

    .line 26
    if-le v1, v5, :cond_25

    .line 28
    const/4 v1, 0x6

    .line 29
    sget-object v5, Lcom/junrar/unpack/Unpack15;->DecHf3:[I

    .line 31
    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf3:[I

    .line 33
    invoke-direct {p0, v0, v1, v5, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 36
    move-result v1

    .line 37
    goto :goto_47

    .line 38
    :cond_25
    const/16 v5, 0x35ff

    .line 40
    if-le v1, v5, :cond_32

    .line 42
    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    .line 44
    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    .line 46
    invoke-direct {p0, v0, v4, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 49
    move-result v1

    .line 50
    goto :goto_47

    .line 51
    :cond_32
    const/16 v5, 0xdff

    .line 53
    if-le v1, v5, :cond_3f

    .line 55
    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf1:[I

    .line 57
    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf1:[I

    .line 59
    invoke-direct {p0, v0, v4, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 62
    move-result v1

    .line 63
    goto :goto_47

    .line 64
    :cond_3f
    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf0:[I

    .line 66
    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf0:[I

    .line 68
    invoke-direct {p0, v0, v2, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 71
    move-result v1

    .line 72
    :goto_47
    const/16 v5, 0xff

    .line 74
    and-int/2addr v1, v5

    .line 75
    iget v6, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    .line 77
    const/16 v7, 0x10

    .line 79
    const/4 v8, 0x1

    .line 80
    if-eqz v6, :cond_94

    .line 82
    if-nez v1, :cond_59

    .line 84
    const/16 v6, 0xfff

    .line 86
    if-le v0, v6, :cond_59

    .line 88
    const/16 v1, 0x100

    .line 90
    :cond_59
    const/4 v0, -0x1

    .line 91
    add-int/2addr v1, v0

    .line 92
    if-ne v1, v0, :cond_a2

    .line 94
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 97
    move-result v0

    .line 98
    invoke-virtual {p0, v8}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 101
    const v1, 0x8000

    .line 104
    and-int/2addr v1, v0

    .line 105
    if-eqz v1, :cond_70

    .line 107
    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    .line 110
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    .line 112
    return-void

    .line 113
    :cond_70
    and-int/lit16 v0, v0, 0x4000

    .line 115
    if-eqz v0, :cond_75

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    const/4 v2, 0x3

    .line 119
    :goto_76
    invoke-virtual {p0, v8}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 122
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 125
    move-result v0

    .line 126
    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    .line 128
    sget-object v3, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    .line 130
    invoke-direct {p0, v0, v4, v1, v3}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 133
    move-result v0

    .line 134
    shl-int/2addr v0, v4

    .line 135
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 138
    move-result v1

    .line 139
    ushr-int/lit8 v1, v1, 0xb

    .line 141
    or-int/2addr v0, v1

    .line 142
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 145
    invoke-direct {p0, v0, v2}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 148
    return-void

    .line 149
    :cond_94
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    .line 151
    add-int/lit8 v2, v0, 0x1

    .line 153
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    .line 155
    if-lt v0, v7, :cond_a2

    .line 157
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 159
    if-nez v0, :cond_a2

    .line 161
    iput v8, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    .line 163
    :cond_a2
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    .line 165
    add-int/2addr v0, v1

    .line 166
    ushr-int/lit8 v2, v0, 0x8

    .line 168
    sub-int/2addr v0, v2

    .line 169
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    .line 171
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 173
    add-int/2addr v0, v7

    .line 174
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 176
    if-le v0, v5, :cond_ba

    .line 178
    const/16 v0, 0x90

    .line 180
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 182
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 184
    ushr-int/2addr v0, v8

    .line 185
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 187
    :cond_ba
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 189
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 191
    add-int/lit8 v4, v2, 0x1

    .line 193
    iput v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 195
    iget-object v4, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    .line 197
    aget v4, v4, v1

    .line 199
    ushr-int/lit8 v3, v4, 0x8

    .line 201
    int-to-byte v3, v3

    .line 202
    aput-byte v3, v0, v2

    .line 204
    iget-wide v2, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 206
    const-wide/16 v6, 0x1

    .line 208
    sub-long/2addr v2, v6

    .line 209
    iput-wide v2, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 211
    :goto_d2
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    .line 213
    aget v2, v0, v1

    .line 215
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->NToPl:[I

    .line 217
    add-int/lit8 v4, v2, 0x1

    .line 219
    and-int/2addr v2, v5

    .line 220
    aget v6, v3, v2

    .line 222
    add-int/lit8 v7, v6, 0x1

    .line 224
    aput v7, v3, v2

    .line 226
    and-int/lit16 v2, v4, 0xff

    .line 228
    const/16 v7, 0xa1

    .line 230
    if-le v2, v7, :cond_eb

    .line 232
    invoke-direct {p0, v0, v3}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    .line 235
    goto :goto_d2

    .line 236
    :cond_eb
    aget v2, v0, v6

    .line 238
    aput v2, v0, v1

    .line 240
    aput v4, v0, v6

    .line 242
    return-void
.end method

.method private initHuff()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/16 v2, 0x100

    .line 5
    if-ge v1, v2, :cond_32

    .line 7
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->Place:[I

    .line 9
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->PlaceA:[I

    .line 11
    iget-object v4, p0, Lcom/junrar/unpack/Unpack15;->PlaceB:[I

    .line 13
    aput v1, v4, v1

    .line 15
    aput v1, v3, v1

    .line 17
    aput v1, v2, v1

    .line 19
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->PlaceC:[I

    .line 21
    not-int v3, v1

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 26
    aput v3, v2, v1

    .line 28
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    .line 30
    iget-object v4, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    .line 32
    shl-int/lit8 v5, v1, 0x8

    .line 34
    aput v5, v4, v1

    .line 36
    aput v5, v2, v1

    .line 38
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSetA:[I

    .line 40
    aput v1, v2, v1

    .line 42
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSetC:[I

    .line 44
    shl-int/lit8 v3, v3, 0x8

    .line 46
    aput v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_32
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPl:[I

    .line 53
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 56
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    .line 58
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 61
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlC:[I

    .line 63
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 66
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    .line 68
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    .line 73
    return-void
.end method

.method private longLZ()V
    .registers 16

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    .line 4
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 6
    const/16 v2, 0x10

    .line 8
    add-int/2addr v1, v2

    .line 9
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 11
    const/16 v3, 0xff

    .line 13
    const/4 v4, 0x1

    .line 14
    if-le v1, v3, :cond_18

    .line 16
    const/16 v1, 0x90

    .line 18
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 20
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 22
    ushr-int/2addr v1, v4

    .line 23
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 25
    :cond_18
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    .line 27
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 30
    move-result v5

    .line 31
    iget v6, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    .line 33
    const/16 v7, 0x7a

    .line 35
    const/16 v8, 0x100

    .line 37
    const/16 v9, 0x40

    .line 39
    const/4 v10, 0x3

    .line 40
    if-lt v6, v7, :cond_32

    .line 42
    sget-object v0, Lcom/junrar/unpack/Unpack15;->DecL2:[I

    .line 44
    sget-object v2, Lcom/junrar/unpack/Unpack15;->PosL2:[I

    .line 46
    invoke-direct {p0, v5, v10, v0, v2}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 49
    move-result v5

    .line 50
    goto :goto_55

    .line 51
    :cond_32
    if-lt v6, v9, :cond_3e

    .line 53
    const/4 v0, 0x2

    .line 54
    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecL1:[I

    .line 56
    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosL1:[I

    .line 58
    invoke-direct {p0, v5, v0, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 61
    move-result v5

    .line 62
    goto :goto_55

    .line 63
    :cond_3e
    if-ge v5, v8, :cond_44

    .line 65
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 68
    goto :goto_55

    .line 69
    :cond_44
    :goto_44
    shl-int v2, v5, v0

    .line 71
    const v6, 0x8000

    .line 74
    and-int/2addr v2, v6

    .line 75
    if-nez v2, :cond_4f

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_44

    .line 80
    :cond_4f
    add-int/lit8 v2, v0, 0x1

    .line 82
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 85
    move v5, v0

    .line 86
    :goto_55
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    .line 88
    add-int/2addr v0, v5

    .line 89
    ushr-int/lit8 v2, v0, 0x5

    .line 91
    sub-int/2addr v0, v2

    .line 92
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    .line 94
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 97
    move-result v0

    .line 98
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 100
    const/16 v6, 0x28ff

    .line 102
    const/4 v7, 0x4

    .line 103
    const/4 v11, 0x5

    .line 104
    if-le v2, v6, :cond_72

    .line 106
    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    .line 108
    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    .line 110
    invoke-direct {p0, v0, v11, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 113
    move-result v0

    .line 114
    goto :goto_87

    .line 115
    :cond_72
    const/16 v6, 0x6ff

    .line 117
    if-le v2, v6, :cond_7f

    .line 119
    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecHf1:[I

    .line 121
    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf1:[I

    .line 123
    invoke-direct {p0, v0, v11, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 126
    move-result v0

    .line 127
    goto :goto_87

    .line 128
    :cond_7f
    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecHf0:[I

    .line 130
    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf0:[I

    .line 132
    invoke-direct {p0, v0, v7, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 135
    move-result v0

    .line 136
    :goto_87
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 138
    add-int/2addr v2, v0

    .line 139
    shr-int/lit8 v6, v2, 0x8

    .line 141
    sub-int/2addr v2, v6

    .line 142
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 144
    :goto_8f
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    .line 146
    and-int/lit16 v6, v0, 0xff

    .line 148
    aget v6, v2, v6

    .line 150
    iget-object v11, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    .line 152
    add-int/lit8 v12, v6, 0x1

    .line 154
    and-int/2addr v6, v3

    .line 155
    aget v13, v11, v6

    .line 157
    add-int/lit8 v14, v13, 0x1

    .line 159
    aput v14, v11, v6

    .line 161
    and-int/lit16 v6, v12, 0xff

    .line 163
    if-nez v6, :cond_a8

    .line 165
    invoke-direct {p0, v2, v11}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    .line 168
    goto :goto_8f

    .line 169
    :cond_a8
    aget v3, v2, v13

    .line 171
    aput v3, v2, v0

    .line 173
    aput v12, v2, v13

    .line 175
    const v0, 0xff00

    .line 178
    and-int/2addr v0, v12

    .line 179
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 182
    move-result v2

    .line 183
    ushr-int/lit8 v2, v2, 0x8

    .line 185
    or-int/2addr v0, v2

    .line 186
    ushr-int/2addr v0, v4

    .line 187
    const/4 v2, 0x7

    .line 188
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 191
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    .line 193
    if-eq v5, v4, :cond_d8

    .line 195
    if-eq v5, v7, :cond_d8

    .line 197
    if-nez v5, :cond_d2

    .line 199
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    .line 201
    if-gt v0, v3, :cond_d2

    .line 203
    add-int/lit8 v3, v2, 0x1

    .line 205
    shr-int/lit8 v4, v3, 0x8

    .line 207
    sub-int/2addr v3, v4

    .line 208
    iput v3, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    .line 210
    goto :goto_d8

    .line 211
    :cond_d2
    if-lez v2, :cond_d8

    .line 213
    add-int/lit8 v3, v2, -0x1

    .line 215
    iput v3, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    .line 217
    :cond_d8
    :goto_d8
    add-int/2addr v5, v10

    .line 218
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    .line 220
    if-lt v0, v3, :cond_df

    .line 222
    add-int/lit8 v5, v5, 0x1

    .line 224
    :cond_df
    if-gt v0, v8, :cond_e3

    .line 226
    add-int/lit8 v5, v5, 0x8

    .line 228
    :cond_e3
    const/16 v3, 0xb0

    .line 230
    if-gt v2, v3, :cond_f3

    .line 232
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    .line 234
    const/16 v3, 0x2a00

    .line 236
    if-lt v2, v3, :cond_f0

    .line 238
    if-ge v1, v9, :cond_f0

    .line 240
    goto :goto_f3

    .line 241
    :cond_f0
    const/16 v1, 0x2001

    .line 243
    goto :goto_f5

    .line 244
    :cond_f3
    :goto_f3
    const/16 v1, 0x7f00

    .line 246
    :goto_f5
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    .line 248
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 250
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 252
    add-int/lit8 v3, v2, 0x1

    .line 254
    aput v0, v1, v2

    .line 256
    and-int/lit8 v1, v3, 0x3

    .line 258
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 260
    iput v5, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 262
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 264
    invoke-direct {p0, v0, v5}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 267
    return-void
.end method

.method private oldCopyString(II)V
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 3
    int-to-long v2, p2

    .line 4
    sub-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 7
    :goto_6
    add-int/lit8 v0, p2, -0x1

    .line 9
    if-eqz p2, :cond_20

    .line 11
    iget-object p2, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 13
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 15
    sub-int v2, v1, p1

    .line 17
    const v3, 0x3fffff

    .line 20
    and-int/2addr v2, v3

    .line 21
    aget-byte v2, p2, v2

    .line 23
    aput-byte v2, p2, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    and-int p2, v1, v3

    .line 29
    iput p2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 31
    move p2, v0

    .line 32
    goto :goto_6

    .line 33
    :cond_20
    return-void
.end method

.method private oldUnpInitData(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1d

    .line 4
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    .line 6
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    .line 8
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    .line 10
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    .line 12
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    .line 14
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    .line 16
    const/16 p1, 0x3500

    .line 18
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    .line 20
    const/16 p1, 0x2001

    .line 22
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    .line 24
    const/16 p1, 0x80

    .line 26
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 28
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 30
    :cond_1d
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 32
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 34
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    .line 36
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 38
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 40
    return-void
.end method

.method private shortLZ()V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    .line 4
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 7
    move-result v1

    .line 8
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 10
    const v3, 0x8000

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ne v2, v4, :cond_21

    .line 17
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 20
    if-lt v1, v3, :cond_1d

    .line 22
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 24
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 29
    return-void

    .line 30
    :cond_1d
    shl-int/lit8 v1, v1, 0x1

    .line 32
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 34
    :cond_21
    ushr-int/lit8 v1, v1, 0x8

    .line 36
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    .line 38
    const/16 v6, 0x25

    .line 40
    const/16 v7, 0xff

    .line 42
    if-ge v2, v6, :cond_46

    .line 44
    move v2, v0

    .line 45
    :goto_2c
    sget-object v6, Lcom/junrar/unpack/Unpack15;->ShortXor1:[I

    .line 47
    aget v6, v6, v2

    .line 49
    xor-int/2addr v6, v1

    .line 50
    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen1(I)I

    .line 53
    move-result v8

    .line 54
    ushr-int v8, v7, v8

    .line 56
    not-int v8, v8

    .line 57
    and-int/2addr v6, v8

    .line 58
    if-nez v6, :cond_43

    .line 60
    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen1(I)I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 67
    goto :goto_5d

    .line 68
    :cond_43
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_2c

    .line 71
    :cond_46
    move v2, v0

    .line 72
    :goto_47
    sget-object v6, Lcom/junrar/unpack/Unpack15;->ShortXor2:[I

    .line 74
    aget v6, v6, v2

    .line 76
    xor-int/2addr v6, v1

    .line 77
    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen2(I)I

    .line 80
    move-result v8

    .line 81
    shr-int v8, v7, v8

    .line 83
    not-int v8, v8

    .line 84
    and-int/2addr v6, v8

    .line 85
    if-nez v6, :cond_128

    .line 87
    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen2(I)I

    .line 90
    move-result v1

    .line 91
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 94
    :goto_5d
    const/4 v1, 0x5

    .line 95
    const/16 v6, 0x9

    .line 97
    const/4 v8, 0x3

    .line 98
    if-lt v2, v6, :cond_df

    .line 100
    if-ne v2, v6, :cond_72

    .line 102
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 104
    add-int/2addr v0, v5

    .line 105
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 107
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 109
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 114
    return-void

    .line 115
    :cond_72
    const/16 v6, 0xe

    .line 117
    if-ne v2, v6, :cond_98

    .line 119
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 121
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 124
    move-result v0

    .line 125
    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecL2:[I

    .line 127
    sget-object v4, Lcom/junrar/unpack/Unpack15;->PosL2:[I

    .line 129
    invoke-direct {p0, v0, v8, v2, v4}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 132
    move-result v0

    .line 133
    add-int/2addr v0, v1

    .line 134
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 137
    move-result v1

    .line 138
    shr-int/2addr v1, v5

    .line 139
    or-int/2addr v1, v3

    .line 140
    const/16 v2, 0xf

    .line 142
    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 145
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 147
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 149
    invoke-direct {p0, v1, v0}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 152
    return-void

    .line 153
    :cond_98
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 155
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 157
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 159
    add-int/lit8 v3, v2, -0x9

    .line 161
    sub-int/2addr v1, v3

    .line 162
    and-int/2addr v1, v8

    .line 163
    aget v0, v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 168
    move-result v1

    .line 169
    sget-object v3, Lcom/junrar/unpack/Unpack15;->DecL1:[I

    .line 171
    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosL1:[I

    .line 173
    invoke-direct {p0, v1, v4, v3, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 176
    move-result v1

    .line 177
    add-int/2addr v1, v4

    .line 178
    const/16 v3, 0x101

    .line 180
    if-ne v1, v3, :cond_bf

    .line 182
    const/16 v3, 0xa

    .line 184
    if-ne v2, v3, :cond_bf

    .line 186
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    .line 188
    xor-int/2addr v0, v5

    .line 189
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    .line 191
    return-void

    .line 192
    :cond_bf
    const/16 v2, 0x100

    .line 194
    if-le v0, v2, :cond_c5

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 198
    :cond_c5
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    .line 200
    if-lt v0, v2, :cond_cb

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 204
    :cond_cb
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 206
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 208
    add-int/lit8 v4, v3, 0x1

    .line 210
    aput v0, v2, v3

    .line 212
    and-int/lit8 v2, v4, 0x3

    .line 214
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 216
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 218
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 220
    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 223
    return-void

    .line 224
    :cond_df
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    .line 226
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    .line 228
    add-int/2addr v0, v2

    .line 229
    shr-int/lit8 v3, v0, 0x4

    .line 231
    sub-int/2addr v0, v3

    .line 232
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    .line 234
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 237
    move-result v0

    .line 238
    sget-object v3, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    .line 240
    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    .line 242
    invoke-direct {p0, v0, v1, v3, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    .line 245
    move-result v0

    .line 246
    and-int/2addr v0, v7

    .line 247
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetA:[I

    .line 249
    aget v3, v1, v0

    .line 251
    const/4 v6, -0x1

    .line 252
    add-int/2addr v0, v6

    .line 253
    if-eq v0, v6, :cond_112

    .line 255
    iget-object v6, p0, Lcom/junrar/unpack/Unpack15;->PlaceA:[I

    .line 257
    aget v7, v6, v3

    .line 259
    sub-int/2addr v7, v5

    .line 260
    aput v7, v6, v3

    .line 262
    aget v7, v1, v0

    .line 264
    aget v9, v6, v7

    .line 266
    add-int/2addr v9, v5

    .line 267
    aput v9, v6, v7

    .line 269
    add-int/lit8 v6, v0, 0x1

    .line 271
    aput v7, v1, v6

    .line 273
    aput v3, v1, v0

    .line 275
    :cond_112
    add-int/2addr v2, v4

    .line 276
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 278
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 280
    add-int/lit8 v4, v1, 0x1

    .line 282
    add-int/2addr v3, v5

    .line 283
    aput v3, v0, v1

    .line 285
    and-int/lit8 v0, v4, 0x3

    .line 287
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 289
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 291
    iput v3, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 293
    invoke-direct {p0, v3, v2}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    .line 296
    return-void

    .line 297
    :cond_128
    add-int/lit8 v2, v2, 0x1

    .line 299
    goto/16 :goto_47
.end method


# virtual methods
.method public oldUnpWriteBuf()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 3
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_9

    .line 8
    iput-boolean v2, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    .line 10
    :cond_9
    if-ge v0, v1, :cond_24

    .line 12
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 14
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 16
    neg-int v4, v1

    .line 17
    const v5, 0x3fffff

    .line 20
    and-int/2addr v4, v5

    .line 21
    invoke-virtual {v0, v3, v1, v4}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 24
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 26
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 28
    const/4 v3, 0x0

    .line 29
    iget v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 31
    invoke-virtual {v0, v1, v3, v4}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 34
    iput-boolean v2, p0, Lcom/junrar/unpack/Unpack15;->unpAllBuf:Z

    .line 36
    goto :goto_2c

    .line 37
    :cond_24
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 39
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 41
    sub-int/2addr v0, v1

    .line 42
    invoke-virtual {v2, v3, v1, v0}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 45
    :goto_2c
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 47
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 49
    return-void
.end method

.method public abstract unpInitData(Z)V
.end method

.method public unpReadBuf()Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 3
    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 5
    sub-int v2, v0, v1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-gez v2, :cond_a

    .line 10
    return v3

    .line 11
    :cond_a
    const/16 v4, 0x4000

    .line 13
    if-le v1, v4, :cond_1a

    .line 15
    if-lez v2, :cond_15

    .line 17
    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 19
    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    :cond_15
    iput v3, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 24
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 26
    move v0, v2

    .line 27
    :cond_1a
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 29
    iget-object v2, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 31
    const v4, 0x8000

    .line 34
    sub-int/2addr v4, v0

    .line 35
    and-int/lit8 v4, v4, -0x10

    .line 37
    invoke-virtual {v1, v2, v0, v4}, Lcom/junrar/unpack/ComprDataIO;->unpRead([BII)I

    .line 40
    move-result v0

    .line 41
    if-lez v0, :cond_2f

    .line 43
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 45
    add-int/2addr v1, v0

    .line 46
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 48
    :cond_2f
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 50
    add-int/lit8 v1, v1, -0x1e

    .line 52
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->readBorder:I

    .line 54
    const/4 v1, -0x1

    .line 55
    if-eq v0, v1, :cond_39

    .line 57
    const/4 v3, 0x1

    .line 58
    :cond_39
    return v3
.end method

.method public unpack15(Z)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 7
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 9
    goto :goto_26

    .line 10
    :cond_9
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack15;->unpInitData(Z)V

    .line 13
    invoke-direct {p0, p1}, Lcom/junrar/unpack/Unpack15;->oldUnpInitData(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 19
    if-nez p1, :cond_1b

    .line 21
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->initHuff()V

    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 30
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 32
    :goto_1f
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 34
    const-wide/16 v2, 0x1

    .line 36
    sub-long/2addr v0, v2

    .line 37
    iput-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 39
    :goto_26
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 41
    const-wide/16 v2, 0x0

    .line 43
    cmp-long p1, v0, v2

    .line 45
    if-ltz p1, :cond_35

    .line 47
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 50
    const/16 p1, 0x8

    .line 52
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 54
    :cond_35
    :goto_35
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 56
    cmp-long p1, v0, v2

    .line 58
    if-ltz p1, :cond_ca

    .line 60
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 62
    const v0, 0x3fffff

    .line 65
    and-int/2addr p1, v0

    .line 66
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 68
    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 70
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 72
    add-int/lit8 v1, v1, -0x1e

    .line 74
    if-le p1, v1, :cond_53

    .line 76
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_53

    .line 82
    goto/16 :goto_ca

    .line 84
    :cond_53
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 86
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 88
    sub-int v4, p1, v1

    .line 90
    and-int/2addr v0, v4

    .line 91
    const/16 v4, 0x10e

    .line 93
    if-ge v0, v4, :cond_68

    .line 95
    if-eq p1, v1, :cond_68

    .line 97
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 100
    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    .line 102
    if-eqz p1, :cond_68

    .line 104
    return-void

    .line 105
    :cond_68
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    .line 107
    if-eqz p1, :cond_70

    .line 109
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->huffDecode()V

    .line 112
    goto :goto_35

    .line 113
    :cond_70
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 115
    add-int/lit8 p1, p1, -0x1

    .line 117
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 119
    const/4 v0, 0x7

    .line 120
    if-gez p1, :cond_7e

    .line 122
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 125
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 127
    :cond_7e
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 129
    and-int/lit16 v1, p1, 0x80

    .line 131
    if-eqz v1, :cond_96

    .line 133
    shl-int/lit8 p1, p1, 0x1

    .line 135
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 137
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 139
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 141
    if-le p1, v0, :cond_92

    .line 143
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->longLZ()V

    .line 146
    goto :goto_35

    .line 147
    :cond_92
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->huffDecode()V

    .line 150
    goto :goto_35

    .line 151
    :cond_96
    shl-int/lit8 p1, p1, 0x1

    .line 153
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 155
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 157
    add-int/lit8 p1, p1, -0x1

    .line 159
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 161
    if-gez p1, :cond_a7

    .line 163
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->getFlagsBuf()V

    .line 166
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    .line 168
    :cond_a7
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 170
    and-int/lit16 v0, p1, 0x80

    .line 172
    if-eqz v0, :cond_c1

    .line 174
    shl-int/lit8 p1, p1, 0x1

    .line 176
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 178
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    .line 180
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    .line 182
    if-le p1, v0, :cond_bc

    .line 184
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->huffDecode()V

    .line 187
    goto/16 :goto_35

    .line 189
    :cond_bc
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->longLZ()V

    .line 192
    goto/16 :goto_35

    .line 194
    :cond_c1
    shl-int/lit8 p1, p1, 0x1

    .line 196
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    .line 198
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->shortLZ()V

    .line 201
    goto/16 :goto_35

    .line 203
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 206
    return-void
.end method
