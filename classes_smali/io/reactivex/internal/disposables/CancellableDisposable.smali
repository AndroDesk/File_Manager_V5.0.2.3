.class public final Lio/reactivex/internal/disposables/CancellableDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CancellableDisposable.java"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ll2/b;",
        ">;",
        "Lk2/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Ll2/b;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 4
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ll2/b;

    .line 14
    if-eqz v0, :cond_1a

    .line 16
    :try_start_f
    invoke-interface {v0}, Ll2/b;->cancel()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 19
    goto :goto_1a

    .line 20
    :catch_13
    move-exception v0

    .line 21
    invoke-static {v0}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 24
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method public isDisposed()Z
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
