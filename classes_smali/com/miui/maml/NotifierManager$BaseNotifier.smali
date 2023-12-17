.class public abstract Lcom/miui/maml/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNotifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
    }
.end annotation


# instance fields
.field private mActiveCount:I

.field public mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method private final checkListeners()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_c

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pause()V

    .line 13
    :cond_c
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .line 17
    throw v1
.end method

.method private final checkListenersLocked()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 4
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 12
    :goto_b
    if-ltz v0, :cond_32

    .line 14
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 22
    iget-object v2, v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    if-nez v2, :cond_23

    .line 30
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    goto :goto_2f

    .line 36
    :cond_23
    invoke-static {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->access$000(Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2f

    .line 42
    iget v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 46
    iput v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 48
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_b

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 59
    return v0
.end method

.method private final findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1b

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 19
    iget-object v2, v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    if-ne v2, p1, :cond_6

    .line 27
    return-object v1

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method


# virtual methods
.method public final addListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_19

    .line 10
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 12
    new-instance v2, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 14
    invoke-direct {v2, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;-><init>(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 26
    :cond_19
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    .line 30
    throw p1
.end method

.method public finish()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    .line 4
    return-void
.end method

.method public final getActiveCount()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 4
    iget v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 6
    return v0
.end method

.method public final getRef()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 4
    iget v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 6
    return v0
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    .line 4
    return-void
.end method

.method public onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 2

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_6
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1c

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 25
    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 28
    goto :goto_c

    .line 29
    :cond_1c
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    .line 33
    throw p1
.end method

.method public abstract onRegister()V
.end method

.method public abstract onUnregister()V
.end method

.method public pause()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    .line 4
    return-void
.end method

.method public final pauseListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_17

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 13
    const-string p1, "NotifierManager"

    .line 15
    const-string v1, "pauseListener, listener not exist"

    .line 17
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 22
    monitor-exit v0

    .line 23
    return p1

    .line 24
    :cond_17
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pause()V

    .line 27
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 29
    monitor-exit v0

    .line 30
    return p1

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    .line 33
    throw p1
.end method

.method public register()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onRegister()V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 12
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_27

    .line 18
    const-string v0, "onRegister: "

    .line 20
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "NotifierManager"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_27
    return-void
.end method

.method public final removeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_11

    .line 10
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 18
    :cond_11
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    .line 22
    throw p1
.end method

.method public resume()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    .line 4
    return-void
.end method

.method public final resumeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_17

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 13
    const-string p1, "NotifierManager"

    .line 15
    const-string v1, "resumeListener, listener not exist"

    .line 17
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 22
    monitor-exit v0

    .line 23
    return p1

    .line 24
    :cond_17
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->resume()V

    .line 27
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 29
    monitor-exit v0

    .line 30
    return p1

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    .line 33
    throw p1
.end method

.method public unregister()V
    .registers 4

    .line 1
    const-string v0, "NotifierManager"

    .line 3
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_b

    .line 11
    goto :goto_13

    .line 12
    :catch_b
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_13
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 23
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    const-string v1, "onUnregister: "

    .line 31
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_30
    return-void
.end method
