.class public abstract Li2/e;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;
    .registers 5

    .line 1
    sget v0, Li2/c;->a:I

    .line 3
    if-lez v0, :cond_a

    .line 5
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 7
    invoke-direct {v1, p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn;-><init>(Li2/e;Lj2/b;I)V

    .line 10
    return-object v1

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v2, "bufferSize"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " > 0 required but it was "

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method

.method public final b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;
    .registers 6

    .line 1
    sget-object v0, Ln2/a;->d:Ln2/a$d;

    .line 3
    sget-object v1, Ln2/a;->b:Ln2/a$a;

    .line 5
    sget-object v2, Ln2/a;->c:Ln2/a$b;

    .line 7
    new-instance v3, Lio/reactivex/internal/observers/LambdaObserver;

    .line 9
    invoke-direct {v3, p1, v0, v1, v2}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    .line 12
    invoke-virtual {p0, v3}, Li2/e;->c(Li2/h;)V

    .line 15
    return-object v3
.end method

.method public final c(Li2/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    :try_start_2
    invoke-virtual {p0, p1}, Li2/e;->d(Li2/h;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_5} :catch_18
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    invoke-static {p1}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    .line 16
    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 24
    throw v0

    .line 25
    :catch_18
    move-exception p1

    .line 26
    throw p1

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    .line 29
    const-string v0, "observer is null"

    .line 31
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public abstract d(Li2/h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 5
    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;-><init>(Li2/e;Li2/i;)V

    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    .line 11
    const-string v0, "scheduler is null"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method

.method public final f(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;
    .registers 11

    .line 1
    sget-object v5, Lw2/a;->a:Li2/i;

    .line 3
    if-eqz p3, :cond_18

    .line 5
    if-eqz v5, :cond_10

    .line 7
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;

    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    move-wide v2, p1

    .line 12
    move-object v4, p3

    .line 13
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;-><init>(Li2/e;JLjava/util/concurrent/TimeUnit;Li2/i;)V

    .line 16
    return-object v6

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    const-string p2, "scheduler is null"

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    .line 27
    const-string p2, "unit is null"

    .line 29
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method
