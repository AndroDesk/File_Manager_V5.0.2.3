.class public Lmiuix/internal/hybrid/SignUtils;
.super Ljava/lang/Object;
.source "SignUtils.java"


# static fields
.field public static final CIPHER_RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final FLAG_CRLF:I = 0x4

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_NO_CLOSE:I = 0x10

.field public static final FLAG_NO_PADDING:I = 0x1

.field public static final FLAG_NO_WRAP:I = 0x2

.field public static final FLAG_URL_SAFE:I = 0x8

.field public static final KEY_RSA:Ljava/lang/String; = "RSA"

.field public static final SIGNATURE_MD5_WITH_RSA:Ljava/lang/String; = "MD5withRSA"

.field public static final SIGNATURE_SHA1_WITH_RSA:Ljava/lang/String; = "SHA1withRSA"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 2

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lmiuix/internal/hybrid/SignUtils;->getPrivateKey(Ljava/lang/String;I)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/lang/String;I)Ljava/security/PrivateKey;
    .registers 2

    .line 3
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 4
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-static {p1}, Lmiuix/internal/hybrid/SignUtils;->getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 2

    const-string v0, "RSA"

    .line 1
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 2

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lmiuix/internal/hybrid/SignUtils;->getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/lang/String;I)Ljava/security/PublicKey;
    .registers 2

    .line 3
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 4
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p1}, Lmiuix/internal/hybrid/SignUtils;->getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 2

    const-string v0, "RSA"

    .line 1
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .registers 3

    const-string v0, "SHA1withRSA"

    .line 7
    invoke-static {p0, p1, v0}, Lmiuix/internal/hybrid/SignUtils;->sign(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Lmiuix/internal/hybrid/SignUtils;->sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static sign([BLjava/security/PrivateKey;)[B
    .registers 3

    const-string v0, "SHA1withRSA"

    .line 5
    invoke-static {p0, p1, v0}, Lmiuix/internal/hybrid/SignUtils;->sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sign([BLjava/security/PrivateKey;Ljava/lang/String;)[B
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 3
    invoke-virtual {p2, p0}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0
.end method

.method public static verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "SHA1withRSA"

    .line 7
    invoke-static {p0, p1, p2, v0}, Lmiuix/internal/hybrid/SignUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lmiuix/internal/hybrid/SignUtils;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static verify([BLjava/security/PublicKey;[B)Z
    .registers 4

    const-string v0, "SHA1withRSA"

    .line 5
    invoke-static {p0, p1, p2, v0}, Lmiuix/internal/hybrid/SignUtils;->verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static verify([BLjava/security/PublicKey;[BLjava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p3

    .line 2
    invoke-virtual {p3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 3
    invoke-virtual {p3, p0}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {p3, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method
