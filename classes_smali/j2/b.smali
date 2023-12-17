.class public final Lj2/b;
.super Li2/i;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/b$b;,
        Lj2/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Li2/i;-><init>()V

    .line 4
    iput-object p1, p0, Lj2/b;->a:Landroid/os/Handler;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 3

    .line 1
    new-instance v0, Lj2/b$a;

    .line 3
    iget-object v1, p0, Lj2/b;->a:Landroid/os/Handler;

    .line 5
    invoke-direct {v0, v1}, Lj2/b$a;-><init>(Landroid/os/Handler;)V

    .line 8
    return-object v0
.end method

.method public final c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 7

    .line 1
    if-eqz p2, :cond_13

    .line 3
    new-instance v0, Lj2/b$b;

    .line 5
    iget-object v1, p0, Lj2/b;->a:Landroid/os/Handler;

    .line 7
    invoke-direct {v0, v1, p1}, Lj2/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 15
    move-result-wide p1

    .line 16
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    .line 22
    const-string p2, "unit == null"

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method
