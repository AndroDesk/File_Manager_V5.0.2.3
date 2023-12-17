.class public final Lp3/j0;
.super Lp3/l0;
.source "JobSupport.kt"


# static fields
.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lh3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/l<",
            "Ljava/lang/Throwable;",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lp3/j0;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lp3/j0;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lp3/n0;)V
    .registers 2
    .param p1  # Lp3/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lp3/l0;-><init>()V

    .line 4
    iput-object p1, p0, Lp3/j0;->e:Lh3/l;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lp3/j0;->_invoked:I

    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0, p1}, Lp3/j0;->p(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 8
    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lp3/j0;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lp3/j0;->e:Lh3/l;

    .line 13
    invoke-interface {v0, p1}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_f
    return-void
.end method
