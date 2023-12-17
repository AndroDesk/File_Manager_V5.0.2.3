.class public final Lg4/b;
.super Ljava/lang/Object;
.source "AESEncrypter.java"

# interfaces
.implements Lg4/d;


# instance fields
.field public a:Li4/a;

.field public b:Lh4/a;

.field public final c:Ljava/security/SecureRandom;

.field public d:Z

.field public e:I

.field public f:I

.field public final g:[B

.field public final h:[B

.field public i:[B

.field public j:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lg4/b;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x1

    iput v0, p0, Lg4/b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lg4/b;->f:I

    if-eqz p1, :cond_c3

    array-length v1, p1

    if-eqz v1, :cond_c3

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eq p2, v1, :cond_26

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne p2, v1, :cond_1e

    goto :goto_26

    :cond_1e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid AES key strength"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    iput-boolean v0, p0, Lg4/b;->d:Z

    const/16 v1, 0x10

    new-array v2, v1, [B

    iput-object v2, p0, Lg4/b;->h:[B

    new-array v2, v1, [B

    iput-object v2, p0, Lg4/b;->g:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_45

    if-ne v2, v1, :cond_3d

    goto :goto_45

    :cond_3d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid salt size, cannot generate salt"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    :goto_45
    const/4 v1, 0x2

    if-ne v2, v3, :cond_4a

    move v3, v1

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x4

    :goto_4b
    new-array v2, v2, [B

    move v4, v0

    :goto_4e
    if-ge v4, v3, :cond_73

    iget-object v5, p0, Lg4/b;->c:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    mul-int/lit8 v6, v4, 0x4

    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x3

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_73
    iput-object v2, p0, Lg4/b;->j:[B

    invoke-static {v2, p1, p2, p3}, La/b;->u([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B

    move-result-object p1

    new-array p3, v1, [B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p1, v3, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lg4/b;->i:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result p3

    new-array v1, p3, [B

    invoke-static {p1, v0, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p3, Li4/a;

    invoke-direct {p3, v1}, Li4/a;-><init>([B)V

    iput-object p3, p0, Lg4/b;->a:Li4/a;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result p3

    new-array v1, p3, [B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result p2

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lh4/a;

    const-string p2, "HmacSHA1"

    invoke-direct {p1, p2}, Lh4/a;-><init>(Ljava/lang/String;)V

    :try_start_ad
    iget-object p2, p1, Lh4/a;->a:Ljavax/crypto/Mac;

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p1, Lh4/a;->c:Ljava/lang/String;

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_b9
    .catch Ljava/security/InvalidKeyException; {:try_start_ad .. :try_end_b9} :catch_bc

    iput-object p1, p0, Lg4/b;->b:Lh4/a;

    return-void

    :catch_bc
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_c3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is empty or null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 12

    iget-boolean v0, p0, Lg4/b;->d:Z

    if-nez v0, :cond_66

    rem-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lg4/b;->d:Z

    :cond_b
    move v0, p1

    :goto_c
    add-int v2, p1, p3

    if-ge v0, v2, :cond_65

    add-int/lit8 v3, v0, 0x10

    if-gt v3, v2, :cond_17

    const/16 v2, 0x10

    goto :goto_18

    :cond_17
    sub-int/2addr v2, v0

    :goto_18
    iput v2, p0, Lg4/b;->f:I

    iget-object v2, p0, Lg4/b;->g:[B

    iget v4, p0, Lg4/b;->e:I

    invoke-static {v4, v2}, La/b;->U(I[B)V

    iget-object v2, p0, Lg4/b;->a:Li4/a;

    iget-object v4, p0, Lg4/b;->g:[B

    iget-object v5, p0, Lg4/b;->h:[B

    invoke-virtual {v2, v4, v5}, Li4/a;->a([B[B)V

    const/4 v2, 0x0

    move v4, v2

    :goto_2c
    iget v5, p0, Lg4/b;->f:I

    if-ge v4, v5, :cond_3f

    add-int v5, v0, v4

    aget-byte v6, p2, v5

    iget-object v7, p0, Lg4/b;->h:[B

    aget-byte v7, v7, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3f
    iget-object v4, p0, Lg4/b;->b:Lh4/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_44
    iget-object v6, v4, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v6, v5

    const/16 v7, 0x1000

    if-le v6, v7, :cond_52

    invoke-virtual {v4, v2}, Lh4/a;->a(I)V

    :cond_52
    iget-object v2, v4, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p2, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_57
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_57} :catch_5e

    iget v0, p0, Lg4/b;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lg4/b;->e:I

    move v0, v3

    goto :goto_c

    :catch_5e
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return p3

    :cond_66
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
