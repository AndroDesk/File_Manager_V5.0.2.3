.class public abstract Lp3/n0;
.super Lp3/q;
.source "JobSupport.kt"

# interfaces
.implements Lp3/b0;
.implements Lp3/h0;


# instance fields
.field public d:Lp3/o0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lp3/q;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    .line 4
    move-result-object v0

    .line 5
    :cond_4
    invoke-virtual {v0}, Lp3/o0;->B()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Lp3/n0;

    .line 11
    if-eqz v2, :cond_25

    .line 13
    if-eq v1, p0, :cond_f

    .line 15
    goto :goto_34

    .line 16
    :cond_f
    sget-object v2, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    sget-object v3, Lp3/u;->j:Lp3/c0;

    .line 20
    :cond_13
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1b

    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    if-eq v4, v1, :cond_13

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_22
    if-eqz v1, :cond_4

    .line 37
    goto :goto_34

    .line 38
    :cond_25
    instance-of v0, v1, Lp3/h0;

    .line 40
    if-eqz v0, :cond_34

    .line 42
    check-cast v1, Lp3/h0;

    .line 44
    invoke-interface {v1}, Lp3/h0;->getList()Lp3/s0;

    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_34

    .line 50
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 53
    :cond_34
    :goto_34
    return-void
.end method

.method public final getList()Lp3/s0;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lp3/o0;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/n0;->d:Lp3/o0;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Lkotlin/UninitializedPropertyAccessException;

    .line 8
    const-string v1, "lateinit property job has not been initialized"

    .line 10
    invoke-direct {v0, v1}, Lkotlin/UninitializedPropertyAccessException;-><init>(Ljava/lang/String;)V

    .line 13
    const-class v1, Li3/g;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1, v0}, Li3/g;->g(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 22
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const/16 v1, 0x40

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "[job@"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const/16 v1, 0x5d

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
