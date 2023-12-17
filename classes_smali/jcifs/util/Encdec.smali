.class public Ljcifs/util/Encdec;
.super Ljava/lang/Object;
.source "Encdec.java"


# static fields
.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final SEC_BETWEEEN_1904_AND_1970:J = 0x7c25b080L

.field public static final TIME_1601_NANOS_64BE:I = 0x6

.field public static final TIME_1601_NANOS_64LE:I = 0x5

.field public static final TIME_1904_SEC_32BE:I = 0x3

.field public static final TIME_1904_SEC_32LE:I = 0x4

.field public static final TIME_1970_MILLIS_64BE:I = 0x7

.field public static final TIME_1970_MILLIS_64LE:I = 0x8

.field public static final TIME_1970_SEC_32BE:I = 0x1

.field public static final TIME_1970_SEC_32LE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dec_doublebe([BI)D
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static dec_doublele([BI)D
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static dec_floatbe([BI)F
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static dec_floatle([BI)F
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static dec_time([BII)Ljava/util/Date;
    .registers 13

    .line 1
    const-wide v0, 0xa9730b66800L

    .line 6
    const-wide/16 v2, 0x2710

    .line 8
    const-wide/32 v4, 0x7c25b080

    .line 11
    const-wide v6, 0xffffffffL

    .line 16
    const-wide/16 v8, 0x3e8

    .line 18
    packed-switch p2, :pswitch_data_7c

    .line 21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "Unsupported time encoding"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0

    .line 29
    :pswitch_1c  #0x8
    new-instance p2, Ljava/util/Date;

    .line 31
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    .line 34
    move-result-wide p0

    .line 35
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 38
    return-object p2

    .line 39
    :pswitch_26  #0x7
    new-instance p2, Ljava/util/Date;

    .line 41
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    .line 44
    move-result-wide p0

    .line 45
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 48
    return-object p2

    .line 49
    :pswitch_30  #0x6
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    .line 52
    move-result-wide p0

    .line 53
    new-instance p2, Ljava/util/Date;

    .line 55
    div-long/2addr p0, v2

    .line 56
    sub-long/2addr p0, v0

    .line 57
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 60
    return-object p2

    .line 61
    :pswitch_3c  #0x5
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    .line 64
    move-result-wide p0

    .line 65
    new-instance p2, Ljava/util/Date;

    .line 67
    div-long/2addr p0, v2

    .line 68
    sub-long/2addr p0, v0

    .line 69
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 72
    return-object p2

    .line 73
    :pswitch_48  #0x4
    new-instance p2, Ljava/util/Date;

    .line 75
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 78
    move-result p0

    .line 79
    int-to-long p0, p0

    .line 80
    and-long/2addr p0, v6

    .line 81
    sub-long/2addr p0, v4

    .line 82
    mul-long/2addr p0, v8

    .line 83
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 86
    return-object p2

    .line 87
    :pswitch_56  #0x3
    new-instance p2, Ljava/util/Date;

    .line 89
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    .line 92
    move-result p0

    .line 93
    int-to-long p0, p0

    .line 94
    and-long/2addr p0, v6

    .line 95
    sub-long/2addr p0, v4

    .line 96
    mul-long/2addr p0, v8

    .line 97
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 100
    return-object p2

    .line 101
    :pswitch_64  #0x2
    new-instance p2, Ljava/util/Date;

    .line 103
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 106
    move-result p0

    .line 107
    int-to-long p0, p0

    .line 108
    mul-long/2addr p0, v8

    .line 109
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 112
    return-object p2

    .line 113
    :pswitch_70  #0x1
    new-instance p2, Ljava/util/Date;

    .line 115
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    .line 118
    move-result p0

    .line 119
    int-to-long p0, p0

    .line 120
    mul-long/2addr p0, v8

    .line 121
    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 124
    return-object p2

    .line 125
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

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    add-int/lit8 v2, p1, 0x1

    .line 5
    if-lt v2, p2, :cond_7

    .line 7
    goto :goto_10

    .line 8
    :cond_7
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    .line 11
    move-result v2

    .line 12
    int-to-char v2, v2

    .line 13
    aput-char v2, p3, v1

    .line 15
    if-nez v2, :cond_16

    .line 17
    :goto_10
    new-instance p0, Ljava/lang/String;

    .line 19
    invoke-direct {p0, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 22
    return-object p0

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    add-int/lit8 p1, p1, 0x2

    .line 27
    goto :goto_2
.end method

.method public static dec_uint16be([BI)S
    .registers 3

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 9
    aget-byte p0, p0, p1

    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 13
    or-int/2addr p0, v0

    .line 14
    int-to-short p0, p0

    .line 15
    return p0
.end method

.method public static dec_uint16le([BI)S
    .registers 3

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 7
    aget-byte p0, p0, p1

    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 13
    or-int/2addr p0, v0

    .line 14
    int-to-short p0, p0

    .line 15
    return p0
.end method

.method public static dec_uint32be([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 9
    aget-byte v1, p0, v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p1, 0x2

    .line 18
    aget-byte v1, p0, v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 24
    or-int/2addr v0, v1

    .line 25
    add-int/lit8 p1, p1, 0x3

    .line 27
    aget-byte p0, p0, p1

    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static dec_uint32le([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 7
    aget-byte v1, p0, v1

    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 16
    aget-byte v1, p0, v1

    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 25
    aget-byte p0, p0, p1

    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static dec_uint64be([BI)J
    .registers 7

    .line 1
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 11
    and-long/2addr v0, v2

    .line 12
    const/16 v4, 0x20

    .line 14
    shl-long/2addr v0, v4

    .line 15
    add-int/lit8 p1, p1, 0x4

    .line 17
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    .line 20
    move-result p0

    .line 21
    int-to-long p0, p0

    .line 22
    and-long/2addr p0, v2

    .line 23
    or-long/2addr p0, v0

    .line 24
    return-wide p0
.end method

.method public static dec_uint64le([BI)J
    .registers 7

    .line 1
    add-int/lit8 v0, p1, 0x4

    .line 3
    invoke-static {p0, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    const-wide v2, 0xffffffffL

    .line 13
    and-long/2addr v0, v2

    .line 14
    const/16 v4, 0x20

    .line 16
    shl-long/2addr v0, v4

    .line 17
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    .line 20
    move-result p0

    .line 21
    int-to-long p0, p0

    .line 22
    and-long/2addr p0, v2

    .line 23
    or-long/2addr p0, v0

    .line 24
    return-wide p0
.end method

.method public static dec_utf8([BII)Ljava/lang/String;
    .registers 12

    .line 1
    sub-int v0, p2, p1

    .line 3
    new-array v0, v0, [C

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge p1, p2, :cond_9a

    .line 9
    add-int/lit8 v3, p1, 0x1

    .line 11
    aget-byte p1, p0, p1

    .line 13
    and-int/lit16 p1, p1, 0xff

    .line 15
    if-nez p1, :cond_12

    .line 17
    goto/16 :goto_9a

    .line 19
    :cond_12
    const/16 v4, 0x80

    .line 21
    if-ge p1, v4, :cond_1b

    .line 23
    int-to-char p1, p1

    .line 24
    aput-char p1, v0, v2

    .line 26
    :goto_19
    move p1, v3

    .line 27
    goto :goto_83

    .line 28
    :cond_1b
    and-int/lit16 v5, p1, 0xe0

    .line 30
    const-string v6, "Invalid UTF-8 sequence"

    .line 32
    const/16 v7, 0xc0

    .line 34
    if-ne v5, v7, :cond_4a

    .line 36
    sub-int v5, p2, v3

    .line 38
    const/4 v8, 0x2

    .line 39
    if-ge v5, v8, :cond_2a

    .line 41
    goto/16 :goto_9a

    .line 43
    :cond_2a
    and-int/lit8 p1, p1, 0x1f

    .line 45
    shl-int/lit8 p1, p1, 0x6

    .line 47
    int-to-char p1, p1

    .line 48
    aput-char p1, v0, v2

    .line 50
    add-int/lit8 v5, v3, 0x1

    .line 52
    aget-byte v3, p0, v3

    .line 54
    and-int/lit16 v3, v3, 0xff

    .line 56
    and-int/lit8 v8, v3, 0x3f

    .line 58
    or-int/2addr p1, v8

    .line 59
    int-to-char p1, p1

    .line 60
    aput-char p1, v0, v2

    .line 62
    and-int/2addr v3, v7

    .line 63
    if-ne v3, v4, :cond_44

    .line 65
    if-lt p1, v4, :cond_44

    .line 67
    move p1, v5

    .line 68
    goto :goto_83

    .line 69
    :cond_44
    new-instance p0, Ljava/io/IOException;

    .line 71
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0

    .line 75
    :cond_4a
    and-int/lit16 v5, p1, 0xf0

    .line 77
    const/16 v8, 0xe0

    .line 79
    if-ne v5, v8, :cond_92

    .line 81
    sub-int v5, p2, v3

    .line 83
    const/4 v8, 0x3

    .line 84
    if-ge v5, v8, :cond_56

    .line 86
    goto :goto_9a

    .line 87
    :cond_56
    and-int/lit8 p1, p1, 0xf

    .line 89
    shl-int/lit8 p1, p1, 0xc

    .line 91
    int-to-char p1, p1

    .line 92
    aput-char p1, v0, v2

    .line 94
    add-int/lit8 v5, v3, 0x1

    .line 96
    aget-byte v3, p0, v3

    .line 98
    and-int/lit16 v3, v3, 0xff

    .line 100
    and-int/lit16 v8, v3, 0xc0

    .line 102
    if-ne v8, v4, :cond_8c

    .line 104
    and-int/lit8 v3, v3, 0x3f

    .line 106
    shl-int/lit8 v3, v3, 0x6

    .line 108
    or-int/2addr p1, v3

    .line 109
    int-to-char p1, p1

    .line 110
    aput-char p1, v0, v2

    .line 112
    add-int/lit8 v3, v5, 0x1

    .line 114
    aget-byte v5, p0, v5

    .line 116
    and-int/lit16 v5, v5, 0xff

    .line 118
    and-int/lit8 v8, v5, 0x3f

    .line 120
    or-int/2addr p1, v8

    .line 121
    int-to-char p1, p1

    .line 122
    aput-char p1, v0, v2

    .line 124
    and-int/2addr v5, v7

    .line 125
    if-ne v5, v4, :cond_86

    .line 127
    const/16 v4, 0x800

    .line 129
    if-lt p1, v4, :cond_86

    .line 131
    goto :goto_19

    .line 132
    :goto_83
    add-int/lit8 v2, v2, 0x1

    .line 134
    goto :goto_6

    .line 135
    :cond_86
    new-instance p0, Ljava/io/IOException;

    .line 137
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p0

    .line 141
    :cond_8c
    new-instance p0, Ljava/io/IOException;

    .line 143
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0

    .line 147
    :cond_92
    new-instance p0, Ljava/io/IOException;

    .line 149
    const-string p1, "Unsupported UTF-8 sequence"

    .line 151
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p0

    .line 155
    :cond_9a
    :goto_9a
    new-instance p0, Ljava/lang/String;

    .line 157
    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 160
    return-object p0
.end method

.method public static enc_doublebe(D[BI)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static enc_doublele(D[BI)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static enc_floatbe(F[BI)I
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static enc_floatle(F[BI)I
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static enc_time(Ljava/util/Date;[BII)I
    .registers 14

    .line 1
    const-wide/16 v0, 0x2710

    .line 3
    const-wide v2, 0xa9730b66800L

    .line 8
    const-wide/16 v4, -0x1

    .line 10
    const-wide/32 v6, 0x7c25b080

    .line 13
    const-wide/16 v8, 0x3e8

    .line 15
    packed-switch p3, :pswitch_data_72

    .line 18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p1, "Unsupported time encoding"

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :pswitch_19  #0x8
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 29
    move-result-wide v0

    .line 30
    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :pswitch_22  #0x7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 38
    move-result-wide v0

    .line 39
    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :pswitch_2b  #0x6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 47
    move-result-wide v4

    .line 48
    add-long/2addr v4, v2

    .line 49
    mul-long/2addr v4, v0

    .line 50
    invoke-static {v4, v5, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :pswitch_36  #0x5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 58
    move-result-wide v4

    .line 59
    add-long/2addr v4, v2

    .line 60
    mul-long/2addr v4, v0

    .line 61
    invoke-static {v4, v5, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :pswitch_41  #0x4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 69
    move-result-wide v0

    .line 70
    div-long/2addr v0, v8

    .line 71
    add-long/2addr v0, v6

    .line 72
    and-long/2addr v0, v4

    .line 73
    long-to-int p0, v0

    .line 74
    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :pswitch_4e  #0x3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 82
    move-result-wide v0

    .line 83
    div-long/2addr v0, v8

    .line 84
    add-long/2addr v0, v6

    .line 85
    and-long/2addr v0, v4

    .line 86
    long-to-int p0, v0

    .line 87
    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :pswitch_5b  #0x2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 95
    move-result-wide v0

    .line 96
    div-long/2addr v0, v8

    .line 97
    long-to-int p0, v0

    .line 98
    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 101
    move-result p0

    .line 102
    return p0

    .line 103
    :pswitch_66  #0x1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 106
    move-result-wide v0

    .line 107
    div-long/2addr v0, v8

    .line 108
    long-to-int p0, v0

    .line 109
    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    nop

    .line 115
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

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    shr-int/lit8 v1, p0, 0x8

    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p2

    .line 10
    and-int/lit16 p0, p0, 0xff

    .line 12
    int-to-byte p0, p0

    .line 13
    aput-byte p0, p1, v0

    .line 15
    const/4 p0, 0x2

    .line 16
    return p0
.end method

.method public static enc_uint16le(S[BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    and-int/lit16 v1, p0, 0xff

    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, p2

    .line 8
    shr-int/lit8 p0, p0, 0x8

    .line 10
    and-int/lit16 p0, p0, 0xff

    .line 12
    int-to-byte p0, p0

    .line 13
    aput-byte p0, p1, v0

    .line 15
    const/4 p0, 0x2

    .line 16
    return p0
.end method

.method public static enc_uint32be(I[BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    shr-int/lit8 v1, p0, 0x18

    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p2

    .line 10
    add-int/lit8 p2, v0, 0x1

    .line 12
    shr-int/lit8 v1, p0, 0x10

    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 16
    int-to-byte v1, v1

    .line 17
    aput-byte v1, p1, v0

    .line 19
    add-int/lit8 v0, p2, 0x1

    .line 21
    shr-int/lit8 v1, p0, 0x8

    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 25
    int-to-byte v1, v1

    .line 26
    aput-byte v1, p1, p2

    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p1, v0

    .line 33
    const/4 p0, 0x4

    .line 34
    return p0
.end method

.method public static enc_uint32le(I[BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    and-int/lit16 v1, p0, 0xff

    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, p2

    .line 8
    add-int/lit8 p2, v0, 0x1

    .line 10
    shr-int/lit8 v1, p0, 0x8

    .line 12
    and-int/lit16 v1, v1, 0xff

    .line 14
    int-to-byte v1, v1

    .line 15
    aput-byte v1, p1, v0

    .line 17
    add-int/lit8 v0, p2, 0x1

    .line 19
    shr-int/lit8 v1, p0, 0x10

    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 23
    int-to-byte v1, v1

    .line 24
    aput-byte v1, p1, p2

    .line 26
    shr-int/lit8 p0, p0, 0x18

    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 30
    int-to-byte p0, p0

    .line 31
    aput-byte p0, p1, v0

    .line 33
    const/4 p0, 0x4

    .line 34
    return p0
.end method

.method public static enc_uint64be(J[BI)I
    .registers 8

    .line 1
    const-wide v0, 0xffffffffL

    .line 6
    and-long v2, p0, v0

    .line 8
    long-to-int v2, v2

    .line 9
    add-int/lit8 v3, p3, 0x4

    .line 11
    invoke-static {v2, p2, v3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 14
    const/16 v2, 0x20

    .line 16
    shr-long/2addr p0, v2

    .line 17
    and-long/2addr p0, v0

    .line 18
    long-to-int p0, p0

    .line 19
    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 22
    const/16 p0, 0x8

    .line 24
    return p0
.end method

.method public static enc_uint64le(J[BI)I
    .registers 8

    .line 1
    const-wide v0, 0xffffffffL

    .line 6
    and-long v2, p0, v0

    .line 8
    long-to-int v2, v2

    .line 9
    invoke-static {v2, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 12
    const/16 v2, 0x20

    .line 14
    shr-long/2addr p0, v2

    .line 15
    and-long/2addr p0, v0

    .line 16
    long-to-int p0, p0

    .line 17
    add-int/lit8 p3, p3, 0x4

    .line 19
    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 22
    const/16 p0, 0x8

    .line 24
    return p0
.end method

.method public static enc_utf8(Ljava/lang/String;[BII)I
    .registers 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, p2

    .line 7
    :goto_6
    if-ge v2, p3, :cond_68

    .line 9
    if-lt v1, v0, :cond_b

    .line 11
    goto :goto_68

    .line 12
    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-lt v3, v4, :cond_1d

    .line 19
    const/16 v4, 0x7f

    .line 21
    if-gt v3, v4, :cond_1d

    .line 23
    add-int/lit8 v4, v2, 0x1

    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, p1, v2

    .line 28
    :goto_1b
    move v2, v4

    .line 29
    goto :goto_65

    .line 30
    :cond_1d
    const/16 v4, 0x7ff

    .line 32
    if-le v3, v4, :cond_49

    .line 34
    sub-int v4, p3, v2

    .line 36
    const/4 v5, 0x3

    .line 37
    if-ge v4, v5, :cond_27

    .line 39
    goto :goto_68

    .line 40
    :cond_27
    add-int/lit8 v4, v2, 0x1

    .line 42
    shr-int/lit8 v5, v3, 0xc

    .line 44
    and-int/lit8 v5, v5, 0xf

    .line 46
    or-int/lit16 v5, v5, 0xe0

    .line 48
    int-to-byte v5, v5

    .line 49
    aput-byte v5, p1, v2

    .line 51
    add-int/lit8 v2, v4, 0x1

    .line 53
    shr-int/lit8 v5, v3, 0x6

    .line 55
    and-int/lit8 v5, v5, 0x3f

    .line 57
    or-int/lit16 v5, v5, 0x80

    .line 59
    int-to-byte v5, v5

    .line 60
    aput-byte v5, p1, v4

    .line 62
    add-int/lit8 v4, v2, 0x1

    .line 64
    shr-int/lit8 v3, v3, 0x0

    .line 66
    and-int/lit8 v3, v3, 0x3f

    .line 68
    or-int/lit16 v3, v3, 0x80

    .line 70
    int-to-byte v3, v3

    .line 71
    aput-byte v3, p1, v2

    .line 73
    goto :goto_1b

    .line 74
    :cond_49
    sub-int v4, p3, v2

    .line 76
    const/4 v5, 0x2

    .line 77
    if-ge v4, v5, :cond_4f

    .line 79
    goto :goto_68

    .line 80
    :cond_4f
    add-int/lit8 v4, v2, 0x1

    .line 82
    shr-int/lit8 v5, v3, 0x6

    .line 84
    and-int/lit8 v5, v5, 0x1f

    .line 86
    or-int/lit16 v5, v5, 0xc0

    .line 88
    int-to-byte v5, v5

    .line 89
    aput-byte v5, p1, v2

    .line 91
    add-int/lit8 v2, v4, 0x1

    .line 93
    shr-int/lit8 v3, v3, 0x0

    .line 95
    and-int/lit8 v3, v3, 0x3f

    .line 97
    or-int/lit16 v3, v3, 0x80

    .line 99
    int-to-byte v3, v3

    .line 100
    aput-byte v3, p1, v4

    .line 102
    :goto_65
    add-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_6

    .line 105
    :cond_68
    :goto_68
    sub-int/2addr v2, p2

    .line 106
    return v2
.end method
