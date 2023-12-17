.class public abstract Lcom/google/android/gms/common/api/ResultCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(Lcom/google/android/gms/common/api/Status;)V
.end method

.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_e

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    .line 18
    instance-of v0, p1, Lcom/google/android/gms/common/api/Releasable;

    .line 20
    if-eqz v0, :cond_3d

    .line 22
    :try_start_15
    move-object v0, p1

    .line 23
    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1b} :catch_1c

    .line 28
    return-void

    .line 29
    :catch_1c
    move-exception v0

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, 0x12

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    const-string v1, "Unable to release "

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string v1, "ResultCallbacks"

    .line 59
    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :cond_3d
    return-void
.end method

.method public abstract onSuccess(Lcom/google/android/gms/common/api/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method
