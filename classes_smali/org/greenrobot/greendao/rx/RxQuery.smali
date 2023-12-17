.class public Lorg/greenrobot/greendao/rx/RxQuery;
.super Lorg/greenrobot/greendao/rx/RxBase;
.source "RxQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/rx/RxBase;"
    }
.end annotation

.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final query:Lorg/greenrobot/greendao/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/query/Query;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/rx/RxBase;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery;->query:Lorg/greenrobot/greendao/query/Query;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/query/Query;Lrx/Scheduler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/rx/RxBase;-><init>(Lrx/Scheduler;)V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery;->query:Lorg/greenrobot/greendao/query/Query;

    return-void
.end method

.method public static synthetic access$000(Lorg/greenrobot/greendao/rx/RxQuery;)Lorg/greenrobot/greendao/query/Query;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/greenrobot/greendao/rx/RxQuery;->query:Lorg/greenrobot/greendao/query/Query;

    .line 3
    return-object p0
.end method


# virtual methods
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

.method public list()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$1;

    .line 3
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$1;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxBase;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public oneByOne()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$3;

    .line 3
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$3;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    .line 6
    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxBase;->wrap(Lrx/Observable;)Lrx/Observable;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public unique()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/rx/RxQuery$2;

    .line 3
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxQuery$2;-><init>(Lorg/greenrobot/greendao/rx/RxQuery;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/rx/RxBase;->wrap(Ljava/util/concurrent/Callable;)Lrx/Observable;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
