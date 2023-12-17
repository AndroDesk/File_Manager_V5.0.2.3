.class public Lu3/i;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _cur:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lu3/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu3/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lu3/j;

    .line 6
    const/16 v1, 0x8

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lu3/j;-><init>(IZ)V

    .line 12
    iput-object v0, p0, Lu3/i;->_cur:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lu3/i;->_cur:Ljava/lang/Object;

    .line 3
    check-cast v0, Lu3/j;

    .line 5
    invoke-virtual {v0, p1}, Lu3/j;->a(Ljava/lang/Object;)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_27

    .line 12
    if-eq v1, v2, :cond_13

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq v1, v0, :cond_11

    .line 17
    goto :goto_0

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_13
    sget-object v1, Lu3/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    invoke-virtual {v0}, Lu3/j;->e()Lu3/j;

    .line 25
    move-result-object v3

    .line 26
    :cond_19
    invoke-virtual {v1, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_20

    .line 32
    goto :goto_0

    .line 33
    :cond_20
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    if-eq v2, v0, :cond_19

    .line 39
    goto :goto_0

    .line 40
    :cond_27
    return v2
.end method

.method public final b()V
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Lu3/i;->_cur:Ljava/lang/Object;

    .line 3
    check-cast v0, Lu3/j;

    .line 5
    invoke-virtual {v0}, Lu3/j;->b()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    sget-object v1, Lu3/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    invoke-virtual {v0}, Lu3/j;->e()Lu3/j;

    .line 17
    move-result-object v2

    .line 18
    :cond_11
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_18

    .line 24
    goto :goto_0

    .line 25
    :cond_18
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    if-eq v3, v0, :cond_11

    .line 31
    goto :goto_0
.end method

.method public final c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lu3/i;->_cur:Ljava/lang/Object;

    .line 3
    check-cast v0, Lu3/j;

    .line 5
    invoke-virtual {v0}, Lu3/j;->c()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final d()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lu3/i;->_cur:Ljava/lang/Object;

    .line 3
    check-cast v0, Lu3/j;

    .line 5
    invoke-virtual {v0}, Lu3/j;->f()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lu3/j;->g:Lu3/r;

    .line 11
    if-eq v1, v2, :cond_d

    .line 13
    return-object v1

    .line 14
    :cond_d
    sget-object v1, Lu3/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    invoke-virtual {v0}, Lu3/j;->e()Lu3/j;

    .line 19
    move-result-object v2

    .line 20
    :cond_13
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1a

    .line 26
    goto :goto_0

    .line 27
    :cond_1a
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    if-eq v3, v0, :cond_13

    .line 33
    goto :goto_0
.end method
