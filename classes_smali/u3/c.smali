.class public abstract Lu3/c;
.super Lu3/m;
.source "Atomic.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/m;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _consensus:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lu3/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_consensus"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lu3/m;-><init>()V

    .line 4
    sget-object v0, Lu3/b;->a:Lu3/r;

    .line 6
    iput-object v0, p0, Lu3/c;->_consensus:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/c;->_consensus:Ljava/lang/Object;

    .line 3
    sget-object v1, Lu3/b;->a:Lu3/r;

    .line 5
    if-ne v0, v1, :cond_26

    .line 7
    invoke-virtual {p0, p1}, Lu3/c;->c(Ljava/lang/Object;)Lu3/r;

    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Lu3/c;->_consensus:Ljava/lang/Object;

    .line 13
    if-eq v0, v1, :cond_f

    .line 15
    goto :goto_26

    .line 16
    :cond_f
    sget-object v3, Lu3/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    :cond_11
    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    if-eq v0, v1, :cond_11

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_20
    if-eqz v0, :cond_24

    .line 35
    move-object v0, v2

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    iget-object v0, p0, Lu3/c;->_consensus:Ljava/lang/Object;

    .line 39
    :cond_26
    :goto_26
    invoke-virtual {p0, p1, v0}, Lu3/c;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p2  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;)Lu3/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
