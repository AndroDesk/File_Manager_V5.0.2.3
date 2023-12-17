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
.method public constructor <init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 9
    iput-object v0, p0, Lg4/b;->c:Ljava/security/SecureRandom;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lg4/b;->e:I

    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lg4/b;->f:I

    .line 17
    if-eqz p1, :cond_c3

    .line 19
    array-length v1, p1

    .line 20
    if-eqz v1, :cond_c3

    .line 22
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 24
    if-eq p2, v1, :cond_26

    .line 26
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 28
    if-ne p2, v1, :cond_1e

    .line 30
    goto :goto_26

    .line 31
    :cond_1e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 33
    const-string p2, "Invalid AES key strength"

    .line 35
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1

    .line 39
    :cond_26
    :goto_26
    iput-boolean v0, p0, Lg4/b;->d:Z

    .line 41
    const/16 v1, 0x10

    .line 43
    new-array v2, v1, [B

    .line 45
    iput-object v2, p0, Lg4/b;->h:[B

    .line 47
    new-array v2, v1, [B

    .line 49
    iput-object v2, p0, Lg4/b;->g:[B

    .line 51
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    .line 54
    move-result v2

    .line 55
    const/16 v3, 0x8

    .line 57
    if-eq v2, v3, :cond_45

    .line 59
    if-ne v2, v1, :cond_3d

    .line 61
    goto :goto_45

    .line 62
    :cond_3d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 64
    const-string p2, "invalid salt size, cannot generate salt"

    .line 66
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    :cond_45
    :goto_45
    const/4 v1, 0x2

    .line 71
    if-ne v2, v3, :cond_4a

    .line 73
    move v3, v1

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    const/4 v3, 0x4

    .line 76
    :goto_4b
    new-array v2, v2, [B

    .line 78
    move v4, v0

    .line 79
    :goto_4e
    if-ge v4, v3, :cond_73

    .line 81
    iget-object v5, p0, Lg4/b;->c:Ljava/security/SecureRandom;

    .line 83
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    .line 86
    move-result v5

    .line 87
    mul-int/lit8 v6, v4, 0x4

    .line 89
    shr-int/lit8 v7, v5, 0x18

    .line 91
    int-to-byte v7, v7

    .line 92
    aput-byte v7, v2, v6

    .line 94
    add-int/lit8 v7, v6, 0x1

    .line 96
    shr-int/lit8 v8, v5, 0x10

    .line 98
    int-to-byte v8, v8

    .line 99
    aput-byte v8, v2, v7

    .line 101
    add-int/lit8 v7, v6, 0x2

    .line 103
    shr-int/lit8 v8, v5, 0x8

    .line 105
    int-to-byte v8, v8

    .line 106
    aput-byte v8, v2, v7

    .line 108
    add-int/lit8 v6, v6, 0x3

    .line 110
    int-to-byte v5, v5

    .line 111
    aput-byte v5, v2, v6

    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 115
    goto :goto_4e

    .line 116
    :cond_73
    iput-object v2, p0, Lg4/b;->j:[B

    .line 118
    invoke-static {v2, p1, p2, p3}, La/b;->u([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B

    .line 121
    move-result-object p1

    .line 122
    new-array p3, v1, [B

    .line 124
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    .line 127
    move-result v2

    .line 128
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    .line 131
    move-result v3

    .line 132
    add-int/2addr v3, v2

    .line 133
    invoke-static {p1, v3, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iput-object p3, p0, Lg4/b;->i:[B

    .line 138
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    .line 141
    move-result p3

    .line 142
    new-array v1, p3, [B

    .line 144
    invoke-static {p1, v0, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    new-instance p3, Li4/a;

    .line 149
    invoke-direct {p3, v1}, Li4/a;-><init>([B)V

    .line 152
    iput-object p3, p0, Lg4/b;->a:Li4/a;

    .line 154
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    .line 157
    move-result p3

    .line 158
    new-array v1, p3, [B

    .line 160
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    .line 163
    move-result p2

    .line 164
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    new-instance p1, Lh4/a;

    .line 169
    const-string p2, "HmacSHA1"

    .line 171
    invoke-direct {p1, p2}, Lh4/a;-><init>(Ljava/lang/String;)V

    .line 174
    :try_start_ad
    iget-object p2, p1, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 176
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 178
    iget-object v0, p1, Lh4/a;->c:Ljava/lang/String;

    .line 180
    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    invoke-virtual {p2, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_b9
    .catch Ljava/security/InvalidKeyException; {:try_start_ad .. :try_end_b9} :catch_bc

    .line 186
    iput-object p1, p0, Lg4/b;->b:Lh4/a;

    .line 188
    return-void

    .line 189
    :catch_bc
    move-exception p1

    .line 190
    new-instance p2, Ljava/lang/RuntimeException;

    .line 192
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 195
    throw p2

    .line 196
    :cond_c3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 198
    const-string p2, "input password is empty or null"

    .line 200
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 203
    throw p1
.end method


# virtual methods
.method public final a(I[BI)I
    .registers 12

    .line 1
    iget-boolean v0, p0, Lg4/b;->d:Z

    .line 3
    if-nez v0, :cond_66

    .line 5
    rem-int/lit8 v0, p3, 0x10

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_b

    .line 10
    iput-boolean v1, p0, Lg4/b;->d:Z

    .line 12
    :cond_b
    move v0, p1

    .line 13
    :goto_c
    add-int v2, p1, p3

    .line 15
    if-ge v0, v2, :cond_65

    .line 17
    add-int/lit8 v3, v0, 0x10

    .line 19
    if-gt v3, v2, :cond_17

    .line 21
    const/16 v2, 0x10

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    sub-int/2addr v2, v0

    .line 25
    :goto_18
    iput v2, p0, Lg4/b;->f:I

    .line 27
    iget-object v2, p0, Lg4/b;->g:[B

    .line 29
    iget v4, p0, Lg4/b;->e:I

    .line 31
    invoke-static {v4, v2}, La/b;->U(I[B)V

    .line 34
    iget-object v2, p0, Lg4/b;->a:Li4/a;

    .line 36
    iget-object v4, p0, Lg4/b;->g:[B

    .line 38
    iget-object v5, p0, Lg4/b;->h:[B

    .line 40
    invoke-virtual {v2, v4, v5}, Li4/a;->a([B[B)V

    .line 43
    const/4 v2, 0x0

    .line 44
    move v4, v2

    .line 45
    :goto_2c
    iget v5, p0, Lg4/b;->f:I

    .line 47
    if-ge v4, v5, :cond_3f

    .line 49
    add-int v5, v0, v4

    .line 51
    aget-byte v6, p2, v5

    .line 53
    iget-object v7, p0, Lg4/b;->h:[B

    .line 55
    aget-byte v7, v7, v4

    .line 57
    xor-int/2addr v6, v7

    .line 58
    int-to-byte v6, v6

    .line 59
    aput-byte v6, p2, v5

    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 63
    goto :goto_2c

    .line 64
    :cond_3f
    iget-object v4, p0, Lg4/b;->b:Lh4/a;

    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    :try_start_44
    iget-object v6, v4, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 71
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 74
    move-result v6

    .line 75
    add-int/2addr v6, v5

    .line 76
    const/16 v7, 0x1000

    .line 78
    if-le v6, v7, :cond_52

    .line 80
    invoke-virtual {v4, v2}, Lh4/a;->a(I)V

    .line 83
    :cond_52
    iget-object v2, v4, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 85
    invoke-virtual {v2, p2, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_57
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_57} :catch_5e

    .line 88
    iget v0, p0, Lg4/b;->e:I

    .line 90
    add-int/2addr v0, v1

    .line 91
    iput v0, p0, Lg4/b;->e:I

    .line 93
    move v0, v3

    .line 94
    goto :goto_c

    .line 95
    :catch_5e
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/RuntimeException;

    .line 98
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    throw p2

    .line 102
    :cond_65
    return p3

    .line 103
    :cond_66
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 105
    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    .line 107
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1
.end method
