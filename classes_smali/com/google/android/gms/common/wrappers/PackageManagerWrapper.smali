.class public Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zzhx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public isCallerInstantApp()Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_11

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_32

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_32

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, v0}, Landroidx/appcompat/widget/x;->w(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    return v0

    .line 51
    :cond_32
    const/4 v0, 0x0

    .line 52
    return v0
.end method

.method public final zza(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p2

    .line 7
    const/16 p3, 0x40

    .line 9
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final zzb(ILjava/lang/String;)Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 11
    const-string v3, "appops"

    .line 13
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/AppOpsManager;

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_15} :catch_16

    .line 22
    return v1

    .line 23
    :catch_16
    return v2

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zzhx:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    if-eqz p2, :cond_35

    .line 36
    if-eqz p1, :cond_35

    .line 38
    move v0, v2

    .line 39
    :goto_26
    array-length v3, p1

    .line 40
    if-ge v0, v3, :cond_35

    .line 42
    aget-object v3, p1, v0

    .line 44
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_32

    .line 50
    return v1

    .line 51
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_26

    .line 54
    :cond_35
    return v2
.end method
