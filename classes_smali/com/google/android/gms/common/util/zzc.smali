.class public final Lcom/google/android/gms/common/util/zzc;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static isMainThread()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
