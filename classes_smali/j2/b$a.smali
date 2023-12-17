.class public final Lj2/b$a;
.super Li2/i$b;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public volatile b:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Li2/i$b;-><init>()V

    .line 4
    iput-object p1, p0, Lj2/b$a;->a:Landroid/os/Handler;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 7

    .line 1
    if-eqz p1, :cond_36

    .line 3
    if-eqz p4, :cond_2e

    .line 5
    iget-boolean v0, p0, Lj2/b$a;->b:Z

    .line 7
    if-eqz v0, :cond_b

    .line 9
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance v0, Lj2/b$b;

    .line 14
    iget-object v1, p0, Lj2/b$a;->a:Landroid/os/Handler;

    .line 16
    invoke-direct {v0, v1, p1}, Lj2/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 19
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 22
    move-result-object p1

    .line 23
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lj2/b$a;->a:Landroid/os/Handler;

    .line 27
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 30
    move-result-wide p2

    .line 31
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    iget-boolean p1, p0, Lj2/b$a;->b:Z

    .line 36
    if-eqz p1, :cond_2d

    .line 38
    iget-object p1, p0, Lj2/b$a;->a:Landroid/os/Handler;

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 45
    return-object p1

    .line 46
    :cond_2d
    return-object v0

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 49
    const-string p2, "unit == null"

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    :cond_36
    new-instance p1, Ljava/lang/NullPointerException;

    .line 57
    const-string p2, "run == null"

    .line 59
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1
.end method

.method public final dispose()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj2/b$a;->b:Z

    .line 4
    iget-object v0, p0, Lj2/b$a;->a:Landroid/os/Handler;

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lj2/b$a;->b:Z

    .line 3
    return v0
.end method
