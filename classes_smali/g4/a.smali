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
.method public constructor <init>(Lm4/a;Z[B[B[C)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lg4/a;->c:I

    .line 7
    const/16 v0, 0x10

    .line 9
    new-array v1, v0, [B

    .line 11
    iput-object v1, p0, Lg4/a;->d:[B

    .line 13
    new-array v0, v0, [B

    .line 15
    iput-object v0, p0, Lg4/a;->e:[B

    .line 17
    if-eqz p5, :cond_75

    .line 19
    array-length v0, p5

    .line 20
    if-lez v0, :cond_75

    .line 22
    iget-object p1, p1, Lm4/a;->e:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 24
    invoke-static {p3, p5, p1, p2}, La/b;->u([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B

    .line 27
    move-result-object p2

    .line 28
    const/4 p3, 0x2

    .line 29
    new-array p5, p3, [B

    .line 31
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, v0

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p2, v1, p5, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-static {p4, p5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_6b

    .line 50
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    .line 53
    move-result p3

    .line 54
    new-array p4, p3, [B

    .line 56
    invoke-static {p2, v0, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    new-instance p3, Li4/a;

    .line 61
    invoke-direct {p3, p4}, Li4/a;-><init>([B)V

    .line 64
    iput-object p3, p0, Lg4/a;->a:Li4/a;

    .line 66
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    .line 69
    move-result p3

    .line 70
    new-array p4, p3, [B

    .line 72
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    .line 75
    move-result p1

    .line 76
    invoke-static {p2, p1, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance p1, Lh4/a;

    .line 81
    const-string p2, "HmacSHA1"

    .line 83
    invoke-direct {p1, p2}, Lh4/a;-><init>(Ljava/lang/String;)V

    .line 86
    :try_start_55
    iget-object p2, p1, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 88
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 90
    iget-object p5, p1, Lh4/a;->c:Ljava/lang/String;

    .line 92
    invoke-direct {p3, p4, p5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 95
    invoke-virtual {p2, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_61
    .catch Ljava/security/InvalidKeyException; {:try_start_55 .. :try_end_61} :catch_64

    .line 98
    iput-object p1, p0, Lg4/a;->b:Lh4/a;

    .line 100
    return-void

    .line 101
    :catch_64
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/RuntimeException;

    .line 104
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    throw p2

    .line 108
    :cond_6b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 110
    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 112
    const-string p3, "Wrong Password"

    .line 114
    invoke-direct {p1, p3, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 117
    throw p1

    .line 118
    :cond_75
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 120
    sget-object p2, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 122
    const-string p3, "empty or null password provided for AES decryption"

    .line 124
    invoke-direct {p1, p3, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 127
    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 11

    .line 1
    move v0, p1

    .line 2
    :goto_1
    add-int v1, p1, p3

    .line 4
    if-ge v0, v1, :cond_56

    .line 6
    add-int/lit8 v2, v0, 0x10

    .line 8
    if-gt v2, v1, :cond_c

    .line 10
    const/16 v1, 0x10

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    sub-int/2addr v1, v0

    .line 14
    :goto_d
    iget-object v3, p0, Lg4/a;->b:Lh4/a;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :try_start_12
    iget-object v4, v3, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 21
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 24
    move-result v4

    .line 25
    add-int/2addr v4, v1

    .line 26
    const/16 v5, 0x1000

    .line 28
    const/4 v6, 0x0

    .line 29
    if-le v4, v5, :cond_21

    .line 31
    invoke-virtual {v3, v6}, Lh4/a;->a(I)V

    .line 34
    :cond_21
    iget-object v3, v3, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 36
    invoke-virtual {v3, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_26} :catch_4f

    .line 39
    iget-object v3, p0, Lg4/a;->d:[B

    .line 41
    iget v4, p0, Lg4/a;->c:I

    .line 43
    invoke-static {v4, v3}, La/b;->U(I[B)V

    .line 46
    iget-object v3, p0, Lg4/a;->a:Li4/a;

    .line 48
    iget-object v4, p0, Lg4/a;->d:[B

    .line 50
    iget-object v5, p0, Lg4/a;->e:[B

    .line 52
    invoke-virtual {v3, v4, v5}, Li4/a;->a([B[B)V

    .line 55
    :goto_36
    if-ge v6, v1, :cond_47

    .line 57
    add-int v3, v0, v6

    .line 59
    aget-byte v4, p2, v3

    .line 61
    iget-object v5, p0, Lg4/a;->e:[B

    .line 63
    aget-byte v5, v5, v6

    .line 65
    xor-int/2addr v4, v5

    .line 66
    int-to-byte v4, v4

    .line 67
    aput-byte v4, p2, v3

    .line 69
    add-int/lit8 v6, v6, 0x1

    .line 71
    goto :goto_36

    .line 72
    :cond_47
    iget v0, p0, Lg4/a;->c:I

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 76
    iput v0, p0, Lg4/a;->c:I

    .line 78
    move v0, v2

    .line 79
    goto :goto_1

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/RuntimeException;

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    throw p2

    .line 87
    :cond_56
    return p3
.end method
