.class public Lp3/o0;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lp3/k0;
.implements Lp3/m;
.implements Lp3/v0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/o0$b;,
        Lp3/o0$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lp3/o0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    sget-object p1, Lp3/u;->j:Lp3/c0;

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    sget-object p1, Lp3/u;->i:Lp3/c0;

    .line 11
    :goto_a
    iput-object p1, p0, Lp3/o0;->_state:Ljava/lang/Object;

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;
    .registers 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_b
    :goto_b
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_16

    .line 22
    goto :goto_b

    .line 23
    :cond_16
    instance-of v0, p0, Lp3/l;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    check-cast p0, Lp3/l;

    .line 29
    return-object p0

    .line 30
    :cond_1d
    instance-of v0, p0, Lp3/s0;

    .line 32
    if-eqz v0, :cond_b

    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static N(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    instance-of v0, p0, Lp3/o0$b;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    check-cast p0, Lp3/o0$b;

    .line 7
    invoke-virtual {p0}, Lp3/o0$b;->d()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    const-string p0, "Cancelling"

    .line 15
    goto :goto_33

    .line 16
    :cond_f
    invoke-virtual {p0}, Lp3/o0$b;->e()Z

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_24

    .line 22
    const-string p0, "Completing"

    .line 24
    goto :goto_33

    .line 25
    :cond_18
    instance-of v0, p0, Lp3/h0;

    .line 27
    if-eqz v0, :cond_2a

    .line 29
    check-cast p0, Lp3/h0;

    .line 31
    invoke-interface {p0}, Lp3/h0;->a()Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_27

    .line 37
    :cond_24
    const-string p0, "Active"

    .line 39
    goto :goto_33

    .line 40
    :cond_27
    const-string p0, "New"

    .line 42
    goto :goto_33

    .line 43
    :cond_2a
    instance-of p0, p0, Lp3/o;

    .line 45
    if-eqz p0, :cond_31

    .line 47
    const-string p0, "Cancelled"

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const-string p0, "Completed"

    .line 52
    :goto_33
    return-object p0
.end method


# virtual methods
.method public final A()Lp3/k;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 3
    check-cast v0, Lp3/k;

    .line 5
    return-object v0
.end method

.method public final B()Ljava/lang/Object;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lp3/o0;->_state:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lu3/m;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    check-cast v0, Lu3/m;

    .line 10
    invoke-virtual {v0, p0}, Lu3/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    goto :goto_0
.end method

.method public C(Ljava/lang/Throwable;)Z
    .registers 2
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public D(Lkotlinx/coroutines/CompletionHandlerException;)V
    .registers 2
    .param p1  # Lkotlinx/coroutines/CompletionHandlerException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    throw p1
.end method

.method public final E(Lp3/k0;)V
    .registers 3
    .param p1  # Lp3/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_7

    .line 3
    sget-object p1, Lp3/t0;->a:Lp3/t0;

    .line 5
    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-interface {p1}, Lp3/k0;->start()Z

    .line 11
    invoke-interface {p1, p0}, Lp3/k0;->k(Lp3/o0;)Lp3/k;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lp3/h0;

    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 25
    if-eqz v0, :cond_21

    .line 27
    invoke-interface {p1}, Lp3/b0;->dispose()V

    .line 30
    sget-object p1, Lp3/t0;->a:Lp3/t0;

    .line 32
    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 34
    :cond_21
    return-void
.end method

.method public F()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final G(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lp3/o0;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lp3/u;->d:Lu3/r;

    .line 11
    if-ne v0, v1, :cond_39

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v2, "Job "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, " is already complete or completing, but is being completed with "

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    instance-of v2, p1, Lp3/o;

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_2f

    .line 45
    check-cast p1, Lp3/o;

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move-object p1, v3

    .line 49
    :goto_30
    if-nez p1, :cond_33

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    iget-object v3, p1, Lp3/o;->a:Ljava/lang/Throwable;

    .line 54
    :goto_35
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v0

    .line 58
    :cond_39
    sget-object v1, Lp3/u;->f:Lu3/r;

    .line 60
    if-ne v0, v1, :cond_3e

    .line 62
    goto :goto_0

    .line 63
    :cond_3e
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final J(Lp3/s0;Ljava/lang/Throwable;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :goto_8
    invoke-static {v0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_47

    .line 15
    instance-of v3, v0, Lp3/l0;

    .line 17
    if-eqz v3, :cond_42

    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Lp3/n0;

    .line 22
    :try_start_15
    invoke-virtual {v3, p2}, Lp3/q;->p(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    .line 25
    goto :goto_42

    .line 26
    :catchall_19
    move-exception v4

    .line 27
    if-nez v2, :cond_1e

    .line 29
    move-object v5, v1

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    invoke-static {v2, v4}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 34
    move-object v5, v2

    .line 35
    :goto_22
    if-nez v5, :cond_42

    .line 37
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v6, "Exception in completion handler "

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v3, " for "

    .line 54
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_42
    :goto_42
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 70
    move-result-object v0

    .line 71
    goto :goto_8

    .line 72
    :cond_47
    if-nez v2, :cond_4a

    .line 74
    goto :goto_4d

    .line 75
    :cond_4a
    invoke-virtual {p0, v2}, Lp3/o0;->D(Lkotlinx/coroutines/CompletionHandlerException;)V

    .line 78
    :goto_4d
    invoke-virtual {p0, p2}, Lp3/o0;->s(Ljava/lang/Throwable;)Z

    .line 81
    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public L()V
    .registers 1

    return-void
.end method

.method public final M(Lp3/n0;)V
    .registers 7

    .line 1
    new-instance v0, Lp3/s0;

    .line 3
    invoke-direct {v0}, Lp3/s0;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    :cond_12
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eq v1, p1, :cond_1a

    .line 26
    goto :goto_30

    .line 27
    :cond_1a
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 29
    :cond_1c
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_25

    .line 36
    move v2, v4

    .line 37
    goto :goto_2b

    .line 38
    :cond_25
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    if-eq v3, p1, :cond_1c

    .line 44
    :goto_2b
    if-eqz v2, :cond_12

    .line 46
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 49
    :goto_30
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 52
    move-result-object v1

    .line 53
    sget-object v2, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 55
    :cond_36
    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3d

    .line 61
    goto :goto_43

    .line 62
    :cond_3d
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    if-eq v0, p1, :cond_36

    .line 68
    :goto_43
    return-void
.end method

.method public final O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lp3/h0;

    .line 3
    if-nez v0, :cond_7

    .line 5
    sget-object p1, Lp3/u;->d:Lu3/r;

    .line 7
    return-object p1

    .line 8
    :cond_7
    instance-of v0, p1, Lp3/c0;

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_11

    .line 14
    instance-of v0, p1, Lp3/n0;

    .line 16
    if-eqz v0, :cond_4c

    .line 18
    :cond_11
    instance-of v0, p1, Lp3/l;

    .line 20
    if-nez v0, :cond_4c

    .line 22
    instance-of v0, p2, Lp3/o;

    .line 24
    if-nez v0, :cond_4c

    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Lp3/h0;

    .line 29
    sget-object v3, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    instance-of p1, p2, Lp3/h0;

    .line 33
    if-eqz p1, :cond_2c

    .line 35
    new-instance p1, Lp3/i0;

    .line 37
    move-object v4, p2

    .line 38
    check-cast v4, Lp3/h0;

    .line 40
    invoke-direct {p1, v4}, Lp3/i0;-><init>(Lp3/h0;)V

    .line 43
    move-object v4, p1

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move-object v4, p2

    .line 46
    :cond_2d
    :goto_2d
    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_35

    .line 52
    move p1, v1

    .line 53
    goto :goto_3c

    .line 54
    :cond_35
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    if-eq p1, v0, :cond_2d

    .line 60
    move p1, v2

    .line 61
    :goto_3c
    if-nez p1, :cond_40

    .line 63
    move v1, v2

    .line 64
    goto :goto_46

    .line 65
    :cond_40
    invoke-virtual {p0, p2}, Lp3/o0;->K(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, v0, p2}, Lp3/o0;->u(Lp3/h0;Ljava/lang/Object;)V

    .line 71
    :goto_46
    if-eqz v1, :cond_49

    .line 73
    return-object p2

    .line 74
    :cond_49
    sget-object p1, Lp3/u;->f:Lu3/r;

    .line 76
    return-object p1

    .line 77
    :cond_4c
    check-cast p1, Lp3/h0;

    .line 79
    invoke-virtual {p0, p1}, Lp3/o0;->z(Lp3/h0;)Lp3/s0;

    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_58

    .line 85
    sget-object p1, Lp3/u;->f:Lu3/r;

    .line 87
    goto/16 :goto_de

    .line 89
    :cond_58
    instance-of v3, p1, Lp3/o0$b;

    .line 91
    const/4 v4, 0x0

    .line 92
    if-eqz v3, :cond_61

    .line 94
    move-object v3, p1

    .line 95
    check-cast v3, Lp3/o0$b;

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move-object v3, v4

    .line 99
    :goto_62
    if-nez v3, :cond_69

    .line 101
    new-instance v3, Lp3/o0$b;

    .line 103
    invoke-direct {v3, v0, v4}, Lp3/o0$b;-><init>(Lp3/s0;Ljava/lang/Throwable;)V

    .line 106
    :cond_69
    monitor-enter v3

    .line 107
    :try_start_6a
    invoke-virtual {v3}, Lp3/o0$b;->e()Z

    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_75

    .line 113
    sget-object p1, Lp3/u;->d:Lu3/r;
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_df

    .line 115
    monitor-exit v3

    .line 116
    goto/16 :goto_de

    .line 118
    :cond_75
    :try_start_75
    invoke-virtual {v3}, Lp3/o0$b;->h()V

    .line 121
    if-eq v3, p1, :cond_90

    .line 123
    sget-object v5, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 125
    :cond_7c
    invoke-virtual {v5, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_84

    .line 131
    move v2, v1

    .line 132
    goto :goto_8a

    .line 133
    :cond_84
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v6

    .line 137
    if-eq v6, p1, :cond_7c

    .line 139
    :goto_8a
    if-nez v2, :cond_90

    .line 141
    sget-object p1, Lp3/u;->f:Lu3/r;
    :try_end_8e
    .catchall {:try_start_75 .. :try_end_8e} :catchall_df

    .line 143
    monitor-exit v3

    .line 144
    goto :goto_de

    .line 145
    :cond_90
    :try_start_90
    invoke-virtual {v3}, Lp3/o0$b;->d()Z

    .line 148
    move-result v2

    .line 149
    instance-of v5, p2, Lp3/o;

    .line 151
    if-eqz v5, :cond_9c

    .line 153
    move-object v5, p2

    .line 154
    check-cast v5, Lp3/o;

    .line 156
    goto :goto_9d

    .line 157
    :cond_9c
    move-object v5, v4

    .line 158
    :goto_9d
    if-nez v5, :cond_a0

    .line 160
    goto :goto_a5

    .line 161
    :cond_a0
    iget-object v5, v5, Lp3/o;->a:Ljava/lang/Throwable;

    .line 163
    invoke-virtual {v3, v5}, Lp3/o0$b;->b(Ljava/lang/Throwable;)V

    .line 166
    :goto_a5
    invoke-virtual {v3}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    .line 169
    move-result-object v5

    .line 170
    xor-int/2addr v1, v2

    .line 171
    if-eqz v1, :cond_ad

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move-object v5, v4

    .line 175
    :goto_ae
    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_b0
    .catchall {:try_start_90 .. :try_end_b0} :catchall_df

    .line 177
    monitor-exit v3

    .line 178
    if-nez v5, :cond_b4

    .line 180
    goto :goto_b7

    .line 181
    :cond_b4
    invoke-virtual {p0, v0, v5}, Lp3/o0;->J(Lp3/s0;Ljava/lang/Throwable;)V

    .line 184
    :goto_b7
    instance-of v0, p1, Lp3/l;

    .line 186
    if-eqz v0, :cond_bf

    .line 188
    move-object v0, p1

    .line 189
    check-cast v0, Lp3/l;

    .line 191
    goto :goto_c0

    .line 192
    :cond_bf
    move-object v0, v4

    .line 193
    :goto_c0
    if-nez v0, :cond_ce

    .line 195
    invoke-interface {p1}, Lp3/h0;->getList()Lp3/s0;

    .line 198
    move-result-object p1

    .line 199
    if-nez p1, :cond_c9

    .line 201
    goto :goto_cf

    .line 202
    :cond_c9
    invoke-static {p1}, Lp3/o0;->I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;

    .line 205
    move-result-object v4

    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    move-object v4, v0

    .line 208
    :goto_cf
    if-eqz v4, :cond_da

    .line 210
    invoke-virtual {p0, v3, v4, p2}, Lp3/o0;->P(Lp3/o0$b;Lp3/l;Ljava/lang/Object;)Z

    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_da

    .line 216
    sget-object p1, Lp3/u;->e:Lu3/r;

    .line 218
    goto :goto_de

    .line 219
    :cond_da
    invoke-virtual {p0, v3, p2}, Lp3/o0;->w(Lp3/o0$b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-result-object p1

    .line 223
    :goto_de
    return-object p1

    .line 224
    :catchall_df
    move-exception p1

    .line 225
    monitor-exit v3

    .line 226
    throw p1
.end method

.method public final P(Lp3/o0$b;Lp3/l;Ljava/lang/Object;)Z
    .registers 8

    .line 1
    :cond_0
    iget-object v0, p2, Lp3/l;->e:Lp3/m;

    .line 3
    new-instance v1, Lp3/o0$a;

    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lp3/o0$a;-><init>(Lp3/o0;Lp3/o0$b;Lp3/l;Ljava/lang/Object;)V

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v1, v3}, Lp3/k0$a;->a(Lp3/k0;ZLp3/n0;I)Lp3/b0;

    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lp3/t0;->a:Lp3/t0;

    .line 16
    if-eq v0, v1, :cond_12

    .line 18
    return v3

    .line 19
    :cond_12
    invoke-static {p2}, Lp3/o0;->I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;

    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_0

    .line 25
    return v2
.end method

.method public a()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lp3/h0;

    .line 7
    if-eqz v1, :cond_12

    .line 9
    check-cast v0, Lp3/h0;

    .line 11
    invoke-interface {v0}, Lp3/h0;->a()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final e()Ljava/util/concurrent/CancellationException;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lp3/o0$b;

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "Job is still new or active: "

    .line 10
    if-eqz v1, :cond_47

    .line 12
    check-cast v0, Lp3/o0$b;

    .line 14
    invoke-virtual {v0}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_14

    .line 20
    goto :goto_36

    .line 21
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v4, " is cancelling"

    .line 31
    invoke-static {v4, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    .line 37
    if-eqz v4, :cond_29

    .line 39
    move-object v2, v0

    .line 40
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 42
    :cond_29
    if-nez v2, :cond_36

    .line 44
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    .line 46
    if-nez v1, :cond_33

    .line 48
    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    :cond_33
    invoke-direct {v2, v1, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    .line 55
    :cond_36
    :goto_36
    if-eqz v2, :cond_39

    .line 57
    goto :goto_7b

    .line 58
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    invoke-static {p0, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    :cond_47
    instance-of v1, v0, Lp3/h0;

    .line 74
    if-nez v1, :cond_7c

    .line 76
    instance-of v1, v0, Lp3/o;

    .line 78
    if-eqz v1, :cond_67

    .line 80
    check-cast v0, Lp3/o;

    .line 82
    iget-object v0, v0, Lp3/o;->a:Ljava/lang/Throwable;

    .line 84
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 86
    if-eqz v1, :cond_5a

    .line 88
    move-object v2, v0

    .line 89
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 91
    :cond_5a
    if-nez v2, :cond_7b

    .line 93
    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    .line 95
    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v1, v2, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    .line 102
    move-object v2, v1

    .line 103
    goto :goto_7b

    .line 104
    :cond_67
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    const-string v3, " has completed normally"

    .line 116
    invoke-static {v3, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    .line 123
    move-object v2, v0

    .line 124
    :cond_7b
    :goto_7b
    return-object v2

    .line 125
    :cond_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 127
    invoke-static {p0, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0
.end method

.method public final fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;
    .registers 4
    .param p2  # Lh3/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lh3/p<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "operation"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p2, p1, p0}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final g(Lp3/o0;)V
    .registers 2
    .param p1  # Lp3/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lp3/o0;->n(Ljava/lang/Object;)Z

    .line 4
    return-void
.end method

.method public final get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;
    .registers 2
    .param p1  # Lkotlin/coroutines/CoroutineContext$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$a;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$b<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$a$a;->a(Lkotlin/coroutines/CoroutineContext$a;Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()Lkotlin/coroutines/CoroutineContext$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$b<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lp3/k0$b;->a:Lp3/k0$b;

    .line 3
    return-object v0
.end method

.method public final i(ZZLp3/n0;)Lp3/b0;
    .registers 14
    .param p3  # Lp3/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_14

    .line 4
    instance-of v1, p3, Lp3/l0;

    .line 6
    if-eqz v1, :cond_b

    .line 8
    move-object v1, p3

    .line 9
    check-cast v1, Lp3/l0;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move-object v1, v0

    .line 13
    :goto_c
    if-nez v1, :cond_15

    .line 15
    new-instance v1, Lp3/j0;

    .line 17
    invoke-direct {v1, p3}, Lp3/j0;-><init>(Lp3/n0;)V

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-object v1, p3

    .line 22
    :cond_15
    :goto_15
    iput-object p0, v1, Lp3/n0;->d:Lp3/o0;

    .line 24
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    instance-of v3, v2, Lp3/c0;

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x1

    .line 32
    if-eqz v3, :cond_5c

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Lp3/c0;

    .line 37
    iget-boolean v6, v3, Lp3/c0;->a:Z

    .line 39
    if-eqz v6, :cond_3b

    .line 41
    sget-object v6, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 43
    :cond_2a
    invoke-virtual {v6, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_32

    .line 49
    move v4, v5

    .line 50
    goto :goto_38

    .line 51
    :cond_32
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    if-eq v3, v2, :cond_2a

    .line 57
    :goto_38
    if-eqz v4, :cond_17

    .line 59
    return-object v1

    .line 60
    :cond_3b
    new-instance v2, Lp3/s0;

    .line 62
    invoke-direct {v2}, Lp3/s0;-><init>()V

    .line 65
    iget-boolean v4, v3, Lp3/c0;->a:Z

    .line 67
    if-eqz v4, :cond_46

    .line 69
    move-object v6, v2

    .line 70
    goto :goto_4c

    .line 71
    :cond_46
    new-instance v4, Lp3/g0;

    .line 73
    invoke-direct {v4, v2}, Lp3/g0;-><init>(Lp3/s0;)V

    .line 76
    move-object v6, v4

    .line 77
    :goto_4c
    sget-object v7, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 79
    :cond_4e
    invoke-virtual {v7, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_55

    .line 85
    goto :goto_17

    .line 86
    :cond_55
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    if-eq v2, v3, :cond_4e

    .line 92
    goto :goto_17

    .line 93
    :cond_5c
    instance-of v3, v2, Lp3/h0;

    .line 95
    if-eqz v3, :cond_de

    .line 97
    move-object v3, v2

    .line 98
    check-cast v3, Lp3/h0;

    .line 100
    invoke-interface {v3}, Lp3/h0;->getList()Lp3/s0;

    .line 103
    move-result-object v3

    .line 104
    if-nez v3, :cond_79

    .line 106
    if-eqz v2, :cond_71

    .line 108
    check-cast v2, Lp3/n0;

    .line 110
    invoke-virtual {p0, v2}, Lp3/o0;->M(Lp3/n0;)V

    .line 113
    goto :goto_17

    .line 114
    :cond_71
    new-instance p1, Ljava/lang/NullPointerException;

    .line 116
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 118
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p1

    .line 122
    :cond_79
    sget-object v6, Lp3/t0;->a:Lp3/t0;

    .line 124
    const/4 v7, 0x2

    .line 125
    if-eqz p1, :cond_bf

    .line 127
    instance-of v8, v2, Lp3/o0$b;

    .line 129
    if-eqz v8, :cond_bf

    .line 131
    monitor-enter v2

    .line 132
    :try_start_83
    move-object v8, v2

    .line 133
    check-cast v8, Lp3/o0$b;

    .line 135
    invoke-virtual {v8}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    .line 138
    move-result-object v8

    .line 139
    if-eqz v8, :cond_99

    .line 141
    instance-of v9, p3, Lp3/l;

    .line 143
    if-eqz v9, :cond_b8

    .line 145
    move-object v9, v2

    .line 146
    check-cast v9, Lp3/o0$b;

    .line 148
    invoke-virtual {v9}, Lp3/o0$b;->e()Z

    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_b8

    .line 154
    :cond_99
    new-instance v6, Lp3/p0;

    .line 156
    invoke-direct {v6, v1, p0, v2}, Lp3/p0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lp3/o0;Ljava/lang/Object;)V

    .line 159
    :goto_9e
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v9, v1, v3, v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->o(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I

    .line 166
    move-result v9
    :try_end_a6
    .catchall {:try_start_83 .. :try_end_a6} :catchall_bc

    .line 167
    if-eq v9, v5, :cond_ad

    .line 169
    if-eq v9, v7, :cond_ab

    .line 171
    goto :goto_9e

    .line 172
    :cond_ab
    move v6, v4

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move v6, v5

    .line 175
    :goto_ae
    if-nez v6, :cond_b3

    .line 177
    monitor-exit v2

    .line 178
    goto/16 :goto_17

    .line 180
    :cond_b3
    if-nez v8, :cond_b7

    .line 182
    monitor-exit v2

    .line 183
    return-object v1

    .line 184
    :cond_b7
    move-object v6, v1

    .line 185
    :cond_b8
    :try_start_b8
    sget-object v9, Ly2/e;->a:Ly2/e;
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_bc

    .line 187
    monitor-exit v2

    .line 188
    goto :goto_c0

    .line 189
    :catchall_bc
    move-exception p1

    .line 190
    monitor-exit v2

    .line 191
    throw p1

    .line 192
    :cond_bf
    move-object v8, v0

    .line 193
    :goto_c0
    if-eqz v8, :cond_c8

    .line 195
    if-eqz p2, :cond_c7

    .line 197
    invoke-interface {p3, v8}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_c7
    return-object v6

    .line 201
    :cond_c8
    new-instance v6, Lp3/p0;

    .line 203
    invoke-direct {v6, v1, p0, v2}, Lp3/p0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lp3/o0;Ljava/lang/Object;)V

    .line 206
    :goto_cd
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2, v1, v3, v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->o(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I

    .line 213
    move-result v2

    .line 214
    if-eq v2, v5, :cond_da

    .line 216
    if-eq v2, v7, :cond_db

    .line 218
    goto :goto_cd

    .line 219
    :cond_da
    move v4, v5

    .line 220
    :cond_db
    if-eqz v4, :cond_17

    .line 222
    return-object v1

    .line 223
    :cond_de
    if-eqz p2, :cond_f0

    .line 225
    instance-of p1, v2, Lp3/o;

    .line 227
    if-eqz p1, :cond_e7

    .line 229
    check-cast v2, Lp3/o;

    .line 231
    goto :goto_e8

    .line 232
    :cond_e7
    move-object v2, v0

    .line 233
    :goto_e8
    if-nez v2, :cond_eb

    .line 235
    goto :goto_ed

    .line 236
    :cond_eb
    iget-object v0, v2, Lp3/o;->a:Ljava/lang/Throwable;

    .line 238
    :goto_ed
    invoke-interface {p3, v0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_f0
    sget-object p1, Lp3/t0;->a:Lp3/t0;

    .line 243
    return-object p1
.end method

.method public final k(Lp3/o0;)Lp3/k;
    .registers 4
    .param p1  # Lp3/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lp3/l;

    .line 3
    invoke-direct {v0, p1}, Lp3/l;-><init>(Lp3/o0;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {p0, p1, v0, v1}, Lp3/k0$a;->a(Lp3/k0;ZLp3/n0;I)Lp3/b0;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lp3/k;

    .line 14
    return-object p1
.end method

.method public final m()Ljava/util/concurrent/CancellationException;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lp3/o0$b;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_11

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lp3/o0$b;

    .line 13
    invoke-virtual {v1}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_20

    .line 18
    :cond_11
    instance-of v1, v0, Lp3/o;

    .line 20
    if-eqz v1, :cond_1b

    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lp3/o;

    .line 25
    iget-object v1, v1, Lp3/o;->a:Ljava/lang/Throwable;

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    instance-of v1, v0, Lp3/h0;

    .line 30
    if-nez v1, :cond_39

    .line 32
    move-object v1, v2

    .line 33
    :goto_20
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    .line 35
    if-eqz v3, :cond_27

    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 40
    :cond_27
    if-nez v2, :cond_38

    .line 42
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    .line 44
    invoke-static {v0}, Lp3/o0;->N(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    const-string v3, "Parent job is "

    .line 50
    invoke-static {v0, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    .line 57
    :cond_38
    return-object v2

    .line 58
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 60
    const-string v2, "Cannot be cancelling child in this state: "

    .line 62
    invoke-static {v0, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v1
.end method

.method public final minusKey(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .param p1  # Lkotlin/coroutines/CoroutineContext$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$b<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$a$a;->b(Lkotlin/coroutines/CoroutineContext$a;Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Z
    .registers 11
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lp3/u;->d:Lu3/r;

    .line 3
    instance-of v1, p0, Lp3/m0;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_37

    .line 9
    :cond_8
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lp3/h0;

    .line 15
    if-eqz v1, :cond_30

    .line 17
    instance-of v1, v0, Lp3/o0$b;

    .line 19
    if-eqz v1, :cond_1e

    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lp3/o0$b;

    .line 24
    invoke-virtual {v1}, Lp3/o0$b;->e()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    goto :goto_30

    .line 31
    :cond_1e
    new-instance v1, Lp3/o;

    .line 33
    invoke-virtual {p0, p1}, Lp3/o0;->v(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 36
    move-result-object v4

    .line 37
    invoke-direct {v1, v4, v3}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    .line 40
    invoke-virtual {p0, v0, v1}, Lp3/o0;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lp3/u;->f:Lu3/r;

    .line 46
    if-eq v0, v1, :cond_8

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    :goto_30
    sget-object v0, Lp3/u;->d:Lu3/r;

    .line 51
    :goto_32
    sget-object v1, Lp3/u;->e:Lu3/r;

    .line 53
    if-ne v0, v1, :cond_37

    .line 55
    return v2

    .line 56
    :cond_37
    sget-object v1, Lp3/u;->d:Lu3/r;

    .line 58
    if-ne v0, v1, :cond_ee

    .line 60
    const/4 v0, 0x0

    .line 61
    move-object v1, v0

    .line 62
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    instance-of v5, v4, Lp3/o0$b;

    .line 68
    if-eqz v5, :cond_89

    .line 70
    monitor-enter v4

    .line 71
    :try_start_46
    move-object v5, v4

    .line 72
    check-cast v5, Lp3/o0$b;

    .line 74
    invoke-virtual {v5}, Lp3/o0$b;->f()Z

    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_54

    .line 80
    sget-object p1, Lp3/u;->g:Lu3/r;
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_86

    .line 82
    monitor-exit v4

    .line 83
    goto/16 :goto_ed

    .line 85
    :cond_54
    :try_start_54
    move-object v5, v4

    .line 86
    check-cast v5, Lp3/o0$b;

    .line 88
    invoke-virtual {v5}, Lp3/o0$b;->d()Z

    .line 91
    move-result v5

    .line 92
    if-nez p1, :cond_5f

    .line 94
    if-nez v5, :cond_6b

    .line 96
    :cond_5f
    if-nez v1, :cond_65

    .line 98
    invoke-virtual {p0, p1}, Lp3/o0;->v(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 101
    move-result-object v1

    .line 102
    :cond_65
    move-object p1, v4

    .line 103
    check-cast p1, Lp3/o0$b;

    .line 105
    invoke-virtual {p1, v1}, Lp3/o0$b;->b(Ljava/lang/Throwable;)V

    .line 108
    :cond_6b
    move-object p1, v4

    .line 109
    check-cast p1, Lp3/o0$b;

    .line 111
    invoke-virtual {p1}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    .line 114
    move-result-object p1
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_86

    .line 115
    xor-int/lit8 v1, v5, 0x1

    .line 117
    if-eqz v1, :cond_77

    .line 119
    move-object v0, p1

    .line 120
    :cond_77
    monitor-exit v4

    .line 121
    if-nez v0, :cond_7b

    .line 123
    goto :goto_82

    .line 124
    :cond_7b
    check-cast v4, Lp3/o0$b;

    .line 126
    iget-object p1, v4, Lp3/o0$b;->a:Lp3/s0;

    .line 128
    invoke-virtual {p0, p1, v0}, Lp3/o0;->J(Lp3/s0;Ljava/lang/Throwable;)V

    .line 131
    :goto_82
    sget-object p1, Lp3/u;->d:Lu3/r;

    .line 133
    goto/16 :goto_ed

    .line 135
    :catchall_86
    move-exception p1

    .line 136
    monitor-exit v4

    .line 137
    throw p1

    .line 138
    :cond_89
    instance-of v5, v4, Lp3/h0;

    .line 140
    if-eqz v5, :cond_eb

    .line 142
    if-nez v1, :cond_93

    .line 144
    invoke-virtual {p0, p1}, Lp3/o0;->v(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 147
    move-result-object v1

    .line 148
    :cond_93
    move-object v5, v4

    .line 149
    check-cast v5, Lp3/h0;

    .line 151
    invoke-interface {v5}, Lp3/h0;->a()Z

    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_c6

    .line 157
    invoke-virtual {p0, v5}, Lp3/o0;->z(Lp3/h0;)Lp3/s0;

    .line 160
    move-result-object v6

    .line 161
    if-nez v6, :cond_a3

    .line 163
    goto :goto_bb

    .line 164
    :cond_a3
    new-instance v7, Lp3/o0$b;

    .line 166
    invoke-direct {v7, v6, v1}, Lp3/o0$b;-><init>(Lp3/s0;Ljava/lang/Throwable;)V

    .line 169
    sget-object v8, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 171
    :cond_aa
    invoke-virtual {v8, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_b2

    .line 177
    move v4, v2

    .line 178
    goto :goto_b9

    .line 179
    :cond_b2
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v4

    .line 183
    if-eq v4, v5, :cond_aa

    .line 185
    move v4, v3

    .line 186
    :goto_b9
    if-nez v4, :cond_bd

    .line 188
    :goto_bb
    move v4, v3

    .line 189
    goto :goto_c1

    .line 190
    :cond_bd
    invoke-virtual {p0, v6, v1}, Lp3/o0;->J(Lp3/s0;Ljava/lang/Throwable;)V

    .line 193
    move v4, v2

    .line 194
    :goto_c1
    if-eqz v4, :cond_3d

    .line 196
    sget-object p1, Lp3/u;->d:Lu3/r;

    .line 198
    goto :goto_ed

    .line 199
    :cond_c6
    new-instance v5, Lp3/o;

    .line 201
    invoke-direct {v5, v1, v3}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    .line 204
    invoke-virtual {p0, v4, v5}, Lp3/o0;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-result-object v5

    .line 208
    sget-object v6, Lp3/u;->d:Lu3/r;

    .line 210
    if-eq v5, v6, :cond_db

    .line 212
    sget-object v4, Lp3/u;->f:Lu3/r;

    .line 214
    if-ne v5, v4, :cond_d9

    .line 216
    goto/16 :goto_3d

    .line 218
    :cond_d9
    move-object v0, v5

    .line 219
    goto :goto_ee

    .line 220
    :cond_db
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 222
    const-string v0, "Cannot happen in "

    .line 224
    invoke-static {v4, v0}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p1

    .line 236
    :cond_eb
    sget-object p1, Lp3/u;->g:Lu3/r;

    .line 238
    :goto_ed
    move-object v0, p1

    .line 239
    :cond_ee
    :goto_ee
    sget-object p1, Lp3/u;->d:Lu3/r;

    .line 241
    if-ne v0, p1, :cond_f3

    .line 243
    goto :goto_101

    .line 244
    :cond_f3
    sget-object p1, Lp3/u;->e:Lu3/r;

    .line 246
    if-ne v0, p1, :cond_f8

    .line 248
    goto :goto_101

    .line 249
    :cond_f8
    sget-object p1, Lp3/u;->g:Lu3/r;

    .line 251
    if-ne v0, p1, :cond_fe

    .line 253
    move v2, v3

    .line 254
    goto :goto_101

    .line 255
    :cond_fe
    invoke-virtual {p0, v0}, Lp3/o0;->d(Ljava/lang/Object;)V

    .line 258
    :goto_101
    return v2
.end method

.method public final o(Ljava/util/concurrent/CancellationException;)V
    .registers 4
    .param p1  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_d

    .line 3
    const/4 p1, 0x0

    .line 4
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    .line 6
    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    .line 13
    move-object p1, v0

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Lp3/o0;->n(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public final plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .registers 3
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final s(Ljava/lang/Throwable;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lp3/o0;->F()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 11
    iget-object v2, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 13
    check-cast v2, Lp3/k;

    .line 15
    if-eqz v2, :cond_20

    .line 17
    sget-object v3, Lp3/t0;->a:Lp3/t0;

    .line 19
    if-ne v2, v3, :cond_15

    .line 21
    goto :goto_20

    .line 22
    :cond_15
    invoke-interface {v2, p1}, Lp3/k;->d(Ljava/lang/Throwable;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1f

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v1, 0x0

    .line 32
    :cond_1f
    :goto_1f
    return v1

    .line 33
    :cond_20
    :goto_20
    return v0
.end method

.method public final start()Z
    .registers 8

    .line 1
    :goto_0
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lp3/c0;

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2d

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lp3/c0;

    .line 15
    iget-boolean v1, v1, Lp3/c0;->a:Z

    .line 17
    if-eqz v1, :cond_13

    .line 19
    goto :goto_4f

    .line 20
    :cond_13
    sget-object v1, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    sget-object v5, Lp3/u;->j:Lp3/c0;

    .line 24
    :cond_17
    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1f

    .line 30
    move v0, v4

    .line 31
    goto :goto_26

    .line 32
    :cond_1f
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v6

    .line 36
    if-eq v6, v0, :cond_17

    .line 38
    move v0, v3

    .line 39
    :goto_26
    if-nez v0, :cond_29

    .line 41
    goto :goto_50

    .line 42
    :cond_29
    invoke-virtual {p0}, Lp3/o0;->L()V

    .line 45
    goto :goto_4d

    .line 46
    :cond_2d
    instance-of v1, v0, Lp3/g0;

    .line 48
    if-eqz v1, :cond_4f

    .line 50
    sget-object v1, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 52
    move-object v5, v0

    .line 53
    check-cast v5, Lp3/g0;

    .line 55
    iget-object v5, v5, Lp3/g0;->a:Lp3/s0;

    .line 57
    :cond_38
    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_40

    .line 63
    move v0, v4

    .line 64
    goto :goto_47

    .line 65
    :cond_40
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v6

    .line 69
    if-eq v6, v0, :cond_38

    .line 71
    move v0, v3

    .line 72
    :goto_47
    if-nez v0, :cond_4a

    .line 74
    goto :goto_50

    .line 75
    :cond_4a
    invoke-virtual {p0}, Lp3/o0;->L()V

    .line 78
    :goto_4d
    move v2, v4

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    :goto_4f
    move v2, v3

    .line 81
    :goto_50
    if-eqz v2, :cond_56

    .line 83
    if-eq v2, v4, :cond_55

    .line 85
    goto :goto_0

    .line 86
    :cond_55
    return v4

    .line 87
    :cond_56
    return v3
.end method

.method public t()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Job was cancelled"

    return-object v0
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {p0}, Lp3/o0;->H()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const/16 v2, 0x7b

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lp3/o0;->N(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/16 v2, 0x7d

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x40

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final u(Lp3/h0;Ljava/lang/Object;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 3
    check-cast v0, Lp3/k;

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_e

    .line 8
    :cond_7
    invoke-interface {v0}, Lp3/b0;->dispose()V

    .line 11
    sget-object v0, Lp3/t0;->a:Lp3/t0;

    .line 13
    iput-object v0, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    .line 15
    :goto_e
    instance-of v0, p2, Lp3/o;

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_16

    .line 20
    check-cast p2, Lp3/o;

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move-object p2, v1

    .line 24
    :goto_17
    if-nez p2, :cond_1b

    .line 26
    move-object p2, v1

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    iget-object p2, p2, Lp3/o;->a:Ljava/lang/Throwable;

    .line 30
    :goto_1d
    instance-of v0, p1, Lp3/n0;

    .line 32
    const-string v2, " for "

    .line 34
    const-string v3, "Exception in completion handler "

    .line 36
    if-eqz v0, :cond_4c

    .line 38
    :try_start_25
    move-object v0, p1

    .line 39
    check-cast v0, Lp3/n0;

    .line 41
    invoke-virtual {v0, p2}, Lp3/q;->p(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2d

    .line 44
    goto/16 :goto_9b

    .line 46
    :catchall_2d
    move-exception p2

    .line 47
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p0, v0}, Lp3/o0;->D(Lkotlinx/coroutines/CompletionHandlerException;)V

    .line 76
    goto :goto_9b

    .line 77
    :cond_4c
    invoke-interface {p1}, Lp3/h0;->getList()Lp3/s0;

    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_53

    .line 83
    goto :goto_9b

    .line 84
    :cond_53
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 90
    move-object v4, v1

    .line 91
    :goto_5a
    invoke-static {v0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_95

    .line 97
    instance-of v5, v0, Lp3/n0;

    .line 99
    if-eqz v5, :cond_90

    .line 101
    move-object v5, v0

    .line 102
    check-cast v5, Lp3/n0;

    .line 104
    :try_start_67
    invoke-virtual {v5, p2}, Lp3/q;->p(Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    .line 107
    goto :goto_90

    .line 108
    :catchall_6b
    move-exception v6

    .line 109
    if-nez v4, :cond_70

    .line 111
    move-object v7, v1

    .line 112
    goto :goto_74

    .line 113
    :cond_70
    invoke-static {v4, v6}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 116
    move-object v7, v4

    .line 117
    :goto_74
    if-nez v7, :cond_90

    .line 119
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    :cond_90
    :goto_90
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 148
    move-result-object v0

    .line 149
    goto :goto_5a

    .line 150
    :cond_95
    if-nez v4, :cond_98

    .line 152
    goto :goto_9b

    .line 153
    :cond_98
    invoke-virtual {p0, v4}, Lp3/o0;->D(Lkotlinx/coroutines/CompletionHandlerException;)V

    .line 156
    :goto_9b
    return-void
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_6

    .line 5
    :cond_4
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 7
    :goto_6
    if-eqz v0, :cond_18

    .line 9
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    if-nez p1, :cond_20

    .line 13
    const/4 p1, 0x0

    .line 14
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    .line 16
    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    .line 23
    move-object p1, v0

    .line 24
    goto :goto_20

    .line 25
    :cond_18
    if-eqz p1, :cond_21

    .line 27
    check-cast p1, Lp3/v0;

    .line 29
    invoke-interface {p1}, Lp3/v0;->m()Ljava/util/concurrent/CancellationException;

    .line 32
    move-result-object p1

    .line 33
    :cond_20
    :goto_20
    return-object p1

    .line 34
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    .line 36
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1
.end method

.method public final w(Lp3/o0$b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p2, Lp3/o;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Lp3/o;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move-object v0, v1

    .line 11
    :goto_a
    if-nez v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget-object v1, v0, Lp3/o;->a:Ljava/lang/Throwable;

    .line 16
    :goto_f
    monitor-enter p1

    .line 17
    :try_start_10
    invoke-virtual {p1}, Lp3/o0$b;->d()Z

    .line 20
    invoke-virtual {p1, v1}, Lp3/o0$b;->g(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, p1, v0}, Lp3/o0;->x(Lp3/o0$b;Ljava/util/ArrayList;)Ljava/lang/Throwable;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v2, :cond_54

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v4

    .line 35
    if-gt v4, v3, :cond_25

    .line 37
    goto :goto_54

    .line 38
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v4

    .line 42
    new-instance v5, Ljava/util/IdentityHashMap;

    .line 44
    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 47
    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_54

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/lang/Throwable;

    .line 67
    if-eq v5, v2, :cond_36

    .line 69
    if-eq v5, v2, :cond_36

    .line 71
    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    .line 73
    if-nez v6, :cond_36

    .line 75
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_36

    .line 81
    invoke-static {v2, v5}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_ac

    .line 84
    goto :goto_36

    .line 85
    :cond_54
    :goto_54
    monitor-exit p1

    .line 86
    const/4 v0, 0x0

    .line 87
    if-nez v2, :cond_59

    .line 89
    goto :goto_61

    .line 90
    :cond_59
    if-ne v2, v1, :cond_5c

    .line 92
    goto :goto_61

    .line 93
    :cond_5c
    new-instance p2, Lp3/o;

    .line 95
    invoke-direct {p2, v2, v0}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    .line 98
    :goto_61
    if-eqz v2, :cond_88

    .line 100
    invoke-virtual {p0, v2}, Lp3/o0;->s(Ljava/lang/Throwable;)Z

    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_72

    .line 106
    invoke-virtual {p0, v2}, Lp3/o0;->C(Ljava/lang/Throwable;)Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_70

    .line 112
    goto :goto_72

    .line 113
    :cond_70
    move v1, v0

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    :goto_72
    move v1, v3

    .line 116
    :goto_73
    if-eqz v1, :cond_88

    .line 118
    if-eqz p2, :cond_80

    .line 120
    move-object v1, p2

    .line 121
    check-cast v1, Lp3/o;

    .line 123
    sget-object v2, Lp3/o;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 125
    invoke-virtual {v2, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 128
    goto :goto_88

    .line 129
    :cond_80
    new-instance p1, Ljava/lang/NullPointerException;

    .line 131
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 133
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1

    .line 137
    :cond_88
    :goto_88
    invoke-virtual {p0, p2}, Lp3/o0;->K(Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 142
    instance-of v1, p2, Lp3/h0;

    .line 144
    if-eqz v1, :cond_9a

    .line 146
    new-instance v1, Lp3/i0;

    .line 148
    move-object v2, p2

    .line 149
    check-cast v2, Lp3/h0;

    .line 151
    invoke-direct {v1, v2}, Lp3/i0;-><init>(Lp3/h0;)V

    .line 154
    goto :goto_9b

    .line 155
    :cond_9a
    move-object v1, p2

    .line 156
    :cond_9b
    :goto_9b
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_a2

    .line 162
    goto :goto_a8

    .line 163
    :cond_a2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object v2

    .line 167
    if-eq v2, p1, :cond_9b

    .line 169
    :goto_a8
    invoke-virtual {p0, p1, p2}, Lp3/o0;->u(Lp3/h0;Ljava/lang/Object;)V

    .line 172
    return-object p2

    .line 173
    :catchall_ac
    move-exception p2

    .line 174
    monitor-exit p1

    .line 175
    throw p2
.end method

.method public final x(Lp3/o0$b;Ljava/util/ArrayList;)Ljava/lang/Throwable;
    .registers 8

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_18

    .line 8
    invoke-virtual {p1}, Lp3/o0$b;->d()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_17

    .line 14
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 16
    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    .line 23
    return-object p1

    .line 24
    :cond_17
    return-object v1

    .line 25
    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v0, :cond_30

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Ljava/lang/Throwable;

    .line 43
    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    .line 45
    xor-int/2addr v3, v2

    .line 46
    if-eqz v3, :cond_1c

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move-object v0, v1

    .line 50
    :goto_31
    check-cast v0, Ljava/lang/Throwable;

    .line 52
    if-eqz v0, :cond_36

    .line 54
    return-object v0

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Throwable;

    .line 62
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 64
    if-eqz v3, :cond_63

    .line 66
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p2

    .line 70
    :cond_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_5e

    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    move-object v4, v3

    .line 81
    check-cast v4, Ljava/lang/Throwable;

    .line 83
    if-eq v4, v0, :cond_5a

    .line 85
    instance-of v4, v4, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 87
    if-eqz v4, :cond_5a

    .line 89
    move v4, v2

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move v4, p1

    .line 92
    :goto_5b
    if-eqz v4, :cond_45

    .line 94
    move-object v1, v3

    .line 95
    :cond_5e
    check-cast v1, Ljava/lang/Throwable;

    .line 97
    if-eqz v1, :cond_63

    .line 99
    return-object v1

    .line 100
    :cond_63
    return-object v0
.end method

.method public y()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final z(Lp3/h0;)Lp3/s0;
    .registers 4

    .line 1
    invoke-interface {p1}, Lp3/h0;->getList()Lp3/s0;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2b

    .line 7
    instance-of v0, p1, Lp3/c0;

    .line 9
    if-eqz v0, :cond_10

    .line 11
    new-instance v0, Lp3/s0;

    .line 13
    invoke-direct {v0}, Lp3/s0;-><init>()V

    .line 16
    goto :goto_2b

    .line 17
    :cond_10
    instance-of v0, p1, Lp3/n0;

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    check-cast p1, Lp3/n0;

    .line 23
    invoke-virtual {p0, p1}, Lp3/o0;->M(Lp3/n0;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_2b

    .line 28
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    const-string v1, "State should have list: "

    .line 32
    invoke-static {p1, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0

    .line 44
    :cond_2b
    :goto_2b
    return-object v0
.end method
