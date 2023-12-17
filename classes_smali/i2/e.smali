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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;
    .registers 5

    sget v0, Li2/c;->a:I

    if-lez v0, :cond_a

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    invoke-direct {v1, p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn;-><init>(Li2/e;Lj2/b;I)V

    return-object v1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;
    .registers 6

    sget-object v0, Ln2/a;->d:Ln2/a$d;

    sget-object v1, Ln2/a;->b:Ln2/a$a;

    sget-object v2, Ln2/a;->c:Ln2/a$b;

    new-instance v3, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v3, p1, v0, v1, v2}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    invoke-virtual {p0, v3}, Li2/e;->c(Li2/h;)V

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

    if-eqz p1, :cond_1a

    :try_start_2
    invoke-virtual {p0, p1}, Li2/e;->d(Li2/h;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_5} :catch_18
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    invoke-static {p1}, La/b;->d0(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_18
    move-exception p1

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "observer is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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

    if-eqz p1, :cond_8

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;-><init>(Li2/e;Li2/i;)V

    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scheduler is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;
    .registers 11

    sget-object v5, Lw2/a;->a:Li2/i;

    if-eqz p3, :cond_18

    if-eqz v5, :cond_10

    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;-><init>(Li2/e;JLjava/util/concurrent/TimeUnit;Li2/i;)V

    return-object v6

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "scheduler is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
