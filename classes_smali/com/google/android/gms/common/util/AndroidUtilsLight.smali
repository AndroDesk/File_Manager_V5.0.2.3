.class public Lcom/google/android/gms/common/util/AndroidUtilsLight;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static volatile zzgf:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/common/zzg;->zzam()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/common/zzg;->getDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 11
    :cond_a
    return-object p0
.end method

.method public static getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x40

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    move-result-object p0

    .line 11
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 13
    if-eqz p1, :cond_28

    .line 15
    array-length p1, p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_28

    .line 19
    const-string p1, "SHA1"

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zzj(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_28

    .line 27
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object p0, p0, v0

    .line 32
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_28
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static zzj(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_e

    .line 5
    :try_start_4
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    move-result-object v1
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_8} :catch_b

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-object v1

    .line 12
    :catch_b
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
