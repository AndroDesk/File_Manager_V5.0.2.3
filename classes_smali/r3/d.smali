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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lr3/d;->a:Lh3/l;

    .line 6
    new-instance p1, Lu3/h;

    .line 8
    invoke-direct {p1}, Lu3/h;-><init>()V

    .line 11
    iput-object p1, p0, Lr3/d;->b:Lu3/h;

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lr3/d;->onCloseHandler:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static d(Lr3/i;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 6
    move-result-object v2

    .line 7
    instance-of v3, v2, Lr3/j;

    .line 9
    if-eqz v3, :cond_d

    .line 11
    check-cast v2, Lr3/j;

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move-object v2, v0

    .line 15
    :goto_e
    if-nez v2, :cond_38

    .line 17
    if-nez v1, :cond_13

    .line 19
    goto :goto_37

    .line 20
    :cond_13
    instance-of v0, v1, Ljava/util/ArrayList;

    .line 22
    if-nez v0, :cond_1d

    .line 24
    check-cast v1, Lr3/j;

    .line 26
    invoke-virtual {v1, p0}, Lr3/j;->p(Lr3/i;)V

    .line 29
    goto :goto_37

    .line 30
    :cond_1d
    check-cast v1, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 38
    if-ltz v0, :cond_37

    .line 40
    :goto_27
    add-int/lit8 v2, v0, -0x1

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lr3/j;

    .line 48
    invoke-virtual {v0, p0}, Lr3/j;->p(Lr3/i;)V

    .line 51
    if-gez v2, :cond_35

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    move v0, v2

    .line 55
    goto :goto_27

    .line 56
    :cond_37
    :goto_37
    return-void

    .line 57
    :cond_38
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_40

    .line 63
    const/4 v3, 0x1

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 v3, 0x0

    .line 66
    :goto_41
    if-nez v3, :cond_4f

    .line 68
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lu3/n;

    .line 74
    iget-object v2, v2, Lu3/n;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 76
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->l()V

    .line 79
    goto :goto_2

    .line 80
    :cond_4f
    if-nez v1, :cond_53

    .line 82
    move-object v1, v2

    .line 83
    goto :goto_2

    .line 84
    :cond_53
    instance-of v3, v1, Ljava/util/ArrayList;

    .line 86
    if-eqz v3, :cond_5e

    .line 88
    move-object v3, v1

    .line 89
    check-cast v3, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_2

    .line 95
    :cond_5e
    new-instance v3, Ljava/util/ArrayList;

    .line 97
    const/4 v4, 0x4

    .line 98
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    move-object v1, v3

    .line 108
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

    .line 1
    invoke-virtual {p0, p1}, Lr3/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lr3/c;->b:Lu3/r;

    .line 7
    if-ne p1, v0, :cond_b

    .line 9
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 11
    goto :goto_3c

    .line 12
    :cond_b
    sget-object v0, Lr3/c;->c:Lu3/r;

    .line 14
    const-string v1, "Channel was closed"

    .line 16
    if-ne p1, v0, :cond_28

    .line 18
    invoke-virtual {p0}, Lr3/d;->c()Lr3/i;

    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1a

    .line 24
    sget-object p1, Lr3/h;->a:Lr3/h$b;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    invoke-static {p1}, Lr3/d;->d(Lr3/i;)V

    .line 30
    new-instance p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 32
    invoke-direct {p1, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lr3/h$a;

    .line 37
    invoke-direct {v0, p1}, Lr3/h$a;-><init>(Lkotlinx/coroutines/channels/ClosedSendChannelException;)V

    .line 40
    goto :goto_3b

    .line 41
    :cond_28
    instance-of v0, p1, Lr3/i;

    .line 43
    if-eqz v0, :cond_3d

    .line 45
    check-cast p1, Lr3/i;

    .line 47
    invoke-static {p1}, Lr3/d;->d(Lr3/i;)V

    .line 50
    new-instance p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 52
    invoke-direct {p1, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lr3/h$a;

    .line 57
    invoke-direct {v0, p1}, Lr3/h$a;-><init>(Lkotlinx/coroutines/channels/ClosedSendChannelException;)V

    .line 60
    :goto_3b
    move-object p1, v0

    .line 61
    :goto_3c
    return-object p1

    .line 62
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    const-string v1, "trySend returned "

    .line 66
    invoke-static {p1, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
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

    .line 1
    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lr3/i;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_e

    .line 12
    check-cast v0, Lr3/i;

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move-object v0, v2

    .line 16
    :goto_f
    if-nez v0, :cond_12

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-static {v0}, Lr3/d;->d(Lr3/i;)V

    .line 22
    move-object v2, v0

    .line 23
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

    .line 1
    :cond_0
    invoke-virtual {p0}, Lr3/d;->f()Lr3/k;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    sget-object p1, Lr3/c;->c:Lu3/r;

    .line 9
    return-object p1

    .line 10
    :cond_9
    invoke-interface {v0, p1}, Lr3/k;->b(Ljava/lang/Object;)Lu3/r;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0, p1}, Lr3/k;->e(Ljava/lang/Object;)V

    .line 19
    invoke-interface {v0}, Lr3/k;->c()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
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

    .line 1
    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    .line 3
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v1, v0, :cond_d

    .line 12
    :goto_b
    move-object v1, v2

    .line 13
    goto :goto_26

    .line 14
    :cond_d
    instance-of v3, v1, Lr3/k;

    .line 16
    if-nez v3, :cond_12

    .line 18
    goto :goto_b

    .line 19
    :cond_12
    move-object v2, v1

    .line 20
    check-cast v2, Lr3/k;

    .line 22
    instance-of v2, v2, Lr3/i;

    .line 24
    if-eqz v2, :cond_20

    .line 26
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_20

    .line 32
    goto :goto_26

    .line 33
    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_29

    .line 39
    :goto_26
    check-cast v1, Lr3/k;

    .line 41
    return-object v1

    .line 42
    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->l()V

    .line 45
    goto :goto_2
.end method

.method public final g()Lr3/l;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    .line 3
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v1, v0, :cond_d

    .line 12
    :goto_b
    move-object v1, v2

    .line 13
    goto :goto_26

    .line 14
    :cond_d
    instance-of v3, v1, Lr3/l;

    .line 16
    if-nez v3, :cond_12

    .line 18
    goto :goto_b

    .line 19
    :cond_12
    move-object v2, v1

    .line 20
    check-cast v2, Lr3/l;

    .line 22
    instance-of v2, v2, Lr3/i;

    .line 24
    if-eqz v2, :cond_20

    .line 26
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_20

    .line 32
    goto :goto_26

    .line 33
    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_29

    .line 39
    :goto_26
    check-cast v1, Lr3/l;

    .line 41
    return-object v1

    .line 42
    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->l()V

    .line 45
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .registers 8
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
    const/16 v1, 0x7b

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lr3/d;->b:Lu3/h;

    .line 36
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lr3/d;->b:Lu3/h;

    .line 42
    if-ne v1, v2, :cond_2e

    .line 44
    const-string v1, "EmptyQueue"

    .line 46
    goto :goto_94

    .line 47
    :cond_2e
    instance-of v2, v1, Lr3/i;

    .line 49
    if-eqz v2, :cond_37

    .line 51
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    goto :goto_4b

    .line 56
    :cond_37
    instance-of v2, v1, Lr3/j;

    .line 58
    if-eqz v2, :cond_3e

    .line 60
    const-string v2, "ReceiveQueued"

    .line 62
    goto :goto_4b

    .line 63
    :cond_3e
    instance-of v2, v1, Lr3/l;

    .line 65
    if-eqz v2, :cond_45

    .line 67
    const-string v2, "SendQueued"

    .line 69
    goto :goto_4b

    .line 70
    :cond_45
    const-string v2, "UNEXPECTED:"

    .line 72
    invoke-static {v1, v2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    :goto_4b
    iget-object v3, p0, Lr3/d;->b:Lu3/h;

    .line 78
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 81
    move-result-object v3

    .line 82
    if-eq v3, v1, :cond_93

    .line 84
    const-string v1, ",queueSize="

    .line 86
    invoke-static {v2, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lr3/d;->b:Lu3/h;

    .line 92
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 98
    const/4 v5, 0x0

    .line 99
    :goto_62
    invoke-static {v4, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_73

    .line 105
    instance-of v6, v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 107
    if-eqz v6, :cond_6e

    .line 109
    add-int/lit8 v5, v5, 0x1

    .line 111
    :cond_6e
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 114
    move-result-object v4

    .line 115
    goto :goto_62

    .line 116
    :cond_73
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    instance-of v2, v3, Lr3/i;

    .line 125
    if-eqz v2, :cond_94

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ",closedForSend="

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    goto :goto_94

    .line 148
    :cond_93
    move-object v1, v2

    .line 149
    :cond_94
    :goto_94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v1, 0x7d

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lr3/d;->b()Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    return-object v0
.end method
