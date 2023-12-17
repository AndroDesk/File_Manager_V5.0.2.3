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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public shutdown()V
    .registers 1

    return-void
.end method

.method public final u()V
    .registers 5

    iget-wide v0, p0, Lp3/d0;->b:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lp3/d0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    return-void

    :cond_11
    iget-boolean v0, p0, Lp3/d0;->c:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lp3/d0;->shutdown()V

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

    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    if-nez v0, :cond_b

    new-instance v0, Lu3/a;

    invoke-direct {v0}, Lu3/a;-><init>()V

    iput-object v0, p0, Lp3/d0;->d:Lu3/a;

    :cond_b
    iget-object v1, v0, Lu3/a;->a:[Ljava/lang/Object;

    iget v2, v0, Lu3/a;->c:I

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v2

    iput p1, v0, Lu3/a;->c:I

    iget v4, v0, Lu3/a;->b:I

    if-ne p1, v4, :cond_3e

    array-length p1, v1

    shl-int/lit8 v2, p1, 0x1

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Lz2/b;->e([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iget-object v5, v0, Lu3/a;->a:[Ljava/lang/Object;

    array-length v1, v5

    iget v9, v0, Lu3/a;->b:I

    sub-int v7, v1, v9

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lz2/b;->e([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iput-object v11, v0, Lu3/a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lu3/a;->b:I

    iput p1, v0, Lu3/a;->c:I

    :cond_3e
    return-void
.end method

.method public final w(Z)V
    .registers 6

    iget-wide v0, p0, Lp3/d0;->b:J

    if-eqz p1, :cond_a

    const-wide v2, 0x100000000L

    goto :goto_c

    :cond_a
    const-wide/16 v2, 0x1

    :goto_c
    add-long/2addr v2, v0

    iput-wide v2, p0, Lp3/d0;->b:J

    if-nez p1, :cond_14

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp3/d0;->c:Z

    :cond_14
    return-void
.end method

.method public final x()Z
    .registers 8

    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, v0, Lu3/a;->b:I

    iget v3, v0, Lu3/a;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_f

    goto :goto_1f

    :cond_f
    iget-object v3, v0, Lu3/a;->a:[Ljava/lang/Object;

    aget-object v6, v3, v2

    aput-object v4, v3, v2

    add-int/2addr v2, v5

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, v0, Lu3/a;->b:I

    if-eqz v6, :cond_28

    move-object v4, v6

    :goto_1f
    check-cast v4, Lp3/y;

    if-nez v4, :cond_24

    return v1

    :cond_24
    invoke-virtual {v4}, Lp3/y;->run()V

    return v5

    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
