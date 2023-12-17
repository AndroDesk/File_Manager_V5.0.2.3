.class abstract Lcom/google/android/datatransport/runtime/ExecutionModule;
.super Ljava/lang/Object;
.source "ExecutionModule.java"


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executor()Ljava/util/concurrent/Executor;
    .registers 2
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 10
    return-object v0
.end method
