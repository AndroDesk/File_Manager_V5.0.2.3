.class public final Lp3/h;
.super Lp3/y;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lp3/g;
.implements Lc3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/y<",
        "TT;>;",
        "Lp3/g<",
        "TT;>;",
        "Lc3/b;"
    }
.end annotation


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lp3/b0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lp3/h;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lp3/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lp3/h;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILa3/c;)V
    .registers 3
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lp3/y;-><init>(I)V

    iput-object p2, p0, Lp3/h;->d:La3/c;

    invoke-interface {p2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x0

    iput p1, p0, Lp3/h;->_decision:I

    sget-object p1, Lp3/b;->a:Lp3/b;

    iput-object p1, p0, Lp3/h;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static q(Lr3/a$c;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Lp3/u0;Ljava/lang/Object;ILh3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    instance-of v0, p1, Lp3/o;

    if-eqz v0, :cond_5

    goto :goto_34

    :cond_5
    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v1, 0x2

    if-ne p2, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    if-nez v0, :cond_12

    if-nez p4, :cond_12

    goto :goto_34

    :cond_12
    if-nez p3, :cond_1e

    instance-of p2, p0, Lp3/e;

    if-eqz p2, :cond_1c

    instance-of p2, p0, Lp3/c;

    if-eqz p2, :cond_1e

    :cond_1c
    if-eqz p4, :cond_34

    :cond_1e
    new-instance p2, Lp3/n;

    instance-of v0, p0, Lp3/e;

    if-eqz v0, :cond_27

    check-cast p0, Lp3/e;

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    move-object v2, p0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lp3/n;-><init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    move-object p1, p2

    :cond_34
    :goto_34
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .registers 14
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :cond_0
    iget-object p1, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v0, p1, Lp3/u0;

    if-nez v0, :cond_86

    instance-of v0, p1, Lp3/o;

    if-eqz v0, :cond_b

    return-void

    :cond_b
    instance-of v0, p1, Lp3/n;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_66

    move-object v0, p1

    check-cast v0, Lp3/n;

    iget-object v1, v0, Lp3/n;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_1a

    move v1, v7

    goto :goto_1b

    :cond_1a
    move v1, v8

    :goto_1b
    xor-int/2addr v1, v7

    if-eqz v1, :cond_5a

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v0, v1, p2, v2}, Lp3/n;->a(Lp3/n;Lp3/e;Ljava/util/concurrent/CancellationException;I)Lp3/n;

    move-result-object v1

    sget-object v2, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_27
    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_27

    move v7, v8

    :goto_35
    if-eqz v7, :cond_0

    iget-object p1, v0, Lp3/n;->b:Lp3/e;

    if-nez p1, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {p0, p1, p2}, Lp3/h;->j(Lp3/e;Ljava/lang/Throwable;)V

    :goto_3f
    iget-object p1, v0, Lp3/n;->c:Lh3/l;

    if-nez p1, :cond_44

    goto :goto_59

    :cond_44
    :try_start_44
    invoke-interface {p1, p2}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_59

    :catchall_48
    move-exception p1

    iget-object p2, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-static {p0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_59
    return-void

    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    sget-object v9, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v10, Lp3/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v0, v10

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lp3/n;-><init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    :cond_75
    invoke-virtual {v9, p0, p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    goto :goto_83

    :cond_7c
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_75

    move v7, v8

    :goto_83
    if-eqz v7, :cond_0

    return-void

    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Boolean;Lh3/l;)Lu3/r;
    .registers 4
    .param p2  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lp3/h;->v(Ljava/lang/Object;Ljava/lang/Object;Lh3/l;)Lu3/r;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .registers 2

    iget v0, p0, Lp3/y;->c:I

    invoke-virtual {p0, v0}, Lp3/h;->m(I)V

    return-void
.end method

.method public final d()La3/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La3/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lp3/h;->d:La3/c;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lp3/y;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    return-object p1
.end method

.method public final f(Ljava/lang/Boolean;Ljava/lang/Object;)Lu3/r;
    .registers 4
    .param p2  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lp3/h;->v(Ljava/lang/Object;Ljava/lang/Object;Lh3/l;)Lu3/r;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lp3/n;

    if-eqz v0, :cond_8

    check-cast p1, Lp3/n;

    iget-object p1, p1, Lp3/n;->a:Ljava/lang/Object;

    :cond_8
    return-object p1
.end method

.method public final getCallerFrame()Lc3/b;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lp3/h;->d:La3/c;

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

    iget-object v0, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public final j(Lp3/e;Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Lp3/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p1, p2}, Lp3/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception p1

    iget-object p2, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {p0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .registers 9
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :goto_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lp3/u0;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Lp3/i;

    instance-of v3, v0, Lp3/e;

    invoke-direct {v1, p0, p1, v3}, Lp3/i;-><init>(La3/c;Ljava/lang/Throwable;Z)V

    sget-object v4, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_11
    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1a

    move v2, v6

    goto :goto_20

    :cond_1a
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_11

    :goto_20
    if-nez v2, :cond_23

    goto :goto_0

    :cond_23
    if-eqz v3, :cond_28

    check-cast v0, Lp3/e;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-nez v0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {p0, v0, p1}, Lp3/h;->j(Lp3/e;Ljava/lang/Throwable;)V

    :goto_2f
    invoke-virtual {p0}, Lp3/h;->p()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lp3/h;->l()V

    :cond_38
    iget p1, p0, Lp3/y;->c:I

    invoke-virtual {p0, p1}, Lp3/h;->m(I)V

    return-void
.end method

.method public final l()V
    .registers 2

    iget-object v0, p0, Lp3/h;->f:Lp3/b0;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Lp3/b0;->dispose()V

    sget-object v0, Lp3/t0;->a:Lp3/t0;

    iput-object v0, p0, Lp3/h;->f:Lp3/b0;

    return-void
.end method

.method public final m(I)V
    .registers 8

    :cond_0
    iget v0, p0, Lp3/h;->_decision:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    if-ne v0, v3, :cond_b

    move v0, v2

    goto :goto_20

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    sget-object v0, Lp3/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_20
    if-eqz v0, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lp3/h;->d:La3/c;

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2a

    move v4, v3

    goto :goto_2b

    :cond_2a
    move v4, v2

    :goto_2b
    if-nez v4, :cond_8b

    instance-of v5, v0, Lu3/f;

    if-eqz v5, :cond_8b

    if-eq p1, v3, :cond_38

    if-ne p1, v1, :cond_36

    goto :goto_38

    :cond_36
    move p1, v2

    goto :goto_39

    :cond_38
    :goto_38
    move p1, v3

    :goto_39
    iget v5, p0, Lp3/y;->c:I

    if-eq v5, v3, :cond_42

    if-ne v5, v1, :cond_40

    goto :goto_42

    :cond_40
    move v1, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v3

    :goto_43
    if-ne p1, v1, :cond_8b

    move-object p1, v0

    check-cast p1, Lu3/f;

    iget-object p1, p1, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/CoroutineDispatcher;->t()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_8e

    :cond_58
    invoke-static {}, Lp3/y0;->a()Lp3/d0;

    move-result-object p1

    iget-wide v0, p1, Lp3/d0;->b:J

    const-wide v4, 0x100000000L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_68

    move v2, v3

    :cond_68
    if-eqz v2, :cond_6e

    invoke-virtual {p1, p0}, Lp3/d0;->v(Lp3/y;)V

    goto :goto_8e

    :cond_6e
    invoke-virtual {p1, v3}, Lp3/d0;->w(Z)V

    :try_start_71
    iget-object v0, p0, Lp3/h;->d:La3/c;

    invoke-static {p0, v0, v3}, Lkotlinx/coroutines/a;->e(Lp3/y;La3/c;Z)V

    :cond_76
    invoke-virtual {p1}, Lp3/d0;->x()Z

    move-result v0
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7d

    if-nez v0, :cond_76

    goto :goto_82

    :catchall_7d
    move-exception v0

    const/4 v1, 0x0

    :try_start_7f
    invoke-virtual {p0, v0, v1}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_86

    :goto_82
    invoke-virtual {p1}, Lp3/d0;->u()V

    goto :goto_8e

    :catchall_86
    move-exception v0

    invoke-virtual {p1}, Lp3/d0;->u()V

    throw v0

    :cond_8b
    invoke-static {p0, v0, v4}, Lkotlinx/coroutines/a;->e(Lp3/y;La3/c;Z)V

    :goto_8e
    return-void
.end method

.method public final n()Ljava/lang/Object;
    .registers 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lp3/h;->p()Z

    move-result v0

    :cond_4
    iget v1, p0, Lp3/h;->_decision:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v3, :cond_f

    move v1, v2

    goto :goto_24

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    sget-object v1, Lp3/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    :goto_24
    const/4 v5, 0x0

    if-eqz v1, :cond_62

    iget-object v1, p0, Lp3/h;->f:Lp3/b0;

    if-nez v1, :cond_43

    iget-object v1, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lp3/k0$b;->a:Lp3/k0$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v1

    check-cast v1, Lp3/k0;

    if-nez v1, :cond_38

    goto :goto_43

    :cond_38
    new-instance v2, Lp3/j;

    invoke-direct {v2, p0}, Lp3/j;-><init>(Lp3/h;)V

    invoke-static {v1, v4, v2, v3}, Lp3/k0$a;->a(Lp3/k0;ZLp3/n0;I)Lp3/b0;

    move-result-object v1

    iput-object v1, p0, Lp3/h;->f:Lp3/b0;

    :cond_43
    :goto_43
    if-eqz v0, :cond_5f

    iget-object v0, p0, Lp3/h;->d:La3/c;

    instance-of v1, v0, Lu3/f;

    if-eqz v1, :cond_4e

    check-cast v0, Lu3/f;

    goto :goto_4f

    :cond_4e
    move-object v0, v5

    :goto_4f
    if-nez v0, :cond_52

    goto :goto_56

    :cond_52
    invoke-virtual {v0, p0}, Lu3/f;->n(Lp3/g;)Ljava/lang/Throwable;

    move-result-object v5

    :goto_56
    if-nez v5, :cond_59

    goto :goto_5f

    :cond_59
    invoke-virtual {p0}, Lp3/h;->l()V

    invoke-virtual {p0, v5}, Lp3/h;->k(Ljava/lang/Throwable;)V

    :cond_5f
    :goto_5f
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object v0

    :cond_62
    if-eqz v0, :cond_7e

    iget-object v0, p0, Lp3/h;->d:La3/c;

    instance-of v1, v0, Lu3/f;

    if-eqz v1, :cond_6d

    check-cast v0, Lu3/f;

    goto :goto_6e

    :cond_6d
    move-object v0, v5

    :goto_6e
    if-nez v0, :cond_71

    goto :goto_75

    :cond_71
    invoke-virtual {v0, p0}, Lu3/f;->n(Lp3/g;)Ljava/lang/Throwable;

    move-result-object v5

    :goto_75
    if-nez v5, :cond_78

    goto :goto_7e

    :cond_78
    invoke-virtual {p0}, Lp3/h;->l()V

    invoke-virtual {p0, v5}, Lp3/h;->k(Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lp3/o;

    if-nez v1, :cond_ad

    iget v1, p0, Lp3/y;->c:I

    if-eq v1, v4, :cond_8a

    if-ne v1, v3, :cond_8b

    :cond_8a
    move v2, v4

    :cond_8b
    if-eqz v2, :cond_a8

    iget-object v1, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lp3/k0$b;->a:Lp3/k0$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v1

    check-cast v1, Lp3/k0;

    if-eqz v1, :cond_a8

    invoke-interface {v1}, Lp3/k0;->a()Z

    move-result v2

    if-eqz v2, :cond_a0

    goto :goto_a8

    :cond_a0
    invoke-interface {v1}, Lp3/k0;->e()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lp3/h;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    throw v1

    :cond_a8
    :goto_a8
    invoke-virtual {p0, v0}, Lp3/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_ad
    check-cast v0, Lp3/o;

    iget-object v0, v0, Lp3/o;->a:Ljava/lang/Throwable;

    throw v0
.end method

.method public final o(Lr3/a$c;)V
    .registers 9
    .param p1  # Lr3/a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :cond_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lp3/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    sget-object v1, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_18

    :cond_11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_a

    move v2, v3

    :goto_18
    if-eqz v2, :cond_0

    return-void

    :cond_1b
    instance-of v1, v0, Lp3/e;

    const/4 v4, 0x0

    if-nez v1, :cond_6a

    instance-of v1, v0, Lp3/o;

    if-eqz v1, :cond_59

    move-object v5, v0

    check-cast v5, Lp3/o;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lp3/o;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, v5, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_55

    instance-of v0, v0, Lp3/i;

    if-eqz v0, :cond_54

    if-eqz v1, :cond_39

    goto :goto_3a

    :cond_39
    move-object v5, v4

    :goto_3a
    if-nez v5, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v4, v5, Lp3/o;->a:Ljava/lang/Throwable;

    :goto_3f
    :try_start_3f
    invoke-virtual {p1, v4}, Lr3/a$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_54

    :catchall_43
    move-exception p1

    iget-object v0, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-static {p0, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    invoke-static {p1, v0}, Lp3/h;->q(Lr3/a$c;Ljava/lang/Object;)V

    throw v4

    :cond_59
    instance-of v1, v0, Lp3/n;

    if-eqz v1, :cond_69

    move-object v1, v0

    check-cast v1, Lp3/n;

    iget-object v1, v1, Lp3/n;->b:Lp3/e;

    if-nez v1, :cond_65

    return-void

    :cond_65
    invoke-static {p1, v0}, Lp3/h;->q(Lr3/a$c;Ljava/lang/Object;)V

    throw v4

    :cond_69
    return-void

    :cond_6a
    invoke-static {p1, v0}, Lp3/h;->q(Lr3/a$c;Ljava/lang/Object;)V

    throw v4
.end method

.method public final p()Z
    .registers 5

    iget v0, p0, Lp3/y;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v3

    :goto_a
    if-eqz v0, :cond_17

    iget-object v0, p0, Lp3/h;->d:La3/c;

    check-cast v0, Lu3/f;

    invoke-virtual {v0}, Lu3/f;->k()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    return v2
.end method

.method public final r()Z
    .registers 4

    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lp3/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lp3/n;

    iget-object v0, v0, Lp3/n;->d:Ljava/lang/Object;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lp3/h;->l()V

    return v2

    :cond_11
    iput v2, p0, Lp3/h;->_decision:I

    sget-object v0, Lp3/b;->a:Lp3/b;

    iput-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_d

    :cond_7
    new-instance p1, Lp3/o;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    :goto_d
    iget v0, p0, Lp3/y;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lp3/h;->t(Ljava/lang/Object;ILh3/l;)V

    return-void
.end method

.method public final s(Lh3/l;Ljava/lang/Boolean;)V
    .registers 4
    .param p1  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lp3/y;->c:I

    invoke-virtual {p0, p2, v0, p1}, Lp3/h;->t(Ljava/lang/Object;ILh3/l;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;ILh3/l;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lh3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/e;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lp3/u0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    move-object v1, v0

    check-cast v1, Lp3/u0;

    const/4 v4, 0x0

    invoke-static {v1, p1, p2, p3, v4}, Lp3/h;->u(Lp3/u0;Ljava/lang/Object;ILh3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_12
    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v2, v3

    goto :goto_20

    :cond_1a
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_12

    :goto_20
    if-nez v2, :cond_23

    goto :goto_0

    :cond_23
    invoke-virtual {p0}, Lp3/h;->p()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Lp3/h;->l()V

    :cond_2c
    invoke-virtual {p0, p2}, Lp3/h;->m(I)V

    return-void

    :cond_30
    instance-of p2, v0, Lp3/i;

    if-eqz p2, :cond_5c

    check-cast v0, Lp3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lp3/i;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p2, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_5c

    if-nez p3, :cond_44

    goto :goto_5b

    :cond_44
    iget-object p1, v0, Lp3/o;->a:Ljava/lang/Throwable;

    :try_start_46
    invoke-interface {p3, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_5b

    :catchall_4a
    move-exception p1

    iget-object p2, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    new-instance p3, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v0, "Exception in resume onCancellation handler for "

    invoke-static {p0, v0}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_5b
    return-void

    :cond_5c
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Already resumed, but proposed with update "

    invoke-static {p1, p3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CancellableContinuation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/h;->d:La3/c;

    invoke-static {v1}, Lp3/u;->b(La3/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v2, v1, Lp3/u0;

    if-eqz v2, :cond_26

    const-string v1, "Active"

    goto :goto_2f

    :cond_26
    instance-of v1, v1, Lp3/i;

    if-eqz v1, :cond_2d

    const-string v1, "Cancelled"

    goto :goto_2f

    :cond_2d
    const-string v1, "Completed"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/Object;Ljava/lang/Object;Lh3/l;)Lu3/r;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lh3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/e;",
            ">;)",
            "Lu3/r;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lp3/u0;

    if-eqz v1, :cond_2f

    move-object v1, v0

    check-cast v1, Lp3/u0;

    iget v2, p0, Lp3/y;->c:I

    invoke-static {v1, p1, v2, p3, p2}, Lp3/h;->u(Lp3/u0;Ljava/lang/Object;ILh3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_11
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v0, 0x1

    goto :goto_20

    :cond_19
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_11

    const/4 v0, 0x0

    :goto_20
    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    invoke-virtual {p0}, Lp3/h;->p()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Lp3/h;->l()V

    :cond_2c
    sget-object p1, Lp3/u;->a:Lu3/r;

    return-object p1

    :cond_2f
    instance-of p1, v0, Lp3/n;

    const/4 p3, 0x0

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    check-cast v0, Lp3/n;

    iget-object p1, v0, Lp3/n;->d:Ljava/lang/Object;

    if-ne p1, p2, :cond_3e

    sget-object p3, Lp3/u;->a:Lu3/r;

    :cond_3e
    return-object p3
.end method
