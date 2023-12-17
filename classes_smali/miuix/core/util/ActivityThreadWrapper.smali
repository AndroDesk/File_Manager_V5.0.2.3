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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;

    :try_start_8
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_24

    goto :goto_26

    :catch_24
    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    :goto_26
    return-void
.end method

.method public static getInstance()Lmiuix/core/util/ActivityThreadWrapper;
    .registers 1

    sget-object v0, Lmiuix/core/util/ActivityThreadWrapper;->sInstance:Lmiuix/core/util/ActivityThreadWrapper;

    if-nez v0, :cond_b

    new-instance v0, Lmiuix/core/util/ActivityThreadWrapper;

    invoke-direct {v0}, Lmiuix/core/util/ActivityThreadWrapper;-><init>()V

    sput-object v0, Lmiuix/core/util/ActivityThreadWrapper;->sInstance:Lmiuix/core/util/ActivityThreadWrapper;

    :cond_b
    sget-object v0, Lmiuix/core/util/ActivityThreadWrapper;->sInstance:Lmiuix/core/util/ActivityThreadWrapper;

    return-object v0
.end method


# virtual methods
.method public currentActivityThread()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    return-object v0
.end method

.method public currentApplication()Landroid/app/Application;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;

    if-nez v1, :cond_22

    iget-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentActivityThread:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;

    :cond_22
    iget-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mCurrentApplication:Landroid/app/Application;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_24

    :catch_24
    return-object v0
.end method

.method public getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/core/util/ActivityThreadWrapper;->getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialLoadedApk:Ljava/lang/Object;

    return-object p1
.end method

.method public getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialPackageName:Ljava/lang/String;

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPackages"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialPackageName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialLoadedApk:Ljava/lang/Object;

    :cond_3c
    iget-object p1, p0, Lmiuix/core/util/ActivityThreadWrapper;->mInitialPackageName:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object p1

    :catch_3f
    const/4 p1, 0x0

    return-object p1
.end method
