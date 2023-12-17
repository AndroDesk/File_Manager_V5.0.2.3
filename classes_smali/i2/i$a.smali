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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Li2/i$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/i$a;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Li2/i$a;->b:Li2/i$b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 3

    iget-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Li2/i$a;->b:Li2/i$b;

    instance-of v1, v0, Ls2/c;

    if-eqz v1, :cond_1d

    check-cast v0, Ls2/c;

    iget-boolean v1, v0, Ls2/c;->b:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls2/c;->b:Z

    iget-object v0, v0, Ls2/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_22

    :cond_1d
    iget-object v0, p0, Li2/i$a;->b:Li2/i$b;

    invoke-interface {v0}, Lk2/b;->dispose()V

    :cond_22
    :goto_22
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-object v0, p0, Li2/i$a;->b:Li2/i$b;

    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Li2/i$a;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    invoke-virtual {p0}, Li2/i$a;->dispose()V

    iput-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    return-void

    :catchall_12
    move-exception v1

    invoke-virtual {p0}, Li2/i$a;->dispose()V

    iput-object v0, p0, Li2/i$a;->c:Ljava/lang/Thread;

    throw v1
.end method
