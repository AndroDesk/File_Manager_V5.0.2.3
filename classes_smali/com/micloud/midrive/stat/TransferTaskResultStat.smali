.class public Lcom/micloud/midrive/stat/TransferTaskResultStat;
.super Ljava/lang/Object;
.source "TransferTaskResultStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/stat/TransferTaskResultStat$TaskType;,
        Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;,
        Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;
    }
.end annotation


# instance fields
.field private execTotalTime:J

.field private failExceptionAndMsg:Ljava/lang/String;

.field private fileSize:J

.field private finishStep:Ljava/lang/String;

.field private final helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

.field private isPausedByNetwork:Z

.field private maxSpeed:D

.field private result:Ljava/lang/String;

.field private final taskType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->taskType:Ljava/lang/String;

    new-instance p1, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-direct {p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/TransferTaskResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
.end method

.method private calculateSpeed(JJ)D
    .registers 6

    new-instance v0, Ljava/math/BigDecimal;

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 p2, 0x2

    invoke-virtual {v0, p2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method private checkForRecordEvent()Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private checkTimestamp(J)V
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid timestamp"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAvgSpeed()D
    .registers 5

    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getTransferSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$200(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->calculateSpeed(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method private getTransferSize()J
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$300(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private synthetic lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->taskType:Ljava/lang/String;

    const-string v1, "transfer_type"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->fileSize:J

    const-string v2, "file_size"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    const-string v2, "exec_total_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    const-string v1, "result"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getAvgSpeed()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_27

    goto :goto_2b

    :cond_27
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getAvgSpeed()D

    move-result-wide v2

    :goto_2b
    const-string v0, "avg_speed"

    invoke-interface {p1, v0, v2, v3}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putDouble(Ljava/lang/String;D)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->maxSpeed:D

    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getAvgSpeed()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-string v2, "max_speed"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    const-string v1, "finish_step"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->failExceptionAndMsg:Ljava/lang/String;

    const-string v1, "fail_exception_and_msg"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getTransferSize()J

    move-result-wide v0

    const-string v2, "transfer_size"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->isPausedByNetwork:Z

    const-string v1, "is_paused_by_network"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private recordEvent()V
    .registers 5

    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkForRecordEvent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getTransferSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    sget-object v1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    const-string v1, "transfer_task_result"

    const-string v2, "1096.0.0.0.27300"

    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    return-void
.end method

.method private resetValForNecessary(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    return-void
.end method


# virtual methods
.method public calculateMaxSpeed(J)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v2, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    iget-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    return-void

    :cond_25
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_34

    return-void

    :cond_34
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v2

    sub-long v2, p1, v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->calculateSpeed(JJ)D

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v4, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    iget-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    iget-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->maxSpeed:D

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->maxSpeed:D

    return-void
.end method

.method public recordEventByStopInfo(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V
    .registers 3

    if-nez p1, :cond_b

    sget-object p1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    goto :goto_30

    :cond_b
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->CANCEL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    goto :goto_30

    :cond_1a
    sget-object v0, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    iget-object v0, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    iget-object v0, v0, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->stepName:Ljava/lang/String;

    iput-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    invoke-static {p1}, Lcom/micloud/midrive/stat/StatUtils;->getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->failExceptionAndMsg:Ljava/lang/String;

    :goto_30
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordEvent()V

    return-void
.end method

.method public recordTaskEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordTaskStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordTransferEnd()V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v3}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$214(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordTransferPause()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v3}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$214(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->isPausedByNetwork:Z

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-direct {p0, v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->resetValForNecessary(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)V

    return-void
.end method

.method public recordTransferStart()V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    :cond_1e
    return-void
.end method

.method public setFileSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->fileSize:J

    return-void
.end method

.method public setFinishStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V
    .registers 2

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->stepName:Ljava/lang/String;

    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    return-void
.end method

.method public setStartPos(J)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$302(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    return-void
.end method
