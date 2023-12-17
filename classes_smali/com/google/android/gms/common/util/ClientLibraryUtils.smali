.class public Lcom/google/android/gms/common/util/ClientLibraryUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 4
    move-result-object p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eqz p0, :cond_18

    .line 8
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    if-nez p0, :cond_c

    .line 12
    goto :goto_18

    .line 13
    :cond_c
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 15
    if-nez p0, :cond_11

    .line 17
    return p1

    .line 18
    :cond_11
    const-string v0, "com.google.android.gms.version"

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_18
    :goto_18
    return p1
.end method

.method public static isPackageSide()Z
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x80

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    return-object p0

    .line 12
    :catch_b
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "com.google.android.gms"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_6
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_17

    .line 17
    const/high16 p1, 0x200000

    .line 19
    and-int/2addr p0, p1

    .line 20
    if-eqz p0, :cond_17

    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :catch_17
    :cond_17
    return v0
.end method
