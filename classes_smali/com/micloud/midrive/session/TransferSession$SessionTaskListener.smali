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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/TransferSession$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
    .registers 2

    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {p1}, Lcom/micloud/midrive/session/TransferSession;->access$300(Lcom/micloud/midrive/session/TransferSession;)V

    return-void
.end method

.method public onRunningStepChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$300(Lcom/micloud/midrive/session/TransferSession;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {v0, p1}, Lcom/micloud/midrive/session/TransferSession;->access$1300(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method

.method public onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 6

    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    move-result-object v1

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "task:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-virtual {v3}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {v0, p1}, Lcom/micloud/midrive/session/TransferSession;->access$1100(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/task/BaseTask;)V

    :cond_2e
    iget-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {p1}, Lcom/micloud/midrive/session/TransferSession;->access$1200(Lcom/micloud/midrive/session/TransferSession;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;-><init>(Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
