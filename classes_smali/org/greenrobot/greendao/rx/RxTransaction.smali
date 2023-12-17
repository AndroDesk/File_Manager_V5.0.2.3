.class public Lorg/greenrobot/greendao/rx/RxTransaction;
.super Lorg/greenrobot/greendao/rx/RxBase;
.source "RxTransaction.java"


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/rx/RxBase;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;Lrx/Scheduler;)V
    .registers 3

    .line 3
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/RxBase;-><init>(Lrx/Scheduler;)V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-void
.end method

.method public static synthetic access$000(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 3
    return-object p0
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;)Lrx/Observable;
    .registers 3
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

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction$2;

    .line 3
    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxTransaction$2;-><init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/util/concurrent/Callable;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxBase;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getDaoSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 3
    return-object v0
.end method

.method public bridge synthetic getScheduler()Lrx/Scheduler;
    .registers 2
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/greenrobot/greendao/rx/RxBase;->getScheduler()Lrx/Scheduler;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public run(Ljava/lang/Runnable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/rx/RxTransaction$1;

    .line 3
    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/rx/RxTransaction$1;-><init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxBase;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
