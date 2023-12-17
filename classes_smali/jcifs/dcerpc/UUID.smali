.class public Ljcifs/dcerpc/UUID;
.super Ljcifs/dcerpc/rpc$uuid_t;
.source "UUID.java"


# static fields
.field public static final HEXCHARS:[C


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [C

    .line 5
    fill-array-data v0, :array_a

    .line 8
    sput-object v0, Ljcifs/dcerpc/UUID;->HEXCHARS:[C

    .line 10
    return-void

    .line 11
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

    .line 14
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 16
    invoke-static {p1, v0, v1}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    const/16 v1, 0x9

    const/4 v2, 0x4

    .line 17
    invoke-static {p1, v1, v2}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    const/16 v1, 0xe

    .line 18
    invoke-static {p1, v1, v2}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    const/16 v1, 0x13

    const/4 v3, 0x2

    .line 19
    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    const/16 v1, 0x15

    .line 20
    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 21
    iput-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v4, 0x18

    .line 22
    invoke-static {p1, v4, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v4

    invoke-static {v4}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v4

    aput-byte v4, v1, v0

    .line 23
    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x1a

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    const/4 v4, 0x1

    aput-byte v1, v0, v4

    .line 24
    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x1c

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    aput-byte v1, v0, v3

    .line 25
    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x1e

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    .line 26
    iget-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/16 v1, 0x20

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    aput-byte v1, v0, v2

    .line 27
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

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 2
    iget v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    iput v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 3
    iget-short v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 4
    iget-short v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    iput-short v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 5
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 6
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    iput-byte v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 8
    iget-object p1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 9
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 10
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 11
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 12
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 13
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

    .line 1
    new-array v0, p1, [C

    .line 3
    :goto_2
    add-int/lit8 v1, p1, -0x1

    .line 5
    if-gtz p1, :cond_c

    .line 7
    new-instance p0, Ljava/lang/String;

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 12
    return-object p0

    .line 13
    :cond_c
    sget-object p1, Ljcifs/dcerpc/UUID;->HEXCHARS:[C

    .line 15
    and-int/lit8 v2, p0, 0xf

    .line 17
    aget-char p1, p1, v2

    .line 19
    aput-char p1, v0, v1

    .line 21
    ushr-int/lit8 p0, p0, 0x4

    .line 23
    move p1, v1

    .line 24
    goto :goto_2
.end method

.method public static hex_to_bin([CII)I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v2, p1

    .line 3
    move v1, v0

    .line 4
    :goto_3
    array-length v3, p0

    .line 5
    if-ge v2, v3, :cond_32

    .line 7
    if-lt v0, p2, :cond_9

    .line 9
    goto :goto_32

    .line 10
    :cond_9
    shl-int/lit8 v1, v1, 0x4

    .line 12
    aget-char v3, p0, v2

    .line 14
    packed-switch v3, :pswitch_data_34

    .line 17
    packed-switch v3, :pswitch_data_4c

    .line 20
    packed-switch v3, :pswitch_data_5c

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    new-instance v1, Ljava/lang/String;

    .line 27
    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0

    .line 34
    :pswitch_21  #0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    add-int/lit8 v3, v3, -0x61

    .line 36
    goto :goto_26

    .line 37
    :pswitch_24  #0x41, 0x42, 0x43, 0x44, 0x45, 0x46
    add-int/lit8 v3, v3, -0x41

    .line 39
    :goto_26
    add-int/lit8 v3, v3, 0xa

    .line 41
    goto :goto_2b

    .line 42
    :pswitch_29  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    add-int/lit8 v3, v3, -0x30

    .line 44
    :goto_2b
    add-int/2addr v3, v1

    .line 45
    move v1, v3

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_32
    :goto_32
    return v1

    .line 52
    nop

    .line 53
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

    .line 77
    :pswitch_data_4c
    .packed-switch 0x41
        :pswitch_24  #00000041
        :pswitch_24  #00000042
        :pswitch_24  #00000043
        :pswitch_24  #00000044
        :pswitch_24  #00000045
        :pswitch_24  #00000046
    .end packed-switch

    .line 93
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 5
    const/16 v2, 0x8

    .line 7
    invoke-static {v1, v2}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    const/16 v1, 0x2d

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    iget-short v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-static {v2, v3}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget-short v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 38
    invoke-static {v2, v3}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 50
    const/4 v4, 0x2

    .line 51
    invoke-static {v2, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-byte v2, p0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 60
    invoke-static {v2, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 72
    const/4 v2, 0x0

    .line 73
    aget-byte v1, v1, v2

    .line 75
    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 84
    const/4 v2, 0x1

    .line 85
    aget-byte v1, v1, v2

    .line 87
    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 96
    aget-byte v1, v1, v4

    .line 98
    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 107
    const/4 v2, 0x3

    .line 108
    aget-byte v1, v1, v2

    .line 110
    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 119
    aget-byte v1, v1, v3

    .line 121
    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 130
    const/4 v2, 0x5

    .line 131
    aget-byte v1, v1, v2

    .line 133
    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    return-object v0
.end method
