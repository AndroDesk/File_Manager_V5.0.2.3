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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->clearEffectEnable()V

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markEnvStateDirty(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->init(Landroid/app/Application;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public registerActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    iget-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    if-nez v1, :cond_11

    new-instance v1, Lmiuix/app/Application$LifecycleCallbacksWrapper;

    invoke-direct {v1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;-><init>()V

    iput-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_11
    iget-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    invoke-virtual {v1, p1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->add(Landroid/app/Application$ActivityLifecycleCallbacks;)Z

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public registerComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    iget-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    if-nez v1, :cond_11

    new-instance v1, Lmiuix/app/Application$ComponentCallbacksWrapper;

    invoke-direct {v1, p0}, Lmiuix/app/Application$ComponentCallbacksWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    invoke-virtual {p0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_11
    iget-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    invoke-virtual {v1, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->registerCallBacks(Landroid/content/ComponentCallbacks;)V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public unregisterActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    iget-object v0, p0, Lmiuix/app/Application;->mLifecycleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->remove(Landroid/app/Application$ActivityLifecycleCallbacks;)Z

    iget-object p1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    invoke-virtual {p1}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->getSize()I

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/app/Application;->mLifecycleCallbacksWrapper:Lmiuix/app/Application$LifecycleCallbacksWrapper;

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public unregisterComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    iget-object v0, p0, Lmiuix/app/Application;->mComponentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->unregisterCallBacks(Landroid/content/ComponentCallbacks;)V

    iget-object p1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    invoke-virtual {p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->getSize()I

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/app/Application;->mComponentCallbacksWrapper:Lmiuix/app/Application$ComponentCallbacksWrapper;

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method
