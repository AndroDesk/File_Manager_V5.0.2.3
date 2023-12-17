.class Lcom/google/firebase/crashlytics/internal/common/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/Utils;->callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callable:Ljava/util/concurrent/Callable;

.field public final synthetic val$tcs:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$callable:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$callable:Ljava/util/concurrent/Callable;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/tasks/Task;

    .line 9
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;

    .line 11
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/Utils$2;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 17
    goto :goto_17

    .line 18
    :catch_11
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 24
    :goto_17
    return-void
.end method
