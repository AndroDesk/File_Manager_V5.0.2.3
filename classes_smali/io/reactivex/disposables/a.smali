.class public final Lio/reactivex/disposables/a;
.super Ljava/lang/Object;
.source "Disposables.java"


# direct methods
.method public static a(Ls2/e$c$a;)Lk2/b;
    .registers 2

    .line 1
    new-instance v0, Lio/reactivex/disposables/RunnableDisposable;

    .line 3
    invoke-direct {v0, p0}, Lio/reactivex/disposables/RunnableDisposable;-><init>(Ljava/lang/Runnable;)V

    .line 6
    return-object v0
.end method
