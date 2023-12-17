.class public abstract Lr3/a;
.super Lr3/d;
.source "AbstractChannel.kt"

# interfaces
.implements Lr3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/a$c;,
        Lr3/a$a;,
        Lr3/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr3/d<",
        "TE;>;",
        "Lr3/f<",
        "TE;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

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

    invoke-direct {p0, p1}, Lr3/d;-><init>(Lh3/l;)V

    return-void
.end method


# virtual methods
.method public final f()Lr3/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/k<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-super {p0}, Lr3/d;->f()Lr3/k;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v1, v0, Lr3/i;

    :cond_8
    return-object v0
.end method

.method public h(Lr3/a$b;)Z
    .registers 7
    .param p1  # Lr3/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lr3/a;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    instance-of v3, v2, Lr3/l;

    xor-int/2addr v3, v1

    if-nez v3, :cond_13

    goto :goto_35

    :cond_13
    invoke-virtual {v2, p1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->f(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lu3/h;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_36

    :cond_1a
    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    new-instance v2, Lr3/b;

    invoke-direct {v2, p1, p0}, Lr3/b;-><init>(Lr3/a$b;Lr3/a;)V

    :goto_21
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    instance-of v4, v3, Lr3/l;

    xor-int/2addr v4, v1

    if-nez v4, :cond_2b

    goto :goto_35

    :cond_2b
    invoke-virtual {v3, p1, v0, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->o(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I

    move-result v3

    if-eq v3, v1, :cond_36

    const/4 v4, 0x2

    if-eq v3, v4, :cond_35

    goto :goto_21

    :cond_35
    :goto_35
    const/4 v1, 0x0

    :cond_36
    :goto_36
    return v1
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public k()Ljava/lang/Object;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lr3/d;->g()Lr3/l;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lr3/c;->d:Lu3/r;

    return-object v0

    :cond_9
    invoke-virtual {v0}, Lr3/l;->r()V

    invoke-virtual {v0}, Lr3/l;->p()V

    invoke-virtual {v0}, Lr3/l;->q()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
