.class Lorg/greenrobot/greendao/rx/RxQuery$2;
.super Ljava/lang/Object;
.source "RxQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxQuery;->unique()Lrx/Observable;
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
.field public final synthetic this$0:Lorg/greenrobot/greendao/rx/RxQuery;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/rx/RxQuery;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxQuery$2;->this$0:Lorg/greenrobot/greendao/rx/RxQuery;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxQuery$2;->this$0:Lorg/greenrobot/greendao/rx/RxQuery;

    .line 3
    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxQuery;->access$000(Lorg/greenrobot/greendao/rx/RxQuery;)Lorg/greenrobot/greendao/query/Query;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->forCurrentThread()Lorg/greenrobot/greendao/query/Query;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
