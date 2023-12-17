.class public final enum Lio/reactivex/internal/disposables/EmptyDisposable;
.super Ljava/lang/Enum;
.source "EmptyDisposable.java"

# interfaces
.implements Lo2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/disposables/EmptyDisposable;",
        ">;",
        "Lo2/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

.field public static final enum NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

.field public static final synthetic a:[Lio/reactivex/internal/disposables/EmptyDisposable;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 3
    const-string v1, "INSTANCE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/disposables/EmptyDisposable;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 11
    new-instance v1, Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 13
    const-string v3, "NEVER"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lio/reactivex/internal/disposables/EmptyDisposable;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 24
    aput-object v0, v3, v2

    .line 26
    aput-object v1, v3, v4

    .line 28
    sput-object v3, Lio/reactivex/internal/disposables/EmptyDisposable;->a:[Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static complete(Li2/a;)V
    .registers 1

    .line 5
    invoke-interface {p0}, Li2/a;->b()V

    .line 6
    invoke-interface {p0}, Li2/a;->onComplete()V

    return-void
.end method

.method public static complete(Li2/d;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/d<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Li2/d;->b()V

    .line 4
    invoke-interface {p0}, Li2/d;->onComplete()V

    return-void
.end method

.method public static complete(Li2/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p0, v0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 2
    invoke-interface {p0}, Li2/h;->onComplete()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li2/a;)V
    .registers 2

    .line 3
    invoke-interface {p1}, Li2/a;->b()V

    .line 4
    invoke-interface {p1}, Li2/a;->a()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li2/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li2/d<",
            "*>;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Li2/d;->b()V

    .line 8
    invoke-interface {p1}, Li2/d;->a()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li2/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li2/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 2
    invoke-interface {p1, p0}, Li2/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Li2/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li2/j<",
            "*>;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Li2/j;->b()V

    .line 6
    invoke-interface {p1}, Li2/j;->a()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/disposables/EmptyDisposable;
    .registers 2

    .line 1
    const-class v0, Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/disposables/EmptyDisposable;
    .registers 1

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->a:[Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 3
    invoke-virtual {v0}, [Lio/reactivex/internal/disposables/EmptyDisposable;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 9
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 3
    if-ne p0, v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
