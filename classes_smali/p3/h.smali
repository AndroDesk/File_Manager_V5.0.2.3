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

    .line 1
    invoke-direct {p0, p1}, Lp3/y;-><init>(I)V

    .line 4
    iput-object p2, p0, Lp3/h;->d:La3/c;

    .line 6
    invoke-interface {p2}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lp3/h;->_decision:I

    .line 15
    sget-object p1, Lp3/b;->a:Lp3/b;

    .line 17
    iput-object p1, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static q(Lr3/a$c;Ljava/lang/Object;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, ", already has "

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method public static u(Lp3/u0;Ljava/lang/Object;ILh3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p1, Lp3/o;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_34

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_d

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne p2, v1, :cond_c

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :cond_d
    :goto_d
    if-nez v0, :cond_12

    .line 16
    if-nez p4, :cond_12

    .line 18
    goto :goto_34

    .line 19
    :cond_12
    if-nez p3, :cond_1e

    .line 21
    instance-of p2, p0, Lp3/e;

    .line 23
    if-eqz p2, :cond_1c

    .line 25
    instance-of p2, p0, Lp3/c;

    .line 27
    if-eqz p2, :cond_1e

    .line 29
    :cond_1c
    if-eqz p4, :cond_34

    .line 31
    :cond_1e
    new-instance p2, Lp3/n;

    .line 33
    instance-of v0, p0, Lp3/e;

    .line 35
    if-eqz v0, :cond_27

    .line 37
    check-cast p0, Lp3/e;

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 p0, 0x0

    .line 41
    :goto_28
    move-object v2, p0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/16 v6, 0x10

    .line 45
    move-object v0, p2

    .line 46
    move-object v1, p1

    .line 47
    move-object v3, p3

    .line 48
    move-object v4, p4

    .line 49
    invoke-direct/range {v0 .. v6}, Lp3/n;-><init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    .line 52
    move-object p1, p2

    .line 53
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

    .line 1
    :cond_0
    iget-object p1, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lp3/u0;

    .line 5
    if-nez v0, :cond_86

    .line 7
    instance-of v0, p1, Lp3/o;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    instance-of v0, p1, Lp3/n;

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    if-eqz v0, :cond_66

    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Lp3/n;

    .line 21
    iget-object v1, v0, Lp3/n;->e:Ljava/lang/Throwable;

    .line 23
    if-eqz v1, :cond_1a

    .line 25
    move v1, v7

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v8

    .line 28
    :goto_1b
    xor-int/2addr v1, v7

    .line 29
    if-eqz v1, :cond_5a

    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v2, 0xf

    .line 34
    invoke-static {v0, v1, p2, v2}, Lp3/n;->a(Lp3/n;Lp3/e;Ljava/util/concurrent/CancellationException;I)Lp3/n;

    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    :cond_27
    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2e

    .line 46
    goto :goto_35

    .line 47
    :cond_2e
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    if-eq v3, p1, :cond_27

    .line 53
    move v7, v8

    .line 54
    :goto_35
    if-eqz v7, :cond_0

    .line 56
    iget-object p1, v0, Lp3/n;->b:Lp3/e;

    .line 58
    if-nez p1, :cond_3c

    .line 60
    goto :goto_3f

    .line 61
    :cond_3c
    invoke-virtual {p0, p1, p2}, Lp3/h;->j(Lp3/e;Ljava/lang/Throwable;)V

    .line 64
    :goto_3f
    iget-object p1, v0, Lp3/n;->c:Lh3/l;

    .line 66
    if-nez p1, :cond_44

    .line 68
    goto :goto_59

    .line 69
    :cond_44
    :try_start_44
    invoke-interface {p1, p2}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 72
    goto :goto_59

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    iget-object p2, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 76
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    .line 78
    const-string v1, "Exception in resume onCancellation handler for "

    .line 80
    invoke-static {p0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    invoke-static {p2, v0}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 90
    :goto_59
    return-void

    .line 91
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    const-string p2, "Must be called at most once"

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1

    .line 103
    :cond_66
    sget-object v9, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 105
    new-instance v10, Lp3/n;

    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    const/16 v6, 0xe

    .line 112
    move-object v0, v10

    .line 113
    move-object v1, p1

    .line 114
    move-object v5, p2

    .line 115
    invoke-direct/range {v0 .. v6}, Lp3/n;-><init>(Ljava/lang/Object;Lp3/e;Lh3/l;Ljava/lang/Object;Ljava/util/concurrent/CancellationException;I)V

    .line 118
    :cond_75
    invoke-virtual {v9, p0, p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7c

    .line 124
    goto :goto_83

    .line 125
    :cond_7c
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 129
    if-eq v0, p1, :cond_75

    .line 131
    move v7, v8

    .line 132
    :goto_83
    if-eqz v7, :cond_0

    .line 134
    return-void

    .line 135
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    const-string p2, "Not completed"

    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
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

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lp3/h;->v(Ljava/lang/Object;Ljava/lang/Object;Lh3/l;)Lu3/r;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final c()V
    .registers 2

    .line 1
    iget v0, p0, Lp3/y;->c:I

    .line 3
    invoke-virtual {p0, v0}, Lp3/h;->m(I)V

    .line 6
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

    .line 1
    iget-object v0, p0, Lp3/h;->d:La3/c;

    .line 3
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

    .line 1
    invoke-super {p0, p1}, Lp3/y;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    const/4 p1, 0x0

    .line 8
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

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lp3/h;->v(Ljava/lang/Object;Ljava/lang/Object;Lh3/l;)Lu3/r;

    .line 5
    move-result-object p1

    .line 6
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

    .line 1
    instance-of v0, p1, Lp3/n;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    check-cast p1, Lp3/n;

    .line 7
    iget-object p1, p1, Lp3/n;->a:Ljava/lang/Object;

    .line 9
    :cond_8
    return-object p1
.end method

.method public final getCallerFrame()Lc3/b;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/h;->d:La3/c;

    .line 3
    instance-of v1, v0, Lc3/b;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Lc3/b;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 3
    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 3
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

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lp3/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 4
    goto :goto_15

    .line 5
    :catchall_4
    move-exception p1

    .line 6
    iget-object p2, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 8
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    .line 10
    const-string v1, "Exception in invokeOnCancellation handler for "

    .line 12
    invoke-static {p0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {p2, v0}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 22
    :goto_15
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .registers 9
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :goto_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lp3/u0;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v1, Lp3/i;

    .line 11
    instance-of v3, v0, Lp3/e;

    .line 13
    invoke-direct {v1, p0, p1, v3}, Lp3/i;-><init>(La3/c;Ljava/lang/Throwable;Z)V

    .line 16
    sget-object v4, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    :cond_11
    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x1

    .line 23
    if-eqz v5, :cond_1a

    .line 25
    move v2, v6

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    if-eq v5, v0, :cond_11

    .line 33
    :goto_20
    if-nez v2, :cond_23

    .line 35
    goto :goto_0

    .line 36
    :cond_23
    if-eqz v3, :cond_28

    .line 38
    check-cast v0, Lp3/e;

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    :goto_29
    if-nez v0, :cond_2c

    .line 44
    goto :goto_2f

    .line 45
    :cond_2c
    invoke-virtual {p0, v0, p1}, Lp3/h;->j(Lp3/e;Ljava/lang/Throwable;)V

    .line 48
    :goto_2f
    invoke-virtual {p0}, Lp3/h;->p()Z

    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_38

    .line 54
    invoke-virtual {p0}, Lp3/h;->l()V

    .line 57
    :cond_38
    iget p1, p0, Lp3/y;->c:I

    .line 59
    invoke-virtual {p0, p1}, Lp3/h;->m(I)V

    .line 62
    return-void
.end method

.method public final l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp3/h;->f:Lp3/b0;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Lp3/b0;->dispose()V

    .line 9
    sget-object v0, Lp3/t0;->a:Lp3/t0;

    .line 11
    iput-object v0, p0, Lp3/h;->f:Lp3/b0;

    .line 13
    return-void
.end method

.method public final m(I)V
    .registers 8

    .line 1
    :cond_0
    iget v0, p0, Lp3/h;->_decision:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_17

    .line 8
    if-ne v0, v3, :cond_b

    .line 10
    move v0, v2

    .line 11
    goto :goto_20

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    const-string v0, "Already resumed"

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    :cond_17
    sget-object v0, Lp3/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 26
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    move v0, v3

    .line 33
    :goto_20
    if-eqz v0, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v0, p0, Lp3/h;->d:La3/c;

    .line 38
    const/4 v4, 0x4

    .line 39
    if-ne p1, v4, :cond_2a

    .line 41
    move v4, v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v4, v2

    .line 44
    :goto_2b
    if-nez v4, :cond_8b

    .line 46
    instance-of v5, v0, Lu3/f;

    .line 48
    if-eqz v5, :cond_8b

    .line 50
    if-eq p1, v3, :cond_38

    .line 52
    if-ne p1, v1, :cond_36

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    move p1, v2

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    :goto_38
    move p1, v3

    .line 58
    :goto_39
    iget v5, p0, Lp3/y;->c:I

    .line 60
    if-eq v5, v3, :cond_42

    .line 62
    if-ne v5, v1, :cond_40

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    move v1, v2

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    :goto_42
    move v1, v3

    .line 68
    :goto_43
    if-ne p1, v1, :cond_8b

    .line 70
    move-object p1, v0

    .line 71
    check-cast p1, Lu3/f;

    .line 73
    iget-object p1, p1, Lu3/f;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 75
    invoke-interface {v0}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lkotlinx/coroutines/CoroutineDispatcher;->t()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_58

    .line 85
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 88
    goto :goto_8e

    .line 89
    :cond_58
    invoke-static {}, Lp3/y0;->a()Lp3/d0;

    .line 92
    move-result-object p1

    .line 93
    iget-wide v0, p1, Lp3/d0;->b:J

    .line 95
    const-wide v4, 0x100000000L

    .line 100
    cmp-long v0, v0, v4

    .line 102
    if-ltz v0, :cond_68

    .line 104
    move v2, v3

    .line 105
    :cond_68
    if-eqz v2, :cond_6e

    .line 107
    invoke-virtual {p1, p0}, Lp3/d0;->v(Lp3/y;)V

    .line 110
    goto :goto_8e

    .line 111
    :cond_6e
    invoke-virtual {p1, v3}, Lp3/d0;->w(Z)V

    .line 114
    :try_start_71
    iget-object v0, p0, Lp3/h;->d:La3/c;

    .line 116
    invoke-static {p0, v0, v3}, Lkotlinx/coroutines/a;->e(Lp3/y;La3/c;Z)V

    .line 119
    :cond_76
    invoke-virtual {p1}, Lp3/d0;->x()Z

    .line 122
    move-result v0
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7d

    .line 123
    if-nez v0, :cond_76

    .line 125
    goto :goto_82

    .line 126
    :catchall_7d
    move-exception v0

    .line 127
    const/4 v1, 0x0

    .line 128
    :try_start_7f
    invoke-virtual {p0, v0, v1}, Lp3/y;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_86

    .line 131
    :goto_82
    invoke-virtual {p1}, Lp3/d0;->u()V

    .line 134
    goto :goto_8e

    .line 135
    :catchall_86
    move-exception v0

    .line 136
    invoke-virtual {p1}, Lp3/d0;->u()V

    .line 139
    throw v0

    .line 140
    :cond_8b
    invoke-static {p0, v0, v4}, Lkotlinx/coroutines/a;->e(Lp3/y;La3/c;Z)V

    .line 143
    :goto_8e
    return-void
.end method

.method public final n()Ljava/lang/Object;
    .registers 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/h;->p()Z

    .line 4
    move-result v0

    .line 5
    :cond_4
    iget v1, p0, Lp3/h;->_decision:I

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_1b

    .line 12
    if-ne v1, v3, :cond_f

    .line 14
    move v1, v2

    .line 15
    goto :goto_24

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v1, "Already suspended"

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    :cond_1b
    sget-object v1, Lp3/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 30
    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 36
    move v1, v4

    .line 37
    :goto_24
    const/4 v5, 0x0

    .line 38
    if-eqz v1, :cond_62

    .line 40
    iget-object v1, p0, Lp3/h;->f:Lp3/b0;

    .line 42
    if-nez v1, :cond_43

    .line 44
    iget-object v1, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 46
    sget-object v2, Lp3/k0$b;->a:Lp3/k0$b;

    .line 48
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lp3/k0;

    .line 54
    if-nez v1, :cond_38

    .line 56
    goto :goto_43

    .line 57
    :cond_38
    new-instance v2, Lp3/j;

    .line 59
    invoke-direct {v2, p0}, Lp3/j;-><init>(Lp3/h;)V

    .line 62
    invoke-static {v1, v4, v2, v3}, Lp3/k0$a;->a(Lp3/k0;ZLp3/n0;I)Lp3/b0;

    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lp3/h;->f:Lp3/b0;

    .line 68
    :cond_43
    :goto_43
    if-eqz v0, :cond_5f

    .line 70
    iget-object v0, p0, Lp3/h;->d:La3/c;

    .line 72
    instance-of v1, v0, Lu3/f;

    .line 74
    if-eqz v1, :cond_4e

    .line 76
    check-cast v0, Lu3/f;

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move-object v0, v5

    .line 80
    :goto_4f
    if-nez v0, :cond_52

    .line 82
    goto :goto_56

    .line 83
    :cond_52
    invoke-virtual {v0, p0}, Lu3/f;->n(Lp3/g;)Ljava/lang/Throwable;

    .line 86
    move-result-object v5

    .line 87
    :goto_56
    if-nez v5, :cond_59

    .line 89
    goto :goto_5f

    .line 90
    :cond_59
    invoke-virtual {p0}, Lp3/h;->l()V

    .line 93
    invoke-virtual {p0, v5}, Lp3/h;->k(Ljava/lang/Throwable;)V

    .line 96
    :cond_5f
    :goto_5f
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 98
    return-object v0

    .line 99
    :cond_62
    if-eqz v0, :cond_7e

    .line 101
    iget-object v0, p0, Lp3/h;->d:La3/c;

    .line 103
    instance-of v1, v0, Lu3/f;

    .line 105
    if-eqz v1, :cond_6d

    .line 107
    check-cast v0, Lu3/f;

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move-object v0, v5

    .line 111
    :goto_6e
    if-nez v0, :cond_71

    .line 113
    goto :goto_75

    .line 114
    :cond_71
    invoke-virtual {v0, p0}, Lu3/f;->n(Lp3/g;)Ljava/lang/Throwable;

    .line 117
    move-result-object v5

    .line 118
    :goto_75
    if-nez v5, :cond_78

    .line 120
    goto :goto_7e

    .line 121
    :cond_78
    invoke-virtual {p0}, Lp3/h;->l()V

    .line 124
    invoke-virtual {p0, v5}, Lp3/h;->k(Ljava/lang/Throwable;)V

    .line 127
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 129
    instance-of v1, v0, Lp3/o;

    .line 131
    if-nez v1, :cond_ad

    .line 133
    iget v1, p0, Lp3/y;->c:I

    .line 135
    if-eq v1, v4, :cond_8a

    .line 137
    if-ne v1, v3, :cond_8b

    .line 139
    :cond_8a
    move v2, v4

    .line 140
    :cond_8b
    if-eqz v2, :cond_a8

    .line 142
    iget-object v1, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 144
    sget-object v2, Lp3/k0$b;->a:Lp3/k0$b;

    .line 146
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lp3/k0;

    .line 152
    if-eqz v1, :cond_a8

    .line 154
    invoke-interface {v1}, Lp3/k0;->a()Z

    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_a0

    .line 160
    goto :goto_a8

    .line 161
    :cond_a0
    invoke-interface {v1}, Lp3/k0;->e()Ljava/util/concurrent/CancellationException;

    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p0, v0, v1}, Lp3/h;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 168
    throw v1

    .line 169
    :cond_a8
    :goto_a8
    invoke-virtual {p0, v0}, Lp3/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 173
    return-object v0

    .line 174
    :cond_ad
    check-cast v0, Lp3/o;

    .line 176
    iget-object v0, v0, Lp3/o;->a:Ljava/lang/Throwable;

    .line 178
    throw v0
.end method

.method public final o(Lr3/a$c;)V
    .registers 9
    .param p1  # Lr3/a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :cond_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lp3/b;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1b

    .line 9
    sget-object v1, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    :cond_a
    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_11

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    if-eq v4, v0, :cond_a

    .line 24
    move v2, v3

    .line 25
    :goto_18
    if-eqz v2, :cond_0

    .line 27
    return-void

    .line 28
    :cond_1b
    instance-of v1, v0, Lp3/e;

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v1, :cond_6a

    .line 33
    instance-of v1, v0, Lp3/o;

    .line 35
    if-eqz v1, :cond_59

    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Lp3/o;

    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    sget-object v6, Lp3/o;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 45
    invoke-virtual {v6, v5, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_55

    .line 51
    instance-of v0, v0, Lp3/i;

    .line 53
    if-eqz v0, :cond_54

    .line 55
    if-eqz v1, :cond_39

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move-object v5, v4

    .line 59
    :goto_3a
    if-nez v5, :cond_3d

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget-object v4, v5, Lp3/o;->a:Ljava/lang/Throwable;

    .line 64
    :goto_3f
    :try_start_3f
    invoke-virtual {p1, v4}, Lr3/a$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    .line 67
    goto :goto_54

    .line 68
    :catchall_43
    move-exception p1

    .line 69
    iget-object v0, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 71
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    .line 73
    const-string v2, "Exception in invokeOnCancellation handler for "

    .line 75
    invoke-static {p0, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    invoke-static {v0, v1}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 85
    :cond_54
    :goto_54
    return-void

    .line 86
    :cond_55
    invoke-static {p1, v0}, Lp3/h;->q(Lr3/a$c;Ljava/lang/Object;)V

    .line 89
    throw v4

    .line 90
    :cond_59
    instance-of v1, v0, Lp3/n;

    .line 92
    if-eqz v1, :cond_69

    .line 94
    move-object v1, v0

    .line 95
    check-cast v1, Lp3/n;

    .line 97
    iget-object v1, v1, Lp3/n;->b:Lp3/e;

    .line 99
    if-nez v1, :cond_65

    .line 101
    return-void

    .line 102
    :cond_65
    invoke-static {p1, v0}, Lp3/h;->q(Lr3/a$c;Ljava/lang/Object;)V

    .line 105
    throw v4

    .line 106
    :cond_69
    return-void

    .line 107
    :cond_6a
    invoke-static {p1, v0}, Lp3/h;->q(Lr3/a$c;Ljava/lang/Object;)V

    .line 110
    throw v4
.end method

.method public final p()Z
    .registers 5

    .line 1
    iget v0, p0, Lp3/y;->c:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    move v0, v2

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v0, v3

    .line 11
    :goto_a
    if-eqz v0, :cond_17

    .line 13
    iget-object v0, p0, Lp3/h;->d:La3/c;

    .line 15
    check-cast v0, Lu3/f;

    .line 17
    invoke-virtual {v0}, Lu3/f;->k()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v2, v3

    .line 25
    :goto_18
    return v2
.end method

.method public final r()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lp3/n;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_11

    .line 8
    check-cast v0, Lp3/n;

    .line 10
    iget-object v0, v0, Lp3/n;->d:Ljava/lang/Object;

    .line 12
    if-eqz v0, :cond_11

    .line 14
    invoke-virtual {p0}, Lp3/h;->l()V

    .line 17
    return v2

    .line 18
    :cond_11
    iput v2, p0, Lp3/h;->_decision:I

    .line 20
    sget-object v0, Lp3/b;->a:Lp3/b;

    .line 22
    iput-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    new-instance p1, Lp3/o;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    .line 14
    :goto_d
    iget v0, p0, Lp3/y;->c:I

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lp3/h;->t(Ljava/lang/Object;ILh3/l;)V

    .line 20
    return-void
.end method

.method public final s(Lh3/l;Ljava/lang/Boolean;)V
    .registers 4
    .param p1  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lp3/y;->c:I

    .line 3
    invoke-virtual {p0, p2, v0, p1}, Lp3/h;->t(Ljava/lang/Object;ILh3/l;)V

    .line 6
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

    .line 1
    :goto_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lp3/u0;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_30

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lp3/u0;

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v1, p1, p2, p3, v4}, Lp3/h;->u(Lp3/u0;Ljava/lang/Object;ILh3/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    sget-object v4, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    :cond_12
    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1a

    .line 25
    move v2, v3

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    if-eq v5, v0, :cond_12

    .line 33
    :goto_20
    if-nez v2, :cond_23

    .line 35
    goto :goto_0

    .line 36
    :cond_23
    invoke-virtual {p0}, Lp3/h;->p()Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2c

    .line 42
    invoke-virtual {p0}, Lp3/h;->l()V

    .line 45
    :cond_2c
    invoke-virtual {p0, p2}, Lp3/h;->m(I)V

    .line 48
    return-void

    .line 49
    :cond_30
    instance-of p2, v0, Lp3/i;

    .line 51
    if-eqz p2, :cond_5c

    .line 53
    check-cast v0, Lp3/i;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    sget-object p2, Lp3/i;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 60
    invoke-virtual {p2, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_5c

    .line 66
    if-nez p3, :cond_44

    .line 68
    goto :goto_5b

    .line 69
    :cond_44
    iget-object p1, v0, Lp3/o;->a:Ljava/lang/Throwable;

    .line 71
    :try_start_46
    invoke-interface {p3, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    .line 74
    goto :goto_5b

    .line 75
    :catchall_4a
    move-exception p1

    .line 76
    iget-object p2, p0, Lp3/h;->e:Lkotlin/coroutines/CoroutineContext;

    .line 78
    new-instance p3, Lkotlinx/coroutines/CompletionHandlerException;

    .line 80
    const-string v0, "Exception in resume onCancellation handler for "

    .line 82
    invoke-static {p0, v0}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p3, v0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-static {p2, p3}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 92
    :goto_5b
    return-void

    .line 93
    :cond_5c
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 95
    const-string p3, "Already resumed, but proposed with update "

    .line 97
    invoke-static {p1, p3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "CancellableContinuation"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const/16 v1, 0x28

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lp3/h;->d:La3/c;

    .line 18
    invoke-static {v1}, Lp3/u;->b(La3/c;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "){"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 32
    instance-of v2, v1, Lp3/u0;

    .line 34
    if-eqz v2, :cond_26

    .line 36
    const-string v1, "Active"

    .line 38
    goto :goto_2f

    .line 39
    :cond_26
    instance-of v1, v1, Lp3/i;

    .line 41
    if-eqz v1, :cond_2d

    .line 43
    const-string v1, "Cancelled"

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    const-string v1, "Completed"

    .line 48
    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "}@"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
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

    .line 1
    :goto_0
    iget-object v0, p0, Lp3/h;->_state:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lp3/u0;

    .line 5
    if-eqz v1, :cond_2f

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lp3/u0;

    .line 10
    iget v2, p0, Lp3/y;->c:I

    .line 12
    invoke-static {v1, p1, v2, p3, p2}, Lp3/h;->u(Lp3/u0;Ljava/lang/Object;ILh3/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lp3/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    :cond_11
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    if-eq v3, v0, :cond_11

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_20
    if-nez v0, :cond_23

    .line 35
    goto :goto_0

    .line 36
    :cond_23
    invoke-virtual {p0}, Lp3/h;->p()Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2c

    .line 42
    invoke-virtual {p0}, Lp3/h;->l()V

    .line 45
    :cond_2c
    sget-object p1, Lp3/u;->a:Lu3/r;

    .line 47
    return-object p1

    .line 48
    :cond_2f
    instance-of p1, v0, Lp3/n;

    .line 50
    const/4 p3, 0x0

    .line 51
    if-eqz p1, :cond_3e

    .line 53
    if-eqz p2, :cond_3e

    .line 55
    check-cast v0, Lp3/n;

    .line 57
    iget-object p1, v0, Lp3/n;->d:Ljava/lang/Object;

    .line 59
    if-ne p1, p2, :cond_3e

    .line 61
    sget-object p3, Lp3/u;->a:Lu3/r;

    .line 63
    :cond_3e
    return-object p3
.end method
