.class public Lu3/t;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lu3/u;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile synthetic _size:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public a:[Lu3/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu3/t;->_size:I

    return-void
.end method


# virtual methods
.method public final a(Lu3/u;)V
    .registers 5
    .param p1  # Lu3/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/d$b;

    invoke-interface {p1, v0}, Lu3/u;->a(Lkotlinx/coroutines/d$b;)V

    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    if-nez v0, :cond_10

    const/4 v0, 0x4

    new-array v0, v0, [Lu3/u;

    iput-object v0, p0, Lu3/t;->a:[Lu3/u;

    goto :goto_26

    :cond_10
    iget v1, p0, Lu3/t;->_size:I

    array-length v2, v0

    if-lt v1, v2, :cond_26

    iget v1, p0, Lu3/t;->_size:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lu3/u;

    iput-object v0, p0, Lu3/t;->a:[Lu3/u;

    :cond_26
    :goto_26
    iget v1, p0, Lu3/t;->_size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu3/t;->_size:I

    aput-object p1, v0, v1

    invoke-interface {p1, v1}, Lu3/u;->setIndex(I)V

    invoke-virtual {p0, v1}, Lu3/t;->e(I)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget v0, p0, Lu3/t;->_size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final c(I)Lu3/u;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    iget v1, p0, Lu3/t;->_size:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lu3/t;->_size:I

    iget v1, p0, Lu3/t;->_size:I

    if-ge p1, v1, :cond_72

    iget v1, p0, Lu3/t;->_size:I

    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_33

    aget-object v3, v0, p1

    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_33

    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    invoke-virtual {p0, v1}, Lu3/t;->e(I)V

    goto :goto_72

    :cond_33
    :goto_33
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lu3/t;->_size:I

    if-lt v1, v3, :cond_3c

    goto :goto_72

    :cond_3c
    iget-object v3, p0, Lu3/t;->a:[Lu3/u;

    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lu3/t;->_size:I

    if-ge v4, v5, :cond_5a

    aget-object v5, v3, v4

    invoke-static {v5}, Li3/g;->b(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v3, v1

    invoke-static {v6}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5a

    move v1, v4

    :cond_5a
    aget-object v4, v3, p1

    invoke-static {v4}, Li3/g;->b(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_6d

    goto :goto_72

    :cond_6d
    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    move p1, v1

    goto :goto_33

    :cond_72
    :goto_72
    iget p1, p0, Lu3/t;->_size:I

    aget-object p1, v0, p1

    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lu3/u;->a(Lkotlinx/coroutines/d$b;)V

    invoke-interface {p1, v2}, Lu3/u;->setIndex(I)V

    iget v2, p0, Lu3/t;->_size:I

    aput-object v1, v0, v2

    return-object p1
.end method

.method public final d()Lu3/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lu3/t;->_size:I

    if-lez v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu3/t;->c(I)Lu3/u;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(I)V
    .registers 5

    :goto_0
    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Li3/g;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final f(II)V
    .registers 6

    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    aget-object v1, v0, p2

    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    aget-object v2, v0, p1

    invoke-static {v2}, Li3/g;->b(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    aput-object v2, v0, p2

    invoke-interface {v1, p1}, Lu3/u;->setIndex(I)V

    invoke-interface {v2, p2}, Lu3/u;->setIndex(I)V

    return-void
.end method
