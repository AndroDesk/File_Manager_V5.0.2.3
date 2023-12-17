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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p3}, Lr3/a;-><init>(Lh3/l;)V

    iput p1, p0, Lr3/e;->c:I

    iput-object p2, p0, Lr3/e;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lt p1, p2, :cond_c

    goto :goto_d

    :cond_c
    move p2, p3

    :goto_d
    if-eqz p2, :cond_28

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p2, p1, [Ljava/lang/Object;

    sget-object v0, Lr3/c;->a:Lu3/r;

    invoke-static {p2, p3, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object p2, p0, Lr3/e;->f:[Ljava/lang/Object;

    iput p3, p0, Lr3/e;->size:I

    return-void

    :cond_28
    const-string p2, "ArrayChannel capacity must be at least 1, but "

    const-string p3, " was specified"

    invoke-static {p2, p1, p3}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "(buffer:capacity="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lr3/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr3/e;->size:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v1, p0, Lr3/e;->size:I

    invoke-virtual {p0}, Lr3/d;->c()Lr3/i;

    move-result-object v2

    if-nez v2, :cond_6d

    iget v2, p0, Lr3/e;->c:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_17

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr3/e;->size:I

    goto :goto_36

    :cond_17
    iget-object v2, p0, Lr3/e;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v4, Lr3/e$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_34

    const/4 v4, 0x2

    if-eq v2, v4, :cond_31

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2b

    goto :goto_36

    :cond_2b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_31
    sget-object v3, Lr3/c;->b:Lu3/r;

    goto :goto_36

    :cond_34
    sget-object v3, Lr3/c;->c:Lu3/r;

    :goto_36
    if-nez v3, :cond_69

    if-nez v1, :cond_60

    :cond_3a
    invoke-virtual {p0}, Lr3/a;->f()Lr3/k;

    move-result-object v2

    if-nez v2, :cond_41

    goto :goto_60

    :cond_41
    instance-of v3, v2, Lr3/i;

    if-eqz v3, :cond_4b

    iput v1, p0, Lr3/e;->size:I
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_71

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_4b
    :try_start_4b
    invoke-interface {v2, p1}, Lr3/k;->b(Ljava/lang/Object;)Lu3/r;

    move-result-object v3

    if-eqz v3, :cond_3a

    iput v1, p0, Lr3/e;->size:I

    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_71

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v2, p1}, Lr3/k;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lr3/k;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_60
    :goto_60
    :try_start_60
    invoke-virtual {p0, v1, p1}, Lr3/e;->l(ILjava/lang/Object;)V

    sget-object p1, Lr3/c;->b:Lu3/r;
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_71

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_69
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_6d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_71
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final h(Lr3/a$b;)Z
    .registers 3
    .param p1  # Lr3/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-super {p0, p1}, Lr3/a;->h(Lr3/a$b;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_d
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .registers 2

    iget v0, p0, Lr3/e;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final k()Ljava/lang/Object;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v1, p0, Lr3/e;->size:I

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lr3/d;->c()Lr3/i;

    move-result-object v1

    if-nez v1, :cond_11

    sget-object v1, Lr3/c;->d:Lu3/r;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_64

    :cond_11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_15
    :try_start_15
    iget-object v2, p0, Lr3/e;->f:[Ljava/lang/Object;

    iget v3, p0, Lr3/e;->g:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lr3/e;->size:I

    sget-object v2, Lr3/c;->d:Lu3/r;

    iget v3, p0, Lr3/e;->c:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_3a

    invoke-virtual {p0}, Lr3/d;->g()Lr3/l;

    move-result-object v3

    if-nez v3, :cond_31

    goto :goto_3a

    :cond_31
    invoke-virtual {v3}, Lr3/l;->r()V

    invoke-virtual {v3}, Lr3/l;->q()Ljava/lang/Object;

    move-result-object v5

    move v7, v6

    goto :goto_3c

    :cond_3a
    :goto_3a
    move-object v3, v5

    move-object v5, v2

    :goto_3c
    if-eq v5, v2, :cond_4d

    instance-of v2, v5, Lr3/i;

    if-nez v2, :cond_4d

    iput v1, p0, Lr3/e;->size:I

    iget-object v2, p0, Lr3/e;->f:[Ljava/lang/Object;

    iget v8, p0, Lr3/e;->g:I

    add-int/2addr v8, v1

    array-length v1, v2

    rem-int/2addr v8, v1

    aput-object v5, v2, v8

    :cond_4d
    iget v1, p0, Lr3/e;->g:I

    add-int/2addr v1, v6

    iget-object v2, p0, Lr3/e;->f:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lr3/e;->g:I

    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_64

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v7, :cond_63

    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lr3/l;->p()V

    :cond_63
    return-object v4

    :catchall_64
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final l(ILjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Lr3/e;->c:I

    if-ge p1, v0, :cond_38

    iget-object v1, p0, Lr3/e;->f:[Ljava/lang/Object;

    array-length v2, v1

    if-lt p1, v2, :cond_2e

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, p1, :cond_25

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lr3/e;->f:[Ljava/lang/Object;

    iget v6, p0, Lr3/e;->g:I

    add-int/2addr v6, v3

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_14

    :cond_25
    sget-object v3, Lr3/c;->a:Lu3/r;

    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object v1, p0, Lr3/e;->f:[Ljava/lang/Object;

    iput v2, p0, Lr3/e;->g:I

    :cond_2e
    iget-object v0, p0, Lr3/e;->f:[Ljava/lang/Object;

    iget v1, p0, Lr3/e;->g:I

    add-int/2addr v1, p1

    array-length p1, v0

    rem-int/2addr v1, p1

    aput-object p2, v0, v1

    goto :goto_4d

    :cond_38
    iget-object v0, p0, Lr3/e;->f:[Ljava/lang/Object;

    iget v1, p0, Lr3/e;->g:I

    array-length v2, v0

    rem-int v2, v1, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/2addr p1, v1

    array-length v2, v0

    rem-int/2addr p1, v2

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lr3/e;->g:I

    :goto_4d
    return-void
.end method
