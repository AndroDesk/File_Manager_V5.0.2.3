.class public final Lp3/p0;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
.source "LockFreeLinkedList.kt"


# instance fields
.field public final synthetic d:Lp3/o0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lp3/o0;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lp3/p0;->d:Lp3/o0;

    .line 3
    iput-object p3, p0, Lp3/p0;->e:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lu3/r;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 3
    iget-object p1, p0, Lp3/p0;->d:Lp3/o0;

    .line 5
    invoke-virtual {p1}, Lp3/o0;->B()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lp3/p0;->e:Ljava/lang/Object;

    .line 11
    if-ne p1, v0, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    if-eqz p1, :cond_13

    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    sget-object p1, Lu3/b;->d:Lu3/r;

    .line 22
    :goto_15
    return-object p1
.end method
