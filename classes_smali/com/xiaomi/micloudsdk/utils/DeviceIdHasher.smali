.class public Lcom/xiaomi/micloudsdk/utils/DeviceIdHasher;
.super Ljava/lang/Object;
.source "DeviceIdHasher.java"


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

.method public static hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/DeviceIdHasher;->hashDeviceInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hashDeviceInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :try_start_4
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed to init SHA1 digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
