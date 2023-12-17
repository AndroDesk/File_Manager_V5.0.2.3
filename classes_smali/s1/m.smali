.class public Ls1/m;
.super Landroid/os/Handler;
.source "SyncAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/m$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final varargs declared-synchronized a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget-object v0, Ls1/m$a;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7b

    :try_start_4
    sget-object v1, Ls1/m$a;->g:Ls1/m$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v3, v1, Ls1/m$a;->e:Ls1/m$a;

    sput-object v3, Ls1/m$a;->g:Ls1/m$a;

    iput-object v2, v1, Ls1/m$a;->e:Ls1/m$a;

    monitor-exit v0

    goto :goto_17

    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_78

    :try_start_12
    new-instance v1, Ls1/m$a;

    invoke-direct {v1}, Ls1/m$a;-><init>()V

    :goto_17
    iput-object p2, v1, Ls1/m$a;->b:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_70

    :goto_23
    iget-boolean p1, v1, Ls1/m$a;->a:Z

    const/4 p2, 0x0

    if-nez p1, :cond_52

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_2f

    goto :goto_3d

    :cond_2f
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x1

    :cond_3d
    :goto_3d
    if-eqz p2, :cond_4a

    monitor-enter v1
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_7b

    const-wide/16 p1, 0x32

    :try_start_42
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_23

    :catchall_47
    move-exception p1

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_47

    :try_start_49
    throw p1

    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SyncAccessor has dead."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    iget-object p1, v1, Ls1/m$a;->c:Ljava/lang/Object;

    iget-object v0, v1, Ls1/m$a;->d:Ljava/lang/RuntimeException;

    sget-object v3, Ls1/m$a;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_7b

    :try_start_59
    iput-object v2, v1, Ls1/m$a;->b:[Ljava/lang/Object;

    iput-object v2, v1, Ls1/m$a;->c:Ljava/lang/Object;

    iput-object v2, v1, Ls1/m$a;->d:Ljava/lang/RuntimeException;

    iput-boolean p2, v1, Ls1/m$a;->a:Z

    sget-object p2, Ls1/m$a;->g:Ls1/m$a;

    iput-object p2, v1, Ls1/m$a;->e:Ls1/m$a;

    sput-object v1, Ls1/m$a;->g:Ls1/m$a;

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_6d

    if-nez v0, :cond_6c

    monitor-exit p0

    return-object p1

    :cond_6c
    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_7b

    :catchall_6d
    move-exception p1

    :try_start_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw p1

    :cond_70
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SyncAccessor has dead."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_7b

    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    throw p0
.end method

.method public final dispatchMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    instance-of v1, v0, Ls1/m$a;

    if-eqz v1, :cond_3b

    check-cast v0, Ls1/m$a;

    const/4 v1, 0x1

    :try_start_b
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v2, v0, Ls1/m$a;->b:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Ls1/m;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ls1/m$a;->c:Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_15} :catch_22
    .catchall {:try_start_b .. :try_end_15} :catchall_20

    iput-boolean v1, v0, Ls1/m$a;->a:Z

    monitor-enter v0

    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_3e

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p1

    :catchall_20
    move-exception p1

    goto :goto_30

    :catch_22
    move-exception p1

    :try_start_23
    iput-object p1, v0, Ls1/m$a;->d:Ljava/lang/RuntimeException;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_20

    iput-boolean v1, v0, Ls1/m$a;->a:Z

    monitor-enter v0

    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_3e

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw p1

    :goto_30
    iput-boolean v1, v0, Ls1/m$a;->a:Z

    monitor-enter v0

    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_38

    throw p1

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :goto_3e
    return-void
.end method
