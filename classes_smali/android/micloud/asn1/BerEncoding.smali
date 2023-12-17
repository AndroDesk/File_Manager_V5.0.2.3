.class public abstract Landroid/micloud/asn1/BerEncoding;
.super Ljava/lang/Object;
.source "BerEncoding.java"


# static fields
.field public static final ID_FLAG_CONSTRUCTED_ENCODING:I

.field public static final TAG_CLASS_APPLICATION:I

.field public static final TAG_CLASS_CONTEXT_SPECIFIC:I

.field public static final TAG_CLASS_PRIVATE:I

.field public static final TAG_CLASS_UNIVERSAL:I

.field public static final TAG_NUMBER_INTEGER:I

.field public static final TAG_NUMBER_NULL:I

.field public static final TAG_NUMBER_OBJECT_IDENTIFIER:I

.field public static final TAG_NUMBER_OCTET_STRING:I

.field public static final TAG_NUMBER_SEQUENCE:I

.field public static final TAG_NUMBER_SET:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->ID_FLAG_CONSTRUCTED_ENCODING:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_CLASS_APPLICATION:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_CLASS_CONTEXT_SPECIFIC:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_CLASS_PRIVATE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_CLASS_UNIVERSAL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_NUMBER_INTEGER:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_NUMBER_NULL:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_NUMBER_OBJECT_IDENTIFIER:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_NUMBER_OCTET_STRING:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_NUMBER_SEQUENCE:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroid/micloud/asn1/BerEncoding;->TAG_NUMBER_SET:I

    return-void
.end method

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

    invoke-static {p0}, Landroid/micloud/asn1/BerEncoding;->tagClassToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/micloud/asn1/BerEncoding;->tagNumberToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    const-string v0, " "

    invoke-static {p0, v0, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_15
    return-object p1
.end method

.method public static tagClassToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    const-string p0, "PRIVATE"

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported type class: "

    invoke-static {v1, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-string p0, ""

    return-object p0

    :cond_1d
    const-string p0, "APPLICATION"

    return-object p0

    :cond_20
    const-string p0, "UNIVERSAL"

    return-object p0
.end method

.method public static tagNumberToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_35

    const/4 v0, 0x4

    if-eq p0, v0, :cond_32

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x10

    if-eq p0, v0, :cond_29

    const/16 v0, 0x11

    if-eq p0, v0, :cond_26

    const-string v0, "0x"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const-string p0, "SET"

    return-object p0

    :cond_29
    const-string p0, "SEQUENCE"

    return-object p0

    :cond_2c
    const-string p0, "OBJECT IDENTIFIER"

    return-object p0

    :cond_2f
    const-string p0, "NULL"

    return-object p0

    :cond_32
    const-string p0, "OCTET STRING"

    return-object p0

    :cond_35
    const-string p0, "INTEGER"

    return-object p0
.end method
