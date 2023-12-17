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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu3/t;->_size:I

    .line 7
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

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 4
    invoke-interface {p1, v0}, Lu3/u;->a(Lkotlinx/coroutines/d$b;)V

    .line 7
    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    .line 9
    if-nez v0, :cond_10

    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Lu3/u;

    .line 14
    iput-object v0, p0, Lu3/t;->a:[Lu3/u;

    .line 16
    goto :goto_26

    .line 17
    :cond_10
    iget v1, p0, Lu3/t;->_size:I

    .line 19
    array-length v2, v0

    .line 20
    if-lt v1, v2, :cond_26

    .line 22
    iget v1, p0, Lu3/t;->_size:I

    .line 24
    mul-int/lit8 v1, v1, 0x2

    .line 26
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "copyOf(this, newSize)"

    .line 32
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast v0, [Lu3/u;

    .line 37
    iput-object v0, p0, Lu3/t;->a:[Lu3/u;

    .line 39
    :cond_26
    :goto_26
    iget v1, p0, Lu3/t;->_size:I

    .line 41
    add-int/lit8 v2, v1, 0x1

    .line 43
    iput v2, p0, Lu3/t;->_size:I

    .line 45
    aput-object p1, v0, v1

    .line 47
    invoke-interface {p1, v1}, Lu3/u;->setIndex(I)V

    .line 50
    invoke-virtual {p0, v1}, Lu3/t;->e(I)V

    .line 53
    return-void
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget v0, p0, Lu3/t;->_size:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
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

    .line 1
    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    .line 3
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 6
    iget v1, p0, Lu3/t;->_size:I

    .line 8
    const/4 v2, -0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, p0, Lu3/t;->_size:I

    .line 12
    iget v1, p0, Lu3/t;->_size:I

    .line 14
    if-ge p1, v1, :cond_72

    .line 16
    iget v1, p0, Lu3/t;->_size:I

    .line 18
    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    .line 21
    add-int/lit8 v1, p1, -0x1

    .line 23
    div-int/lit8 v1, v1, 0x2

    .line 25
    if-lez p1, :cond_33

    .line 27
    aget-object v3, v0, p1

    .line 29
    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    .line 32
    check-cast v3, Ljava/lang/Comparable;

    .line 34
    aget-object v4, v0, v1

    .line 36
    invoke-static {v4}, Li3/g;->b(Ljava/lang/Object;)V

    .line 39
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 42
    move-result v3

    .line 43
    if-gez v3, :cond_33

    .line 45
    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    .line 48
    invoke-virtual {p0, v1}, Lu3/t;->e(I)V

    .line 51
    goto :goto_72

    .line 52
    :cond_33
    :goto_33
    mul-int/lit8 v1, p1, 0x2

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 56
    iget v3, p0, Lu3/t;->_size:I

    .line 58
    if-lt v1, v3, :cond_3c

    .line 60
    goto :goto_72

    .line 61
    :cond_3c
    iget-object v3, p0, Lu3/t;->a:[Lu3/u;

    .line 63
    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    .line 66
    add-int/lit8 v4, v1, 0x1

    .line 68
    iget v5, p0, Lu3/t;->_size:I

    .line 70
    if-ge v4, v5, :cond_5a

    .line 72
    aget-object v5, v3, v4

    .line 74
    invoke-static {v5}, Li3/g;->b(Ljava/lang/Object;)V

    .line 77
    check-cast v5, Ljava/lang/Comparable;

    .line 79
    aget-object v6, v3, v1

    .line 81
    invoke-static {v6}, Li3/g;->b(Ljava/lang/Object;)V

    .line 84
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 87
    move-result v5

    .line 88
    if-gez v5, :cond_5a

    .line 90
    move v1, v4

    .line 91
    :cond_5a
    aget-object v4, v3, p1

    .line 93
    invoke-static {v4}, Li3/g;->b(Ljava/lang/Object;)V

    .line 96
    check-cast v4, Ljava/lang/Comparable;

    .line 98
    aget-object v3, v3, v1

    .line 100
    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    .line 103
    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 106
    move-result v3

    .line 107
    if-gtz v3, :cond_6d

    .line 109
    goto :goto_72

    .line 110
    :cond_6d
    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    .line 113
    move p1, v1

    .line 114
    goto :goto_33

    .line 115
    :cond_72
    :goto_72
    iget p1, p0, Lu3/t;->_size:I

    .line 117
    aget-object p1, v0, p1

    .line 119
    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-interface {p1, v1}, Lu3/u;->a(Lkotlinx/coroutines/d$b;)V

    .line 126
    invoke-interface {p1, v2}, Lu3/u;->setIndex(I)V

    .line 129
    iget v2, p0, Lu3/t;->_size:I

    .line 131
    aput-object v1, v0, v2

    .line 133
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lu3/t;->_size:I

    .line 4
    if-lez v0, :cond_b

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lu3/t;->c(I)Lu3/u;

    .line 10
    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_e
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public final e(I)V
    .registers 5

    .line 1
    :goto_0
    if-gtz p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    .line 6
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 9
    add-int/lit8 v1, p1, -0x1

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 13
    aget-object v2, v0, v1

    .line 15
    invoke-static {v2}, Li3/g;->b(Ljava/lang/Object;)V

    .line 18
    check-cast v2, Ljava/lang/Comparable;

    .line 20
    aget-object v0, v0, p1

    .line 22
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 25
    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 28
    move-result v0

    .line 29
    if-gtz v0, :cond_1f

    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-virtual {p0, p1, v1}, Lu3/t;->f(II)V

    .line 35
    move p1, v1

    .line 36
    goto :goto_0
.end method

.method public final f(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lu3/t;->a:[Lu3/u;

    .line 3
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 6
    aget-object v1, v0, p2

    .line 8
    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 11
    aget-object v2, v0, p1

    .line 13
    invoke-static {v2}, Li3/g;->b(Ljava/lang/Object;)V

    .line 16
    aput-object v1, v0, p1

    .line 18
    aput-object v2, v0, p2

    .line 20
    invoke-interface {v1, p1}, Lu3/u;->setIndex(I)V

    .line 23
    invoke-interface {v2, p2}, Lu3/u;->setIndex(I)V

    .line 26
    return-void
.end method
