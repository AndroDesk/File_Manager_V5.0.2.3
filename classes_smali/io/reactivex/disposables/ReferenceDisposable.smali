.class abstract Lio/reactivex/disposables/ReferenceDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReferenceDisposable.java"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lk2/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5abac7da20d0ae41L


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 6
    return-void

    .line 7
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 9
    const-string v0, "value is null"

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/ReferenceDisposable;->onDisposed(Ljava/lang/Object;)V

    .line 17
    :cond_10
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public abstract onDisposed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
