.class public final Landroidx/core/content/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/PackageManagerCompat$Api30Impl;,
        Landroidx/core/content/PackageManagerCompat$UnusedAppRestrictionsStatus;
    }
.end annotation


# static fields
.field public static final ACTION_PERMISSION_REVOCATION_SETTINGS:Ljava/lang/String; = "android.intent.action.AUTO_REVOKE_PERMISSIONS"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ActionValue"
        }
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "PackageManagerCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    move v4, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v4, v3

    .line 12
    :goto_b
    if-ge v0, v1, :cond_f

    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v3

    .line 17
    :goto_10
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_18

    .line 23
    move p0, v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move p0, v3

    .line 26
    :goto_19
    if-nez v4, :cond_21

    .line 28
    if-eqz v0, :cond_20

    .line 30
    if-eqz p0, :cond_20

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v2, v3

    .line 34
    :cond_21
    :goto_21
    return v2
.end method

.method public static getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.AUTO_REVOKE_PERMISSIONS"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "package"

    .line 10
    const-string v2, "com.example"

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3b

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 42
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 44
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 46
    const-string v2, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 48
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_36

    .line 54
    goto :goto_1d

    .line 55
    :cond_36
    if-eqz v3, :cond_39

    .line 57
    return-object v3

    .line 58
    :cond_39
    move-object v3, v1

    .line 59
    goto :goto_1d

    .line 60
    :cond_3b
    return-object v3
.end method

.method public static getUnusedAppRestrictionsStatus(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls/a;

    .line 3
    invoke-direct {v0}, Ls/a;-><init>()V

    .line 6
    invoke-static {p0}, Li0/j;->a(Landroid/content/Context;)Z

    .line 9
    move-result v1

    .line 10
    const-string v2, "PackageManagerCompat"

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    if-nez v1, :cond_1b

    .line 19
    invoke-virtual {v0, v3}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 22
    const-string p0, "User is in locked direct boot mode"

    .line 24
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v0

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroidx/core/content/PackageManagerCompat;->areUnusedAppRestrictionsAvailable(Landroid/content/pm/PackageManager;)Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2e

    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 46
    return-object v0

    .line 47
    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 50
    move-result-object v1

    .line 51
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 53
    const/16 v4, 0x1e

    .line 55
    if-ge v1, v4, :cond_41

    .line 57
    invoke-virtual {v0, v3}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 60
    const-string p0, "Target SDK version below API 30"

    .line 62
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v0

    .line 66
    :cond_41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    const/4 v3, 0x4

    .line 69
    const/4 v5, 0x2

    .line 70
    const/16 v6, 0x1f

    .line 72
    if-lt v2, v6, :cond_62

    .line 74
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat$Api30Impl;->areUnusedAppRestrictionsEnabled(Landroid/content/Context;)Z

    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_5a

    .line 80
    if-lt v1, v6, :cond_52

    .line 82
    const/4 v3, 0x5

    .line 83
    :cond_52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 90
    goto :goto_61

    .line 91
    :cond_5a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 98
    :goto_61
    return-object v0

    .line 99
    :cond_62
    if-ne v2, v4, :cond_74

    .line 101
    invoke-static {p0}, Landroidx/core/content/PackageManagerCompat$Api30Impl;->areUnusedAppRestrictionsEnabled(Landroid/content/Context;)Z

    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_6b

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v3, v5

    .line 109
    :goto_6c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 116
    return-object v0

    .line 117
    :cond_74
    new-instance v1, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    .line 119
    invoke-direct {v1, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance p0, Landroidx/core/content/h;

    .line 124
    invoke-direct {p0, v1}, Landroidx/core/content/h;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V

    .line 127
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v0, p0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 134
    invoke-virtual {v1, v0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->connectAndFetchResult(Ls/a;)V

    .line 137
    return-object v0
.end method
