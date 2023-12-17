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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnCancelListener(Li0/d$b;)V
    .registers 3

    monitor-enter p0

    :catch_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Li0/d;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_1
    .catchall {:try_start_5 .. :try_end_8} :catchall_1f

    goto :goto_1

    :cond_9
    :try_start_9
    iget-object v0, p0, Li0/d;->b:Li0/d$b;

    if-ne v0, p1, :cond_f

    monitor-exit p0

    return-void

    :cond_f
    iput-object p1, p0, Li0/d;->b:Li0/d$b;

    iget-boolean v0, p0, Li0/d;->a:Z

    if-eqz v0, :cond_1d

    if-nez p1, :cond_18

    goto :goto_1d

    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1f

    invoke-interface {p1}, Li0/d$b;->onCancel()V

    return-void

    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw p1
.end method
