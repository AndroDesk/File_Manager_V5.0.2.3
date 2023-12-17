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
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Ls1/m$a;->f:Ljava/lang/Object;

    .line 4
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7b

    .line 5
    :try_start_4
    sget-object v1, Ls1/m$a;->g:Ls1/m$a;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_11

    .line 10
    iget-object v3, v1, Ls1/m$a;->e:Ls1/m$a;

    .line 12
    sput-object v3, Ls1/m$a;->g:Ls1/m$a;

    .line 14
    iput-object v2, v1, Ls1/m$a;->e:Ls1/m$a;

    .line 16
    monitor-exit v0

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_78

    .line 19
    :try_start_12
    new-instance v1, Ls1/m$a;

    .line 21
    invoke-direct {v1}, Ls1/m$a;-><init>()V

    .line 24
    :goto_17
    iput-object p2, v1, Ls1/m$a;->b:[Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_70

    .line 36
    :goto_23
    iget-boolean p1, v1, Ls1/m$a;->a:Z

    .line 38
    const/4 p2, 0x0

    .line 39
    if-nez p1, :cond_52

    .line 41
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_2f

    .line 47
    goto :goto_3d

    .line 48
    :cond_2f
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_3d

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3c

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    const/4 p2, 0x1

    .line 62
    :cond_3d
    :goto_3d
    if-eqz p2, :cond_4a

    .line 64
    monitor-enter v1
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_7b

    .line 65
    const-wide/16 p1, 0x32

    .line 67
    :try_start_42
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 70
    monitor-exit v1

    .line 71
    goto :goto_23

    .line 72
    :catchall_47
    move-exception p1

    .line 73
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_47

    .line 74
    :try_start_49
    throw p1

    .line 75
    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 77
    const-string p2, "SyncAccessor has dead."

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    :cond_52
    iget-object p1, v1, Ls1/m$a;->c:Ljava/lang/Object;

    .line 85
    iget-object v0, v1, Ls1/m$a;->d:Ljava/lang/RuntimeException;

    .line 87
    sget-object v3, Ls1/m$a;->f:Ljava/lang/Object;

    .line 89
    monitor-enter v3
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_7b

    .line 90
    :try_start_59
    iput-object v2, v1, Ls1/m$a;->b:[Ljava/lang/Object;

    .line 92
    iput-object v2, v1, Ls1/m$a;->c:Ljava/lang/Object;

    .line 94
    iput-object v2, v1, Ls1/m$a;->d:Ljava/lang/RuntimeException;

    .line 96
    iput-boolean p2, v1, Ls1/m$a;->a:Z

    .line 98
    sget-object p2, Ls1/m$a;->g:Ls1/m$a;

    .line 100
    iput-object p2, v1, Ls1/m$a;->e:Ls1/m$a;

    .line 102
    sput-object v1, Ls1/m$a;->g:Ls1/m$a;

    .line 104
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_6d

    .line 105
    if-nez v0, :cond_6c

    .line 107
    monitor-exit p0

    .line 108
    return-object p1

    .line 109
    :cond_6c
    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_7b

    .line 110
    :catchall_6d
    move-exception p1

    .line 111
    :try_start_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    .line 112
    :try_start_6f
    throw p1

    .line 113
    :cond_70
    new-instance p1, Ljava/lang/RuntimeException;

    .line 115
    const-string p2, "SyncAccessor has dead."

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_7b

    .line 121
    :catchall_78
    move-exception p1

    .line 122
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    .line 123
    :try_start_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    .line 124
    :catchall_7b
    move-exception p1

    .line 125
    monitor-exit p0

    .line 126
    throw p1
.end method

.method public varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    throw p0
.end method

.method public final dispatchMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_3b

    .line 5
    instance-of v1, v0, Ls1/m$a;

    .line 7
    if-eqz v1, :cond_3b

    .line 9
    check-cast v0, Ls1/m$a;

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_b
    iget p1, p1, Landroid/os/Message;->what:I

    .line 14
    iget-object v2, v0, Ls1/m$a;->b:[Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, p1, v2}, Ls1/m;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    iput-object p1, v0, Ls1/m$a;->c:Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_15} :catch_22
    .catchall {:try_start_b .. :try_end_15} :catchall_20

    .line 22
    iput-boolean v1, v0, Ls1/m$a;->a:Z

    .line 24
    monitor-enter v0

    .line 25
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 28
    monitor-exit v0

    .line 29
    goto :goto_3e

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    .line 32
    throw p1

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    goto :goto_30

    .line 35
    :catch_22
    move-exception p1

    .line 36
    :try_start_23
    iput-object p1, v0, Ls1/m$a;->d:Ljava/lang/RuntimeException;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_20

    .line 38
    iput-boolean v1, v0, Ls1/m$a;->a:Z

    .line 40
    monitor-enter v0

    .line 41
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit v0

    .line 45
    goto :goto_3e

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    .line 48
    throw p1

    .line 49
    :goto_30
    iput-boolean v1, v0, Ls1/m$a;->a:Z

    .line 51
    monitor-enter v0

    .line 52
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_38

    .line 56
    throw p1

    .line 57
    :catchall_38
    move-exception p1

    .line 58
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .line 59
    throw p1

    .line 60
    :cond_3b
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 63
    :goto_3e
    return-void
.end method
