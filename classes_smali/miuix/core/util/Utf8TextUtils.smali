.class public Lmiuix/core/util/Utf8TextUtils;
.super Ljava/lang/Object;
.source "Utf8TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/Utf8TextUtils$CharRange;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x6

.field private static final MIN_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Utf8TextUtils"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 3
    invoke-direct {v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>()V

    .line 6
    invoke-static {p0, p1, p2}, Lmiuix/core/util/Utf8TextUtils;->isValidCharacter([BII)Z

    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_f

    .line 12
    iput p1, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 14
    iput p2, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    .line 16
    :cond_f
    return-object v0
.end method

.method private static getByteCount(B)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_2
    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    shr-int v3, p0, v1

    int-to-byte v3, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_c

    goto :goto_11

    :cond_c
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_11
    :goto_11
    return v0
.end method

.method private static getCharRangeAt([BI)Lmiuix/core/util/Utf8TextUtils$CharRange;
    .registers 3

    .line 1
    aget-byte v0, p0, p1

    .line 3
    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    new-instance p0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>(II)V

    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-static {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils;->findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static getUtf8CharList([B)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lmiuix/core/util/Utf8TextUtils$CharRange;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_1e

    .line 10
    invoke-static {p0, v1}, Lmiuix/core/util/Utf8TextUtils;->getCharRangeAt([BI)Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lmiuix/core/util/Utf8TextUtils$CharRange;->isValid()Z

    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_17

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    goto :goto_1e

    .line 24
    :cond_17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget v2, v2, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    .line 29
    add-int/2addr v1, v2

    .line 30
    goto :goto_6

    .line 31
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private static isValidCharacter([BII)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le p2, v1, :cond_1a

    .line 5
    const/4 v2, 0x6

    .line 6
    if-le p2, v2, :cond_8

    .line 8
    goto :goto_1a

    .line 9
    :cond_8
    move v2, v1

    .line 10
    :goto_9
    if-ge v2, p2, :cond_19

    .line 12
    add-int v3, p1, v2

    .line 14
    aget-byte v3, p0, v3

    .line 16
    invoke-static {v3}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    .line 19
    move-result v3

    .line 20
    if-eq v3, v1, :cond_16

    .line 22
    return v0

    .line 23
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    :goto_1a
    return v0
.end method

.method public static subString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-nez v0, :cond_4e

    .line 9
    if-gt p2, p1, :cond_b

    .line 11
    goto :goto_4e

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1e

    .line 26
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1e
    if-ltz p1, :cond_4e

    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    move-result p0

    .line 37
    if-lt p1, p0, :cond_27

    .line 39
    goto :goto_4e

    .line 40
    :cond_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    move-result p0

    .line 44
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 50
    iget p1, p1, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 52
    if-lt p2, p0, :cond_37

    .line 54
    array-length p0, v0

    .line 55
    goto :goto_3f

    .line 56
    :cond_37
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 62
    iget p0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 64
    :goto_3f
    sub-int/2addr p0, p1

    .line 65
    new-array p2, p0, [B

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-static {v0, p1, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    :try_start_46
    new-instance p0, Ljava/lang/String;

    .line 73
    const-string p1, "UTF-8"

    .line 75
    invoke-direct {p0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_4d} :catch_4e

    .line 78
    return-object p0

    .line 79
    :catch_4e
    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public static truncateByte(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_43

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 27
    move-result-object v1

    .line 28
    array-length v1, v1

    .line 29
    if-ge v1, p1, :cond_2a

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    goto :goto_13

    .line 43
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 50
    move-result-object v1

    .line 51
    array-length v1, v1

    .line 52
    if-le v1, p1, :cond_3e

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 57
    move-result p1

    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_43
    array-length v2, v0

    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 72
    move-result v3

    .line 73
    add-int/lit8 v3, v3, -0x1

    .line 75
    :goto_4a
    if-ltz v3, :cond_62

    .line 77
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 83
    iget v5, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 85
    if-lt v5, p1, :cond_59

    .line 87
    add-int/lit8 v3, v3, -0x1

    .line 89
    goto :goto_4a

    .line 90
    :cond_59
    invoke-virtual {v4}, Lmiuix/core/util/Utf8TextUtils$CharRange;->getEndIndex()I

    .line 93
    move-result v2

    .line 94
    if-gt v2, p1, :cond_60

    .line 96
    goto :goto_62

    .line 97
    :cond_60
    iget v2, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 99
    :cond_62
    :goto_62
    array-length p1, v0

    .line 100
    if-ge v2, p1, :cond_73

    .line 102
    new-array p1, v2, [B

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    new-instance v0, Ljava/lang/String;

    .line 110
    const-string v1, "UTF-8"

    .line 112
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_72
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_72} :catch_74

    .line 115
    return-object v0

    .line 116
    :cond_73
    return-object p0

    .line 117
    :catch_74
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v1, "failed to get bytes of UTF-8 from "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string p0, ", "

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    const-string p1, "Utf8TextUtils"

    .line 145
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 p0, 0x0

    .line 149
    return-object p0
.end method
