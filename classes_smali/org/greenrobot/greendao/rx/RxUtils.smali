.class Lorg/greenrobot/greendao/rx/RxUtils;
.super Ljava/lang/Object;
.source "RxUtils.java"


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/rx/RxUtils$1;

    .line 3
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxUtils$1;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
