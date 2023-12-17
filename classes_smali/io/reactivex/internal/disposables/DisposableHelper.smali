.class public final enum Lio/reactivex/internal/disposables/DisposableHelper;
.super Ljava/lang/Enum;
.source "DisposableHelper.java"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/disposables/DisposableHelper;",
        ">;",
        "Lk2/b;"
    }
.end annotation


# static fields
.field public static final enum DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

.field public static final synthetic a:[Lio/reactivex/internal/disposables/DisposableHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/reactivex/internal/disposables/DisposableHelper;

    .line 3
    invoke-direct {v0}, Lio/reactivex/internal/disposables/DisposableHelper;-><init>()V

    .line 6
    sput-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Lio/reactivex/internal/disposables/DisposableHelper;

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 14
    sput-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->a:[Lio/reactivex/internal/disposables/DisposableHelper;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "DISPOSED"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    return-void
.end method

.method public static dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk2/b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lk2/b;

    .line 7
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 9
    if-eq v0, v1, :cond_19

    .line 11
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lk2/b;

    .line 17
    if-eq p0, v1, :cond_19

    .line 19
    if-eqz p0, :cond_17

    .line 21
    invoke-interface {p0}, Lk2/b;->dispose()V

    .line 24
    :cond_17
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static isDisposed(Lk2/b;)Z
    .registers 2

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 3
    if-ne p0, v0, :cond_6

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p0, 0x0

    .line 8
    :goto_7
    return p0
.end method

.method public static replace(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk2/b;",
            ">;",
            "Lk2/b;",
            ")Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lk2/b;

    .line 7
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_11

    .line 12
    if-eqz p1, :cond_10

    .line 14
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 17
    :cond_10
    return v2

    .line 18
    :cond_11
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v1, :cond_1a

    .line 25
    move v2, v3

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    if-eq v1, v0, :cond_11

    .line 33
    :goto_20
    if-eqz v2, :cond_0

    .line 35
    return v3
.end method

.method public static reportDisposableSet()V
    .registers 2

    .line 1
    new-instance v0, Lio/reactivex/exceptions/ProtocolViolationException;

    .line 3
    const-string v1, "Disposable already set!"

    .line 5
    invoke-direct {v0, v1}, Lio/reactivex/exceptions/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method

.method public static set(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk2/b;",
            ">;",
            "Lk2/b;",
            ")Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lk2/b;

    .line 7
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_11

    .line 12
    if-eqz p1, :cond_10

    .line 14
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 17
    :cond_10
    return v2

    .line 18
    :cond_11
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v1, :cond_1a

    .line 25
    move v2, v3

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    if-eq v1, v0, :cond_11

    .line 33
    :goto_20
    if-eqz v2, :cond_0

    .line 35
    if-eqz v0, :cond_27

    .line 37
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 40
    :cond_27
    return v3
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk2/b;",
            ">;",
            "Lk2/b;",
            ")Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_26

    .line 3
    const/4 v0, 0x0

    .line 4
    :cond_3
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_d

    .line 12
    move v0, v3

    .line 13
    goto :goto_14

    .line 14
    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_3

    .line 20
    move v0, v2

    .line 21
    :goto_14
    if-nez v0, :cond_25

    .line 23
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 32
    if-eq p0, p1, :cond_24

    .line 34
    invoke-static {}, Lio/reactivex/internal/disposables/DisposableHelper;->reportDisposableSet()V

    .line 37
    :cond_24
    return v2

    .line 38
    :cond_25
    return v3

    .line 39
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    .line 41
    const-string p1, "d is null"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method public static trySet(Ljava/util/concurrent/atomic/AtomicReference;Lk2/b;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk2/b;",
            ">;",
            "Lk2/b;",
            ")Z"
        }
    .end annotation

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_b

    .line 10
    move v0, v2

    .line 11
    goto :goto_12

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    move v0, v1

    .line 19
    :goto_12
    if-nez v0, :cond_20

    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    .line 27
    if-ne p0, v0, :cond_1f

    .line 29
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 32
    :cond_1f
    return v1

    .line 33
    :cond_20
    return v2
.end method

.method public static validate(Lk2/b;Lk2/b;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_e

    .line 4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    const-string p1, "next is null"

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 14
    return v0

    .line 15
    :cond_e
    if-eqz p0, :cond_17

    .line 17
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 20
    invoke-static {}, Lio/reactivex/internal/disposables/DisposableHelper;->reportDisposableSet()V

    .line 23
    return v0

    .line 24
    :cond_17
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/disposables/DisposableHelper;
    .registers 2

    .line 1
    const-class v0, Lio/reactivex/internal/disposables/DisposableHelper;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/reactivex/internal/disposables/DisposableHelper;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/disposables/DisposableHelper;
    .registers 1

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->a:[Lio/reactivex/internal/disposables/DisposableHelper;

    .line 3
    invoke-virtual {v0}, [Lio/reactivex/internal/disposables/DisposableHelper;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/reactivex/internal/disposables/DisposableHelper;

    .line 9
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .registers 1

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
