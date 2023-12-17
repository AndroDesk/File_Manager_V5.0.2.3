.class public final Lcom/google/firebase/crashlytics/internal/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TASK_CONTINUATION_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "awaitEvenIfOnMainThread task continuation executor"

    .line 3
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/ExecutorUtils;->buildSingleThreadExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/Utils;->TASK_CONTINUATION_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitEvenIfOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/Utils;->TASK_CONTINUATION_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/Utils$$Lambda$1;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Lcom/google/android/gms/tasks/Continuation;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 23
    move-result-object v2

    .line 24
    if-ne v1, v2, :cond_21

    .line 26
    const-wide/16 v1, 0x4

    .line 28
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 37
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2f

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4b

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_45

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    throw v0

    .line 70
    :cond_45
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 72
    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 75
    throw p0

    .line 76
    :cond_4b
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 78
    const-string v0, "Task is already canceled"

    .line 80
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
.end method

.method public static callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 6
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/Utils$2;

    .line 8
    invoke-direct {v1, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/Utils$2;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static synthetic lambda$awaitEvenIfOnMainThread$0(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static race(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 6
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/Utils$1;

    .line 8
    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/Utils$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 14
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
