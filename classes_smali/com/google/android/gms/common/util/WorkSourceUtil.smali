.class public Lcom/google/android/gms/common/util/WorkSourceUtil;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzhj:I

.field private static final zzhk:Ljava/lang/reflect/Method;

.field private static final zzhl:Ljava/lang/reflect/Method;

.field private static final zzhm:Ljava/lang/reflect/Method;

.field private static final zzhn:Ljava/lang/reflect/Method;

.field private static final zzho:Ljava/lang/reflect/Method;

.field private static final zzhp:Ljava/lang/reflect/Method;

.field private static final zzhq:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhj:I

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzx()Ljava/lang/reflect/Method;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhk:Ljava/lang/reflect/Method;

    .line 13
    invoke-static {}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzy()Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhl:Ljava/lang/reflect/Method;

    .line 19
    invoke-static {}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzz()Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhm:Ljava/lang/reflect/Method;

    .line 25
    invoke-static {}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzaa()Ljava/lang/reflect/Method;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhn:Ljava/lang/reflect/Method;

    .line 31
    invoke-static {}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzab()Ljava/lang/reflect/Method;

    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzho:Ljava/lang/reflect/Method;

    .line 37
    invoke-static {}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzac()Ljava/lang/reflect/Method;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhp:Ljava/lang/reflect/Method;

    .line 43
    invoke-static {}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzad()Ljava/lang/reflect/Method;

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhq:Ljava/lang/reflect/Method;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, "WorkSourceUtil"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_4d

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_4d

    .line 12
    if-nez p1, :cond_e

    .line 14
    goto :goto_4d

    .line 15
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 18
    move-result-object p0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 23
    move-result-object p0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_17} :catch_37

    .line 24
    if-nez p0, :cond_30

    .line 26
    const-string p0, "Could not get applicationInfo from package: "

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_26

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    goto :goto_2c

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/String;

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 44
    move-object p0, p1

    .line 45
    :goto_2c
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-object v1

    .line 49
    :cond_30
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 51
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :catch_37
    const-string p0, "Could not find package: "

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_44

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    goto :goto_4a

    .line 69
    :cond_44
    new-instance p1, Ljava/lang/String;

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 74
    move-object p0, p1

    .line 75
    :goto_4a
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method public static fromPackageAndModuleExperimentalPi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/WorkSource;
    .registers 12
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "WorkSourceUtil"

    .line 4
    if-eqz p0, :cond_58

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_58

    .line 12
    if-eqz p2, :cond_58

    .line 14
    if-nez p1, :cond_10

    .line 16
    goto :goto_58

    .line 17
    :cond_10
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd(Landroid/content/Context;Ljava/lang/String;)I

    .line 20
    move-result p0

    .line 21
    if-gez p0, :cond_17

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Landroid/os/WorkSource;

    .line 26
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 29
    sget-object v2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhp:Ljava/lang/reflect/Method;

    .line 31
    if-eqz v2, :cond_54

    .line 33
    sget-object v3, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhq:Ljava/lang/reflect/Method;

    .line 35
    if-nez v3, :cond_25

    .line 37
    goto :goto_54

    .line 38
    :cond_25
    const/4 v4, 0x0

    .line 39
    :try_start_26
    new-array v5, v4, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    sget v5, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhj:I

    .line 47
    const/4 v6, 0x1

    .line 48
    const/4 v7, 0x2

    .line 49
    if-eq p0, v5, :cond_3f

    .line 51
    new-array v8, v7, [Ljava/lang/Object;

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p0

    .line 57
    aput-object p0, v8, v4

    .line 59
    aput-object p1, v8, v6

    .line 61
    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3f
    new-array p0, v7, [Ljava/lang/Object;

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    aput-object p1, p0, v4

    .line 72
    aput-object p2, p0, v6

    .line 74
    invoke-virtual {v3, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4c} :catch_4d

    .line 77
    goto :goto_57

    .line 78
    :catch_4d
    move-exception p0

    .line 79
    const-string p1, "Unable to assign chained blame through WorkSource"

    .line 81
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    :goto_54
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 88
    :goto_57
    return-object v0

    .line 89
    :cond_58
    :goto_58
    const-string p0, "Unexpected null arguments"

    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v0
.end method

.method public static getNames(Landroid/os/WorkSource;)Ljava/util/List;
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_5

    .line 4
    move v1, v0

    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza(Landroid/os/WorkSource;)I

    .line 9
    move-result v1

    .line 10
    :goto_9
    if-nez v1, :cond_10

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_15
    if-ge v0, v1, :cond_27

    .line 24
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza(Landroid/os/WorkSource;I)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_24

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    return-object v2
.end method

.method public static hasWorkSourcePermission(Landroid/content/Context;)Z
    .registers 4
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
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return v0

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    .line 22
    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1d

    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1d
    return v0
.end method

.method private static zza(Landroid/os/WorkSource;)I
    .registers 4

    .line 9
    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhm:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    :try_start_5
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    const-string v0, "WorkSourceUtil"

    const-string v2, "Unable to assign blame through WorkSource"

    .line 11
    invoke-static {v0, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    return v1
.end method

.method private static zza(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 2
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    return-object v0
.end method

.method private static zza(Landroid/os/WorkSource;I)Ljava/lang/String;
    .registers 5

    .line 12
    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzho:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const-string p1, "WorkSourceUtil"

    const-string v0, "Unable to assign blame through WorkSource"

    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 9

    .line 3
    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhl:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "Unable to assign blame through WorkSource"

    const-string v3, "WorkSourceUtil"

    const/4 v4, 0x1

    if-eqz v0, :cond_22

    if-nez p2, :cond_e

    const-string p2, ""

    :cond_e
    const/4 v5, 0x2

    :try_start_f
    new-array v5, v5, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 5
    invoke-static {v3, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 6
    :cond_22
    sget-object p2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzhk:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_36

    :try_start_26
    new-array v0, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 8
    invoke-static {v3, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    return-void
.end method

.method private static zzaa()Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/os/WorkSource;

    .line 3
    const-string v1, "get"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    const/4 v3, 0x0

    .line 9
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    aput-object v4, v2, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 17
    goto :goto_12

    .line 18
    :catch_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return-object v0
.end method

.method private static zzab()Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    :try_start_6
    const-class v0, Landroid/os/WorkSource;

    .line 9
    const-string v1, "getName"

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Class;

    .line 14
    const/4 v3, 0x0

    .line 15
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    aput-object v4, v2, v3

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    .line 23
    goto :goto_18

    .line 24
    :catch_17
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    return-object v0
.end method

.method private static final zzac()Ljava/lang/reflect/Method;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    :try_start_6
    const-class v0, Landroid/os/WorkSource;

    .line 9
    const-string v1, "createWorkChain"

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 18
    goto :goto_1b

    .line 19
    :catch_12
    move-exception v0

    .line 20
    const-string v1, "WorkSourceUtil"

    .line 22
    const-string v2, "Missing WorkChain API createWorkChain"

    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return-object v0
.end method

.method private static final zzad()Ljava/lang/reflect/Method;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    :try_start_6
    const-string v0, "android.os.WorkSource$WorkChain"

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "addNode"

    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Ljava/lang/Class;

    .line 18
    const/4 v3, 0x0

    .line 19
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    aput-object v4, v2, v3

    .line 23
    const/4 v3, 0x1

    .line 24
    const-class v4, Ljava/lang/String;

    .line 26
    aput-object v4, v2, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    .line 32
    goto :goto_29

    .line 33
    :catch_20
    move-exception v0

    .line 34
    const-string v1, "WorkSourceUtil"

    .line 36
    const-string v2, "Missing WorkChain class"

    .line 38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    :goto_29
    return-object v0
.end method

.method private static zzd(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 1
    const-string v0, "WorkSourceUtil"

    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 7
    move-result-object p0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_c} :catch_2c

    .line 13
    if-nez p0, :cond_29

    .line 15
    const-string p0, "Could not get applicationInfo from package: "

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1f

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    goto :goto_25

    .line 32
    :cond_1f
    new-instance p1, Ljava/lang/String;

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 37
    move-object p0, p1

    .line 38
    :goto_25
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v1

    .line 42
    :cond_29
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    return p0

    .line 45
    :catch_2c
    const-string p0, "Could not find package: "

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3d

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    goto :goto_43

    .line 62
    :cond_3d
    new-instance p1, Ljava/lang/String;

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 67
    move-object p0, p1

    .line 68
    :goto_43
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v1
.end method

.method private static zzx()Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/os/WorkSource;

    .line 3
    const-string v1, "add"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    const/4 v3, 0x0

    .line 9
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    aput-object v4, v2, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 17
    goto :goto_12

    .line 18
    :catch_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return-object v0
.end method

.method private static zzy()Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1c

    .line 7
    :try_start_6
    const-class v0, Landroid/os/WorkSource;

    .line 9
    const-string v1, "add"

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Ljava/lang/Class;

    .line 14
    const/4 v3, 0x0

    .line 15
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    aput-object v4, v2, v3

    .line 19
    const/4 v3, 0x1

    .line 20
    const-class v4, Ljava/lang/String;

    .line 22
    aput-object v4, v2, v3

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_1d

    .line 29
    :catch_1c
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    return-object v0
.end method

.method private static zzz()Ljava/lang/reflect/Method;
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroid/os/WorkSource;

    .line 3
    const-string v1, "size"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    goto :goto_d

    .line 13
    :catch_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return-object v0
.end method
