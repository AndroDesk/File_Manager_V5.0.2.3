.class public final Landroidx/core/app/JobIntentService$b;
.super Landroidx/core/app/JobIntentService$f;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/os/PowerManager$WakeLock;

.field public final b:Landroid/os/PowerManager$WakeLock;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Landroidx/core/app/JobIntentService$f;-><init>(Landroid/content/ComponentName;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    const-string v0, "power"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/os/PowerManager;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ":launch"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroidx/core/app/JobIntentService$b;->a:Landroid/os/PowerManager$WakeLock;

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p2, ":run"

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Landroidx/core/app/JobIntentService$b;->b:Landroid/os/PowerManager$WakeLock;

    .line 74
    invoke-virtual {p1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$b;->c:Z

    .line 4
    if-eqz v0, :cond_d

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$b;->c:Z

    .line 9
    iget-object v0, p0, Landroidx/core/app/JobIntentService$b;->b:Landroid/os/PowerManager$WakeLock;

    .line 11
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 14
    :cond_d
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    .line 18
    throw v0
.end method

.method public final b()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$b;->c:Z

    .line 4
    if-nez v0, :cond_15

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$b;->c:Z

    .line 9
    iget-object v0, p0, Landroidx/core/app/JobIntentService$b;->b:Landroid/os/PowerManager$WakeLock;

    .line 11
    const-wide/32 v1, 0x927c0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 17
    iget-object v0, p0, Landroidx/core/app/JobIntentService$b;->a:Landroid/os/PowerManager$WakeLock;

    .line 19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 22
    :cond_15
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception v0

    .line 25
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    .line 26
    throw v0
.end method

.method public final c()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    monitor-exit p0

    .line 3
    return-void

    .line 4
    :catchall_3
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3

    .line 6
    throw v0
.end method
