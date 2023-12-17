.class Lcom/micloud/midrive/task/RunOnNetworkTask$1;
.super Ljava/lang/Object;
.source "RunOnNetworkTask.java"

# interfaces
.implements Lcom/micloud/midrive/manager/NetworkManager$NetworkConfigChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/RunOnNetworkTask;->waitingNetworkToNextStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/RunOnNetworkTask;

.field public final synthetic val$networkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/RunOnNetworkTask$1;->this$0:Lcom/micloud/midrive/task/RunOnNetworkTask;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/task/RunOnNetworkTask$1;->val$networkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onNetworkConfigChangedInMainThread()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/RunOnNetworkTask$1;->val$networkConfigChangedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    return-void
.end method
