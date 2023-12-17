.class public Lcom/google/android/gms/common/util/DefaultClock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/Clock;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzgm:Lcom/google/android/gms/common/util/DefaultClock;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/util/DefaultClock;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/util/DefaultClock;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/common/util/DefaultClock;->zzgm:Lcom/google/android/gms/common/util/DefaultClock;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/util/Clock;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DefaultClock;->zzgm:Lcom/google/android/gms/common/util/DefaultClock;

    .line 3
    return-object v0
.end method


# virtual methods
.method public currentThreadTimeMillis()J
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public currentTimeMillis()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public elapsedRealtime()J
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public nanoTime()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
