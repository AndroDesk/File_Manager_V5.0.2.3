.class Lorg/greenrobot/greendao/rx/RxQuery$3;
.super Ljava/lang/Object;
.source "RxQuery.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxQuery;->oneByOne()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/greenrobot/greendao/rx/RxQuery;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxQuery;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery$3;->this$0:Lorg/greenrobot/greendao/rx/RxQuery;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/rx/RxQuery$3;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxQuery$3;->this$0:Lorg/greenrobot/greendao/rx/RxQuery;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxQuery;->access$000(Lorg/greenrobot/greendao/rx/RxQuery;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->forCurrentThread()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_39

    .line 3
    :try_start_e
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/LazyList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_27

    .line 5
    :cond_23
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_34

    goto :goto_12

    .line 6
    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/LazyList;->close()V

    .line 7
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_40

    .line 8
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_40

    :catchall_34
    move-exception v1

    .line 9
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/LazyList;->close()V

    .line 10
    throw v1
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    .line 11
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    return-void
.end method
