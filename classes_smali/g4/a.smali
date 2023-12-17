.class public final Lg4/a;
.super Ljava/lang/Object;
.source "AESDecrypter.java"

# interfaces
.implements Lg4/c;


# instance fields
.field public a:Li4/a;

.field public b:Lh4/a;

.field public c:I

.field public d:[B

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm4/a;Z[B[B[C)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lg4/a;->c:I

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lg4/a;->d:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lg4/a;->e:[B

    if-eqz p5, :cond_75

    array-length v0, p5

    if-lez v0, :cond_75

    iget-object p1, p1, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-static {p3, p5, p1, p2}, La/b;->u([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B

    move-result-object p2

    const/4 p3, 0x2

    new-array p5, p3, [B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {p2, v1, p5, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, p5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_6b

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result p3

    new-array p4, p3, [B

    invoke-static {p2, v0, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p3, Li4/a;

    invoke-direct {p3, p4}, Li4/a;-><init>([B)V

    iput-object p3, p0, Lg4/a;->a:Li4/a;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result p3

    new-array p4, p3, [B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result p1

    invoke-static {p2, p1, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lh4/a;

    const-string p2, "HmacSHA1"

    invoke-direct {p1, p2}, Lh4/a;-><init>(Ljava/lang/String;)V

    :try_start_55
    iget-object p2, p1, Lh4/a;->a:Ljavax/crypto/Mac;

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p5, p1, Lh4/a;->c:Ljava/lang/String;

    invoke-direct {p3, p4, p5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_61
    .catch Ljava/security/InvalidKeyException; {:try_start_55 .. :try_end_61} :catch_64

    iput-object p1, p0, Lg4/a;->b:Lh4/a;

    return-void

    :catch_64
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string p3, "Wrong Password"

    invoke-direct {p1, p3, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p1

    :cond_75
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string p3, "empty or null password provided for AES decryption"

    invoke-direct {p1, p3, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 11

    move v0, p1

    :goto_1
    add-int v1, p1, p3

    if-ge v0, v1, :cond_56

    add-int/lit8 v2, v0, 0x10

    if-gt v2, v1, :cond_c

    const/16 v1, 0x10

    goto :goto_d

    :cond_c
    sub-int/2addr v1, v0

    :goto_d
    iget-object v3, p0, Lg4/a;->b:Lh4/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_12
    iget-object v4, v3, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v1

    const/16 v5, 0x1000

    const/4 v6, 0x0

    if-le v4, v5, :cond_21

    invoke-virtual {v3, v6}, Lh4/a;->a(I)V

    :cond_21
    iget-object v3, v3, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_26} :catch_4f

    iget-object v3, p0, Lg4/a;->d:[B

    iget v4, p0, Lg4/a;->c:I

    invoke-static {v4, v3}, La/b;->U(I[B)V

    iget-object v3, p0, Lg4/a;->a:Li4/a;

    iget-object v4, p0, Lg4/a;->d:[B

    iget-object v5, p0, Lg4/a;->e:[B

    invoke-virtual {v3, v4, v5}, Li4/a;->a([B[B)V

    :goto_36
    if-ge v6, v1, :cond_47

    add-int v3, v0, v6

    aget-byte v4, p2, v3

    iget-object v5, p0, Lg4/a;->e:[B

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_47
    iget v0, p0, Lg4/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg4/a;->c:I

    move v0, v2

    goto :goto_1

    :catch_4f
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_56
    return p3
.end method
