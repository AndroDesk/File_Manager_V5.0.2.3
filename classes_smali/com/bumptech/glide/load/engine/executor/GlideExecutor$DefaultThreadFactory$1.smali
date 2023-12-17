.class Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;
.super Ljava/lang/Thread;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;->this$0:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const/16 v0, 0x9

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;->this$0:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 8
    iget-boolean v0, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->preventNetworkOperations:Z

    .line 10
    if-eqz v0, :cond_1f

    .line 12
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 14
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 17
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 32
    :cond_1f
    :try_start_1f
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    .line 35
    goto :goto_2b

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;->this$0:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    .line 39
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 41
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    .line 44
    :goto_2b
    return-void
.end method
