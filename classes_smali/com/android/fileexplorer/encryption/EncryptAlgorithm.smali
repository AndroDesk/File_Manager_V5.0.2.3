.class public Lcom/android/fileexplorer/encryption/EncryptAlgorithm;
.super Ljava/lang/Object;
.source "EncryptAlgorithm.java"


# static fields
.field private static final ALIAS:Ljava/lang/String; = "FileExplorer_AES"

.field private static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final PARAMS_IV:Ljava/lang/String; = "FileExplorer_AES"

.field private static final TAG:Ljava/lang/String; = "EncryptAlgorithm"

.field private static final TRANSFORMATION:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static iv:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSecretKey()Ljavax/crypto/SecretKey;
    .registers 7

    .line 1
    const-string v0, "AndroidKeyStore"

    .line 3
    const-string v1, "FileExplorer_AES"

    .line 5
    const-string v2, "EncryptAlgorithm"

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_7
    const-string v4, "AES"

    .line 10
    invoke-static {v4, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 13
    move-result-object v4

    .line 14
    new-instance v5, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 16
    const/4 v6, 0x3

    .line 17
    invoke-direct {v5, v1, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 20
    const-string v6, "CBC"

    .line 22
    filled-new-array {v6}, [Ljava/lang/String;

    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 29
    move-result-object v5

    .line 30
    const-string v6, "NoPadding"

    .line 32
    filled-new-array {v6}, [Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 58
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_43

    .line 64
    invoke-virtual {v0, v1, v4, v3, v3}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 67
    goto :goto_48

    .line 68
    :cond_43
    const-string v0, "createSecretKey, hasKey, return."

    .line 70
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_48} :catch_84
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_48} :catch_6e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_48} :catch_58
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_48} :catch_53
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_48} :catch_4e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_48} :catch_49

    .line 73
    :goto_48
    return-object v4

    .line 74
    :catch_49
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    goto :goto_99

    .line 79
    :catch_4e
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    goto :goto_99

    .line 84
    :catch_53
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    goto :goto_99

    .line 89
    :catch_58
    move-exception v0

    .line 90
    const-string v1, "createSecretKey InvalidAlgorithmParameterException e: "

    .line 92
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto :goto_99

    .line 111
    :catch_6e
    move-exception v0

    .line 112
    const-string v1, "createSecretKey NoSuchProviderException e: "

    .line 114
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    goto :goto_99

    .line 133
    :catch_84
    move-exception v0

    .line 134
    const-string v1, "createSecretKey NoSuchAlgorithmException e: "

    .line 136
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_99
    return-object v3
.end method

.method public static decrypt([B)[B
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "AES/CBC/NoPadding"

    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptAlgorithm;->getKey()Ljavax/crypto/SecretKey;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 15
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 18
    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 19
    return-object p0

    .line 20
    :catch_13
    move-exception p0

    .line 21
    const-string v0, "decrypt error: "

    .line 23
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    const-string v0, "EncryptAlgorithm"

    .line 40
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public static encrypt([B)[B
    .registers 6

    .line 1
    const-string v0, "EncryptAlgorithm"

    .line 3
    :try_start_2
    const-string v1, "AES/CBC/NoPadding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptAlgorithm;->getKey()Ljavax/crypto/SecretKey;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 17
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    .line 20
    move-result-object v2

    .line 21
    sput-object v2, Lcom/android/fileexplorer/encryption/EncryptAlgorithm;->iv:[B

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v3, "encrypt: iv = "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v3, Ljava/lang/String;

    .line 35
    sget-object v4, Lcom/android/fileexplorer/encryption/EncryptAlgorithm;->iv:[B

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 53
    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    .line 54
    return-object p0

    .line 55
    :catch_36
    move-exception p0

    .line 56
    const-string v1, "encrypt error: "

    .line 58
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method

.method private static getIV()[B
    .registers 3

    .line 1
    const-string v0, "FileExplorer_AES"

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "getIV: params = "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "EncryptAlgorithm"

    .line 26
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    .line 30
    const/16 v2, 0x10

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method private static getKey()Ljavax/crypto/SecretKey;
    .registers 4

    .line 1
    const-string v0, "FileExplorer_AES"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    const-string v2, "AndroidKeyStore"

    .line 6
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 13
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1e

    .line 19
    const-string v3, "getKey, hasKey."

    .line 21
    invoke-static {v3}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljavax/crypto/SecretKey;

    .line 30
    return-object v0

    .line 31
    :cond_1e
    invoke-static {}, Lcom/android/fileexplorer/encryption/EncryptAlgorithm;->createSecretKey()Ljavax/crypto/SecretKey;

    .line 34
    move-result-object v0
    :try_end_22
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_22} :catch_37
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_22} :catch_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_22} :catch_2d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_22} :catch_28
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_22} :catch_23

    .line 35
    return-object v0

    .line 36
    :catch_23
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    goto :goto_3b

    .line 41
    :catch_28
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    goto :goto_3b

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    goto :goto_3b

    .line 51
    :catch_32
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    goto :goto_3b

    .line 56
    :catch_37
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :goto_3b
    return-object v1
.end method
