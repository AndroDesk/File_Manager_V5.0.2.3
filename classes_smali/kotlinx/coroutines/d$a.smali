.class public abstract Lkotlinx/coroutines/d$a;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lp3/b0;
.implements Lu3/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/d$a;",
        ">;",
        "Lp3/b0;",
        "Lu3/u;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/d$b;)V
    .registers 4
    .param p1  # Lkotlinx/coroutines/d$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    sget-object v1, Lp3/u;->b:Lu3/r;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    iput-object p1, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lkotlinx/coroutines/d$a;

    iget-wide v0, p0, Lkotlinx/coroutines/d$a;->a:J

    iget-wide v2, p1, Lkotlinx/coroutines/d$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_14

    :cond_f
    if-gez p1, :cond_13

    const/4 p1, -0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public final declared-synchronized dispose()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    sget-object v1, Lp3/u;->b:Lu3/r;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_31

    if-ne v0, v1, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    instance-of v2, v0, Lkotlinx/coroutines/d$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    check-cast v0, Lkotlinx/coroutines/d$b;

    goto :goto_12

    :cond_11
    move-object v0, v3

    :goto_12
    if-nez v0, :cond_15

    goto :goto_2b

    :cond_15
    monitor-enter v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_31

    :try_start_16
    iget-object v2, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    instance-of v4, v2, Lu3/t;

    if-eqz v4, :cond_22

    move-object v3, v2

    check-cast v3, Lu3/t;

    goto :goto_22

    :catchall_20
    move-exception v1

    goto :goto_2f

    :cond_22
    :goto_22
    if-nez v3, :cond_25

    goto :goto_2a

    :cond_25
    iget v2, p0, Lkotlinx/coroutines/d$a;->c:I

    invoke-virtual {v0, v2}, Lu3/t;->c(I)Lu3/u;
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_20

    :goto_2a
    :try_start_2a
    monitor-exit v0

    :goto_2b
    iput-object v1, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit v0

    throw v1
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setIndex(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/d$a;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Delayed[nanos="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lkotlinx/coroutines/d$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
