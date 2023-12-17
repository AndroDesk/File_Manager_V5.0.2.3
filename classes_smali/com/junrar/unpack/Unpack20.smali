.class abstract Lcom/junrar/unpack/Unpack20;
.super Lcom/junrar/unpack/Unpack15;
.source "Unpack20.java"


# static fields
.field private static final DBits:[I

.field private static final DDecode:[I

.field public static final LBits:[B

.field public static final LDecode:[I

.field public static final SDBits:[I

.field public static final SDDecode:[I


# instance fields
.field private AudV:[Lcom/junrar/unpack/decode/AudioVariables;

.field public BD:Lcom/junrar/unpack/decode/BitDecode;

.field public DD:Lcom/junrar/unpack/decode/DistDecode;

.field public LD:Lcom/junrar/unpack/decode/LitDecode;

.field public LDD:Lcom/junrar/unpack/decode/LowDistDecode;

.field private MD:[Lcom/junrar/unpack/decode/MultDecode;

.field public RD:Lcom/junrar/unpack/decode/RepDecode;

.field private UnpAudioBlock:I

.field private UnpChannelDelta:I

.field private UnpChannels:I

.field private UnpCurChannel:I

.field private UnpOldTable20:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_32

    sput-object v1, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    new-array v0, v0, [B

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/junrar/unpack/Unpack20;->LBits:[B

    const/16 v0, 0x30

    new-array v1, v0, [I

    fill-array-data v1, :array_80

    sput-object v1, Lcom/junrar/unpack/Unpack20;->DDecode:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/junrar/unpack/Unpack20;->DBits:[I

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_148

    sput-object v1, Lcom/junrar/unpack/Unpack20;->SDDecode:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_15c

    sput-object v0, Lcom/junrar/unpack/Unpack20;->SDBits:[I

    return-void

    nop

    :array_32
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
    .end array-data

    :array_6e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
    .end array-data

    :array_80
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
        0x8000
        0xc000
        0x10000
        0x18000
        0x20000
        0x30000
        0x40000
        0x50000
        0x60000
        0x70000
        0x80000
        0x90000
        0xa0000
        0xb0000
        0xc0000
        0xd0000
        0xe0000
        0xf0000
    .end array-data

    :array_e4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
    .end array-data

    :array_148
    .array-data 4
        0x0
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
    .end array-data

    :array_15c
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/junrar/unpack/decode/MultDecode;

    iput-object v1, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    const/16 v1, 0x404

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    new-array v0, v0, [Lcom/junrar/unpack/decode/AudioVariables;

    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->AudV:[Lcom/junrar/unpack/decode/AudioVariables;

    new-instance v0, Lcom/junrar/unpack/decode/LitDecode;

    invoke-direct {v0}, Lcom/junrar/unpack/decode/LitDecode;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    new-instance v0, Lcom/junrar/unpack/decode/DistDecode;

    invoke-direct {v0}, Lcom/junrar/unpack/decode/DistDecode;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    new-instance v0, Lcom/junrar/unpack/decode/LowDistDecode;

    invoke-direct {v0}, Lcom/junrar/unpack/decode/LowDistDecode;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->LDD:Lcom/junrar/unpack/decode/LowDistDecode;

    new-instance v0, Lcom/junrar/unpack/decode/RepDecode;

    invoke-direct {v0}, Lcom/junrar/unpack/decode/RepDecode;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    new-instance v0, Lcom/junrar/unpack/decode/BitDecode;

    invoke-direct {v0}, Lcom/junrar/unpack/decode/BitDecode;-><init>()V

    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    return-void
.end method

.method private CopyString20(II)V
    .registers 7

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    and-int/lit8 v1, v1, 0x3

    aput p2, v0, v1

    iput p2, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int p2, v0, p2

    const v1, 0x3ffed4

    if-ge p2, v1, :cond_4a

    if-ge v0, v1, :cond_4a

    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, v1, p2

    aput-byte p2, v1, v0

    add-int/lit8 p2, v2, 0x1

    iput p2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 p2, v3, 0x1

    aget-byte v0, v1, v3

    aput-byte v0, v1, v2

    :goto_35
    const/4 v0, 0x2

    if-le p1, v0, :cond_65

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, v0, p2

    aput-byte p2, v0, v1

    move p2, v2

    goto :goto_35

    :cond_4a
    :goto_4a
    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v2, p2, 0x1

    const v3, 0x3fffff

    and-int/2addr p2, v3

    aget-byte p2, p1, p2

    aput-byte p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    and-int p1, v1, v3

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    move p1, v0

    move p2, v2

    goto :goto_4a

    :cond_65
    return-void
.end method

.method private DecodeAudio(I)B
    .registers 12

    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->AudV:[Lcom/junrar/unpack/decode/AudioVariables;

    iget v1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getByteCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setByteCount(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD4(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD3(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD2(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD1(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastChar()I

    move-result v1

    const/16 v3, 0x8

    mul-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result v4

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD4()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result v1

    iget v5, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    mul-int/2addr v1, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/4 v4, 0x3

    ushr-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p1

    int-to-byte p1, p1

    shl-int/2addr p1, v4

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v5, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v5, v6

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v5

    aget v7, v5, v2

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v8

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v5, v2

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v5

    const/4 v7, 0x2

    aget v8, v5, v7

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    move-result v9

    add-int/2addr v9, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v8

    aput v9, v5, v7

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v5

    aget v7, v5, v4

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v8

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v5, v4

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v4

    const/4 v5, 0x4

    aget v7, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    move-result v8

    add-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v4

    const/4 v5, 0x5

    aget v7, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v8

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v4

    const/4 v5, 0x6

    aget v7, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    move-result v8

    add-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v4

    const/4 v5, 0x7

    aget v7, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD4()I

    move-result v8

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    aput v8, v4, v5

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v4

    aget v5, v4, v3

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD4()I

    move-result v7

    add-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    aput v7, v4, v3

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v3

    const/16 v4, 0x9

    aget v5, v3, v4

    iget v7, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    aput v7, v3, v4

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v3

    const/16 v4, 0xa

    aget v5, v3, v4

    iget v7, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    add-int/2addr p1, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, v5

    aput p1, v3, v4

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastChar()I

    move-result p1

    sub-int p1, v1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setLastDelta(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    move-result p1

    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setLastChar(I)V

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getByteCount()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object p1

    aget p1, p1, v6

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v3

    aput v6, v3, v6

    move v3, v2

    move v4, v6

    :goto_163
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_182

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v5

    aget v5, v5, v3

    if-ge v5, p1, :cond_179

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object p1

    aget p1, p1, v3

    move v4, v3

    :cond_179
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    move-result-object v5

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_163

    :cond_182
    const/16 p1, 0x10

    const/16 v3, -0x10

    packed-switch v4, :pswitch_data_224

    goto/16 :goto_222

    :pswitch_18b  #0xa
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result v3

    if-ge v3, p1, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK5(I)V

    goto/16 :goto_222

    :pswitch_19b  #0x9
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result p1

    if-lt p1, v3, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK5(I)V

    goto/16 :goto_222

    :pswitch_1ab  #0x8
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result v3

    if-ge v3, p1, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK4(I)V

    goto :goto_222

    :pswitch_1ba  #0x7
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result p1

    if-lt p1, v3, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK4(I)V

    goto :goto_222

    :pswitch_1c9  #0x6
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result v3

    if-ge v3, p1, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK3(I)V

    goto :goto_222

    :pswitch_1d8  #0x5
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result p1

    if-lt p1, v3, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK3(I)V

    goto :goto_222

    :pswitch_1e7  #0x4
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result v3

    if-ge v3, p1, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK2(I)V

    goto :goto_222

    :pswitch_1f6  #0x3
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result p1

    if-lt p1, v3, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK2(I)V

    goto :goto_222

    :pswitch_205  #0x2
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result v3

    if-ge v3, p1, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK1(I)V

    goto :goto_222

    :pswitch_214  #0x1
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result p1

    if-lt p1, v3, :cond_222

    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK1(I)V

    :cond_222
    :goto_222
    int-to-byte p1, v1

    return p1

    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_214  #00000001
        :pswitch_205  #00000002
        :pswitch_1f6  #00000003
        :pswitch_1e7  #00000004
        :pswitch_1d8  #00000005
        :pswitch_1c9  #00000006
        :pswitch_1ba  #00000007
        :pswitch_1ab  #00000008
        :pswitch_19b  #00000009
        :pswitch_18b  #0000000a
    .end packed-switch
.end method

.method private ReadLastTables()V
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    add-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_2b

    iget v0, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    iget v1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    goto :goto_2b

    :cond_1e
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result v0

    const/16 v1, 0x10d

    if-ne v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method private ReadTables20()Z
    .registers 12

    const/16 v0, 0x13

    new-array v1, v0, [B

    const/16 v2, 0x404

    new-array v2, v2, [B

    iget v3, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v4, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v4, v4, -0x19

    const/4 v5, 0x0

    if-le v3, v4, :cond_18

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v3

    if-nez v3, :cond_18

    return v5

    :cond_18
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v3

    const v4, 0x8000

    and-int/2addr v4, v3

    iput v4, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    and-int/lit16 v4, v3, 0x4000

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    :cond_2b
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    iget v6, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    const/16 v7, 0x101

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v6, :cond_4a

    ushr-int/lit8 v3, v3, 0xc

    and-int/2addr v3, v8

    add-int/2addr v3, v9

    iput v3, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    iget v6, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    if-lt v6, v3, :cond_43

    iput v5, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    :cond_43
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    iget v3, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    mul-int/2addr v3, v7

    goto :goto_4c

    :cond_4a
    const/16 v3, 0x176

    :goto_4c
    move v6, v5

    :goto_4d
    if-ge v6, v0, :cond_5f

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v10

    ushr-int/lit8 v10, v10, 0xc

    int-to-byte v10, v10

    aput-byte v10, v1, v6

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_5f
    iget-object v6, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v1, v5, v6, v0}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    move v0, v5

    :cond_65
    :goto_65
    if-ge v0, v3, :cond_d1

    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v6, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v6, v6, -0x5

    if-le v1, v6, :cond_76

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v1

    if-nez v1, :cond_76

    return v5

    :cond_76
    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    invoke-virtual {p0, v1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result v1

    const/16 v6, 0x10

    if-ge v1, v6, :cond_8d

    iget-object v6, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    aget-byte v6, v6, v0

    add-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_8d
    if-ne v1, v6, :cond_a9

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0xe

    add-int/2addr v1, v8

    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :goto_99
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_65

    if-ge v0, v3, :cond_65

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v2, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v6

    goto :goto_99

    :cond_a9
    const/16 v6, 0x11

    if-ne v1, v6, :cond_b8

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v8

    invoke-virtual {p0, v8}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    goto :goto_c4

    :cond_b8
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0xb

    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :goto_c4
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_65

    if-ge v0, v3, :cond_65

    add-int/lit8 v1, v0, 0x1

    aput-byte v5, v2, v0

    move v0, v1

    move v1, v6

    goto :goto_c4

    :cond_d1
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    if-le v0, v1, :cond_d8

    return v9

    :cond_d8
    iget v0, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    if-eqz v0, :cond_ed

    move v0, v5

    :goto_dd
    iget v1, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    if-ge v0, v1, :cond_104

    mul-int/lit16 v1, v0, 0x101

    iget-object v3, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    aget-object v3, v3, v0

    invoke-virtual {p0, v2, v1, v3, v7}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    :cond_ed
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    const/16 v1, 0x12a

    invoke-virtual {p0, v2, v5, v0, v1}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    const/16 v3, 0x30

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    const/16 v0, 0x15a

    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    const/16 v3, 0x1c

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    :cond_104
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    array-length v1, v0

    invoke-static {v2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v9
.end method


# virtual methods
.method public decodeNumber(Lcom/junrar/unpack/decode/Decode;)I
    .registers 11

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v0

    const v1, 0xfffe

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v2

    const/16 v3, 0x8

    aget v4, v2, v3

    int-to-long v4, v4

    cmp-long v4, v0, v4

    const/16 v5, 0xb

    const/16 v6, 0xc

    if-gez v4, :cond_59

    const/4 v4, 0x4

    aget v5, v2, v4

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_3d

    const/4 v3, 0x2

    aget v5, v2, v3

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_34

    const/4 v4, 0x1

    aget v5, v2, v4

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_57

    :cond_32
    :goto_32
    move v5, v4

    goto :goto_92

    :cond_34
    const/4 v3, 0x3

    aget v5, v2, v3

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_32

    goto :goto_57

    :cond_3d
    const/4 v4, 0x6

    aget v5, v2, v4

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_4e

    const/4 v3, 0x5

    aget v5, v2, v3

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_32

    goto :goto_57

    :cond_4e
    const/4 v4, 0x7

    aget v5, v2, v4

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_57

    move v3, v4

    :cond_57
    :goto_57
    move v5, v3

    goto :goto_92

    :cond_59
    aget v3, v2, v6

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_7d

    const/16 v3, 0xa

    aget v4, v2, v3

    int-to-long v7, v4

    cmp-long v4, v0, v7

    if-gez v4, :cond_73

    const/16 v4, 0x9

    aget v5, v2, v4

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_57

    goto :goto_32

    :cond_73
    aget v3, v2, v5

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_7b

    goto :goto_92

    :cond_7b
    move v5, v6

    goto :goto_92

    :cond_7d
    const/16 v3, 0xe

    aget v4, v2, v3

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_90

    const/16 v4, 0xd

    aget v5, v2, v4

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_57

    goto :goto_32

    :cond_90
    const/16 v5, 0xf

    :goto_92
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v3

    aget v3, v3, v5

    long-to-int v0, v0

    add-int/lit8 v1, v5, -0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    rsub-int/lit8 v1, v5, 0x10

    ushr-int/2addr v0, v1

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getMaxNum()I

    move-result v0

    if-lt v3, v0, :cond_ac

    const/4 v3, 0x0

    :cond_ac
    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object p1

    aget p1, p1, v3

    return p1
.end method

.method public makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V
    .registers 18

    move/from16 v0, p4

    const/16 v1, 0x10

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    move v5, v4

    :goto_14
    const/4 v6, 0x1

    if-ge v5, v0, :cond_25

    add-int v7, p2, v5

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0xf

    aget v8, v2, v7

    add-int/2addr v8, v6

    aput v8, v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_25
    aput v4, v2, v4

    aput v4, v3, v4

    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v5

    aput v4, v5, v4

    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v5

    aput v4, v5, v4

    const-wide/16 v7, 0x0

    :goto_37
    if-ge v6, v1, :cond_69

    const-wide/16 v9, 0x2

    aget v5, v2, v6

    int-to-long v11, v5

    add-long/2addr v7, v11

    mul-long/2addr v7, v9

    rsub-int/lit8 v5, v6, 0xf

    shl-long v9, v7, v5

    const-wide/32 v11, 0xffff

    cmp-long v5, v9, v11

    if-lez v5, :cond_4c

    move-wide v9, v11

    :cond_4c
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeLen()[I

    move-result-object v5

    long-to-int v9, v9

    aput v9, v5, v6

    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    move-result-object v9

    add-int/lit8 v10, v6, -0x1

    aget v9, v9, v10

    aget v10, v2, v10

    add-int/2addr v9, v10

    aput v9, v5, v6

    aput v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_69
    :goto_69
    if-ge v4, v0, :cond_84

    add-int v1, p2, v4

    aget-byte v2, p1, v1

    if-eqz v2, :cond_81

    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeNum()[I

    move-result-object v2

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    aget v5, v3, v1

    add-int/lit8 v6, v5, 0x1

    aput v6, v3, v1

    aput v4, v2, v5

    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_84
    invoke-virtual/range {p3 .. p4}, Lcom/junrar/unpack/decode/Decode;->setMaxNum(I)V

    return-void
.end method

.method public unpInitData20(Z)V
    .registers 4

    if-nez p1, :cond_19

    const/4 p1, 0x0

    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->AudV:[Lcom/junrar/unpack/decode/AudioVariables;

    new-instance v1, Lcom/junrar/unpack/decode/AudioVariables;

    invoke-direct {v1}, Lcom/junrar/unpack/decode/AudioVariables;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([BB)V

    :cond_19
    return-void
.end method

.method public unpack20(Z)V
    .registers 11

    iget-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_b

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    goto :goto_23

    :cond_b
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack15;->unpInitData(Z)V

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    move-result p1

    if-nez p1, :cond_1e

    return-void

    :cond_1e
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    :cond_23
    :goto_23
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_171

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    const v0, 0x3fffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    add-int/lit8 v3, v3, -0x1e

    if-le p1, v3, :cond_43

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_171

    :cond_43
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    sub-int v4, p1, v3

    and-int/2addr v0, v4

    const/16 v4, 0x10e

    if-ge v0, v4, :cond_58

    if-eq p1, v3, :cond_58

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    if-eqz p1, :cond_58

    return-void

    :cond_58
    iget p1, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    const/16 v0, 0x100

    if-eqz p1, :cond_93

    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    iget v3, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result p1

    if-ne p1, v0, :cond_72

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_171

    :cond_72
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    invoke-direct {p0, p1}, Lcom/junrar/unpack/Unpack20;->DecodeAudio(I)B

    move-result p1

    aput-byte p1, v0, v3

    iget p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    iget v0, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    if-ne p1, v0, :cond_8d

    const/4 p1, 0x0

    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    :cond_8d
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    goto :goto_23

    :cond_93
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result p1

    if-ge p1, v0, :cond_ad

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    iget v3, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    goto/16 :goto_23

    :cond_ad
    const/16 v3, 0x2000

    const/16 v5, 0x10d

    if-le p1, v5, :cond_fc

    sget-object v0, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    add-int/lit16 p1, p1, -0x10e

    aget v0, v0, p1

    add-int/lit8 v0, v0, 0x3

    sget-object v4, Lcom/junrar/unpack/Unpack20;->LBits:[B

    aget-byte p1, v4, p1

    if-lez p1, :cond_cc

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v4

    rsub-int/lit8 v5, p1, 0x10

    ushr-int/2addr v4, v5

    add-int/2addr v0, v4

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_cc
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result p1

    sget-object v4, Lcom/junrar/unpack/Unpack20;->DDecode:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/junrar/unpack/Unpack20;->DBits:[I

    aget p1, v5, p1

    if-lez p1, :cond_e9

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v5

    rsub-int/lit8 v6, p1, 0x10

    ushr-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_e9
    if-lt v4, v3, :cond_f7

    add-int/lit8 v0, v0, 0x1

    int-to-long v5, v4

    const-wide/32 v7, 0x40000

    cmp-long p1, v5, v7

    if-ltz p1, :cond_f7

    add-int/lit8 v0, v0, 0x1

    :cond_f7
    invoke-direct {p0, v0, v4}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_23

    :cond_fc
    if-ne p1, v5, :cond_105

    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_171

    :cond_105
    if-ne p1, v0, :cond_110

    iget p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    iget v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_23

    :cond_110
    const/16 v0, 0x105

    const/4 v5, 0x2

    if-ge p1, v0, :cond_151

    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    iget v4, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    add-int/lit16 p1, p1, -0x100

    sub-int/2addr v4, p1

    and-int/lit8 p1, v4, 0x3

    aget p1, v0, p1

    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    move-result v0

    sget-object v4, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    aget v4, v4, v0

    add-int/2addr v4, v5

    sget-object v5, Lcom/junrar/unpack/Unpack20;->LBits:[B

    aget-byte v0, v5, v0

    if-lez v0, :cond_13c

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v5

    rsub-int/lit8 v6, v0, 0x10

    ushr-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {p0, v0}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_13c
    const/16 v0, 0x101

    if-lt p1, v0, :cond_14c

    add-int/lit8 v4, v4, 0x1

    if-lt p1, v3, :cond_14c

    add-int/lit8 v4, v4, 0x1

    const/high16 v0, 0x40000

    if-lt p1, v0, :cond_14c

    add-int/lit8 v4, v4, 0x1

    :cond_14c
    invoke-direct {p0, v4, p1}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_23

    :cond_151
    if-ge p1, v4, :cond_23

    sget-object v0, Lcom/junrar/unpack/Unpack20;->SDDecode:[I

    add-int/lit16 p1, p1, -0x105

    aget v0, v0, p1

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/junrar/unpack/Unpack20;->SDBits:[I

    aget p1, v3, p1

    if-lez p1, :cond_16c

    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    move-result v3

    rsub-int/lit8 v4, p1, 0x10

    ushr-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    :cond_16c
    invoke-direct {p0, v5, v0}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    goto/16 :goto_23

    :cond_171
    :goto_171
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadLastTables()V

    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    return-void
.end method
