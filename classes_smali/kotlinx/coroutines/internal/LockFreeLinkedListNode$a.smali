.class public abstract Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
.super Lu3/c;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/c<",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 2
    .param p1  # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lu3/c;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;->b:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p2, :cond_8

    .line 7
    move p2, v0

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move p2, v1

    .line 10
    :goto_9
    if-eqz p2, :cond_e

    .line 12
    iget-object v2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;->b:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    iget-object v2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;->c:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 17
    :goto_10
    if-eqz v2, :cond_30

    .line 19
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    :cond_14
    invoke-virtual {v3, p1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1b

    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    if-eq v4, p0, :cond_14

    .line 34
    move v0, v1

    .line 35
    :goto_22
    if-eqz v0, :cond_30

    .line 37
    if-eqz p2, :cond_30

    .line 39
    iget-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;->b:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 41
    iget-object p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;->c:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 43
    invoke-static {p2}, Li3/g;->b(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 49
    :cond_30
    return-void
.end method
