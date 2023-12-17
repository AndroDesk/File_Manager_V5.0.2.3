.class Lorg/greenrobot/greendao/rx/RxTransaction$2;
.super Ljava/lang/Object;
.source "RxTransaction.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxTransaction;->call(Ljava/util/concurrent/Callable;)Lrx/Observable;
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
.field public final synthetic this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

.field public final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/util/concurrent/Callable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->val$callable:Ljava/util/concurrent/Callable;

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
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 3
    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxTransaction;->access$000(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/greenrobot/greendao/rx/RxTransaction$2;->val$callable:Ljava/util/concurrent/Callable;

    .line 9
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->callInTx(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
