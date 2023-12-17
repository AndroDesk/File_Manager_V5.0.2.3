.class final Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DistinctSidecarElementCallback"
.end annotation


# instance fields
.field public final a:Landroidx/window/layout/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroidx/window/sidecar/SidecarDeviceState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/layout/j;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V
    .registers 4
    .param p1  # Landroidx/window/layout/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/sidecar/SidecarInterface$SidecarCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sidecarAdapter"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->a:Landroidx/window/layout/j;

    .line 11
    iput-object p2, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->b:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 13
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    new-instance p1, Ljava/util/WeakHashMap;

    .line 22
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->e:Ljava/util/WeakHashMap;

    .line 27
    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .registers 5
    .param p1  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newDeviceState"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_a
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->a:Landroidx/window/layout/j;

    .line 13
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->d:Landroidx/window/sidecar/SidecarDeviceState;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v2, p1}, Landroidx/window/layout/j;->a(Landroidx/window/sidecar/SidecarDeviceState;Landroidx/window/sidecar/SidecarDeviceState;)Z

    .line 21
    move-result v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_28

    .line 22
    if-eqz v1, :cond_1b

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    return-void

    .line 28
    :cond_1b
    :try_start_1b
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->d:Landroidx/window/sidecar/SidecarDeviceState;

    .line 30
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->b:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 32
    invoke-interface {v1, p1}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V

    .line 35
    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    throw p1
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .registers 6
    .param p1  # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "token"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "newLayout"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->e:Ljava/util/WeakHashMap;

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 22
    iget-object v2, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->a:Landroidx/window/layout/j;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1, p2}, Landroidx/window/layout/j;->d(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Z

    .line 30
    move-result v1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_31

    .line 31
    if-eqz v1, :cond_22

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_22
    :try_start_22
    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->e:Ljava/util/WeakHashMap;

    .line 37
    invoke-virtual {v1, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_31

    .line 43
    monitor-exit v0

    .line 44
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;->b:Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 46
    invoke-interface {v0, p1, p2}, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;->onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0

    .line 52
    throw p1
.end method
