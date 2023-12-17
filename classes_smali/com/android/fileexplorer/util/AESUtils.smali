.class public Lcom/android/fileexplorer/util/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/AESUtils$Base64Utils;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CACHE_SIZE:I = 0x400

.field private static final KEY_SIZE:I = 0x80


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/AESUtils;->encrypt([B[B)[B

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/android/fileexplorer/util/AESUtils$Base64Utils;->encode([B)Ljava/lang/String;

    .line 26
    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 27
    return-object p0

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static decrypt([B[B)[B
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/util/AESUtils;->toKey([B)Ljava/security/Key;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 11
    const-string v1, "AES"

    .line 13
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 24
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private static encrypt([B[B)[B
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/util/AESUtils;->toKey([B)Ljava/security/Key;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 11
    const-string v1, "AES"

    .line 13
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 24
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/util/AESUtils;->getSecretKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "AES"

    .line 2
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    if-eqz p0, :cond_1a

    const-string v1, ""

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/SecureRandom;-><init>([B)V

    goto :goto_1f

    :cond_1a
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    :goto_1f
    const/16 p0, 0x80

    .line 4
    invoke-virtual {v0, p0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 5
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/AESUtils$Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toKey([B)Ljava/security/Key;
    .registers 3

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 3
    const-string v1, "AES"

    .line 5
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 8
    return-object v0
.end method
