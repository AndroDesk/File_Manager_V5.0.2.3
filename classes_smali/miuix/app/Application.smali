.class public Lmiuix/app/Application;
.super Landroid/app/Application;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/app/Application$ComponentCallbacksWrapper;,
        Lmiuix/app/Application$LifecycleCallbacksWrapper;
    }
.end annotation


# instance fields
.field private mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

.field private mComponentLock:Ljava/lang/Object;

.field private mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

.field private mLifecycleLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->clearEffectEnable()V

    .line 4
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markEnvStateDirty(Landroid/content/Context;)V

    .line 7
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 10
    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->init(Landroid/app/Application;)V

    .line 4
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 7
    return-void
.end method

.method public registerActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 6
    if-nez v1, :cond_11

    .line 8
    new-instance v1, Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 10
    invoke-direct {v1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;-><init>()V

    .line 13
    iput-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 18
    :cond_11
    iget-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 20
    invoke-virtual {v1, p1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->add(Landroid/app/Application$ActivityLifecycleCallbacks;)Z

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    .line 27
    throw p1
.end method

.method public registerComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 6
    if-nez v1, :cond_11

    .line 8
    new-instance v1, Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 10
    invoke-direct {v1, p0}, Lmiuix/app/Application$ComponentCallbacksWrapper;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 18
    :cond_11
    iget-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 20
    invoke-virtual {v1, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->registerCallBacks(Landroid/content/ComponentCallbacks;)V

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    .line 27
    throw p1
.end method

.method public unregisterActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 6
    if-eqz v1, :cond_1a

    .line 8
    invoke-virtual {v1, p1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->remove(Landroid/app/Application$ActivityLifecycleCallbacks;)Z

    .line 11
    iget-object p1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 13
    invoke-virtual {p1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->getSize()I

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1a

    .line 19
    iget-object p1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    .line 27
    :cond_1a
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1
.end method

.method public unregisterComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 6
    if-eqz v1, :cond_1a

    .line 8
    invoke-virtual {v1, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->unregisterCallBacks(Landroid/content/ComponentCallbacks;)V

    .line 11
    iget-object p1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 13
    invoke-virtual {p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->getSize()I

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1a

    .line 19
    iget-object p1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    .line 27
    :cond_1a
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1
.end method
