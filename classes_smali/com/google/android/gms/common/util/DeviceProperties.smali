.class public final Lcom/google/android/gms/common/util/DeviceProperties;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zzgn:Ljava/lang/Boolean;

.field private static zzgo:Ljava/lang/Boolean;

.field private static zzgp:Ljava/lang/Boolean;

.field private static zzgq:Ljava/lang/Boolean;

.field private static zzgr:Ljava/lang/Boolean;

.field private static zzgs:Ljava/lang/Boolean;

.field private static zzgt:Ljava/lang/Boolean;

.field private static zzgu:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuto(Landroid/content/Context;)Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgt:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1f

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object p0

    .line 15
    const-string v0, "android.hardware.type.automotive"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object p0

    .line 30
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgt:Ljava/lang/Boolean;

    .line 32
    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgt:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public static isLatchsky(Landroid/content/Context;)Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgr:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_21

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "com.google.android.feature.services_updater"

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1a

    .line 17
    const-string v0, "cn.google.services"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1a

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    :goto_1b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object p0

    .line 32
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgr:Ljava/lang/Boolean;

    .line 34
    :cond_21
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgr:Ljava/lang/Boolean;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static isSidewinder(Landroid/content/Context;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgq:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1f

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object p0

    .line 15
    const-string v0, "cn.google"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object p0

    .line 30
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgq:Ljava/lang/Boolean;

    .line 32
    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgq:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public static isTablet(Landroid/content/res/Resources;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzgn:Ljava/lang/Boolean;

    .line 7
    if-nez v1, :cond_45

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 15
    and-int/lit8 v1, v1, 0xf

    .line 17
    const/4 v2, 0x3

    .line 18
    const/4 v3, 0x1

    .line 19
    if-le v1, v2, :cond_16

    .line 21
    move v1, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v0

    .line 24
    :goto_17
    if-nez v1, :cond_3e

    .line 26
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzgo:Ljava/lang/Boolean;

    .line 28
    if-nez v1, :cond_36

    .line 30
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 33
    move-result-object p0

    .line 34
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 36
    and-int/lit8 v1, v1, 0xf

    .line 38
    if-gt v1, v2, :cond_2f

    .line 40
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 42
    const/16 v1, 0x258

    .line 44
    if-lt p0, v1, :cond_2f

    .line 46
    move p0, v3

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move p0, v0

    .line 49
    :goto_30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object p0

    .line 53
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgo:Ljava/lang/Boolean;

    .line 55
    :cond_36
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgo:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3f

    .line 63
    :cond_3e
    move v0, v3

    .line 64
    :cond_3f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object p0

    .line 68
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgn:Ljava/lang/Boolean;

    .line 70
    :cond_45
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgn:Ljava/lang/Boolean;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgu:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_2a

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "com.google.android.tv"

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_23

    .line 17
    const-string v0, "android.hardware.type.television"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_23

    .line 25
    const-string v0, "android.software.leanback"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_21

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/4 p0, 0x0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    :goto_23
    const/4 p0, 0x1

    .line 37
    :goto_24
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p0

    .line 41
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgu:Ljava/lang/Boolean;

    .line 43
    :cond_2a
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgu:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static isUserBuild()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 3
    const-string v1, "user"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isWearable(Landroid/content/Context;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgp:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_1f

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object p0

    .line 15
    const-string v0, "android.hardware.type.watch"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object p0

    .line 30
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgp:Ljava/lang/Boolean;

    .line 32
    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgp:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public static isWearableWithoutPlayStore(Landroid/content/Context;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_18

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1a

    .line 19
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1a

    .line 25
    :cond_18
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static zzf(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgs:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_26

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.hardware.type.iot"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1f

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object p0

    .line 21
    const-string v0, "android.hardware.type.embedded"

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1d

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const/4 p0, 0x0

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 33
    :goto_20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object p0

    .line 37
    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgs:Ljava/lang/Boolean;

    .line 39
    :cond_26
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzgs:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    move-result p0

    .line 45
    return p0
.end method
