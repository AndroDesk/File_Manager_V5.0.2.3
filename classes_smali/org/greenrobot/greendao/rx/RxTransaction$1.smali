.class Lorg/greenrobot/greendao/rx/RxTransaction$1;
.super Ljava/lang/Object;
.source "RxTransaction.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxTransaction;->run(Ljava/lang/Runnable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxTransaction;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxTransaction$1;->this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxTransaction$1;->val$runnable:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/rx/RxTransaction$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxTransaction$1;->this$0:Lorg/greenrobot/greendao/rx/RxTransaction;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxTransaction;->access$000(Lorg/greenrobot/greendao/rx/RxTransaction;)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/rx/RxTransaction$1;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
