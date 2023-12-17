.class Lcom/micloud/midrive/task/TransferBaseTask$3;
.super Ljava/lang/Object;
.source "TransferBaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/TransferBaseTask;->postOnProgressUpdate(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/TransferBaseTask;

.field public final synthetic val$pos:J

.field public final synthetic val$total:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/TransferBaseTask;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    iput-wide p2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    iput-wide p4, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->access$200(Lcom/micloud/midrive/task/TransferBaseTask;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    iget-wide v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    iget-wide v4, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_71

    :cond_1a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "position:"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v2

    invoke-static {v2}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    move-result v8

    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    new-instance v9, Lcom/micloud/midrive/infos/TaskProgressInfo;

    iget-wide v4, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    iget-wide v6, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/micloud/midrive/infos/TaskProgressInfo;-><init>(JJZ)V

    invoke-static {v2, v9}, Lcom/micloud/midrive/task/TransferBaseTask;->access$302(Lcom/micloud/midrive/task/TransferBaseTask;Lcom/micloud/midrive/infos/TaskProgressInfo;)Lcom/micloud/midrive/infos/TaskProgressInfo;

    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    move-result-object v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v3}, Lcom/micloud/midrive/task/TransferBaseTask;->access$100(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;->onProgressUpdate(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    :cond_6c
    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v2, v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask;->access$202(Lcom/micloud/midrive/task/TransferBaseTask;J)J

    :cond_71
    return-void
.end method
