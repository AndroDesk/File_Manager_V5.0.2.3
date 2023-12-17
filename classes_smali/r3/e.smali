.class public final Lr3/e;
.super Lr3/a;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr3/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:I

.field private volatile synthetic size:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lh3/l;)V
    .registers 5
    .param p2  # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lh3/l<",
            "-TE;",
            "Ly2/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lr3/a;-><init>(Lh3/l;)V

    .line 4
    iput p1, p0, Lr3/e;->c:I

    .line 6
    iput-object p2, p0, Lr3/e;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 8
    const/4 p2, 0x1

    .line 9
    const/4 p3, 0x0

    .line 10
    if-lt p1, p2, :cond_c

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move p2, p3

    .line 14
    :goto_d
    if-eqz p2, :cond_28

    .line 16
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    iput-object p2, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    const/16 p2, 0x8

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result p1

    .line 29
    new-array p2, p1, [Ljava/lang/Object;

    .line 31
    sget-object v0, Lr3/c;->a:Lu3/r;

    .line 33
    invoke-static {p2, p3, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 36
    iput-object p2, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 38
    iput p3, p0, Lr3/e;->size:I

    .line 40
    return-void

    .line 41
    :cond_28
    const-string p2, "ArrayChannel capacity must be at least 1, but "

    .line 43
    const-string p3, " was specified"

    .line 45
    invoke-static {p2, p1, p3}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p2
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "(buffer:capacity="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lr3/e;->c:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ",size="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lr3/e;->size:I

    .line 19
    const/16 v2, 0x29

    .line 21
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    iget v1, p0, Lr3/e;->size:I

    .line 8
    invoke-virtual {p0}, Lr3/d;->c()Lr3/i;

    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_6d

    .line 14
    iget v2, p0, Lr3/e;->c:I

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ge v1, v2, :cond_17

    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 21
    iput v2, p0, Lr3/e;->size:I

    .line 23
    goto :goto_36

    .line 24
    :cond_17
    iget-object v2, p0, Lr3/e;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 26
    sget-object v4, Lr3/e$a;->a:[I

    .line 28
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    move-result v2

    .line 32
    aget v2, v4, v2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v2, v4, :cond_34

    .line 37
    const/4 v4, 0x2

    .line 38
    if-eq v2, v4, :cond_31

    .line 40
    const/4 v4, 0x3

    .line 41
    if-ne v2, v4, :cond_2b

    .line 43
    goto :goto_36

    .line 44
    :cond_2b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 46
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_31
    sget-object v3, Lr3/c;->b:Lu3/r;

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    sget-object v3, Lr3/c;->c:Lu3/r;

    .line 55
    :goto_36
    if-nez v3, :cond_69

    .line 57
    if-nez v1, :cond_60

    .line 59
    :cond_3a
    invoke-virtual {p0}, Lr3/a;->f()Lr3/k;

    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_41

    .line 65
    goto :goto_60

    .line 66
    :cond_41
    instance-of v3, v2, Lr3/i;

    .line 68
    if-eqz v3, :cond_4b

    .line 70
    iput v1, p0, Lr3/e;->size:I
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_71

    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 75
    return-object v2

    .line 76
    :cond_4b
    :try_start_4b
    invoke-interface {v2, p1}, Lr3/k;->b(Ljava/lang/Object;)Lu3/r;

    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_3a

    .line 82
    iput v1, p0, Lr3/e;->size:I

    .line 84
    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_71

    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    invoke-interface {v2, p1}, Lr3/k;->e(Ljava/lang/Object;)V

    .line 92
    invoke-interface {v2}, Lr3/k;->c()Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :cond_60
    :goto_60
    :try_start_60
    invoke-virtual {p0, v1, p1}, Lr3/e;->l(ILjava/lang/Object;)V

    .line 100
    sget-object p1, Lr3/c;->b:Lu3/r;
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_71

    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    return-object p1

    .line 106
    :cond_69
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    return-object v3

    .line 110
    :cond_6d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    return-object v2

    .line 114
    :catchall_71
    move-exception p1

    .line 115
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    throw p1
.end method

.method public final h(Lr3/a$b;)Z
    .registers 3
    .param p1  # Lr3/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    invoke-super {p0, p1}, Lr3/a;->h(Lr3/a$b;)Z

    .line 9
    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    return p1

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 18
    throw p1
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .registers 2

    .line 1
    iget v0, p0, Lr3/e;->size:I

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

.method public final k()Ljava/lang/Object;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_5
    iget v1, p0, Lr3/e;->size:I

    .line 8
    if-nez v1, :cond_15

    .line 10
    invoke-virtual {p0}, Lr3/d;->c()Lr3/i;

    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_11

    .line 16
    sget-object v1, Lr3/c;->d:Lu3/r;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_64

    .line 18
    :cond_11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    return-object v1

    .line 22
    :cond_15
    :try_start_15
    iget-object v2, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 24
    iget v3, p0, Lr3/e;->g:I

    .line 26
    aget-object v4, v2, v3

    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v5, v2, v3

    .line 31
    add-int/lit8 v2, v1, -0x1

    .line 33
    iput v2, p0, Lr3/e;->size:I

    .line 35
    sget-object v2, Lr3/c;->d:Lu3/r;

    .line 37
    iget v3, p0, Lr3/e;->c:I

    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    if-ne v1, v3, :cond_3a

    .line 43
    invoke-virtual {p0}, Lr3/d;->g()Lr3/l;

    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_31

    .line 49
    goto :goto_3a

    .line 50
    :cond_31
    invoke-virtual {v3}, Lr3/l;->r()V

    .line 53
    invoke-virtual {v3}, Lr3/l;->q()Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    move v7, v6

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    :goto_3a
    move-object v3, v5

    .line 60
    move-object v5, v2

    .line 61
    :goto_3c
    if-eq v5, v2, :cond_4d

    .line 63
    instance-of v2, v5, Lr3/i;

    .line 65
    if-nez v2, :cond_4d

    .line 67
    iput v1, p0, Lr3/e;->size:I

    .line 69
    iget-object v2, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 71
    iget v8, p0, Lr3/e;->g:I

    .line 73
    add-int/2addr v8, v1

    .line 74
    array-length v1, v2

    .line 75
    rem-int/2addr v8, v1

    .line 76
    aput-object v5, v2, v8

    .line 78
    :cond_4d
    iget v1, p0, Lr3/e;->g:I

    .line 80
    add-int/2addr v1, v6

    .line 81
    iget-object v2, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 83
    array-length v2, v2

    .line 84
    rem-int/2addr v1, v2

    .line 85
    iput v1, p0, Lr3/e;->g:I

    .line 87
    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_64

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 92
    if-eqz v7, :cond_63

    .line 94
    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v3}, Lr3/l;->p()V

    .line 100
    :cond_63
    return-object v4

    .line 101
    :catchall_64
    move-exception v1

    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    throw v1
.end method

.method public final l(ILjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lr3/e;->c:I

    .line 3
    if-ge p1, v0, :cond_38

    .line 5
    iget-object v1, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 7
    array-length v2, v1

    .line 8
    if-lt p1, v2, :cond_2e

    .line 10
    array-length v1, v1

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result v0

    .line 17
    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_14
    if-ge v3, p1, :cond_25

    .line 23
    add-int/lit8 v4, v3, 0x1

    .line 25
    iget-object v5, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 27
    iget v6, p0, Lr3/e;->g:I

    .line 29
    add-int/2addr v6, v3

    .line 30
    array-length v7, v5

    .line 31
    rem-int/2addr v6, v7

    .line 32
    aget-object v5, v5, v6

    .line 34
    aput-object v5, v1, v3

    .line 36
    move v3, v4

    .line 37
    goto :goto_14

    .line 38
    :cond_25
    sget-object v3, Lr3/c;->a:Lu3/r;

    .line 40
    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 43
    iput-object v1, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 45
    iput v2, p0, Lr3/e;->g:I

    .line 47
    :cond_2e
    iget-object v0, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 49
    iget v1, p0, Lr3/e;->g:I

    .line 51
    add-int/2addr v1, p1

    .line 52
    array-length p1, v0

    .line 53
    rem-int/2addr v1, p1

    .line 54
    aput-object p2, v0, v1

    .line 56
    goto :goto_4d

    .line 57
    :cond_38
    iget-object v0, p0, Lr3/e;->f:[Ljava/lang/Object;

    .line 59
    iget v1, p0, Lr3/e;->g:I

    .line 61
    array-length v2, v0

    .line 62
    rem-int v2, v1, v2

    .line 64
    const/4 v3, 0x0

    .line 65
    aput-object v3, v0, v2

    .line 67
    add-int/2addr p1, v1

    .line 68
    array-length v2, v0

    .line 69
    rem-int/2addr p1, v2

    .line 70
    aput-object p2, v0, p1

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 74
    array-length p1, v0

    .line 75
    rem-int/2addr v1, p1

    .line 76
    iput v1, p0, Lr3/e;->g:I

    .line 78
    :goto_4d
    return-void
.end method
