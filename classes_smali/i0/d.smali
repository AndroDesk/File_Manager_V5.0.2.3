.class public final Li0/d;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/d$b;,
        Li0/d$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Li0/d$b;

.field public c:Landroid/os/CancellationSignal;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public setOnCancelListener(Li0/d$b;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :catch_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Li0/d;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    .line 4
    if-eqz v0, :cond_9

    .line 6
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_1
    .catchall {:try_start_5 .. :try_end_8} :catchall_1f

    .line 9
    goto :goto_1

    .line 10
    :cond_9
    :try_start_9
    iget-object v0, p0, Li0/d;->b:Li0/d$b;

    .line 12
    if-ne v0, p1, :cond_f

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_f
    iput-object p1, p0, Li0/d;->b:Li0/d$b;

    .line 18
    iget-boolean v0, p0, Li0/d;->a:Z

    .line 20
    if-eqz v0, :cond_1d

    .line 22
    if-nez p1, :cond_18

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1f

    .line 26
    invoke-interface {p1}, Li0/d$b;->onCancel()V

    .line 29
    return-void

    .line 30
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    .line 34
    throw p1
.end method
