.class public Lcom/xiaomi/stat/d/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "RsaUtils"

.field private static final b:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final c:Ljava/lang/String; = "BC"

.field private static final d:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/security/interfaces/RSAPublicKey;
    .registers 3

    const-string v0, "RSA"

    .line 6
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    return-object p0
.end method

.method public static a([B[B)[B
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/o;->a([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p0

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 2
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1c

    :catch_13
    move-exception p0

    const-string p1, "RsaUtils"

    const-string v0, "RsaUtils encrypt exception:"

    .line 5
    invoke-static {p1, v0, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_1c
    return-object p0
.end method
