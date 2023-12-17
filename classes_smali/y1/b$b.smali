.class public final Ly1/b$b;
.super Ljava/lang/Object;
.source "WpsSnapshotV1Loader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly1/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ly1/b;)V
    .registers 2

    iput-object p1, p0, Ly1/b$b;->a:Ly1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    const/4 v0, 0x0

    iput-object v0, p1, Ly1/b;->c:Lc/b;

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    const/4 v1, 0x0

    iput-boolean v1, p1, Ly1/b;->d:Z

    monitor-enter p1

    :try_start_b
    iput-object v0, p1, Ly1/b;->c:Lc/b;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_18

    monitor-exit p1

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    iget-object p1, p1, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    sget v0, Lc/b$a;->a:I

    if-nez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_1e

    :cond_8
    const-string v0, "cn.wps.moffice.service.lite.OfficeLiteService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Lc/b;

    if-eqz v1, :cond_18

    move-object p2, v0

    check-cast p2, Lc/b;

    goto :goto_1e

    :cond_18
    new-instance v0, Lc/b$a$a;

    invoke-direct {v0, p2}, Lc/b$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_1e
    iput-object p2, p1, Ly1/b;->c:Lc/b;

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    const/4 p2, 0x0

    iput-boolean p2, p1, Ly1/b;->d:Z

    iget-object p1, p1, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2c
    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    iget-object p2, p1, Ly1/b;->c:Lc/b;

    monitor-enter p1

    :try_start_31
    iput-object p2, p1, Ly1/b;->c:Lc/b;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_35

    monitor-exit p1

    return-void

    :catchall_35
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    const/4 v0, 0x0

    iput-object v0, p1, Ly1/b;->c:Lc/b;

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    const/4 v1, 0x0

    iput-boolean v1, p1, Ly1/b;->d:Z

    monitor-enter p1

    :try_start_b
    iput-object v0, p1, Ly1/b;->c:Lc/b;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_18

    monitor-exit p1

    iget-object p1, p0, Ly1/b$b;->a:Ly1/b;

    iget-object p1, p1, Ly1/b;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    monitor-exit p1

    throw v0
.end method
