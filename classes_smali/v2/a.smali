.class public final Lv2/a;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# direct methods
.method public static a(Ljava/util/concurrent/Callable;)Li2/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Li2/i;",
            ">;)",
            "Li2/i;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Scheduler Callable result can\'t be null"

    .line 7
    if-eqz p0, :cond_b

    .line 9
    check-cast p0, Li2/i;

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    .line 18
    :catchall_11
    move-exception p0

    .line 19
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 22
    move-result-object p0

    .line 23
    throw p0
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 10
    goto :goto_32

    .line 11
    :cond_a
    instance-of v0, p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_2a

    .line 17
    :cond_10
    instance-of v0, p0, Lio/reactivex/exceptions/MissingBackpressureException;

    .line 19
    if-eqz v0, :cond_15

    .line 21
    goto :goto_2a

    .line 22
    :cond_15
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_2a

    .line 27
    :cond_1a
    instance-of v0, p0, Ljava/lang/NullPointerException;

    .line 29
    if-eqz v0, :cond_1f

    .line 31
    goto :goto_2a

    .line 32
    :cond_1f
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 34
    if-eqz v0, :cond_24

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    instance-of v0, p0, Lio/reactivex/exceptions/CompositeException;

    .line 39
    if-eqz v0, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    const/4 v1, 0x0

    .line 43
    :goto_2a
    if-nez v1, :cond_32

    .line 45
    new-instance v0, Lio/reactivex/exceptions/UndeliverableException;

    .line 47
    invoke-direct {v0, p0}, Lio/reactivex/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    move-object p0, v0

    .line 51
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    const-string v0, "run is null"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
.end method
