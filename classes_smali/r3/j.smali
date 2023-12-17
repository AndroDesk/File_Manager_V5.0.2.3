.class public abstract Lr3/j;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "AbstractChannel.kt"

# interfaces
.implements Lr3/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lr3/k<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic c()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lr3/c;->b:Lu3/r;

    .line 3
    return-object v0
.end method

.method public abstract p(Lr3/i;)V
    .param p1  # Lr3/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/i<",
            "*>;)V"
        }
    .end annotation
.end method
