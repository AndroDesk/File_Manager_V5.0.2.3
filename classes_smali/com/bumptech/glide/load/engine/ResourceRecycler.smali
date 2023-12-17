.class Lcom/bumptech/glide/load/engine/ResourceRecycler;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isRecycling:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;

    .line 12
    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;-><init>()V

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 18
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized recycle(Lcom/bumptech/glide/load/engine/Resource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_12

    .line 7
    if-eqz p2, :cond_9

    .line 9
    goto :goto_12

    .line 10
    :cond_9
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    .line 12
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    :goto_12
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    .line 21
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 28
    :goto_1b
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method
