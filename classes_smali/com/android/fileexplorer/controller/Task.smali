.class public abstract Lcom/android/fileexplorer/controller/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/controller/Task$SimpleTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x3

.field private static final EXCEPTIONAL:I = 0x2

.field private static final INTERRUPTED:I = 0x5

.field private static final NEW:I = 0x0

.field private static final RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimpleTask"

.field private static sDeliver:Ljava/util/concurrent/Executor;


# instance fields
.field private volatile runner:Ljava/lang/Thread;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/controller/Task$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/Task$1;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/controller/Task;->sDeliver:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private getDeliver()Ljava/util/concurrent/Executor;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/Task;->sDeliver:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/controller/Task;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_15

    const-string p1, "SimpleTask"

    const-string v1, "cancel fail, alreadfinish"

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_4c

    if-eqz p1, :cond_3f

    :try_start_1e
    iget-object p1, p0, Lcom/android/fileexplorer/controller/Task;->runner:Ljava/lang/Thread;

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/fileexplorer/controller/Task;->runner:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception p1

    const-string v0, "SimpleTask"

    const-string v1, "cancelTask fail, e: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/controller/Task$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/controller/Task$4;-><init>(Lcom/android/fileexplorer/controller/Task;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onFail(Ljava/lang/Exception;)V
.end method

.method public abstract onPreExecute()V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .registers 5

    const-string v0, "SimpleTask"

    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/controller/Task;->runner:Ljava/lang/Thread;

    :try_start_13
    const-string v1, "run: 1"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/controller/Task;->doInBackground()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "run: 2"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/controller/Task$2;

    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/controller/Task$2;-><init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_37} :catch_50
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_38

    goto :goto_57

    :catch_38
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_43

    return-void

    :cond_43
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/Task;->getDeliver()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/controller/Task$3;

    invoke-direct {v2, p0, v0}, Lcom/android/fileexplorer/controller/Task$3;-><init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_57

    :catch_50
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :goto_57
    return-void
.end method
