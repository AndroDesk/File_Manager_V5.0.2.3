.class public Lcom/miui/maml/util/net/CloudCoder;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# static fields
.field private static final INT_0:Ljava/lang/Integer;

.field private static final RC4_ALGORITHM_NAME:Ljava/lang/String; = "RC4"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/miui/maml/util/net/CloudCoder;->INT_0:Ljava/lang/Integer;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8a

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    if-eqz p0, :cond_14

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_14
    if-eqz p1, :cond_21

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_21
    const/4 p0, 0x0

    .line 35
    const/4 p1, 0x1

    .line 36
    if-eqz p2, :cond_5d

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_5d

    .line 44
    new-instance v1, Ljava/util/TreeMap;

    .line 46
    invoke-direct {v1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 49
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p2

    .line 57
    :goto_38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_5d

    .line 63
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    const/4 v2, 0x2

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    aput-object v3, v2, p0

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    aput-object v1, v2, p1

    .line 84
    const-string v1, "%s=%s"

    .line 86
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_38

    .line 94
    :cond_5d
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p3

    .line 106
    :goto_69
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_81

    .line 112
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 118
    if-nez p1, :cond_7c

    .line 120
    const/16 p1, 0x26

    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :cond_7c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    move p1, p0

    .line 129
    goto :goto_69

    .line 130
    :cond_81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/miui/maml/util/net/CloudCoder;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_8a
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 141
    const-string p1, "security is not nullable"

    .line 143
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0
.end method

.method public static hash4SHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "SHA1"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "UTF-8"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 21
    move-result-object p0
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_15} :catch_16

    .line 22
    return-object p0

    .line 23
    :catch_16
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    goto :goto_1f

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :goto_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    const-string v0, "failed to SHA1"

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
.end method

.method public static newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    move-result-object p0

    .line 6
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    const-string v1, "AES"

    .line 10
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    :try_start_c
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 15
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 18
    move-result-object p0

    .line 19
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 21
    const-string v2, "0102030405060708"

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 30
    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_20} :catch_30
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_20} :catch_2b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_20} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_20} :catch_21

    .line 33
    return-object p0

    .line 34
    :catch_21
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    goto :goto_34

    .line 39
    :catch_26
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    goto :goto_34

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    goto :goto_34

    .line 49
    :catch_30
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :goto_34
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method
