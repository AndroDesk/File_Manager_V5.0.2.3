.class public final Lu3/o;
.super Ljava/lang/Object;
.source "ResizableAtomicArray.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 9
    iput-object v0, p0, Lu3/o;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lu3/o;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/o;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 6
    move-result v1

    .line 7
    if-ge p1, v1, :cond_d

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    :goto_e
    return-object p1
.end method

.method public final c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V
    .registers 9
    .param p2  # Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lu3/o;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 6
    move-result v1

    .line 7
    if-ge p1, v1, :cond_c

    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 12
    goto :goto_2b

    .line 13
    :cond_c
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 15
    add-int/lit8 v3, p1, 0x1

    .line 17
    mul-int/lit8 v4, v1, 0x2

    .line 19
    if-ge v3, v4, :cond_15

    .line 21
    move v3, v4

    .line 22
    :cond_15
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_19
    if-ge v3, v1, :cond_26

    .line 28
    add-int/lit8 v4, v3, 0x1

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 37
    move v3, v4

    .line 38
    goto :goto_19

    .line 39
    :cond_26
    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 42
    iput-object v2, p0, Lu3/o;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 44
    :goto_2b
    return-void
.end method
