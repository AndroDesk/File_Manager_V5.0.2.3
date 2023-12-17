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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    sget-object p1, Lp3/u;->j:Lp3/c0;

    goto :goto_a

    :cond_8
    sget-object p1, Lp3/u;->i:Lp3/c0;

    :goto_a
    iput-object p1, p0, Lp3/o0;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;
    .registers 2

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p0

    goto :goto_0

    :cond_b
    :goto_b
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    instance-of v0, p0, Lp3/l;

    if-eqz v0, :cond_1d

    check-cast p0, Lp3/l;

    return-object p0

    :cond_1d
    instance-of v0, p0, Lp3/s0;

    if-eqz v0, :cond_b

    const/4 p0, 0x0

    return-object p0
.end method

.method public static N(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Lp3/o0$b;

    if-eqz v0, :cond_18

    check-cast p0, Lp3/o0$b;

    invoke-virtual {p0}, Lp3/o0$b;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "Cancelling"

    goto :goto_33

    :cond_f
    invoke-virtual {p0}, Lp3/o0$b;->e()Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "Completing"

    goto :goto_33

    :cond_18
    instance-of v0, p0, Lp3/h0;

    if-eqz v0, :cond_2a

    check-cast p0, Lp3/h0;

    invoke-interface {p0}, Lp3/h0;->a()Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_24
    const-string p0, "Active"

    goto :goto_33

    :cond_27
    const-string p0, "New"

    goto :goto_33

    :cond_2a
    instance-of p0, p0, Lp3/o;

    if-eqz p0, :cond_31

    const-string p0, "Cancelled"

    goto :goto_33

    :cond_31
    const-string p0, "Completed"

    :goto_33
    return-object p0
.end method


# virtual methods
.method public final A()Lp3/k;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lp3/k;

    return-object v0
.end method

.method public final B()Ljava/lang/Object;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :goto_0
    iget-object v0, p0, Lp3/o0;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lu3/m;

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    check-cast v0, Lu3/m;

    invoke-virtual {v0, p0}, Lu3/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    throw p1
.end method

.method public final E(Lp3/k0;)V
    .registers 3
    .param p1  # Lp3/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_7

    sget-object p1, Lp3/t0;->a:Lp3/t0;

    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    return-void

    :cond_7
    invoke-interface {p1}, Lp3/k0;->start()Z

    invoke-interface {p1, p0}, Lp3/k0;->k(Lp3/o0;)Lp3/k;

    move-result-object p1

    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lp3/h0;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    invoke-interface {p1}, Lp3/b0;->dispose()V

    sget-object p1, Lp3/t0;->a:Lp3/t0;

    iput-object p1, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

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

    :goto_0
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lp3/o0;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp3/u;->d:Lu3/r;

    if-ne v0, v1, :cond_39

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lp3/o;

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    check-cast p1, Lp3/o;

    goto :goto_30

    :cond_2f
    move-object p1, v3

    :goto_30
    if-nez p1, :cond_33

    goto :goto_35

    :cond_33
    iget-object v3, p1, Lp3/o;->a:Ljava/lang/Throwable;

    :goto_35
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_39
    sget-object v1, Lp3/u;->f:Lu3/r;

    if-ne v0, v1, :cond_3e

    goto :goto_0

    :cond_3e
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J(Lp3/s0;Ljava/lang/Throwable;)V
    .registers 10

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_8
    invoke-static {v0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    instance-of v3, v0, Lp3/l0;

    if-eqz v3, :cond_42

    move-object v3, v0

    check-cast v3, Lp3/n0;

    :try_start_15
    invoke-virtual {v3, p2}, Lp3/q;->p(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_42

    :catchall_19
    move-exception v4

    if-nez v2, :cond_1e

    move-object v5, v1

    goto :goto_22

    :cond_1e
    invoke-static {v2, v4}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_22
    if-nez v5, :cond_42

    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_8

    :cond_47
    if-nez v2, :cond_4a

    goto :goto_4d

    :cond_4a
    invoke-virtual {p0, v2}, Lp3/o0;->D(Lkotlinx/coroutines/CompletionHandlerException;)V

    :goto_4d
    invoke-virtual {p0, p2}, Lp3/o0;->s(Ljava/lang/Throwable;)Z

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

    new-instance v0, Lp3/s0;

    invoke-direct {v0}, Lp3/s0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_1a

    goto :goto_30

    :cond_1a
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1c
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_25

    move v2, v4

    goto :goto_2b

    :cond_25
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1c

    :goto_2b
    if-eqz v2, :cond_12

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    :goto_30
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    sget-object v2, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_36
    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_43

    :cond_3d
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_36

    :goto_43
    return-void
.end method

.method public final O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p1, Lp3/h0;

    if-nez v0, :cond_7

    sget-object p1, Lp3/u;->d:Lu3/r;

    return-object p1

    :cond_7
    instance-of v0, p1, Lp3/c0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    instance-of v0, p1, Lp3/n0;

    if-eqz v0, :cond_4c

    :cond_11
    instance-of v0, p1, Lp3/l;

    if-nez v0, :cond_4c

    instance-of v0, p2, Lp3/o;

    if-nez v0, :cond_4c

    move-object v0, p1

    check-cast v0, Lp3/h0;

    sget-object v3, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of p1, p2, Lp3/h0;

    if-eqz p1, :cond_2c

    new-instance p1, Lp3/i0;

    move-object v4, p2

    check-cast v4, Lp3/h0;

    invoke-direct {p1, v4}, Lp3/i0;-><init>(Lp3/h0;)V

    move-object v4, p1

    goto :goto_2d

    :cond_2c
    move-object v4, p2

    :cond_2d
    :goto_2d
    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    move p1, v1

    goto :goto_3c

    :cond_35
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_2d

    move p1, v2

    :goto_3c
    if-nez p1, :cond_40

    move v1, v2

    goto :goto_46

    :cond_40
    invoke-virtual {p0, p2}, Lp3/o0;->K(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lp3/o0;->u(Lp3/h0;Ljava/lang/Object;)V

    :goto_46
    if-eqz v1, :cond_49

    return-object p2

    :cond_49
    sget-object p1, Lp3/u;->f:Lu3/r;

    return-object p1

    :cond_4c
    check-cast p1, Lp3/h0;

    invoke-virtual {p0, p1}, Lp3/o0;->z(Lp3/h0;)Lp3/s0;

    move-result-object v0

    if-nez v0, :cond_58

    sget-object p1, Lp3/u;->f:Lu3/r;

    goto/16 :goto_de

    :cond_58
    instance-of v3, p1, Lp3/o0$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_61

    move-object v3, p1

    check-cast v3, Lp3/o0$b;

    goto :goto_62

    :cond_61
    move-object v3, v4

    :goto_62
    if-nez v3, :cond_69

    new-instance v3, Lp3/o0$b;

    invoke-direct {v3, v0, v4}, Lp3/o0$b;-><init>(Lp3/s0;Ljava/lang/Throwable;)V

    :cond_69
    monitor-enter v3

    :try_start_6a
    invoke-virtual {v3}, Lp3/o0$b;->e()Z

    move-result v5

    if-eqz v5, :cond_75

    sget-object p1, Lp3/u;->d:Lu3/r;
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_df

    monitor-exit v3

    goto/16 :goto_de

    :cond_75
    :try_start_75
    invoke-virtual {v3}, Lp3/o0$b;->h()V

    if-eq v3, p1, :cond_90

    sget-object v5, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_7c
    invoke-virtual {v5, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    move v2, v1

    goto :goto_8a

    :cond_84
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_7c

    :goto_8a
    if-nez v2, :cond_90

    sget-object p1, Lp3/u;->f:Lu3/r;
    :try_end_8e
    .catchall {:try_start_75 .. :try_end_8e} :catchall_df

    monitor-exit v3

    goto :goto_de

    :cond_90
    :try_start_90
    invoke-virtual {v3}, Lp3/o0$b;->d()Z

    move-result v2

    instance-of v5, p2, Lp3/o;

    if-eqz v5, :cond_9c

    move-object v5, p2

    check-cast v5, Lp3/o;

    goto :goto_9d

    :cond_9c
    move-object v5, v4

    :goto_9d
    if-nez v5, :cond_a0

    goto :goto_a5

    :cond_a0
    iget-object v5, v5, Lp3/o;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Lp3/o0$b;->b(Ljava/lang/Throwable;)V

    :goto_a5
    invoke-virtual {v3}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    move-result-object v5

    xor-int/2addr v1, v2

    if-eqz v1, :cond_ad

    goto :goto_ae

    :cond_ad
    move-object v5, v4

    :goto_ae
    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_b0
    .catchall {:try_start_90 .. :try_end_b0} :catchall_df

    monitor-exit v3

    if-nez v5, :cond_b4

    goto :goto_b7

    :cond_b4
    invoke-virtual {p0, v0, v5}, Lp3/o0;->J(Lp3/s0;Ljava/lang/Throwable;)V

    :goto_b7
    instance-of v0, p1, Lp3/l;

    if-eqz v0, :cond_bf

    move-object v0, p1

    check-cast v0, Lp3/l;

    goto :goto_c0

    :cond_bf
    move-object v0, v4

    :goto_c0
    if-nez v0, :cond_ce

    invoke-interface {p1}, Lp3/h0;->getList()Lp3/s0;

    move-result-object p1

    if-nez p1, :cond_c9

    goto :goto_cf

    :cond_c9
    invoke-static {p1}, Lp3/o0;->I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;

    move-result-object v4

    goto :goto_cf

    :cond_ce
    move-object v4, v0

    :goto_cf
    if-eqz v4, :cond_da

    invoke-virtual {p0, v3, v4, p2}, Lp3/o0;->P(Lp3/o0$b;Lp3/l;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_da

    sget-object p1, Lp3/u;->e:Lu3/r;

    goto :goto_de

    :cond_da
    invoke-virtual {p0, v3, p2}, Lp3/o0;->w(Lp3/o0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_de
    return-object p1

    :catchall_df
    move-exception p1

    monitor-exit v3

    throw p1
.end method

.method public final P(Lp3/o0$b;Lp3/l;Ljava/lang/Object;)Z
    .registers 8

    :cond_0
    iget-object v0, p2, Lp3/l;->e:Lp3/m;

    new-instance v1, Lp3/o0$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lp3/o0$a;-><init>(Lp3/o0;Lp3/o0$b;Lp3/l;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lp3/k0$a;->a(Lp3/k0;ZLp3/n0;I)Lp3/b0;

    move-result-object v0

    sget-object v1, Lp3/t0;->a:Lp3/t0;

    if-eq v0, v1, :cond_12

    return v3

    :cond_12
    invoke-static {p2}, Lp3/o0;->I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public a()Z
    .registers 3

    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lp3/h0;

    if-eqz v1, :cond_12

    check-cast v0, Lp3/h0;

    invoke-interface {v0}, Lp3/h0;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lp3/o0$b;

    const/4 v2, 0x0

    const-string v3, "Job is still new or active: "

    if-eqz v1, :cond_47

    check-cast v0, Lp3/o0$b;

    invoke-virtual {v0}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_36

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, " is cancelling"

    invoke-static {v4, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v4, :cond_29

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_29
    if-nez v2, :cond_36

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    if-nez v1, :cond_33

    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    move-result-object v1

    :cond_33
    invoke-direct {v2, v1, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    :cond_36
    :goto_36
    if-eqz v2, :cond_39

    goto :goto_7b

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    instance-of v1, v0, Lp3/h0;

    if-nez v1, :cond_7c

    instance-of v1, v0, Lp3/o;

    if-eqz v1, :cond_67

    check-cast v0, Lp3/o;

    iget-object v0, v0, Lp3/o;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_5a

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_5a
    if-nez v2, :cond_7b

    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    move-object v2, v1

    goto :goto_7b

    :cond_67
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    invoke-static {v3, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    move-object v2, v0

    :cond_7b
    :goto_7b
    return-object v2

    :cond_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    const-string v0, "operation"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lp3/o0;)V
    .registers 2
    .param p1  # Lp3/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lp3/o0;->n(Ljava/lang/Object;)Z

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

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$a$a;->a(Lkotlin/coroutines/CoroutineContext$a;Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object p1

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

    sget-object v0, Lp3/k0$b;->a:Lp3/k0$b;

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

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    instance-of v1, p3, Lp3/l0;

    if-eqz v1, :cond_b

    move-object v1, p3

    check-cast v1, Lp3/l0;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    if-nez v1, :cond_15

    new-instance v1, Lp3/j0;

    invoke-direct {v1, p3}, Lp3/j0;-><init>(Lp3/n0;)V

    goto :goto_15

    :cond_14
    move-object v1, p3

    :cond_15
    :goto_15
    iput-object p0, v1, Lp3/n0;->d:Lp3/o0;

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lp3/c0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5c

    move-object v3, v2

    check-cast v3, Lp3/c0;

    iget-boolean v6, v3, Lp3/c0;->a:Z

    if-eqz v6, :cond_3b

    sget-object v6, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2a
    invoke-virtual {v6, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v4, v5

    goto :goto_38

    :cond_32
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2a

    :goto_38
    if-eqz v4, :cond_17

    return-object v1

    :cond_3b
    new-instance v2, Lp3/s0;

    invoke-direct {v2}, Lp3/s0;-><init>()V

    iget-boolean v4, v3, Lp3/c0;->a:Z

    if-eqz v4, :cond_46

    move-object v6, v2

    goto :goto_4c

    :cond_46
    new-instance v4, Lp3/g0;

    invoke-direct {v4, v2}, Lp3/g0;-><init>(Lp3/s0;)V

    move-object v6, v4

    :goto_4c
    sget-object v7, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4e
    invoke-virtual {v7, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_17

    :cond_55
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_4e

    goto :goto_17

    :cond_5c
    instance-of v3, v2, Lp3/h0;

    if-eqz v3, :cond_de

    move-object v3, v2

    check-cast v3, Lp3/h0;

    invoke-interface {v3}, Lp3/h0;->getList()Lp3/s0;

    move-result-object v3

    if-nez v3, :cond_79

    if-eqz v2, :cond_71

    check-cast v2, Lp3/n0;

    invoke-virtual {p0, v2}, Lp3/o0;->M(Lp3/n0;)V

    goto :goto_17

    :cond_71
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    sget-object v6, Lp3/t0;->a:Lp3/t0;

    const/4 v7, 0x2

    if-eqz p1, :cond_bf

    instance-of v8, v2, Lp3/o0$b;

    if-eqz v8, :cond_bf

    monitor-enter v2

    :try_start_83
    move-object v8, v2

    check-cast v8, Lp3/o0$b;

    invoke-virtual {v8}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_99

    instance-of v9, p3, Lp3/l;

    if-eqz v9, :cond_b8

    move-object v9, v2

    check-cast v9, Lp3/o0$b;

    invoke-virtual {v9}, Lp3/o0$b;->e()Z

    move-result v9

    if-nez v9, :cond_b8

    :cond_99
    new-instance v6, Lp3/p0;

    invoke-direct {v6, v1, p0, v2}, Lp3/p0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lp3/o0;Ljava/lang/Object;)V

    :goto_9e
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v9

    invoke-virtual {v9, v1, v3, v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->o(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I

    move-result v9
    :try_end_a6
    .catchall {:try_start_83 .. :try_end_a6} :catchall_bc

    if-eq v9, v5, :cond_ad

    if-eq v9, v7, :cond_ab

    goto :goto_9e

    :cond_ab
    move v6, v4

    goto :goto_ae

    :cond_ad
    move v6, v5

    :goto_ae
    if-nez v6, :cond_b3

    monitor-exit v2

    goto/16 :goto_17

    :cond_b3
    if-nez v8, :cond_b7

    monitor-exit v2

    return-object v1

    :cond_b7
    move-object v6, v1

    :cond_b8
    :try_start_b8
    sget-object v9, Ly2/e;->a:Ly2/e;
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_bc

    monitor-exit v2

    goto :goto_c0

    :catchall_bc
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_bf
    move-object v8, v0

    :goto_c0
    if-eqz v8, :cond_c8

    if-eqz p2, :cond_c7

    invoke-interface {p3, v8}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    return-object v6

    :cond_c8
    new-instance v6, Lp3/p0;

    invoke-direct {v6, v1, p0, v2}, Lp3/p0;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lp3/o0;Ljava/lang/Object;)V

    :goto_cd
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->o(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I

    move-result v2

    if-eq v2, v5, :cond_da

    if-eq v2, v7, :cond_db

    goto :goto_cd

    :cond_da
    move v4, v5

    :cond_db
    if-eqz v4, :cond_17

    return-object v1

    :cond_de
    if-eqz p2, :cond_f0

    instance-of p1, v2, Lp3/o;

    if-eqz p1, :cond_e7

    check-cast v2, Lp3/o;

    goto :goto_e8

    :cond_e7
    move-object v2, v0

    :goto_e8
    if-nez v2, :cond_eb

    goto :goto_ed

    :cond_eb
    iget-object v0, v2, Lp3/o;->a:Ljava/lang/Throwable;

    :goto_ed
    invoke-interface {p3, v0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f0
    sget-object p1, Lp3/t0;->a:Lp3/t0;

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

    new-instance v0, Lp3/l;

    invoke-direct {v0, p1}, Lp3/l;-><init>(Lp3/o0;)V

    const/4 p1, 0x1

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lp3/k0$a;->a(Lp3/k0;ZLp3/n0;I)Lp3/b0;

    move-result-object p1

    check-cast p1, Lp3/k;

    return-object p1
.end method

.method public final m()Ljava/util/concurrent/CancellationException;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lp3/o0$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lp3/o0$b;

    invoke-virtual {v1}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_20

    :cond_11
    instance-of v1, v0, Lp3/o;

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Lp3/o;

    iget-object v1, v1, Lp3/o;->a:Ljava/lang/Throwable;

    goto :goto_20

    :cond_1b
    instance-of v1, v0, Lp3/h0;

    if-nez v1, :cond_39

    move-object v1, v2

    :goto_20
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_27

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_27
    if-nez v2, :cond_38

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {v0}, Lp3/o0;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v0, v3}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    :cond_38
    return-object v2

    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-static {v0, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$a$a;->b(Lkotlin/coroutines/CoroutineContext$a;Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Z
    .registers 11
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lp3/u;->d:Lu3/r;

    instance-of v1, p0, Lp3/m0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    :cond_8
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lp3/h0;

    if-eqz v1, :cond_30

    instance-of v1, v0, Lp3/o0$b;

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Lp3/o0$b;

    invoke-virtual {v1}, Lp3/o0$b;->e()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_30

    :cond_1e
    new-instance v1, Lp3/o;

    invoke-virtual {p0, p1}, Lp3/o0;->v(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, Lp3/o0;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp3/u;->f:Lu3/r;

    if-eq v0, v1, :cond_8

    goto :goto_32

    :cond_30
    :goto_30
    sget-object v0, Lp3/u;->d:Lu3/r;

    :goto_32
    sget-object v1, Lp3/u;->e:Lu3/r;

    if-ne v0, v1, :cond_37

    return v2

    :cond_37
    sget-object v1, Lp3/u;->d:Lu3/r;

    if-ne v0, v1, :cond_ee

    const/4 v0, 0x0

    move-object v1, v0

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lp3/o0$b;

    if-eqz v5, :cond_89

    monitor-enter v4

    :try_start_46
    move-object v5, v4

    check-cast v5, Lp3/o0$b;

    invoke-virtual {v5}, Lp3/o0$b;->f()Z

    move-result v5

    if-eqz v5, :cond_54

    sget-object p1, Lp3/u;->g:Lu3/r;
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_86

    monitor-exit v4

    goto/16 :goto_ed

    :cond_54
    :try_start_54
    move-object v5, v4

    check-cast v5, Lp3/o0$b;

    invoke-virtual {v5}, Lp3/o0$b;->d()Z

    move-result v5

    if-nez p1, :cond_5f

    if-nez v5, :cond_6b

    :cond_5f
    if-nez v1, :cond_65

    invoke-virtual {p0, p1}, Lp3/o0;->v(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_65
    move-object p1, v4

    check-cast p1, Lp3/o0$b;

    invoke-virtual {p1, v1}, Lp3/o0$b;->b(Ljava/lang/Throwable;)V

    :cond_6b
    move-object p1, v4

    check-cast p1, Lp3/o0$b;

    invoke-virtual {p1}, Lp3/o0$b;->c()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_86

    xor-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_77

    move-object v0, p1

    :cond_77
    monitor-exit v4

    if-nez v0, :cond_7b

    goto :goto_82

    :cond_7b
    check-cast v4, Lp3/o0$b;

    iget-object p1, v4, Lp3/o0$b;->a:Lp3/s0;

    invoke-virtual {p0, p1, v0}, Lp3/o0;->J(Lp3/s0;Ljava/lang/Throwable;)V

    :goto_82
    sget-object p1, Lp3/u;->d:Lu3/r;

    goto/16 :goto_ed

    :catchall_86
    move-exception p1

    monitor-exit v4

    throw p1

    :cond_89
    instance-of v5, v4, Lp3/h0;

    if-eqz v5, :cond_eb

    if-nez v1, :cond_93

    invoke-virtual {p0, p1}, Lp3/o0;->v(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_93
    move-object v5, v4

    check-cast v5, Lp3/h0;

    invoke-interface {v5}, Lp3/h0;->a()Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-virtual {p0, v5}, Lp3/o0;->z(Lp3/h0;)Lp3/s0;

    move-result-object v6

    if-nez v6, :cond_a3

    goto :goto_bb

    :cond_a3
    new-instance v7, Lp3/o0$b;

    invoke-direct {v7, v6, v1}, Lp3/o0$b;-><init>(Lp3/s0;Ljava/lang/Throwable;)V

    sget-object v8, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_aa
    invoke-virtual {v8, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    move v4, v2

    goto :goto_b9

    :cond_b2
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v5, :cond_aa

    move v4, v3

    :goto_b9
    if-nez v4, :cond_bd

    :goto_bb
    move v4, v3

    goto :goto_c1

    :cond_bd
    invoke-virtual {p0, v6, v1}, Lp3/o0;->J(Lp3/s0;Ljava/lang/Throwable;)V

    move v4, v2

    :goto_c1
    if-eqz v4, :cond_3d

    sget-object p1, Lp3/u;->d:Lu3/r;

    goto :goto_ed

    :cond_c6
    new-instance v5, Lp3/o;

    invoke-direct {v5, v1, v3}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v4, v5}, Lp3/o0;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lp3/u;->d:Lu3/r;

    if-eq v5, v6, :cond_db

    sget-object v4, Lp3/u;->f:Lu3/r;

    if-ne v5, v4, :cond_d9

    goto/16 :goto_3d

    :cond_d9
    move-object v0, v5

    goto :goto_ee

    :cond_db
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen in "

    invoke-static {v4, v0}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_eb
    sget-object p1, Lp3/u;->g:Lu3/r;

    :goto_ed
    move-object v0, p1

    :cond_ee
    :goto_ee
    sget-object p1, Lp3/u;->d:Lu3/r;

    if-ne v0, p1, :cond_f3

    goto :goto_101

    :cond_f3
    sget-object p1, Lp3/u;->e:Lu3/r;

    if-ne v0, p1, :cond_f8

    goto :goto_101

    :cond_f8
    sget-object p1, Lp3/u;->g:Lu3/r;

    if-ne v0, p1, :cond_fe

    move v2, v3

    goto :goto_101

    :cond_fe
    invoke-virtual {p0, v0}, Lp3/o0;->d(Ljava/lang/Object;)V

    :goto_101
    return v2
.end method

.method public final o(Ljava/util/concurrent/CancellationException;)V
    .registers 4
    .param p1  # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_d

    const/4 p1, 0x0

    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    move-object p1, v0

    :cond_d
    invoke-virtual {p0, p1}, Lp3/o0;->n(Ljava/lang/Object;)Z

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

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Throwable;)Z
    .registers 6

    invoke-virtual {p0}, Lp3/o0;->F()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    iget-object v2, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    check-cast v2, Lp3/k;

    if-eqz v2, :cond_20

    sget-object v3, Lp3/t0;->a:Lp3/t0;

    if-ne v2, v3, :cond_15

    goto :goto_20

    :cond_15
    invoke-interface {v2, p1}, Lp3/k;->d(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    return v0
.end method

.method public final start()Z
    .registers 8

    :goto_0
    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lp3/c0;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2d

    move-object v1, v0

    check-cast v1, Lp3/c0;

    iget-boolean v1, v1, Lp3/c0;->a:Z

    if-eqz v1, :cond_13

    goto :goto_4f

    :cond_13
    sget-object v1, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v5, Lp3/u;->j:Lp3/c0;

    :cond_17
    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v0, v4

    goto :goto_26

    :cond_1f
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v0, :cond_17

    move v0, v3

    :goto_26
    if-nez v0, :cond_29

    goto :goto_50

    :cond_29
    invoke-virtual {p0}, Lp3/o0;->L()V

    goto :goto_4d

    :cond_2d
    instance-of v1, v0, Lp3/g0;

    if-eqz v1, :cond_4f

    sget-object v1, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v5, v0

    check-cast v5, Lp3/g0;

    iget-object v5, v5, Lp3/g0;->a:Lp3/s0;

    :cond_38
    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    move v0, v4

    goto :goto_47

    :cond_40
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v0, :cond_38

    move v0, v3

    :goto_47
    if-nez v0, :cond_4a

    goto :goto_50

    :cond_4a
    invoke-virtual {p0}, Lp3/o0;->L()V

    :goto_4d
    move v2, v4

    goto :goto_50

    :cond_4f
    :goto_4f
    move v2, v3

    :goto_50
    if-eqz v2, :cond_56

    if-eq v2, v4, :cond_55

    goto :goto_0

    :cond_55
    return v4

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lp3/o0;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lp3/o0;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lp3/h0;Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lp3/k;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-interface {v0}, Lp3/b0;->dispose()V

    sget-object v0, Lp3/t0;->a:Lp3/t0;

    iput-object v0, p0, Lp3/o0;->_parentHandle:Ljava/lang/Object;

    :goto_e
    instance-of v0, p2, Lp3/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    check-cast p2, Lp3/o;

    goto :goto_17

    :cond_16
    move-object p2, v1

    :goto_17
    if-nez p2, :cond_1b

    move-object p2, v1

    goto :goto_1d

    :cond_1b
    iget-object p2, p2, Lp3/o;->a:Ljava/lang/Throwable;

    :goto_1d
    instance-of v0, p1, Lp3/n0;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_4c

    :try_start_25
    move-object v0, p1

    check-cast v0, Lp3/n0;

    invoke-virtual {v0, p2}, Lp3/q;->p(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2d

    goto/16 :goto_9b

    :catchall_2d
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lp3/o0;->D(Lkotlinx/coroutines/CompletionHandlerException;)V

    goto :goto_9b

    :cond_4c
    invoke-interface {p1}, Lp3/h0;->getList()Lp3/s0;

    move-result-object p1

    if-nez p1, :cond_53

    goto :goto_9b

    :cond_53
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v4, v1

    :goto_5a
    invoke-static {v0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    instance-of v5, v0, Lp3/n0;

    if-eqz v5, :cond_90

    move-object v5, v0

    check-cast v5, Lp3/n0;

    :try_start_67
    invoke-virtual {v5, p2}, Lp3/q;->p(Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_90

    :catchall_6b
    move-exception v6

    if-nez v4, :cond_70

    move-object v7, v1

    goto :goto_74

    :cond_70
    invoke-static {v4, v6}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v7, v4

    :goto_74
    if-nez v7, :cond_90

    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_5a

    :cond_95
    if-nez v4, :cond_98

    goto :goto_9b

    :cond_98
    invoke-virtual {p0, v4}, Lp3/o0;->D(Lkotlinx/coroutines/CompletionHandlerException;)V

    :goto_9b
    return-void
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_6
    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_20

    const/4 p1, 0x0

    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    move-object p1, v0

    goto :goto_20

    :cond_18
    if-eqz p1, :cond_21

    check-cast p1, Lp3/v0;

    invoke-interface {p1}, Lp3/v0;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_20
    :goto_20
    return-object p1

    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Lp3/o0$b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    instance-of v0, p2, Lp3/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lp3/o;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, v0, Lp3/o;->a:Ljava/lang/Throwable;

    :goto_f
    monitor-enter p1

    :try_start_10
    invoke-virtual {p1}, Lp3/o0$b;->d()Z

    invoke-virtual {p1, v1}, Lp3/o0$b;->g(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lp3/o0;->x(Lp3/o0$b;Ljava/util/ArrayList;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_25

    goto :goto_54

    :cond_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eq v5, v2, :cond_36

    if-eq v5, v2, :cond_36

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_36

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-static {v2, v5}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_ac

    goto :goto_36

    :cond_54
    :goto_54
    monitor-exit p1

    const/4 v0, 0x0

    if-nez v2, :cond_59

    goto :goto_61

    :cond_59
    if-ne v2, v1, :cond_5c

    goto :goto_61

    :cond_5c
    new-instance p2, Lp3/o;

    invoke-direct {p2, v2, v0}, Lp3/o;-><init>(Ljava/lang/Throwable;Z)V

    :goto_61
    if-eqz v2, :cond_88

    invoke-virtual {p0, v2}, Lp3/o0;->s(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_72

    invoke-virtual {p0, v2}, Lp3/o0;->C(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_72

    :cond_70
    move v1, v0

    goto :goto_73

    :cond_72
    :goto_72
    move v1, v3

    :goto_73
    if-eqz v1, :cond_88

    if-eqz p2, :cond_80

    move-object v1, p2

    check-cast v1, Lp3/o;

    sget-object v2, Lp3/o;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_88

    :cond_80
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_88
    :goto_88
    invoke-virtual {p0, p2}, Lp3/o0;->K(Ljava/lang/Object;)V

    sget-object v0, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lp3/h0;

    if-eqz v1, :cond_9a

    new-instance v1, Lp3/i0;

    move-object v2, p2

    check-cast v2, Lp3/h0;

    invoke-direct {v1, v2}, Lp3/i0;-><init>(Lp3/h0;)V

    goto :goto_9b

    :cond_9a
    move-object v1, p2

    :cond_9b
    :goto_9b
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    goto :goto_a8

    :cond_a2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_9b

    :goto_a8
    invoke-virtual {p0, p1, p2}, Lp3/o0;->u(Lp3/h0;Ljava/lang/Object;)V

    return-object p2

    :catchall_ac
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final x(Lp3/o0$b;Ljava/util/ArrayList;)Ljava/lang/Throwable;
    .registers 8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lp3/o0$b;->d()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lp3/o0;->t()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lp3/k0;)V

    return-object p1

    :cond_17
    return-object v1

    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1c

    goto :goto_31

    :cond_30
    move-object v0, v1

    :goto_31
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_36

    return-object v0

    :cond_36
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v3, :cond_63

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, v0, :cond_5a

    instance-of v4, v4, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v4, :cond_5a

    move v4, v2

    goto :goto_5b

    :cond_5a
    move v4, p1

    :goto_5b
    if-eqz v4, :cond_45

    move-object v1, v3

    :cond_5e
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_63

    return-object v1

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

    invoke-interface {p1}, Lp3/h0;->getList()Lp3/s0;

    move-result-object v0

    if-nez v0, :cond_2b

    instance-of v0, p1, Lp3/c0;

    if-eqz v0, :cond_10

    new-instance v0, Lp3/s0;

    invoke-direct {v0}, Lp3/s0;-><init>()V

    goto :goto_2b

    :cond_10
    instance-of v0, p1, Lp3/n0;

    if-eqz v0, :cond_1b

    check-cast p1, Lp3/n0;

    invoke-virtual {p0, p1}, Lp3/o0;->M(Lp3/n0;)V

    const/4 v0, 0x0

    goto :goto_2b

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State should have list: "

    invoke-static {p1, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    return-object v0
.end method
