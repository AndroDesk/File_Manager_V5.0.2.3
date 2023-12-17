.class public final Lr3/b;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
.source "LockFreeLinkedList.kt"


# instance fields
.field public final synthetic d:Lr3/a;


# direct methods
.method public constructor <init>(Lr3/a$b;Lr3/a;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lr3/b;->d:Lr3/a;

    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lu3/r;
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 3
    iget-object p1, p0, Lr3/b;->d:Lr3/a;

    .line 5
    invoke-virtual {p1}, Lr3/a;->j()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    sget-object p1, Lu3/b;->d:Lu3/r;

    .line 15
    :goto_e
    return-object p1
.end method
