.class public Lmiuix/core/util/ActivityThreadWrapper;
.super Ljava/lang/Object;
.source "ActivityThreadWrapper.java"


# static fields
.field private static sInstance:Lmiuix/core/util/ActivityThreadWrapper;


# instance fields
.field private mCurrentActivityThread:Ljava/lang/Object;

.field private volatile mCurrentApplication:Landroid/app/Application;

.field private mInitialLoadedApk:Ljava/lang/Object;

.field private mInitialPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;

    .line 9
    :try_start_8
    const-string v1, "android.app.ActivityThread"

    .line 11
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "currentActivityThread"

    .line 17
    const/4 v3, 0x0

    .line 18
    new-array v4, v3, [Ljava/lang/Class;

    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 28
    new-array v2, v3, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_24

    .line 36
    goto :goto_26

    .line 37
    :catch_24
    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    .line 39
    :goto_26
    return-void
.end method

.method public static getInstance()Lmiuix/core/util/ActivityThreadWrapper;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/core/util/ActivityThreadWrapper;->sInstance:Lmiuix/core/util/ActivityThreadWrapper;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/core/util/ActivityThreadWrapper;

    .line 7
    invoke-direct {v0}, Lmiuix/core/util/ActivityThreadWrapper;-><init>()V

    .line 10
    sput-object v0, Lmiuix/core/util/ActivityThreadWrapper;->sInstance:Lmiuix/core/util/ActivityThreadWrapper;

    .line 12
    :cond_b
    sget-object v0, Lmiuix/core/util/ActivityThreadWrapper;->sInstance:Lmiuix/core/util/ActivityThreadWrapper;

    .line 14
    return-object v0
.end method


# virtual methods
.method public currentActivityThread()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public currentApplication()Landroid/app/Application;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;

    .line 4
    if-nez v1, :cond_22

    .line 6
    iget-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "currentApplication"

    .line 14
    const/4 v3, 0x0

    .line 15
    new-array v4, v3, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    new-array v2, v3, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/app/Application;

    .line 33
    iput-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_24

    .line 37
    :catch_24
    return-object v0
.end method

.method public getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/core/util/ActivityThreadWrapper;->getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialLoadedApk:Ljava/lang/Object;

    .line 6
    return-object p1
.end method

.method public getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialPackageName:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_3c

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "mPackages"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/Map;

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialPackageName:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialLoadedApk:Ljava/lang/Object;

    .line 61
    :cond_3c
    iget-object p1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialPackageName:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 63
    return-object p1

    .line 64
    :catch_3f
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method
