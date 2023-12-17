.class public Lcom/xiaomi/keychainsdk/util/AndroidKeyStoreUtil;
.super Ljava/lang/Object;
.source "AndroidKeyStoreUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/security/KeyStore;
    .registers 2

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_a} :catch_20
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_a} :catch_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_12
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_20
    move-exception v0

    new-instance v1, Lcom/xiaomi/keychainsdk/exception/CryptoException;

    invoke-direct {v1, v0}, Lcom/xiaomi/keychainsdk/exception/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getKeyGeneratorProvider()Ljava/lang/String;
    .registers 1

    const-string v0, "AndroidKeyStore"

    return-object v0
.end method
