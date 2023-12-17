.class public abstract Lp3/q;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "CompletionHandler.kt"

# interfaces
.implements Lh3/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lh3/l<",
        "Ljava/lang/Throwable;",
        "Ly2/e;",
        ">;"
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
.method public abstract p(Ljava/lang/Throwable;)V
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
