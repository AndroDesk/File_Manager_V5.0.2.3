.class public Ljcifs/dcerpc/UUID;
.super Ljcifs/dcerpc/rpc$uuid_t;
.source "UUID.java"


# static fields
.field public static final HEXCHARS:[C


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Ljcifs/dcerpc/UUID;->HEXCHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    const/16 v1, 0xe

    invoke-static {p1, v1, v2}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    const/16 v1, 0x13

    const/4 v3, 0x2

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    const/16 v1, 0x15

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    const/4 v1, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v4, 0x18

    invoke-static {p1, v4, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v4

    invoke-static {v4}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v4

    aput-byte v4, v1, v0

    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x1a

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    const/4 v4, 0x1

    aput-byte v1, v0, v4

    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x1c

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x1e

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x20

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x22

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result p1

    invoke-static {p1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result p1

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$uuid_t;)V
    .registers 5

    invoke-direct {p0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    iget v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    iput v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    iget-short v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    iget-short v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    iget-byte v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    iget-object p1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aget-byte p1, p1, v1

    aput-byte p1, v0, v1

    return-void
.end method

.method private static B(I)B
    .registers 1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static S(I)S
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static bin_to_hex(II)Ljava/lang/String;
    .registers 5

    new-array v0, p1, [C

    :goto_2
    add-int/lit8 v1, p1, -0x1

    if-gtz p1, :cond_c

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_c
    sget-object p1, Ljcifs/dcerpc/UUID;->HEXCHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char p1, p1, v2

    aput-char p1, v0, v1

    ushr-int/lit8 p0, p0, 0x4

    move p1, v1

    goto :goto_2
.end method

.method public static hex_to_bin([CII)I
    .registers 7

    const/4 v0, 0x0

    move v2, p1

    move v1, v0

    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_32

    if-lt v0, p2, :cond_9

    goto :goto_32

    :cond_9
    shl-int/lit8 v1, v1, 0x4

    aget-char v3, p0, v2

    packed-switch v3, :pswitch_data_34

    packed-switch v3, :pswitch_data_4c

    packed-switch v3, :pswitch_data_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_21  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    add-int/lit8 v3, v3, -0x61

    goto :goto_26

    :pswitch_24  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46
    add-int/lit8 v3, v3, -0x41

    :goto_26
    add-int/lit8 v3, v3, 0xa

    goto :goto_2b

    :pswitch_29  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    add-int/lit8 v3, v3, -0x30

    :goto_2b
    add-int/2addr v3, v1

    move v1, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_32
    :goto_32
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x30
        :pswitch_29  #00000030
        :pswitch_29  #00000031
        :pswitch_29  #00000032
        :pswitch_29  #00000033
        :pswitch_29  #00000034
        :pswitch_29  #00000035
        :pswitch_29  #00000036
        :pswitch_29  #00000037
        :pswitch_29  #00000038
        :pswitch_29  #00000039
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x41
        :pswitch_24  #00000041
        :pswitch_24  #00000042
        :pswitch_24  #00000043
        :pswitch_24  #00000044
        :pswitch_24  #00000045
        :pswitch_24  #00000046
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x61
        :pswitch_21  #00000061
        :pswitch_21  #00000062
        :pswitch_21  #00000063
        :pswitch_21  #00000064
        :pswitch_21  #00000065
        :pswitch_21  #00000066
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-short v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-short v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-static {v2, v3}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-static {v2, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v4

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v1, v1, v3

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
