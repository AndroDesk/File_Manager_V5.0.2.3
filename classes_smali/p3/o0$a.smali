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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Lp3/n0;-><init>()V

    iput-object p1, p0, Lp3/o0$a;->e:Lp3/o0;

    iput-object p2, p0, Lp3/o0$a;->f:Lp3/o0$b;

    iput-object p3, p0, Lp3/o0$a;->g:Lp3/l;

    iput-object p4, p0, Lp3/o0$a;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lp3/o0$a;->p(Ljava/lang/Throwable;)V

    sget-object p1, Ly2/e;->a:Ly2/e;

    return-object p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .registers 6
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lp3/o0$a;->e:Lp3/o0;

    iget-object v0, p0, Lp3/o0$a;->f:Lp3/o0$b;

    iget-object v1, p0, Lp3/o0$a;->g:Lp3/l;

    iget-object v2, p0, Lp3/o0$a;->h:Ljava/lang/Object;

    sget-object v3, Lp3/o0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lp3/o0;->I(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lp3/l;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v0, v1, v2}, Lp3/o0;->P(Lp3/o0$b;Lp3/l;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_21

    :cond_1a
    invoke-virtual {p1, v0, v2}, Lp3/o0;->w(Lp3/o0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp3/o0;->d(Ljava/lang/Object;)V

    :goto_21
    return-void
.end method
