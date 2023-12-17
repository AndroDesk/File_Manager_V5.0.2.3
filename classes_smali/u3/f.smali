.class public final Lu3/f;
.super Lp3/y;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lc3/b;
.implements La3/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/y<",
        "TT;>;",
        "Lc3/b;",
        "La3/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lu3/f;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;La3/c;)V
    .registers 4
    .param p1  # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "La3/c<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lp3/y;-><init>(I)V

    iput-object p1, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lu3/f;->e:La3/c;

    sget-object p1, Lu3/b;->b:Lu3/r;

    iput-object p1, p0, Lu3/f;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->b:Lh3/p;

    invoke-interface {p1, p2, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lu3/f;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lu3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of v0, p1, Lp3/p;

    if-eqz v0, :cond_b

    check-cast p1, Lp3/p;

    iget-object p1, p1, Lp3/p;->b:Lh3/l;

    invoke-interface {p1, p2}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public final d()La3/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La3/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final getCallerFrame()Lc3/b;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lu3/f;->e:La3/c;

    instance-of v1, v0, Lc3/b;

    if-eqz v1, :cond_9

    check-cast v0, Lc3/b;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lu3/f;->e:La3/c;

    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lu3/f;->f:Ljava/lang/Object;

    sget-object v1, Lu3/b;->b:Lu3/r;

    iput-object v1, p0, Lu3/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final j()Lp3/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/h<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lu3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-nez v0, :cond_a

    sget-object v0, Lu3/b;->c:Lu3/r;

    iput-object v0, p0, Lu3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0

    :cond_a
    instance-of v1, v0, Lp3/h;

    if-eqz v1, :cond_26

    sget-object v1, Lu3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lu3/b;->c:Lu3/r;

    :cond_12
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_21

    :cond_1a
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_12

    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_0

    check-cast v0, Lp3/h;

    return-object v0

    :cond_26
    sget-object v1, Lu3/b;->c:Lu3/r;

    if-ne v0, v1, :cond_2b

    goto :goto_0

    :cond_2b
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_30

    goto :goto_0

    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Inconsistent state "

    invoke-static {v0, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final k()Z
    .registers 2

    iget-object v0, p0, Lu3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final l(Ljava/util/concurrent/CancellationException;)Z
    .registers 8
    .param p1  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :cond_0
    iget-object v0, p0, Lu3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lu3/b;->c:Lu3/r;

    invoke-static {v0, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1f

    sget-object v2, Lu3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_e
    invoke-virtual {v2, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v3, v4

    goto :goto_1c

    :cond_16
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_e

    :goto_1c
    if-eqz v3, :cond_0

    return v4

    :cond_1f
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_24

    return v4

    :cond_24
    sget-object v1, Lu3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    :cond_27
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_27

    move v4, v3

    :goto_35
    if-eqz v4, :cond_0

    return v3
.end method

.method public final m()V
    .registers 3

    iget-object v0, p0, Lu3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Lp3/h;

    if-eqz v1, :cond_9

    check-cast v0, Lp3/h;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Lp3/h;->l()V

    :goto_10
    return-void
.end method

.method public final n(Lp3/g;)Ljava/lang/Throwable;
    .registers 8
    .param p1  # Lp3/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/g<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :cond_0
    iget-object v0, p0, Lu3/f;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lu3/b;->c:Lu3/r;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1c

    sget-object v5, Lu3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_b
    invoke-virtual {v5, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v3, v4

    goto :goto_19

    :cond_13
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_b

    :goto_19
    if-eqz v3, :cond_0

    return-object v2

    :cond_1c
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_41

    sget-object p1, Lu3/f;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_22
    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v3, v4

    goto :goto_30

    :cond_2a
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_22

    :goto_30
    if-eqz v3, :cond_35

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent state "

    invoke-static {v0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 10
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lu3/f;->e:La3/c;

    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move-object v3, p1

    goto :goto_14

    :cond_f
    new-instance v3, Lp3/o;

    invoke-direct {v3, v1, v2}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    :goto_14
    iget-object v1, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineDispatcher;->t()Z

    move-result v1

    if-eqz v1, :cond_26

    iput-object v3, p0, Lu3/f;->f:Ljava/lang/Object;

    iput v2, p0, Lp3/y;->c:I

    iget-object p1, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_6e

    :cond_26
    invoke-static {}, Lp3/y0;->a()Lp3/d0;

    move-result-object v0

    iget-wide v4, v0, Lp3/d0;->b:J

    const-wide v6, 0x100000000L

    cmp-long v1, v4, v6

    const/4 v4, 0x1

    if-ltz v1, :cond_38

    move v1, v4

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    if-eqz v1, :cond_43

    iput-object v3, p0, Lu3/f;->f:Ljava/lang/Object;

    iput v2, p0, Lp3/y;->c:I

    invoke-virtual {v0, p0}, Lp3/d0;->v(Lp3/y;)V

    goto :goto_6e

    :cond_43
    invoke-virtual {v0, v4}, Lp3/d0;->w(Z)V

    :try_start_46
    invoke-virtual {p0}, Lu3/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    iget-object v2, p0, Lu3/f;->g:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_66

    :try_start_50
    iget-object v3, p0, Lu3/f;->e:La3/c;

    invoke-interface {v3, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Ly2/e;->a:Ly2/e;
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_61

    :try_start_57
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_5a
    invoke-virtual {v0}, Lp3/d0;->x()Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_6b

    :catchall_61
    move-exception p1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p1

    const/4 v1, 0x0

    :try_start_68
    invoke-virtual {p0, p1, v1}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6f

    :goto_6b
    invoke-virtual {v0}, Lp3/d0;->u()V

    :goto_6e
    return-void

    :catchall_6f
    move-exception p1

    invoke-virtual {v0}, Lp3/d0;->u()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "DispatchedContinuation["

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu3/f;->e:La3/c;

    invoke-static {v1}, Lp3/u;->b(La3/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
