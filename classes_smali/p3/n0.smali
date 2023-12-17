.class public abstract Lp3/n0;
.super Lp3/q;
.source "JobSupport.kt"

# interfaces
.implements Lp3/b0;
.implements Lp3/h0;


# instance fields
.field public d:Lp3/o0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lp3/q;-><init>()V

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

    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lp3/n0;

    if-eqz v2, :cond_25

    if-eq v1, p0, :cond_f

    goto :goto_34

    :cond_f
    sget-object v2, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lp3/u;->j:Lp3/c0;

    :cond_13
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v1, 0x1

    goto :goto_22

    :cond_1b
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_13

    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_4

    goto :goto_34

    :cond_25
    instance-of v0, v1, Lp3/h0;

    if-eqz v0, :cond_34

    check-cast v1, Lp3/h0;

    invoke-interface {v1}, Lp3/h0;->getList()Lp3/s0;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

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

    iget-object v0, p0, Lp3/n0;->d:Lp3/o0;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lkotlin/UninitializedPropertyAccessException;

    const-string v1, "lateinit property job has not been initialized"

    invoke-direct {v0, v1}, Lkotlin/UninitializedPropertyAccessException;-><init>(Ljava/lang/String;)V

    const-class v1, Li3/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li3/g;->g(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp3/n0;->q()Lp3/o0;

    move-result-object v1

    invoke-static {v1}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
