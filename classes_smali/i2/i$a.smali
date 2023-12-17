.class public final Li2/i$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lk2/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Li2/i$b;

.field public c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Li2/i$b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Li2/i$a;->a:Ljava/lang/Runnable;

    .line 6
    iput-object p2, p0, Li2/i$a;->b:Li2/i$b;

    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 3

    .line 1
    iget-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_1d

    .line 9
    iget-object v0, p0, Li2/i$a;->b:Li2/i$b;

    .line 11
    instance-of v1, v0, Ls2/c;

    .line 13
    if-eqz v1, :cond_1d

    .line 15
    check-cast v0, Ls2/c;

    .line 17
    iget-boolean v1, v0, Ls2/c;->b:Z

    .line 19
    if-nez v1, :cond_22

    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Ls2/c;->b:Z

    .line 24
    iget-object v0, v0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 29
    goto :goto_22

    .line 30
    :cond_1d
    iget-object v0, p0, Li2/i$a;->b:Li2/i$b;

    .line 32
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Li2/i$a;->b:Li2/i$b;

    .line 3
    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final run()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_7
    iget-object v1, p0, Li2/i$a;->a:Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 13
    invoke-virtual {p0}, Li2/i$a;->dispose()V

    .line 16
    iput-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    invoke-virtual {p0}, Li2/i$a;->dispose()V

    .line 23
    iput-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    .line 25
    throw v1
.end method
