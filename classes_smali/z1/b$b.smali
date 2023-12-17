.class public final Lz1/b$b;
.super Ljava/lang/Object;
.source "WpsSnapshotV2Loader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/b;


# direct methods
.method public constructor <init>(Lz1/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lz1/b;->c:Ld/b;

    .line 6
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p1, Lz1/b;->d:Z

    .line 11
    monitor-enter p1

    .line 12
    :try_start_b
    iput-object v0, p1, Lz1/b;->c:Ld/b;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_18

    .line 14
    monitor-exit p1

    .line 15
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 17
    iget-object p1, p1, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 19
    if-eqz p1, :cond_17

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    :cond_17
    return-void

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    monitor-exit p1

    .line 27
    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 3
    sget v0, Ld/b$a;->a:I

    .line 5
    if-nez p2, :cond_8

    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_1e

    .line 9
    :cond_8
    const-string v0, "cn.wps.moffice.service.work.snapshot.OfficeLiteService"

    .line 11
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_18

    .line 17
    instance-of v1, v0, Ld/b;

    .line 19
    if-eqz v1, :cond_18

    .line 21
    move-object p2, v0

    .line 22
    check-cast p2, Ld/b;

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    new-instance v0, Ld/b$a$a;

    .line 27
    invoke-direct {v0, p2}, Ld/b$a$a;-><init>(Landroid/os/IBinder;)V

    .line 30
    move-object p2, v0

    .line 31
    :goto_1e
    iput-object p2, p1, Lz1/b;->c:Ld/b;

    .line 33
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 35
    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p1, Lz1/b;->d:Z

    .line 38
    iget-object p2, p1, Lz1/b;->c:Ld/b;

    .line 40
    monitor-enter p1

    .line 41
    :try_start_28
    iput-object p2, p1, Lz1/b;->c:Ld/b;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_35

    .line 43
    monitor-exit p1

    .line 44
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 46
    iget-object p1, p1, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 48
    if-eqz p1, :cond_34

    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 53
    :cond_34
    return-void

    .line 54
    :catchall_35
    move-exception p2

    .line 55
    monitor-exit p1

    .line 56
    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lz1/b;->c:Ld/b;

    .line 6
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p1, Lz1/b;->d:Z

    .line 11
    monitor-enter p1

    .line 12
    :try_start_b
    iput-object v0, p1, Lz1/b;->c:Ld/b;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_18

    .line 14
    monitor-exit p1

    .line 15
    iget-object p1, p0, Lz1/b$b;->a:Lz1/b;

    .line 17
    iget-object p1, p1, Lz1/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 19
    if-eqz p1, :cond_17

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    :cond_17
    return-void

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    monitor-exit p1

    .line 27
    throw v0
.end method
