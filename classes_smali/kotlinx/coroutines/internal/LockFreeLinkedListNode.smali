.class public Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _next:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile synthetic _prev:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _removedRef:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 6
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lu3/h;)Z
    .registers 7
    .param p1  # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lu3/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    :cond_a
    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_14

    .line 19
    move v0, v3

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    if-eq v1, p2, :cond_a

    .line 27
    move v0, v2

    .line 28
    :goto_1b
    if-nez v0, :cond_1e

    .line 30
    return v2

    .line 31
    :cond_1e
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 34
    return v3
.end method

.method public final g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 11

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v0

    .line 7
    :goto_6
    move-object v3, v1

    .line 8
    :goto_7
    iget-object v4, v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-ne v4, p0, :cond_24

    .line 14
    if-ne v0, v2, :cond_10

    .line 16
    return-object v2

    .line 17
    :cond_10
    sget-object v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    :cond_12
    invoke-virtual {v7, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1a

    .line 25
    move v5, v6

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    if-eq v1, v0, :cond_12

    .line 33
    :goto_20
    if-nez v5, :cond_23

    .line 35
    goto :goto_0

    .line 36
    :cond_23
    return-object v2

    .line 37
    :cond_24
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_2b

    .line 43
    return-object v1

    .line 44
    :cond_2b
    if-nez v4, :cond_2e

    .line 46
    return-object v2

    .line 47
    :cond_2e
    instance-of v7, v4, Lu3/m;

    .line 49
    if-eqz v7, :cond_38

    .line 51
    check-cast v4, Lu3/m;

    .line 53
    invoke-virtual {v4, v2}, Lu3/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 57
    :cond_38
    instance-of v7, v4, Lu3/n;

    .line 59
    if-eqz v7, :cond_5c

    .line 61
    if-eqz v3, :cond_57

    .line 63
    sget-object v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 65
    check-cast v4, Lu3/n;

    .line 67
    iget-object v4, v4, Lu3/n;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 69
    :cond_44
    invoke-virtual {v7, v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_4c

    .line 75
    move v5, v6

    .line 76
    goto :goto_52

    .line 77
    :cond_4c
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v8

    .line 81
    if-eq v8, v2, :cond_44

    .line 83
    :goto_52
    if-nez v5, :cond_55

    .line 85
    goto :goto_0

    .line 86
    :cond_55
    move-object v2, v3

    .line 87
    goto :goto_6

    .line 88
    :cond_57
    iget-object v2, v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 90
    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 92
    goto :goto_7

    .line 93
    :cond_5c
    move-object v3, v4

    .line 94
    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 96
    move-object v9, v3

    .line 97
    move-object v3, v2

    .line 98
    move-object v2, v9

    .line 99
    goto :goto_7
.end method

.method public final h(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 5

    .line 1
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    if-eq v1, p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    :cond_d
    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_15

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    if-eq v2, v0, :cond_d

    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_1c
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_27

    .line 37
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 40
    :cond_27
    return-void
.end method

.method public final i()Ljava/lang/Object;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

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

.method public final j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lu3/n;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_d

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lu3/n;

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move-object v1, v2

    .line 15
    :goto_e
    if-nez v1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iget-object v2, v1, Lu3/n;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 20
    :goto_13
    if-nez v2, :cond_18

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 25
    :cond_18
    return-object v2
.end method

.method public final k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_16

    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 9
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 11
    :goto_a
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->m()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    iget-object v0, v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    .line 20
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 22
    goto :goto_a

    .line 23
    :cond_16
    :goto_16
    return-object v0
.end method

.method public final l()V
    .registers 4

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 6
    instance-of v2, v1, Lu3/n;

    .line 8
    if-nez v2, :cond_d

    .line 10
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 13
    return-void

    .line 14
    :cond_d
    check-cast v1, Lu3/n;

    .line 16
    iget-object v0, v1, Lu3/n;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 18
    goto :goto_1
.end method

.method public m()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lu3/n;

    .line 7
    return v0
.end method

.method public final n()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lu3/n;

    .line 7
    if-eqz v1, :cond_d

    .line 9
    check-cast v0, Lu3/n;

    .line 11
    iget-object v0, v0, Lu3/n;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 13
    return-object v0

    .line 14
    :cond_d
    if-ne v0, p0, :cond_12

    .line 16
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 18
    return-object v0

    .line 19
    :cond_12
    move-object v1, v0

    .line 20
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 22
    iget-object v2, v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef:Ljava/lang/Object;

    .line 24
    check-cast v2, Lu3/n;

    .line 26
    if-nez v2, :cond_25

    .line 28
    new-instance v2, Lu3/n;

    .line 30
    invoke-direct {v2, v1}, Lu3/n;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 33
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    :cond_25
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    :cond_27
    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2f

    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    if-eq v4, v0, :cond_27

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_36
    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 61
    return-object v0
.end method

.method public final o(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I
    .registers 7
    .param p1  # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iput-object p2, p3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;->c:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 13
    :cond_c
    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz p1, :cond_16

    .line 21
    move p1, v2

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    if-eq p1, p2, :cond_c

    .line 29
    move p1, v1

    .line 30
    :goto_1d
    if-nez p1, :cond_20

    .line 32
    return v1

    .line 33
    :cond_20
    invoke-virtual {p3, p0}, Lu3/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_27

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 v2, 0x2

    .line 41
    :goto_28
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 8
    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const/16 v1, 0x40

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
