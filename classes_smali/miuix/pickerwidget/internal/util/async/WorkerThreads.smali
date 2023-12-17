.class public Lmiuix/pickerwidget/internal/util/async/WorkerThreads;
.super Ljava/lang/Object;
.source "WorkerThreads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;
    }
.end annotation


# static fields
.field public static final TAG_COMMON_WORK:Ljava/lang/String; = "common_work"

.field private static final sWorkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized aquireWorker(Ljava/lang/String;)Landroid/os/Looper;
    .registers 4

    .line 1
    const-class v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 12
    if-nez v2, :cond_16

    .line 14
    new-instance v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 16
    invoke-direct {v2, p0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    iget p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 25
    add-int/lit8 p0, p0, 0x1

    .line 27
    iput p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 29
    :goto_1c
    iget-object p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    .line 31
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 34
    move-result-object p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 35
    monitor-exit v0

    .line 36
    return-object p0

    .line 37
    :catchall_24
    move-exception p0

    .line 38
    monitor-exit v0

    .line 39
    throw p0
.end method

.method public static declared-synchronized releaseWorker(Ljava/lang/String;)V
    .registers 5

    .line 1
    const-class v0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->sWorkers:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;

    .line 12
    if-eqz v2, :cond_1d

    .line 14
    iget v3, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 16
    add-int/lit8 v3, v3, -0x1

    .line 18
    iput v3, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 20
    if-nez v3, :cond_1d

    .line 22
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p0, v2, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    .line 27
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 30
    :cond_1d
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method
