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
.method public constructor <init>(Lcom/micloud/midrive/task/TransferBaseTask;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 3
    iput-wide p2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    .line 5
    iput-wide p4, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 7
    invoke-static {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->access$200(Lcom/micloud/midrive/task/TransferBaseTask;)J

    .line 10
    move-result-wide v2

    .line 11
    sub-long v2, v0, v2

    .line 13
    const-wide/16 v4, 0x7d0

    .line 15
    cmp-long v2, v2, v4

    .line 17
    if-gtz v2, :cond_1a

    .line 19
    iget-wide v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    .line 21
    iget-wide v4, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    .line 23
    cmp-long v2, v2, v4

    .line 25
    if-ltz v2, :cond_71

    .line 27
    :cond_1a
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, "position:"

    .line 33
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v4

    .line 37
    iget-wide v5, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    .line 39
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const-string v5, " total:"

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v5, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    .line 49
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    aput-object v4, v2, v3

    .line 58
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 63
    invoke-virtual {v2}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    .line 70
    move-result v8

    .line 71
    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 73
    new-instance v9, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 75
    iget-wide v4, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$pos:J

    .line 77
    iget-wide v6, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->val$total:J

    .line 79
    move-object v3, v9

    .line 80
    invoke-direct/range {v3 .. v8}, Lcom/micloud/midrive/infos/TaskProgressInfo;-><init>(JJZ)V

    .line 83
    invoke-static {v2, v9}, Lcom/micloud/midrive/task/TransferBaseTask;->access$302(Lcom/micloud/midrive/task/TransferBaseTask;Lcom/micloud/midrive/infos/TaskProgressInfo;)Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 86
    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 88
    invoke-static {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_6c

    .line 94
    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 96
    invoke-static {v2}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    .line 99
    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 102
    invoke-static {v3}, Lcom/micloud/midrive/task/TransferBaseTask;->access$100(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2, v3}, Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;->onProgressUpdate(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    .line 109
    :cond_6c
    iget-object v2, p0, Lcom/micloud/midrive/task/TransferBaseTask$3;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 111
    invoke-static {v2, v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask;->access$202(Lcom/micloud/midrive/task/TransferBaseTask;J)J

    .line 114
    :cond_71
    return-void
.end method
