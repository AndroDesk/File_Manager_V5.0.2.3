.class public synthetic Lcom/google/android/gms/common/util/Clock$$CC;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static currentThreadTimeMillis(Lcom/google/android/gms/common/util/Clock;)J
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
