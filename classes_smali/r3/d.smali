.class public abstract Lr3/d;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lr3/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr3/m<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lh3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/l<",
            "TE;",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lu3/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lr3/d;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lh3/l;)V
    .registers 2
    .param p1  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/l<",
            "-TE;",
            "Ly2/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/d;->a:Lh3/l;

    new-instance p1, Lu3/h;

    invoke-direct {p1}, Lu3/h;-><init>()V

    iput-object p1, p0, Lr3/d;->b:Lu3/h;

    const/4 p1, 0x0

    iput-object p1, p0, Lr3/d;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lr3/i;)V
    .registers 6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    instance-of v3, v2, Lr3/j;

    if-eqz v3, :cond_d

    check-cast v2, Lr3/j;

    goto :goto_e

    :cond_d
    move-object v2, v0

    :goto_e
    if-nez v2, :cond_38

    if-nez v1, :cond_13

    goto :goto_37

    :cond_13
    instance-of v0, v1, Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    check-cast v1, Lr3/j;

    invoke-virtual {v1, p0}, Lr3/j;->p(Lr3/i;)V

    goto :goto_37

    :cond_1d
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_37

    :goto_27
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/j;

    invoke-virtual {v0, p0}, Lr3/j;->p(Lr3/i;)V

    if-gez v2, :cond_35

    goto :goto_37

    :cond_35
    move v0, v2

    goto :goto_27

    :cond_37
    :goto_37
    return-void

    :cond_38
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    if-nez v3, :cond_40

    const/4 v3, 0x1

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    :goto_41
    if-nez v3, :cond_4f

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/n;

    iget-object v2, v2, Lu3/n;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->l()V

    goto :goto_2

    :cond_4f
    if-nez v1, :cond_53

    move-object v1, v2

    goto :goto_2

    :cond_53
    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_5e

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5e
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lr3/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lr3/c;->b:Lu3/r;

    if-ne p1, v0, :cond_b

    sget-object p1, Ly2/e;->a:Ly2/e;

    goto :goto_3c

    :cond_b
    sget-object v0, Lr3/c;->c:Lu3/r;

    const-string v1, "Channel was closed"

    if-ne p1, v0, :cond_28

    invoke-virtual {p0}, Lr3/d;->c()Lr3/i;

    move-result-object p1

    if-nez p1, :cond_1a

    sget-object p1, Lr3/h;->a:Lr3/h$b;

    return-object p1

    :cond_1a
    invoke-static {p1}, Lr3/d;->d(Lr3/i;)V

    new-instance p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lr3/h$a;

    invoke-direct {v0, p1}, Lr3/h$a;-><init>(Lkotlinx/coroutines/channels/ClosedSendChannelException;)V

    goto :goto_3b

    :cond_28
    instance-of v0, p1, Lr3/i;

    if-eqz v0, :cond_3d

    check-cast p1, Lr3/i;

    invoke-static {p1}, Lr3/d;->d(Lr3/i;)V

    new-instance p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lr3/h$a;

    invoke-direct {v0, p1}, Lr3/h$a;-><init>(Lkotlinx/coroutines/channels/ClosedSendChannelException;)V

    :goto_3b
    move-object p1, v0

    :goto_3c
    return-object p1

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trySend returned "

    invoke-static {p1, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final c()Lr3/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/i<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v1, v0, Lr3/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Lr3/i;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-nez v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-static {v0}, Lr3/d;->d(Lr3/i;)V

    move-object v2, v0

    :goto_16
    return-object v2
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lr3/d;->f()Lr3/k;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object p1, Lr3/c;->c:Lu3/r;

    return-object p1

    :cond_9
    invoke-interface {v0, p1}, Lr3/k;->b(Ljava/lang/Object;)Lu3/r;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lr3/k;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lr3/k;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()Lr3/k;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/k<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    :goto_b
    move-object v1, v2

    goto :goto_26

    :cond_d
    instance-of v3, v1, Lr3/k;

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    move-object v2, v1

    check-cast v2, Lr3/k;

    instance-of v2, v2, Lr3/i;

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-nez v2, :cond_29

    :goto_26
    check-cast v1, Lr3/k;

    return-object v1

    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->l()V

    goto :goto_2
.end method

.method public final g()Lr3/l;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    :goto_b
    move-object v1, v2

    goto :goto_26

    :cond_d
    instance-of v3, v1, Lr3/l;

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    move-object v2, v1

    check-cast v2, Lr3/l;

    instance-of v2, v2, Lr3/i;

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_26

    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-nez v2, :cond_29

    :goto_26
    check-cast v1, Lr3/l;

    return-object v1

    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->l()V

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .registers 8
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

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr3/d;->b:Lu3/h;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    iget-object v2, p0, Lr3/d;->b:Lu3/h;

    if-ne v1, v2, :cond_2e

    const-string v1, "EmptyQueue"

    goto :goto_94

    :cond_2e
    instance-of v2, v1, Lr3/i;

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    :cond_37
    instance-of v2, v1, Lr3/j;

    if-eqz v2, :cond_3e

    const-string v2, "ReceiveQueued"

    goto :goto_4b

    :cond_3e
    instance-of v2, v1, Lr3/l;

    if-eqz v2, :cond_45

    const-string v2, "SendQueued"

    goto :goto_4b

    :cond_45
    const-string v2, "UNEXPECTED:"

    invoke-static {v1, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4b
    iget-object v3, p0, Lr3/d;->b:Lu3/h;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    if-eq v3, v1, :cond_93

    const-string v1, ",queueSize="

    invoke-static {v2, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lr3/d;->b:Lu3/h;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v5, 0x0

    :goto_62
    invoke-static {v4, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    instance-of v6, v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v6, :cond_6e

    add-int/lit8 v5, v5, 0x1

    :cond_6e
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v4

    goto :goto_62

    :cond_73
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v3, Lr3/i;

    if-eqz v2, :cond_94

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_94

    :cond_93
    move-object v1, v2

    :cond_94
    :goto_94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lr3/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
