.class public final Lp3/x;
.super Lu3/p;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/p<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lp3/x;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lp3/x;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method public final Q(Ljava/lang/Object;)V
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :cond_0
    iget v0, p0, Lp3/x;->_decision:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eqz v0, :cond_16

    .line 8
    if-ne v0, v2, :cond_a

    .line 10
    goto :goto_1f

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "Already resumed"

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1

    .line 23
    :cond_16
    sget-object v0, Lp3/x;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 25
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    move v1, v2

    .line 32
    :goto_1f
    if-eqz v1, :cond_22

    .line 34
    return-void

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lb3/a;->c(La3/c;)La3/c;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {p1}, Lkotlinx/coroutines/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {v0, p1, v1}, Lu3/b;->a(La3/c;Ljava/lang/Object;Lh3/l;)V

    .line 48
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lp3/x;->Q(Ljava/lang/Object;)V

    .line 4
    return-void
.end method
