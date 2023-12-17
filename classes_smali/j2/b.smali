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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Li2/i;-><init>()V

    iput-object p1, p0, Lj2/b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 3

    new-instance v0, Lj2/b$a;

    iget-object v1, p0, Lj2/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lj2/b$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public final c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 7

    if-eqz p2, :cond_13

    new-instance v0, Lj2/b$b;

    iget-object v1, p0, Lj2/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lj2/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0

    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
