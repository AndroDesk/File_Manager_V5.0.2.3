.class Lorg/greenrobot/greendao/rx/RxDao$14;
.super Ljava/lang/Object;
.source "RxDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxDao;->updateInTx(Ljava/lang/Iterable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/greenrobot/greendao/rx/RxDao;

.field public final synthetic val$entities:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Iterable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao$14;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxDao$14;->val$entities:Ljava/lang/Iterable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$14;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxDao;->access$000(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/rx/RxDao$14;->val$entities:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 3
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$14;->val$entities:Ljava/lang/Iterable;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/rx/RxDao$14;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
