.class public interface abstract Lcom/google/android/gms/common/stats/StatsEvent$Types;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/StatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Types"
.end annotation


# static fields
.field public static final EVENT_TYPE_ACQUIRE_WAKE_LOCK:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final EVENT_TYPE_RELEASE_WAKE_LOCK:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/stats/StatsEvent$Types;->EVENT_TYPE_ACQUIRE_WAKE_LOCK:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/stats/StatsEvent$Types;->EVENT_TYPE_RELEASE_WAKE_LOCK:I

    return-void
.end method
