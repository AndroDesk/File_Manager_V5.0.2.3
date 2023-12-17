.class public final Lr3/b;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;
.source "LockFreeLinkedList.kt"


# instance fields
.field public final synthetic d:Lr3/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lr3/a$b;Lr3/a;)V
    .registers 3

    iput-object p2, p0, Lr3/b;->d:Lr3/a;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lu3/r;
    .registers 2

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object p1, p0, Lr3/b;->d:Lr3/a;

    invoke-virtual {p1}, Lr3/a;->j()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    sget-object p1, Lu3/b;->d:Lu3/r;

    :goto_e
    return-object p1
.end method
