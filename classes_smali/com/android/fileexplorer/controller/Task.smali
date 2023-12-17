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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/controller/Task$1;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/Task$1;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/controller/Task;->sDeliver:Ljava/util/concurrent/Executor;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    return-void
.end method

.method private getDeliver()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/Task;->sDeliver:Ljava/util/concurrent/Executor;

    .line 3
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/controller/Task;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_15

    const-string p1, "SimpleTask"

    const-string v1, "cancel fail, alreadfinish"

    .line 4
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_15
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_4c

    if-eqz p1, :cond_3f

    .line 8
    :try_start_1e
    iget-object p1, p0, Lcom/android/fileexplorer/controller/Task;->runner:Ljava/lang/Thread;

    if-eqz p1, :cond_3f

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/controller/Task;->runner:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception p1

    const-string v0, "SimpleTask"

    const-string v1, "cancelTask fail, e: "

    .line 10
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
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

    .line 13
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-lt v0, v1, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
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

    .line 1
    const-string v0, "SimpleTask"

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/fileexplorer/controller/Task;->runner:Ljava/lang/Thread;

    .line 20
    :try_start_13
    const-string v1, "run: 1"

    .line 22
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/fileexplorer/controller/Task;->doInBackground()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "run: 2"

    .line 31
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/Task;->getDeliver()Ljava/util/concurrent/Executor;

    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Lcom/android/fileexplorer/controller/Task$2;

    .line 50
    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/controller/Task$2;-><init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Object;)V

    .line 53
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_37} :catch_50
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_38

    .line 56
    goto :goto_57

    .line 57
    :catch_38
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_43

    .line 67
    return-void

    .line 68
    :cond_43
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/Task;->getDeliver()Ljava/util/concurrent/Executor;

    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lcom/android/fileexplorer/controller/Task$3;

    .line 74
    invoke-direct {v2, p0, v0}, Lcom/android/fileexplorer/controller/Task$3;-><init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Exception;)V

    .line 77
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    goto :goto_57

    .line 81
    :catch_50
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    const/4 v1, 0x4

    .line 84
    const/4 v2, 0x5

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 88
    :goto_57
    return-void
.end method
