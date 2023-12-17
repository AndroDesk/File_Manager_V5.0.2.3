.class public Lcom/google/android/gms/common/stats/ConnectionTracker;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzdp:Ljava/lang/Object;

.field private static volatile zzfa:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private static zzfb:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final zzfc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzdp:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzfc:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzfd:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzfe:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzff:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzdp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/android/gms/common/stats/ConnectionTracker;

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/ConnectionTracker;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lcom/google/android/gms/common/stats/ConnectionTracker;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzfa:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object v0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 12
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UntrackedBindService"
        }
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_9

    move p2, v0

    goto :goto_11

    :cond_9
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    :goto_11
    if-eqz p2, :cond_1b

    const-string p1, "ConnectionTracker"

    const-string p2, "Attempted to bind to a service in a STOPPED package."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1b
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method
