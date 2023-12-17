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
    invoke-direct {p0, p1}, Lr3/d;-><init>(Lh3/l;)V

    .line 4
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

    .line 1
    invoke-super {p0}, Lr3/d;->f()Lr3/k;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    instance-of v1, v0, Lr3/i;

    .line 9
    :cond_8
    return-object v0
.end method

.method public h(Lr3/a$b;)Z
    .registers 7
    .param p1  # Lr3/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lr3/a;->i()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1a

    .line 8
    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    .line 10
    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 13
    move-result-object v2

    .line 14
    instance-of v3, v2, Lr3/l;

    .line 16
    xor-int/2addr v3, v1

    .line 17
    if-nez v3, :cond_13

    .line 19
    goto :goto_35

    .line 20
    :cond_13
    invoke-virtual {v2, p1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->f(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lu3/h;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_9

    .line 26
    goto :goto_36

    .line 27
    :cond_1a
    iget-object v0, p0, Lr3/d;->b:Lu3/h;

    .line 29
    new-instance v2, Lr3/b;

    .line 31
    invoke-direct {v2, p1, p0}, Lr3/b;-><init>(Lr3/a$b;Lr3/a;)V

    .line 34
    :goto_21
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 37
    move-result-object v3

    .line 38
    instance-of v4, v3, Lr3/l;

    .line 40
    xor-int/2addr v4, v1

    .line 41
    if-nez v4, :cond_2b

    .line 43
    goto :goto_35

    .line 44
    :cond_2b
    invoke-virtual {v3, p1, v0, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->o(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$a;)I

    .line 47
    move-result v3

    .line 48
    if-eq v3, v1, :cond_36

    .line 50
    const/4 v4, 0x2

    .line 51
    if-eq v3, v4, :cond_35

    .line 53
    goto :goto_21

    .line 54
    :cond_35
    :goto_35
    const/4 v1, 0x0

    .line 55
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

    .line 1
    invoke-virtual {p0}, Lr3/d;->g()Lr3/l;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    sget-object v0, Lr3/c;->d:Lu3/r;

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-virtual {v0}, Lr3/l;->r()V

    .line 13
    invoke-virtual {v0}, Lr3/l;->p()V

    .line 16
    invoke-virtual {v0}, Lr3/l;->q()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
