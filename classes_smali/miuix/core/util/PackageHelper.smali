.class public Lmiuix/core/util/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "miuix_core"

.field public static final MIUI_SYSTEM_APK_NAME:Ljava/lang/String; = "miui"

.field private static final PROP_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-nez p0, :cond_7

    .line 3
    invoke-static {p1, p2}, Lmiuix/core/util/PackageHelper;->guessApkPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    goto :goto_13

    .line 8
    :cond_7
    invoke-static {p0, p1}, Lmiuix/core/util/PackageHelper;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_12

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return-object p0
.end method

.method public static getLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p0, :cond_6

    .line 3
    invoke-static {}, Lmiuix/core/util/PackageHelper;->getSystemContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    :cond_6
    if-nez p0, :cond_d

    .line 9
    invoke-static {p1}, Lmiuix/core/util/PackageHelper;->guessLibPath(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    goto :goto_19

    .line 14
    :cond_d
    invoke-static {p0, p1}, Lmiuix/core/util/PackageHelper;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_18

    .line 20
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    :goto_19
    return-object p0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x80

    .line 7
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    .line 11
    goto :goto_10

    .line 12
    :catch_b
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_10
    return-object p0
.end method

.method private static getSystemContext()Landroid/content/Context;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "currentActivityThread"

    .line 10
    const/4 v3, 0x0

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v2

    .line 17
    new-array v4, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    const-string v4, "getSystemContext"

    .line 25
    new-array v5, v3, [Ljava/lang/Class;

    .line 27
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v1

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/content/Context;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    .line 39
    return-object v1

    .line 40
    :catch_27
    move-exception v1

    .line 41
    const-string v2, "miuix_core"

    .line 43
    const-string v3, "getSystemContext error"

    .line 45
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-object v0
.end method

.method private static guessApkPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/core/util/PackageHelper;->guessDataApkPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_a

    .line 7
    invoke-static {p1}, Lmiuix/core/util/PackageHelper;->guessSystemApkPath(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    :cond_a
    return-object p0
.end method

.method private static guessDataApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const-string v1, "/data/app/"

    .line 6
    const-string v2, "-1.apk"

    .line 8
    invoke-static {v1, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v0, v3

    .line 15
    const-string v2, "-2.apk"

    .line 17
    invoke-static {v1, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v2, v0, v3

    .line 24
    const-string v2, "-1/base.apk"

    .line 26
    invoke-static {v1, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x2

    .line 31
    aput-object v2, v0, v3

    .line 33
    const-string v2, "-2/base.apk"

    .line 35
    invoke-static {v1, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    const/4 v1, 0x3

    .line 40
    aput-object p0, v0, v1

    .line 42
    invoke-static {v0}, Lmiuix/core/util/PackageHelper;->searchApkPath([Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private static guessLibPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "/data/data/"

    .line 3
    const-string v1, "/lib/"

    .line 5
    invoke-static {v0, p0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static guessSystemApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const-string v1, "/system/app/"

    .line 6
    const-string v2, ".apk"

    .line 8
    invoke-static {v1, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v0, v4

    .line 15
    const-string v3, "/system/priv-app/"

    .line 17
    invoke-static {v3, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x1

    .line 22
    aput-object v4, v0, v5

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "/"

    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x2

    .line 51
    aput-object v4, v0, v5

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    const/4 v1, 0x3

    .line 78
    aput-object p0, v0, v1

    .line 80
    invoke-static {v0}, Lmiuix/core/util/PackageHelper;->searchApkPath([Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static isMiuiSystem()Z
    .registers 2

    .line 1
    const-string v0, "ro.miui.ui.version.code"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 15
    return v0
.end method

.method private static searchApkPath([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_10

    .line 5
    aget-object v2, p0, v1

    .line 7
    invoke-static {v2}, La/a;->A(Ljava/lang/String;)Z

    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_d

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_2

    .line 17
    :cond_10
    const/4 v2, 0x0

    .line 18
    :goto_11
    return-object v2
.end method
