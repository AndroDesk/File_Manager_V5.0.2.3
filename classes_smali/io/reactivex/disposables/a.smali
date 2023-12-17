.class public final Lio/reactivex/disposables/a;
.super Ljava/lang/Object;
.source "Disposables.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Ls2/e$c$a;)Lk2/b;
    .registers 2

    new-instance v0, Lio/reactivex/disposables/RunnableDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/RunnableDisposable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
