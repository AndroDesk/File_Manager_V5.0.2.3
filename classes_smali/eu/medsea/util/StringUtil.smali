.class public Leu/medsea/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final HEX_CHAR_TABLE:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_a

    .line 8
    sput-object v0, Leu/medsea/util/StringUtil;->HEX_CHAR_TABLE:[B

    .line 10
    return-void

    .line 11
    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_9

    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .registers 8

    .line 1
    if-nez p0, :cond_5

    .line 3
    const-string p0, ""

    .line 5
    return-object p0

    .line 6
    :cond_5
    array-length v0, p0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 9
    new-array v0, v0, [B

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_c
    array-length v3, p0

    .line 14
    if-lt v1, v3, :cond_17

    .line 16
    new-instance p0, Ljava/lang/String;

    .line 18
    const-string v1, "ASCII"

    .line 20
    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 23
    return-object p0

    .line 24
    :cond_17
    aget-byte v3, p0, v1

    .line 26
    and-int/lit16 v3, v3, 0xff

    .line 28
    add-int/lit8 v4, v2, 0x1

    .line 30
    sget-object v5, Leu/medsea/util/StringUtil;->HEX_CHAR_TABLE:[B

    .line 32
    ushr-int/lit8 v6, v3, 0x4

    .line 34
    aget-byte v6, v5, v6

    .line 36
    aput-byte v6, v0, v2

    .line 38
    add-int/lit8 v2, v4, 0x1

    .line 40
    and-int/lit8 v3, v3, 0xf

    .line 42
    aget-byte v3, v5, v3

    .line 44
    aput-byte v3, v0, v4

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_c
.end method

.method public static toStringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    array-length v2, p0

    .line 8
    if-lt v1, v2, :cond_e

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_e
    aget-object v2, p0, v1

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_6
.end method
