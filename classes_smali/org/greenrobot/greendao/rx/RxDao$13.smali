.class Lorg/greenrobot/greendao/rx/RxDao$13;
.super Ljava/lang/Object;
.source "RxDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxDao;->update(Ljava/lang/Object;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/greenrobot/greendao/rx/RxDao;

.field public final synthetic val$entity:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxDao;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao$13;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxDao$13;->val$entity:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$13;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    .line 3
    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxDao;->access$000(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/greenrobot/greendao/rx/RxDao$13;->val$entity:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$13;->val$entity:Ljava/lang/Object;

    .line 14
    return-object v0
.end method
