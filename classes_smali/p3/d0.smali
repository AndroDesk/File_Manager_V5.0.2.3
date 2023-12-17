.class public abstract Lp3/d0;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "EventLoop.common.kt"


# instance fields
.field public b:J

.field public c:Z

.field public d:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lp3/y<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public shutdown()V
    .registers 1

    return-void
.end method

.method public final u()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lp3/d0;->b:J

    .line 3
    const-wide v2, 0x100000000L

    .line 8
    sub-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lp3/d0;->b:J

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-lez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-boolean v0, p0, Lp3/d0;->c:Z

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {p0}, Lp3/d0;->shutdown()V

    .line 25
    :cond_18
    return-void
.end method

.method public final v(Lp3/y;)V
    .registers 14
    .param p1  # Lp3/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/y<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lu3/a;

    .line 7
    invoke-direct {v0}, Lu3/a;-><init>()V

    .line 10
    iput-object v0, p0, Lp3/d0;->d:Lu3/a;

    .line 12
    :cond_b
    iget-object v1, v0, Lu3/a;->a:[Ljava/lang/Object;

    .line 14
    iget v2, v0, Lu3/a;->c:I

    .line 16
    aput-object p1, v1, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 20
    array-length p1, v1

    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 23
    and-int/2addr p1, v2

    .line 24
    iput p1, v0, Lu3/a;->c:I

    .line 26
    iget v4, v0, Lu3/a;->b:I

    .line 28
    if-ne p1, v4, :cond_3e

    .line 30
    array-length p1, v1

    .line 31
    shl-int/lit8 v2, p1, 0x1

    .line 33
    new-array v11, v2, [Ljava/lang/Object;

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/16 v6, 0xa

    .line 39
    move-object v2, v11

    .line 40
    invoke-static/range {v1 .. v6}, Lz2/b;->e([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 43
    iget-object v5, v0, Lu3/a;->a:[Ljava/lang/Object;

    .line 45
    array-length v1, v5

    .line 46
    iget v9, v0, Lu3/a;->b:I

    .line 48
    sub-int v7, v1, v9

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v10, 0x4

    .line 52
    move-object v6, v11

    .line 53
    invoke-static/range {v5 .. v10}, Lz2/b;->e([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 56
    iput-object v11, v0, Lu3/a;->a:[Ljava/lang/Object;

    .line 58
    const/4 v1, 0x0

    .line 59
    iput v1, v0, Lu3/a;->b:I

    .line 61
    iput p1, v0, Lu3/a;->c:I

    .line 63
    :cond_3e
    return-void
.end method

.method public final w(Z)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lp3/d0;->b:J

    .line 3
    if-eqz p1, :cond_a

    .line 5
    const-wide v2, 0x100000000L

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const-wide/16 v2, 0x1

    .line 13
    :goto_c
    add-long/2addr v2, v0

    .line 14
    iput-wide v2, p0, Lp3/d0;->b:J

    .line 16
    if-nez p1, :cond_14

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lp3/d0;->c:Z

    .line 21
    :cond_14
    return-void
.end method

.method public final x()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget v2, v0, Lu3/a;->b:I

    .line 9
    iget v3, v0, Lu3/a;->c:I

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ne v2, v3, :cond_f

    .line 15
    goto :goto_1f

    .line 16
    :cond_f
    iget-object v3, v0, Lu3/a;->a:[Ljava/lang/Object;

    .line 18
    aget-object v6, v3, v2

    .line 20
    aput-object v4, v3, v2

    .line 22
    add-int/2addr v2, v5

    .line 23
    array-length v3, v3

    .line 24
    add-int/lit8 v3, v3, -0x1

    .line 26
    and-int/2addr v2, v3

    .line 27
    iput v2, v0, Lu3/a;->b:I

    .line 29
    if-eqz v6, :cond_28

    .line 31
    move-object v4, v6

    .line 32
    :goto_1f
    check-cast v4, Lp3/y;

    .line 34
    if-nez v4, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    invoke-virtual {v4}, Lp3/y;->run()V

    .line 40
    return v5

    .line 41
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    .line 43
    const-string v1, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method
