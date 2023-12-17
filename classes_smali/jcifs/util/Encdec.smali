.class public Ljcifs/util/Encdec;
.super Ljava/lang/Object;
.source "Encdec.java"


# static fields
.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final SEC_BETWEEEN_1904_AND_1970:J = 0x7c25b080L

.field public static final TIME_1601_NANOS_64BE:I

.field public static final TIME_1601_NANOS_64LE:I

.field public static final TIME_1904_SEC_32BE:I

.field public static final TIME_1904_SEC_32LE:I

.field public static final TIME_1970_MILLIS_64BE:I

.field public static final TIME_1970_MILLIS_64LE:I

.field public static final TIME_1970_SEC_32BE:I

.field public static final TIME_1970_SEC_32LE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1601_NANOS_64BE:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1601_NANOS_64LE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1904_SEC_32BE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1904_SEC_32LE:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1970_MILLIS_64BE:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1970_MILLIS_64LE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1970_SEC_32BE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/util/Encdec;->TIME_1970_SEC_32LE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dec_doublebe([BI)D
    .registers 2

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dec_doublele([BI)D
    .registers 2

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dec_floatbe([BI)F
    .registers 2

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static dec_floatle([BI)F
    .registers 2

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static dec_time([BII)Ljava/util/Date;
    .registers 13

    const-wide v0, 0xa9730b66800L

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0x7c25b080

    const-wide v6, 0xffffffffL

    const-wide/16 v8, 0x3e8

    packed-switch p2, :pswitch_data_7c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported time encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c  #0x8
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_26  #0x7
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_30  #0x6
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    new-instance p2, Ljava/util/Date;

    div-long/2addr p0, v2

    sub-long/2addr p0, v0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_3c  #0x5
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    new-instance p2, Ljava/util/Date;

    div-long/2addr p0, v2

    sub-long/2addr p0, v0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_48  #0x4
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v6

    sub-long/2addr p0, v4

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_56  #0x3
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v6

    sub-long/2addr p0, v4

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_64  #0x2
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_70  #0x1
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_70  #00000001
        :pswitch_64  #00000002
        :pswitch_56  #00000003
        :pswitch_48  #00000004
        :pswitch_3c  #00000005
        :pswitch_30  #00000006
        :pswitch_26  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method

.method public static dec_ucs2le([BII[C)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    add-int/lit8 v2, p1, 0x1

    if-lt v2, p2, :cond_7

    goto :goto_10

    :cond_7
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    int-to-char v2, v2

    aput-char v2, p3, v1

    if-nez v2, :cond_16

    :goto_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x2

    goto :goto_2
.end method

.method public static dec_uint16be([BI)S
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static dec_uint16le([BI)S
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static dec_uint32be([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static dec_uint32le([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static dec_uint64be([BI)J
    .registers 7

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static dec_uint64le([BI)J
    .registers 7

    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static dec_utf8([BII)Ljava/lang/String;
    .registers 12

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge p1, p2, :cond_9a

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_12

    goto/16 :goto_9a

    :cond_12
    const/16 v4, 0x80

    if-ge p1, v4, :cond_1b

    int-to-char p1, p1

    aput-char p1, v0, v2

    :goto_19
    move p1, v3

    goto :goto_83

    :cond_1b
    and-int/lit16 v5, p1, 0xe0

    const-string v6, "Invalid UTF-8 sequence"

    const/16 v7, 0xc0

    if-ne v5, v7, :cond_4a

    sub-int v5, p2, v3

    const/4 v8, 0x2

    if-ge v5, v8, :cond_2a

    goto/16 :goto_9a

    :cond_2a
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    int-to-char p1, p1

    aput-char p1, v0, v2

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v8, v3, 0x3f

    or-int/2addr p1, v8

    int-to-char p1, p1

    aput-char p1, v0, v2

    and-int/2addr v3, v7

    if-ne v3, v4, :cond_44

    if-lt p1, v4, :cond_44

    move p1, v5

    goto :goto_83

    :cond_44
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    and-int/lit16 v5, p1, 0xf0

    const/16 v8, 0xe0

    if-ne v5, v8, :cond_92

    sub-int v5, p2, v3

    const/4 v8, 0x3

    if-ge v5, v8, :cond_56

    goto :goto_9a

    :cond_56
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    int-to-char p1, p1

    aput-char p1, v0, v2

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v4, :cond_8c

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr p1, v3

    int-to-char p1, p1

    aput-char p1, v0, v2

    add-int/lit8 v3, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr p1, v8

    int-to-char p1, p1

    aput-char p1, v0, v2

    and-int/2addr v5, v7

    if-ne v5, v4, :cond_86

    const/16 v4, 0x800

    if-lt p1, v4, :cond_86

    goto :goto_19

    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_86
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unsupported UTF-8 sequence"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9a
    :goto_9a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static enc_doublebe(D[BI)I
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0
.end method

.method public static enc_doublele(D[BI)I
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0
.end method

.method public static enc_floatbe(F[BI)I
    .registers 3

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0
.end method

.method public static enc_floatle(F[BI)I
    .registers 3

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0
.end method

.method public static enc_time(Ljava/util/Date;[BII)I
    .registers 14

    const-wide/16 v0, 0x2710

    const-wide v2, 0xa9730b66800L

    const-wide/16 v4, -0x1

    const-wide/32 v6, 0x7c25b080

    const-wide/16 v8, 0x3e8

    packed-switch p3, :pswitch_data_72

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported time encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_19  #0x8
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0

    :pswitch_22  #0x7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0

    :pswitch_2b  #0x6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    mul-long/2addr v4, v0

    invoke-static {v4, v5, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0

    :pswitch_36  #0x5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    mul-long/2addr v4, v0

    invoke-static {v4, v5, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0

    :pswitch_41  #0x4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    and-long/2addr v0, v4

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0

    :pswitch_4e  #0x3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    and-long/2addr v0, v4

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0

    :pswitch_5b  #0x2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0

    :pswitch_66  #0x1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v8

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_66  #00000001
        :pswitch_5b  #00000002
        :pswitch_4e  #00000003
        :pswitch_41  #00000004
        :pswitch_36  #00000005
        :pswitch_2b  #00000006
        :pswitch_22  #00000007
        :pswitch_19  #00000008
    .end packed-switch
.end method

.method public static enc_uint16be(S[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    const/4 p0, 0x2

    return p0
.end method

.method public static enc_uint16le(S[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    const/4 p0, 0x2

    return p0
.end method

.method public static enc_uint32be(I[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    const/4 p0, 0x4

    return p0
.end method

.method public static enc_uint32le(I[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    const/4 p0, 0x4

    return p0
.end method

.method public static enc_uint64be(J[BI)I
    .registers 8

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    long-to-int v2, v2

    add-int/lit8 v3, p3, 0x4

    invoke-static {v2, p2, v3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 p0, 0x8

    return p0
.end method

.method public static enc_uint64le(J[BI)I
    .registers 8

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    long-to-int v2, v2

    invoke-static {v2, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 p0, 0x8

    return p0
.end method

.method public static enc_utf8(Ljava/lang/String;[BII)I
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_6
    if-ge v2, p3, :cond_68

    if-lt v1, v0, :cond_b

    goto :goto_68

    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1d

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1d

    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :goto_1b
    move v2, v4

    goto :goto_65

    :cond_1d
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_49

    sub-int v4, p3, v2

    const/4 v5, 0x3

    if-ge v4, v5, :cond_27

    goto :goto_68

    :cond_27
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_1b

    :cond_49
    sub-int v4, p3, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4f

    goto :goto_68

    :cond_4f
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_68
    :goto_68
    sub-int/2addr v2, p2

    return v2
.end method
