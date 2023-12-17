.class public abstract Landroid/micloud/asn1/BerEncoding;
.super Ljava/lang/Object;
.source "BerEncoding.java"


# static fields
.field public static final ID_FLAG_CONSTRUCTED_ENCODING:I = 0x20

.field public static final TAG_CLASS_APPLICATION:I = 0x1

.field public static final TAG_CLASS_CONTEXT_SPECIFIC:I = 0x2

.field public static final TAG_CLASS_PRIVATE:I = 0x3

.field public static final TAG_CLASS_UNIVERSAL:I = 0x0

.field public static final TAG_NUMBER_INTEGER:I = 0x2

.field public static final TAG_NUMBER_NULL:I = 0x5

.field public static final TAG_NUMBER_OBJECT_IDENTIFIER:I = 0x6

.field public static final TAG_NUMBER_OCTET_STRING:I = 0x4

.field public static final TAG_NUMBER_SEQUENCE:I = 0x10

.field public static final TAG_NUMBER_SET:I = 0x11


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagClass(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static getTagNumber(B)I
    .registers 1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isConstructed(B)Z
    .registers 1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static tagClassAndNumberToString(II)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/micloud/asn1/BerEncoding;->tagClassToString(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Landroid/micloud/asn1/BerEncoding;->tagNumberToString(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    const-string v0, " "

    .line 18
    invoke-static {p0, v0, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    :goto_15
    return-object p1
.end method

.method public static tagClassToString(I)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_20

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1d

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1a

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_e

    .line 12
    const-string p0, "PRIVATE"

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v1, "Unsupported type class: "

    .line 19
    invoke-static {v1, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 27
    :cond_1a
    const-string p0, ""

    .line 29
    return-object p0

    .line 30
    :cond_1d
    const-string p0, "APPLICATION"

    .line 32
    return-object p0

    .line 33
    :cond_20
    const-string p0, "UNIVERSAL"

    .line 35
    return-object p0
.end method

.method public static tagNumberToString(I)Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_35

    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p0, v0, :cond_32

    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p0, v0, :cond_2f

    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p0, v0, :cond_2c

    .line 13
    const/16 v0, 0x10

    .line 15
    if-eq p0, v0, :cond_29

    .line 17
    const/16 v0, 0x11

    .line 19
    if-eq p0, v0, :cond_26

    .line 21
    const-string v0, "0x"

    .line 23
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_26
    const-string p0, "SET"

    .line 41
    return-object p0

    .line 42
    :cond_29
    const-string p0, "SEQUENCE"

    .line 44
    return-object p0

    .line 45
    :cond_2c
    const-string p0, "OBJECT IDENTIFIER"

    .line 47
    return-object p0

    .line 48
    :cond_2f
    const-string p0, "NULL"

    .line 50
    return-object p0

    .line 51
    :cond_32
    const-string p0, "OCTET STRING"

    .line 53
    return-object p0

    .line 54
    :cond_35
    const-string p0, "INTEGER"

    .line 56
    return-object p0
.end method
