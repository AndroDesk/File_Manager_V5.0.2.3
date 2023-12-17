.class Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/Utils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/Utils$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 4
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$2$1;->this$0:Lcom/google/firebase/crashlytics/internal/common/Utils$2;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/Utils$2;->val$tcs:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_1d
    const/4 p1, 0x0

    return-object p1
.end method
