.class public final Lkotlinx/coroutines/b;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandlerImpl.kt"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/s;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lf0/e;->i()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<this>"

    .line 7
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ln3/d;

    .line 12
    invoke-direct {v1, v0}, Ln3/d;-><init>(Ljava/util/Iterator;)V

    .line 15
    instance-of v0, v1, Ln3/a;

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    new-instance v0, Ln3/a;

    .line 22
    invoke-direct {v0, v1}, Ln3/a;-><init>(Ln3/d;)V

    .line 25
    move-object v1, v0

    .line 26
    :goto_19
    invoke-static {v1}, Ln3/c;->g0(Ln3/b;)Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lkotlinx/coroutines/b;->a:Ljava/util/List;

    .line 32
    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .registers 8
    .param p0  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/b;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_31

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lp3/s;

    .line 19
    :try_start_12
    invoke-interface {v1, p0, p1}, Lp3/s;->handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    .line 22
    goto :goto_6

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    move-result-object v3

    .line 32
    if-ne p1, v1, :cond_23

    .line 34
    move-object v4, p1

    .line 35
    goto :goto_2d

    .line 36
    :cond_23
    new-instance v4, Ljava/lang/RuntimeException;

    .line 38
    const-string v5, "Exception while trying to handle coroutine exception"

    .line 40
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-static {v4, p1}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 46
    :goto_2d
    invoke-interface {v3, v2, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    goto :goto_6

    .line 50
    :cond_31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    move-result-object v0

    .line 54
    :try_start_35
    new-instance v1, Lkotlinx/coroutines/DiagnosticCoroutineContextException;

    .line 56
    invoke-direct {v1, p0}, Lkotlinx/coroutines/DiagnosticCoroutineContextException;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 59
    invoke-static {p1, v1}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 62
    sget-object p0, Ly2/e;->a:Ly2/e;

    .line 64
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    .line 67
    goto :goto_4b

    .line 68
    :catchall_43
    move-exception p0

    .line 69
    invoke-static {p0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method
