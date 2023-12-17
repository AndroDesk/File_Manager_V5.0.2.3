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

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/junrar/unpack/Unpack15;->DecL1:[I

    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_aa

    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosL1:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_c8

    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecL2:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_e0

    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosL2:[I

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_fe

    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf0:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_114

    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosHf0:[I

    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_132

    sput-object v2, Lcom/junrar/unpack/Unpack15;->DecHf1:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_146

    sput-object v2, Lcom/junrar/unpack/Unpack15;->PosHf1:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_164

    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_178

    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_196

    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf3:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1a8

    sput-object v1, Lcom/junrar/unpack/Unpack15;->PosHf3:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1c6

    sput-object v1, Lcom/junrar/unpack/Unpack15;->DecHf4:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1d6

    sput-object v0, Lcom/junrar/unpack/Unpack15;->PosHf4:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_1f4

    sput-object v1, Lcom/junrar/unpack/Unpack15;->ShortLen1:[I

    const/16 v1, 0xf

    new-array v2, v1, [I

    fill-array-data v2, :array_218

    sput-object v2, Lcom/junrar/unpack/Unpack15;->ShortXor1:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_23a

    sput-object v0, Lcom/junrar/unpack/Unpack15;->ShortLen2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_25e

    sput-object v0, Lcom/junrar/unpack/Unpack15;->ShortXor2:[I

    return-void

    nop

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

    invoke-direct {p0}, Lcom/junrar/unpack/vm/BitInput;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetA:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetC:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->Place:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->PlaceA:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->PlaceB:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->PlaceC:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPl:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/junrar/unpack/Unpack15;->NToPlC:[I

    return-void
.end method

.method private corrHuff([I[I)V
    .registers 9

    const/4 v0, 0x7

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/16 v3, 0x20

    if-ltz v0, :cond_19

    move v4, v1

    :goto_8
    if-ge v4, v3, :cond_16

    aget v5, p1, v2

    and-int/lit16 v5, v5, -0x100

    or-int/2addr v5, v0

    aput v5, p1, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_19
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 p1, 0x6

    :goto_1d
    if-ltz p1, :cond_27

    rsub-int/lit8 v0, p1, 0x7

    mul-int/2addr v0, v3

    aput v0, p2, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1d

    :cond_27
    return-void
.end method

.method private decodeNum(II[I[I)I
    .registers 8

    const v0, 0xfff0

    and-int/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    aget v2, p3, v1

    if-gt v2, p1, :cond_f

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {p0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    if-eqz v1, :cond_18

    add-int/lit8 v1, v1, -0x1

    aget v0, p3, v1

    :cond_18
    sub-int/2addr p1, v0

    rsub-int/lit8 p3, p2, 0x10

    ushr-int/2addr p1, p3

    aget p2, p4, p2

    add-int/2addr p1, p2

    return p1
.end method

.method private getFlagsBuf()V
    .registers 8

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v2, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    const/4 v3, 0x5

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    :goto_d
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetC:[I

    aget v2, v1, v0

    ushr-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->NToPlC:[I

    add-int/lit8 v4, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aget v5, v3, v2

    add-int/lit8 v6, v5, 0x1

    aput v6, v3, v2

    and-int/lit16 v2, v4, 0xff

    if-eqz v2, :cond_2c

    aget v2, v1, v5

    aput v2, v1, v0

    aput v4, v1, v5

    return-void

    :cond_2c
    invoke-direct {p0, v1, v3}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_d
.end method

.method private getShortLen1(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    add-int/lit8 p1, p1, 0x3

    goto :goto_c

    :cond_8
    sget-object v0, Lcom/junrar/unpack/Unpack15;->ShortLen1:[I

    aget p1, v0, p1

    :goto_c
    return p1
.end method

.method private getShortLen2(I)I
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    add-int/2addr p1, v0

    goto :goto_b

    :cond_7
    sget-object v0, Lcom/junrar/unpack/Unpack15;->ShortLen2:[I

    aget p1, v0, p1

    :goto_b
    return p1
.end method

.method private huffDecode()V
    .registers 10

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/16 v5, 0x75ff

    if-le v1, v5, :cond_17

    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf4:[I

    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf4:[I

    invoke-direct {p0, v0, v3, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    goto :goto_47

    :cond_17
    const/16 v5, 0x5dff

    if-le v1, v5, :cond_25

    const/4 v1, 0x6

    sget-object v5, Lcom/junrar/unpack/Unpack15;->DecHf3:[I

    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf3:[I

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    goto :goto_47

    :cond_25
    const/16 v5, 0x35ff

    if-le v1, v5, :cond_32

    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-direct {p0, v0, v4, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    goto :goto_47

    :cond_32
    const/16 v5, 0xdff

    if-le v1, v5, :cond_3f

    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf1:[I

    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf1:[I

    invoke-direct {p0, v0, v4, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    goto :goto_47

    :cond_3f
    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf0:[I

    sget-object v5, Lcom/junrar/unpack/Unpack15;->PosHf0:[I

    invoke-direct {p0, v0, v2, v1, v5}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    :goto_47
    const/16 v5, 0xff

    and-int/2addr v1, v5

    iget v6, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-eqz v6, :cond_94

    if-nez v1, :cond_59

    const/16 v6, 0xfff

    if-le v0, v6, :cond_59

    const/16 v1, 0x100

    :cond_59
    const/4 v0, -0x1

    add-int/2addr v1, v0

    if-ne v1, v0, :cond_a2

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    invoke-virtual {p0, v8}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_70

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    return-void

    :cond_70
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_75

    goto :goto_76

    :cond_75
    const/4 v2, 0x3

    :goto_76
    invoke-virtual {p0, v8}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    sget-object v1, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v3, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    shl-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0xb

    or-int/2addr v0, v1

    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    invoke-direct {p0, v0, v2}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    return-void

    :cond_94
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    if-lt v0, v7, :cond_a2

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    if-nez v0, :cond_a2

    iput v8, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    :cond_a2
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    add-int/2addr v0, v1

    ushr-int/lit8 v2, v0, 0x8

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    if-le v0, v5, :cond_ba

    const/16 v0, 0x90

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    ushr-int/2addr v0, v8

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    :cond_ba
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iget-object v4, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    aget v4, v4, v1

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-wide v2, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    :goto_d2
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    aget v2, v0, v1

    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->NToPl:[I

    add-int/lit8 v4, v2, 0x1

    and-int/2addr v2, v5

    aget v6, v3, v2

    add-int/lit8 v7, v6, 0x1

    aput v7, v3, v2

    and-int/lit16 v2, v4, 0xff

    const/16 v7, 0xa1

    if-le v2, v7, :cond_eb

    invoke-direct {p0, v0, v3}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_d2

    :cond_eb
    aget v2, v0, v6

    aput v2, v0, v1

    aput v4, v0, v6

    return-void
.end method

.method private initHuff()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x100

    if-ge v1, v2, :cond_32

    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->Place:[I

    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->PlaceA:[I

    iget-object v4, p0, Lcom/junrar/unpack/Unpack15;->PlaceB:[I

    aput v1, v4, v1

    aput v1, v3, v1

    aput v1, v2, v1

    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->PlaceC:[I

    not-int v3, v1

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSet:[I

    iget-object v4, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    shl-int/lit8 v5, v1, 0x8

    aput v5, v4, v1

    aput v5, v2, v1

    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSetA:[I

    aput v1, v2, v1

    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSetC:[I

    shl-int/lit8 v3, v3, 0x8

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPl:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlC:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    return-void
.end method

.method private longLZ()V
    .registers 16

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    const/16 v2, 0x10

    add-int/2addr v1, v2

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-le v1, v3, :cond_18

    const/16 v1, 0x90

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    ushr-int/2addr v1, v4

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    :cond_18
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v5

    iget v6, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    const/16 v7, 0x7a

    const/16 v8, 0x100

    const/16 v9, 0x40

    const/4 v10, 0x3

    if-lt v6, v7, :cond_32

    sget-object v0, Lcom/junrar/unpack/Unpack15;->DecL2:[I

    sget-object v2, Lcom/junrar/unpack/Unpack15;->PosL2:[I

    invoke-direct {p0, v5, v10, v0, v2}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v5

    goto :goto_55

    :cond_32
    if-lt v6, v9, :cond_3e

    const/4 v0, 0x2

    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecL1:[I

    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosL1:[I

    invoke-direct {p0, v5, v0, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v5

    goto :goto_55

    :cond_3e
    if-ge v5, v8, :cond_44

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_55

    :cond_44
    :goto_44
    shl-int v2, v5, v0

    const v6, 0x8000

    and-int/2addr v2, v6

    if-nez v2, :cond_4f

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_4f
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    move v5, v0

    :goto_55
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    add-int/2addr v0, v5

    ushr-int/lit8 v2, v0, 0x5

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    const/16 v6, 0x28ff

    const/4 v7, 0x4

    const/4 v11, 0x5

    if-le v2, v6, :cond_72

    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-direct {p0, v0, v11, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    goto :goto_87

    :cond_72
    const/16 v6, 0x6ff

    if-le v2, v6, :cond_7f

    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecHf1:[I

    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf1:[I

    invoke-direct {p0, v0, v11, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    goto :goto_87

    :cond_7f
    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecHf0:[I

    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf0:[I

    invoke-direct {p0, v0, v7, v2, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    :goto_87
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    add-int/2addr v2, v0

    shr-int/lit8 v6, v2, 0x8

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    :goto_8f
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->ChSetB:[I

    and-int/lit16 v6, v0, 0xff

    aget v6, v2, v6

    iget-object v11, p0, Lcom/junrar/unpack/Unpack15;->NToPlB:[I

    add-int/lit8 v12, v6, 0x1

    and-int/2addr v6, v3

    aget v13, v11, v6

    add-int/lit8 v14, v13, 0x1

    aput v14, v11, v6

    and-int/lit16 v6, v12, 0xff

    if-nez v6, :cond_a8

    invoke-direct {p0, v2, v11}, Lcom/junrar/unpack/Unpack15;->corrHuff([I[I)V

    goto :goto_8f

    :cond_a8
    aget v3, v2, v13

    aput v3, v2, v0

    aput v12, v2, v13

    const v0, 0xff00

    and-int/2addr v0, v12

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    ushr-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    if-eq v5, v4, :cond_d8

    if-eq v5, v7, :cond_d8

    if-nez v5, :cond_d2

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    if-gt v0, v3, :cond_d2

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v3, 0x8

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    goto :goto_d8

    :cond_d2
    if-lez v2, :cond_d8

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    :cond_d8
    :goto_d8
    add-int/2addr v5, v10

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    if-lt v0, v3, :cond_df

    add-int/lit8 v5, v5, 0x1

    :cond_df
    if-gt v0, v8, :cond_e3

    add-int/lit8 v5, v5, 0x8

    :cond_e3
    const/16 v3, 0xb0

    if-gt v2, v3, :cond_f3

    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 v3, 0x2a00

    if-lt v2, v3, :cond_f0

    if-ge v1, v9, :cond_f0

    goto :goto_f3

    :cond_f0
    const/16 v1, 0x2001

    goto :goto_f5

    :cond_f3
    :goto_f3
    const/16 v1, 0x7f00

    :goto_f5
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    iget v2, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v3, v2, 0x1

    aput v0, v1, v2

    and-int/lit8 v1, v3, 0x3

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    iput v5, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    invoke-direct {p0, v0, v5}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    return-void
.end method

.method private oldCopyString(II)V
    .registers 7

    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    :goto_6
    add-int/lit8 v0, p2, -0x1

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int v2, v1, p1

    const v3, 0x3fffff

    and-int/2addr v2, v3

    aget-byte v2, p2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    and-int p2, v1, v3

    iput p2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    move p2, v0

    goto :goto_6

    :cond_20
    return-void
.end method

.method private oldUnpInitData(Z)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_1d

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn3:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn2:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrPlcB:I

    const/16 p1, 0x3500

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->AvrPlc:I

    const/16 p1, 0x2001

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    const/16 p1, 0x80

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    :cond_1d
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    return-void
.end method

.method private shortLZ()V
    .registers 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->NumHuf:I

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    iget v2, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    const v3, 0x8000

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v4, :cond_21

    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    if-lt v1, v3, :cond_1d

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    return-void

    :cond_1d
    shl-int/lit8 v1, v1, 0x1

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    :cond_21
    ushr-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    const/16 v6, 0x25

    const/16 v7, 0xff

    if-ge v2, v6, :cond_46

    move v2, v0

    :goto_2c
    sget-object v6, Lcom/junrar/unpack/Unpack15;->ShortXor1:[I

    aget v6, v6, v2

    xor-int/2addr v6, v1

    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v8

    ushr-int v8, v7, v8

    not-int v8, v8

    and-int/2addr v6, v8

    if-nez v6, :cond_43

    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen1(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    goto :goto_5d

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_46
    move v2, v0

    :goto_47
    sget-object v6, Lcom/junrar/unpack/Unpack15;->ShortXor2:[I

    aget v6, v6, v2

    xor-int/2addr v6, v1

    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v8

    shr-int v8, v7, v8

    not-int v8, v8

    and-int/2addr v6, v8

    if-nez v6, :cond_128

    invoke-direct {p0, v2}, Lcom/junrar/unpack/Unpack15;->getShortLen2(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    :goto_5d
    const/4 v1, 0x5

    const/16 v6, 0x9

    const/4 v8, 0x3

    if-lt v2, v6, :cond_df

    if-ne v2, v6, :cond_72

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    return-void

    :cond_72
    const/16 v6, 0xe

    if-ne v2, v6, :cond_98

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    sget-object v2, Lcom/junrar/unpack/Unpack15;->DecL2:[I

    sget-object v4, Lcom/junrar/unpack/Unpack15;->PosL2:[I

    invoke-direct {p0, v0, v8, v2, v4}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    shr-int/2addr v1, v5

    or-int/2addr v1, v3

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    invoke-direct {p0, v1, v0}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    return-void

    :cond_98
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v3, v2, -0x9

    sub-int/2addr v1, v3

    and-int/2addr v1, v8

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v1

    sget-object v3, Lcom/junrar/unpack/Unpack15;->DecL1:[I

    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosL1:[I

    invoke-direct {p0, v1, v4, v3, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v1

    add-int/2addr v1, v4

    const/16 v3, 0x101

    if-ne v1, v3, :cond_bf

    const/16 v3, 0xa

    if-ne v2, v3, :cond_bf

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    xor-int/2addr v0, v5

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->Buf60:I

    return-void

    :cond_bf
    const/16 v2, 0x100

    if-le v0, v2, :cond_c5

    add-int/lit8 v1, v1, 0x1

    :cond_c5
    iget v2, p0, Lcom/junrar/unpack/Unpack15;->MaxDist3:I

    if-lt v0, v2, :cond_cb

    add-int/lit8 v1, v1, 0x1

    :cond_cb
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v4, v3, 0x1

    aput v0, v2, v3

    and-int/lit8 v2, v4, 0x3

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    return-void

    :cond_df
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->LCount:I

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    add-int/2addr v0, v2

    shr-int/lit8 v3, v0, 0x4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->AvrLn1:I

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    move-result v0

    sget-object v3, Lcom/junrar/unpack/Unpack15;->DecHf2:[I

    sget-object v6, Lcom/junrar/unpack/Unpack15;->PosHf2:[I

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/junrar/unpack/Unpack15;->decodeNum(II[I[I)I

    move-result v0

    and-int/2addr v0, v7

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->ChSetA:[I

    aget v3, v1, v0

    const/4 v6, -0x1

    add-int/2addr v0, v6

    if-eq v0, v6, :cond_112

    iget-object v6, p0, Lcom/junrar/unpack/Unpack15;->PlaceA:[I

    aget v7, v6, v3

    sub-int/2addr v7, v5

    aput v7, v6, v3

    aget v7, v1, v0

    aget v9, v6, v7

    add-int/2addr v9, v5

    aput v9, v6, v7

    add-int/lit8 v6, v0, 0x1

    aput v7, v1, v6

    aput v3, v1, v0

    :cond_112
    add-int/2addr v2, v4

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v3, v5

    aput v3, v0, v1

    and-int/lit8 v0, v4, 0x3

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    iput v3, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    invoke-direct {p0, v3, v2}, Lcom/junrar/unpack/Unpack15;->oldCopyString(II)V

    return-void

    :cond_128
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_47
.end method


# virtual methods
.method public oldUnpWriteBuf()V
    .registers 7

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_9

    iput-boolean v2, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    :cond_9
    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    neg-int v4, v1

    const v5, 0x3fffff

    and-int/2addr v4, v5

    invoke-virtual {v0, v3, v1, v4}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    iput-boolean v2, p0, Lcom/junrar/unpack/Unpack15;->unpAllBuf:Z

    goto :goto_2c

    :cond_24
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    :goto_2c
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    return-void
.end method

.method public abstract unpInitData(Z)V
.end method

.method public unpReadBuf()Z
    .registers 6

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    if-gez v2, :cond_a

    return v3

    :cond_a
    const/16 v4, 0x4000

    if-le v1, v4, :cond_1a

    if-lez v2, :cond_15

    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    iput v3, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    move v0, v2

    :cond_1a
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    iget-object v2, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    const v4, 0x8000

    sub-int/2addr v4, v0

    and-int/lit8 v4, v4, -0x10

    invoke-virtual {v1, v2, v0, v4}, Lcom/junrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v0

    if-lez v0, :cond_2f

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    :cond_2f
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v1, v1, -0x1e

    iput v1, p0, Lcom/junrar/unpack/Unpack15;->readBorder:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    const/4 v3, 0x1

    :cond_39
    return v3
.end method

.method public unpack15(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    if-eqz v0, :cond_9

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    goto :goto_26

    :cond_9
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack15;->unpInitData(Z)V

    invoke-direct {p0, p1}, Lcom/junrar/unpack/Unpack15;->oldUnpInitData(Z)V

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    if-nez p1, :cond_1b

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->initHuff()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    goto :goto_1f

    :cond_1b
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    :goto_1f
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    :goto_26
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_35

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->getFlagsBuf()V

    const/16 p1, 0x8

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    :cond_35
    :goto_35
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_ca

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    const v0, 0x3fffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v1, v1, -0x1e

    if-le p1, v1, :cond_53

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_ca

    :cond_53
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int v4, p1, v1

    and-int/2addr v0, v4

    const/16 v4, 0x10e

    if-ge v0, v4, :cond_68

    if-eq p1, v1, :cond_68

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    if-eqz p1, :cond_68

    return-void

    :cond_68
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->StMode:I

    if-eqz p1, :cond_70

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->huffDecode()V

    goto :goto_35

    :cond_70
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    const/4 v0, 0x7

    if-gez p1, :cond_7e

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->getFlagsBuf()V

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    :cond_7e
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_96

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    if-le p1, v0, :cond_92

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->longLZ()V

    goto :goto_35

    :cond_92
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->huffDecode()V

    goto :goto_35

    :cond_96
    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    if-gez p1, :cond_a7

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->getFlagsBuf()V

    iput v0, p0, Lcom/junrar/unpack/Unpack15;->FlagsCnt:I

    :cond_a7
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_c1

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->Nlzb:I

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->Nhfb:I

    if-le p1, v0, :cond_bc

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->huffDecode()V

    goto/16 :goto_35

    :cond_bc
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->longLZ()V

    goto/16 :goto_35

    :cond_c1
    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->FlagBuf:I

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;->shortLZ()V

    goto/16 :goto_35

    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    return-void
.end method
