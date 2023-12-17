.class public abstract Lcom/google/android/gms/common/api/ResolvingResultCallbacks;
.super Lcom/google/android/gms/common/api/ResultCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/ResultCallbacks<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final zzao:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/ResultCallbacks;-><init>()V

    .line 4
    const-string v0, "Activity must not be null"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/Activity;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->mActivity:Landroid/app/Activity;

    .line 14
    iput p2, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->zzao:I

    .line 16
    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_21

    .line 7
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->mActivity:Landroid/app/Activity;

    .line 9
    iget v1, p0, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->zzao:I

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6 .. :try_end_d} :catch_e

    .line 14
    return-void

    .line 15
    :catch_e
    move-exception p1

    .line 16
    const-string v0, "ResolvingResultCallback"

    .line 18
    const-string v1, "Failed to start resolution"

    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 25
    const/16 v0, 0x8

    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->onUnresolvableFailure(Lcom/google/android/gms/common/api/Status;)V

    .line 33
    return-void

    .line 34
    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/ResolvingResultCallbacks;->onUnresolvableFailure(Lcom/google/android/gms/common/api/Status;)V

    .line 37
    return-void
.end method

.method public abstract onSuccess(Lcom/google/android/gms/common/api/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onUnresolvableFailure(Lcom/google/android/gms/common/api/Status;)V
.end method
