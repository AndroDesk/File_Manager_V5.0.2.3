.class Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat$ThemeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api23Impl"
.end annotation


# static fields
.field private static sRebaseMethod:Ljava/lang/reflect/Method;

.field private static sRebaseMethodFetched:Z

.field private static final sRebaseMethodLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static rebase(Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-boolean v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodFetched:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_23

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_9
    const-class v3, Landroid/content/res/Resources$Theme;

    .line 12
    const-string v4, "rebase"

    .line 14
    new-array v5, v2, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v3

    .line 20
    sput-object v3, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethod:Ljava/lang/reflect/Method;

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_18} :catch_19
    .catchall {:try_start_9 .. :try_end_18} :catchall_3c

    .line 25
    goto :goto_21

    .line 26
    :catch_19
    move-exception v3

    .line 27
    :try_start_1a
    const-string v4, "ResourcesCompat"

    .line 29
    const-string v5, "Failed to retrieve rebase() method"

    .line 31
    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :goto_21
    sput-boolean v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethodFetched:Z

    .line 36
    :cond_23
    sget-object v1, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethod:Ljava/lang/reflect/Method;
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_3c

    .line 38
    if-eqz v1, :cond_3a

    .line 40
    :try_start_27
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3c

    .line 45
    goto :goto_3a

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    goto :goto_30

    .line 48
    :catch_2f
    move-exception p0

    .line 49
    :goto_30
    :try_start_30
    const-string v1, "ResourcesCompat"

    .line 51
    const-string v2, "Failed to invoke rebase() method via reflection"

    .line 53
    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 p0, 0x0

    .line 57
    sput-object p0, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->sRebaseMethod:Ljava/lang/reflect/Method;

    .line 59
    :cond_3a
    :goto_3a
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_3c
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    .line 63
    throw p0
.end method
