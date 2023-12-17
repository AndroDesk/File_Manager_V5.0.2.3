.class public final Lp3/o0$a;
.super Lp3/n0;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lp3/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lp3/o0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lp3/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/o0;Lp3/o0$b;Lp3/l;Ljava/lang/Object;)V
    .registers 5
    .param p1  # Lp3/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lp3/o0$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Lp3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lp3/n0;-><init>()V

    .line 4
    iput-object p1, p0, Lp3/o0$a;->e:Lp3/o0;

    .line 6
    iput-object p2, p0, Lp3/o0$a;->f:Lp3/o0$b;

    .line 8
    iput-object p3, p0, Lp3/o0$a;->g:Lp3/l;

    .line 10
    iput-object p4, p0, Lp3/o0$a;->h:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0, p1}, Lp3/o0$a;->p(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 8
    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .registers 6
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lp3/o0$a;->e:Lp3/o0;

    .line 3
    iget-object v0, p0, Lp3/o0$a;->f:Lp3/o0$b;

    .line 5
    iget-object v1, p0, Lp3/o0$a;->g:Lp3/l;

    .line 7
    iget-object v2, p0, Lp3/o0$a;->h:Ljava/lang/Object;

    .line 9
    sget-object v3, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v1}, Lp3/o0;->I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1a

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Lp3/o0;->P(Lp3/o0$b;Lp3/l;Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1a

    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    invoke-virtual {p1, v0, v2}, Lp3/o0;->w(Lp3/o0$b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lp3/o0;->d(Ljava/lang/Object;)V

    .line 34
    :goto_21
    return-void
.end method
