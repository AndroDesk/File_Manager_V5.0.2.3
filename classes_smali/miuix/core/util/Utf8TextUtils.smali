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
.field private static final MAX_LENGTH:I

.field private static final MIN_LENGTH:I

.field private static final TAG:Ljava/lang/String; = "Utf8TextUtils"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/Utf8TextUtils;->MAX_LENGTH:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/Utf8TextUtils;->MIN_LENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;
    .registers 4

    new-instance v0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    invoke-direct {v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>()V

    invoke-static {p0, p1, p2}, Lmiuix/core/util/Utf8TextUtils;->isValidCharacter([BII)Z

    move-result p0

    if-eqz p0, :cond_f

    iput p1, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    iput p2, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

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

    aget-byte v0, p0, p1

    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    move-result v0

    if-nez v0, :cond_f

    new-instance p0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>(II)V

    return-object p0

    :cond_f
    invoke-static {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils;->findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;

    move-result-object p0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    invoke-static {p0, v1}, Lmiuix/core/util/Utf8TextUtils;->getCharRangeAt([BI)Lmiuix/core/util/Utf8TextUtils$CharRange;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/core/util/Utf8TextUtils$CharRange;->isValid()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1e

    :cond_17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v2, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v1, v2

    goto :goto_6

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private static isValidCharacter([BII)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1a

    const/4 v2, 0x6

    if-le p2, v2, :cond_8

    goto :goto_1a

    :cond_8
    move v2, v1

    :goto_9
    if-ge v2, p2, :cond_19

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    move-result v3

    if-eq v3, v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static subString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4e

    if-gt p2, p1, :cond_b

    goto :goto_4e

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    if-ltz p1, :cond_4e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lt p1, p0, :cond_27

    goto :goto_4e

    :cond_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/core/util/Utf8TextUtils$CharRange;

    iget p1, p1, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    if-lt p2, p0, :cond_37

    array-length p0, v0

    goto :goto_3f

    :cond_37
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    iget p0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    :goto_3f
    sub-int/2addr p0, p1

    new-array p2, p0, [B

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_46
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-direct {p0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_4d} :catch_4e

    return-object p0

    :catch_4e
    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public static truncateByte(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v1, p1, :cond_2a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, p1, :cond_3e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_43
    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4a
    if-ltz v3, :cond_62

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/core/util/Utf8TextUtils$CharRange;

    iget v5, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    if-lt v5, p1, :cond_59

    add-int/lit8 v3, v3, -0x1

    goto :goto_4a

    :cond_59
    invoke-virtual {v4}, Lmiuix/core/util/Utf8TextUtils$CharRange;->getEndIndex()I

    move-result v2

    if-gt v2, p1, :cond_60

    goto :goto_62

    :cond_60
    iget v2, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    :cond_62
    :goto_62
    array-length p1, v0

    if-ge v2, p1, :cond_73

    new-array p1, v2, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_72
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_72} :catch_74

    return-object v0

    :cond_73
    return-object p0

    :catch_74
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get bytes of UTF-8 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utf8TextUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
