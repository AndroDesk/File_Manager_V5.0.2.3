.class public Ljcifs/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array p0, v1, [B

    return-object p0

    :cond_a
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_16

    const/4 v2, 0x2

    goto :goto_21

    :cond_16
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v3, v2

    new-array v2, v3, [B

    move v4, v1

    :goto_29
    if-lt v1, v0, :cond_2c

    return-object v2

    :cond_2c
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v1, v5

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v1, v7

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    if-ge v5, v3, :cond_7a

    add-int/lit8 v4, v5, 0x1

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    goto :goto_7b

    :cond_7a
    move v4, v5

    :goto_7b
    if-ge v4, v3, :cond_85

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    move v4, v5

    :cond_85
    move v1, v7

    goto :goto_29
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 8

    array-length v0, p0

    if-nez v0, :cond_6

    const-string p0, ""

    return-object p0

    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    int-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L  # 3.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    rem-int/lit8 v2, v0, 0x3

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_1a
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    if-lt v3, v0, :cond_80

    if-nez v2, :cond_25

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4a

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x4

    ushr-int/lit8 v0, p0, 0x6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p0, p0, 0x3f

    invoke-virtual {v4, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "=="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4a
    add-int/lit8 v0, v3, 0x1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x2

    ushr-int/lit8 v0, p0, 0xc

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p0, p0, 0x3f

    invoke-virtual {v4, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_80
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    ushr-int/lit8 v6, v3, 0x12

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v5

    goto/16 :goto_1a
.end method
