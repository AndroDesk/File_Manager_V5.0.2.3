.class public final Lp3/q0;
.super Lp3/w0;
.source "Builders.common.kt"


# instance fields
.field public final c:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c<",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lh3/p;)V
    .registers 4
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lh3/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lh3/p<",
            "-",
            "Lp3/t;",
            "-",
            "La3/c<",
            "-",
            "Ly2/e;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lp3/w0;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    invoke-static {p2, p0, p0}, Lb3/a;->b(Lh3/p;Ljava/lang/Object;La3/c;)La3/c;

    move-result-object p1

    iput-object p1, p0, Lp3/q0;->c:La3/c;

    return-void
.end method


# virtual methods
.method public final L()V
    .registers 4

    iget-object v0, p0, Lp3/q0;->c:La3/c;

    :try_start_2
    invoke-static {v0}, Lb3/a;->c(La3/c;)La3/c;

    move-result-object v0

    sget-object v1, Ly2/e;->a:Ly2/e;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lu3/b;->a(La3/c;Ljava/lang/Object;Lh3/l;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lp3/a;->resumeWith(Ljava/lang/Object;)V

    throw v0
.end method
