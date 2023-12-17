.class Lorg/greenrobot/greendao/rx/RxDao$23;
.super Ljava/lang/Object;
.source "RxDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxDao;->count()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/greenrobot/greendao/rx/RxDao;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxDao;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao$23;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$23;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxDao;->access$000(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/rx/RxDao$23;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
