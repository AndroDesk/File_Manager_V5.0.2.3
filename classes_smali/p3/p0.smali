.class public final Lp3/p0;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
.source "LockFreeLinkedList.kt"


# instance fields
.field public final synthetic d:Lp3/o0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lp3/o0;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Lp3/p0;->d:Lp3/o0;

    iput-object p3, p0, Lp3/p0;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lu3/r;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object p1, p0, Lp3/p0;->d:Lp3/o0;

    invoke-virtual {p1}, Lp3/o0;->B()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lp3/p0;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_13

    const/4 p1, 0x0

    goto :goto_15

    :cond_13
    sget-object p1, Lu3/b;->d:Lu3/r;

    :goto_15
    return-object p1
.end method
