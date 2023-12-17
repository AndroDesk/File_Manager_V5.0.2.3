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


# virtual methods
.method public final a(Lkotlinx/coroutines/d$b;)V
    .registers 4
    .param p1  # Lkotlinx/coroutines/d$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    .line 3
    sget-object v1, Lp3/u;->b:Lu3/r;

    .line 5
    if-eq v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    if-eqz v0, :cond_e

    .line 12
    iput-object p1, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Failed requirement."

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/d$a;

    .line 3
    iget-wide v0, p0, Lkotlinx/coroutines/d$a;->a:J

    .line 5
    iget-wide v2, p1, Lkotlinx/coroutines/d$a;->a:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long p1, v0, v2

    .line 12
    if-lez p1, :cond_f

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    if-gez p1, :cond_13

    .line 18
    const/4 p1, -0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    return p1
.end method

.method public final declared-synchronized dispose()V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    .line 4
    sget-object v1, Lp3/u;->b:Lu3/r;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_31

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    instance-of v2, v0, Lkotlinx/coroutines/d$b;

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_11

    .line 15
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move-object v0, v3

    .line 19
    :goto_12
    if-nez v0, :cond_15

    .line 21
    goto :goto_2b

    .line 22
    :cond_15
    monitor-enter v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_31

    .line 23
    :try_start_16
    iget-object v2, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    .line 25
    instance-of v4, v2, Lu3/t;

    .line 27
    if-eqz v4, :cond_22

    .line 29
    move-object v3, v2

    .line 30
    check-cast v3, Lu3/t;

    .line 32
    goto :goto_22

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    goto :goto_2f

    .line 35
    :cond_22
    :goto_22
    if-nez v3, :cond_25

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    iget v2, p0, Lkotlinx/coroutines/d$a;->c:I

    .line 40
    invoke-virtual {v0, v2}, Lu3/t;->c(I)Lu3/u;
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_20

    .line 43
    :goto_2a
    :try_start_2a
    monitor-exit v0

    .line 44
    :goto_2b
    iput-object v1, p0, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_2f
    :try_start_2f
    monitor-exit v0

    .line 49
    throw v1
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_31

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public final setIndex(I)V
    .registers 2

    .line 1
    iput p1, p0, Lkotlinx/coroutines/d$a;->c:I

    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Delayed[nanos="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lkotlinx/coroutines/d$a;->a:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x5d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
