.class Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;
.super Ljava/lang/Object;
.source "TransferSession.java"

# interfaces
.implements Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;
.implements Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/TransferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionTaskListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;


# direct methods
.method private constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/TransferSession$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-static {p1}, Lcom/micloud/midrive/session/TransferSession;->access$300(Lcom/micloud/midrive/session/TransferSession;)V

    .line 6
    return-void
.end method

.method public onRunningStepChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$300(Lcom/micloud/midrive/session/TransferSession;)V

    .line 6
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 8
    invoke-static {v0, p1}, Lcom/micloud/midrive/session/TransferSession;->access$1300(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V

    .line 11
    return-void
.end method

.method public onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 3
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_2e

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "task:"

    .line 15
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v2

    .line 19
    move-object v3, p1

    .line 20
    check-cast v3, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 22
    invoke-virtual {v3}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    aput-object v2, v0, v1

    .line 39
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 44
    invoke-static {v0, p1}, Lcom/micloud/midrive/session/TransferSession;->access$1100(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V

    .line 47
    :cond_2e
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 49
    invoke-static {p1}, Lcom/micloud/midrive/session/TransferSession;->access$1200(Lcom/micloud/midrive/session/TransferSession;)Landroid/os/Handler;

    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;

    .line 55
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;-><init>(Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method
