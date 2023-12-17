.class public final Lio/reactivex/internal/util/AtomicThrowable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "AtomicThrowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36ce8ce03b5e1eabL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public addThrowable(Ljava/lang/Throwable;)Z
    .registers 7

    .line 1
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    .line 3
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 9
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_30

    .line 15
    :cond_e
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_13

    .line 18
    move-object v3, p1

    .line 19
    goto :goto_1f

    .line 20
    :cond_13
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [Ljava/lang/Throwable;

    .line 25
    aput-object v0, v4, v2

    .line 27
    aput-object p1, v4, v1

    .line 29
    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 32
    :cond_1f
    :goto_1f
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_27

    .line 38
    move v2, v1

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    if-eq v4, v0, :cond_1f

    .line 46
    :goto_2d
    if-eqz v2, :cond_2

    .line 48
    move v2, v1

    .line 49
    :goto_30
    return v2
.end method

.method public isTerminated()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public terminate()Ljava/lang/Throwable;
    .registers 3

    .line 1
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 9
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    .line 11
    if-eq v0, v1, :cond_12

    .line 13
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Throwable;

    .line 19
    :cond_12
    return-object v0
.end method
