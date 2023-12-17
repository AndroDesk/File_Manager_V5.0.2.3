.class Lmiuix/app/Application$LifecycleCallbacksWrapper;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifecycleCallbacksWrapper"
.end annotation


# instance fields
.field private mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method private collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_12

    .line 12
    iget-object v1, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    :goto_13
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    .line 24
    throw v1
.end method


# virtual methods
.method public add(Landroid/app/Application$ActivityLifecycleCallbacks;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    aget-object v2, v0, v1

    .line 13
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    aget-object v2, v0, v1

    .line 13
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    aget-object v2, v0, v1

    .line 13
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    aget-object v2, v0, v1

    .line 13
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    aget-object v2, v0, v1

    .line 13
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    aget-object v2, v0, v1

    .line 13
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    array-length v2, v0

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    aget-object v2, v0, v1

    .line 13
    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    return-void
.end method

.method public remove(Landroid/app/Application$ActivityLifecycleCallbacks;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
