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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->taskType:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 8
    invoke-direct {p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/TransferTaskResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
.end method

.method private calculateSpeed(JJ)D
    .registers 6

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 3
    long-to-float p1, p1

    .line 4
    long-to-float p2, p3

    .line 5
    div-float/2addr p1, p2

    .line 6
    float-to-double p1, p1

    .line 7
    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 10
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-virtual {v0, p2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 20
    move-result-wide p1

    .line 21
    return-wide p1
.end method

.method private checkForRecordEvent()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->fileSize:J

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v0, v0, v2

    .line 11
    if-eqz v0, :cond_18

    .line 13
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    .line 15
    if-eqz v0, :cond_18

    .line 17
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    .line 19
    cmp-long v0, v0, v2

    .line 21
    if-eqz v0, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    return v0
.end method

.method private checkTimestamp(J)V
    .registers 5

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    cmp-long p1, p1, v0

    .line 5
    if-eqz p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string p2, "invalid timestamp"

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method private getAvgSpeed()D
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getTransferSize()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 7
    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$200(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->calculateSpeed(JJ)D

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private getTransferSize()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 9
    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$300(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method private synthetic lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->taskType:Ljava/lang/String;

    .line 3
    const-string v1, "transfer_type"

    .line 5
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->fileSize:J

    .line 10
    const-string v2, "file_size"

    .line 12
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    .line 17
    const-string v2, "exec_total_time"

    .line 19
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 22
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    .line 24
    const-string v1, "result"

    .line 26
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getAvgSpeed()D

    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, 0x0

    .line 35
    cmpg-double v0, v0, v2

    .line 37
    if-gez v0, :cond_27

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getAvgSpeed()D

    .line 43
    move-result-wide v2

    .line 44
    :goto_2b
    const-string v0, "avg_speed"

    .line 46
    invoke-interface {p1, v0, v2, v3}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putDouble(Ljava/lang/String;D)V

    .line 49
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->maxSpeed:D

    .line 51
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getAvgSpeed()D

    .line 54
    move-result-wide v2

    .line 55
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 58
    move-result-wide v0

    .line 59
    const-string v2, "max_speed"

    .line 61
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putDouble(Ljava/lang/String;D)V

    .line 64
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    .line 66
    const-string v1, "finish_step"

    .line 68
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->failExceptionAndMsg:Ljava/lang/String;

    .line 73
    const-string v1, "fail_exception_and_msg"

    .line 75
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getTransferSize()J

    .line 81
    move-result-wide v0

    .line 82
    const-string v2, "transfer_size"

    .line 84
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 87
    iget-boolean v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->isPausedByNetwork:Z

    .line 89
    const-string v1, "is_paused_by_network"

    .line 91
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method private recordEvent()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkForRecordEvent()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->getTransferSize()J

    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, -0x1

    .line 14
    cmp-long v0, v0, v2

    .line 16
    if-nez v0, :cond_20

    .line 18
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    .line 20
    sget-object v1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_20

    .line 32
    return-void

    .line 33
    :cond_20
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 35
    const/16 v1, 0xe

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 40
    const-string v1, "transfer_task_result"

    .line 42
    const-string v2, "1096.0.0.0.27300"

    .line 44
    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private resetValForNecessary(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)V
    .registers 4

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 6
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 9
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 12
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 15
    return-void
.end method


# virtual methods
.method public calculateMaxSpeed(J)V
    .registers 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 7
    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, -0x1

    .line 13
    cmp-long v2, v2, v4

    .line 15
    if-nez v2, :cond_25

    .line 17
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 19
    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 22
    move-result-wide v2

    .line 23
    cmp-long v2, v2, v4

    .line 25
    if-nez v2, :cond_25

    .line 27
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 29
    invoke-static {v2, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 32
    iget-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 34
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 37
    return-void

    .line 38
    :cond_25
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 40
    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 43
    move-result-wide v2

    .line 44
    sub-long v2, v0, v2

    .line 46
    const-wide/16 v4, 0x3e8

    .line 48
    cmp-long v2, v2, v4

    .line 50
    if-gez v2, :cond_34

    .line 52
    return-void

    .line 53
    :cond_34
    iget-object v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 55
    invoke-static {v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 58
    move-result-wide v2

    .line 59
    sub-long v2, p1, v2

    .line 61
    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 63
    invoke-static {v4}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 66
    move-result-wide v4

    .line 67
    sub-long v4, v0, v4

    .line 69
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->calculateSpeed(JJ)D

    .line 72
    move-result-wide v2

    .line 73
    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 75
    invoke-static {v4, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 78
    iget-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 80
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 83
    iget-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->maxSpeed:D

    .line 85
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    .line 88
    move-result-wide p1

    .line 89
    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->maxSpeed:D

    .line 91
    return-void
.end method

.method public recordEventByStopInfo(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V
    .registers 3

    .line 1
    if-nez p1, :cond_b

    .line 3
    sget-object p1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    .line 11
    goto :goto_30

    .line 12
    :cond_b
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    sget-object p1, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->CANCEL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    .line 26
    goto :goto_30

    .line 27
    :cond_1a
    sget-object v0, Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/TransferTaskResultStat$Result;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->result:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->lastStep:Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 37
    iget-object v0, v0, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->stepName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    .line 41
    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 43
    invoke-static {p1}, Lcom/micloud/midrive/stat/StatUtils;->getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->failExceptionAndMsg:Ljava/lang/String;

    .line 49
    :goto_30
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->recordEvent()V

    .line 52
    return-void
.end method

.method public recordTaskEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordTaskStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordTransferEnd()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    .line 10
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v1

    .line 16
    iget-object v3, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 18
    invoke-static {v3}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 21
    move-result-wide v3

    .line 22
    sub-long/2addr v1, v3

    .line 23
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$214(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordTransferPause()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    .line 10
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 12
    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 15
    move-result-wide v0

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->checkTimestamp(J)V

    .line 19
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v2

    .line 25
    iget-object v4, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 27
    invoke-static {v4}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v2, v4

    .line 32
    add-long/2addr v2, v0

    .line 33
    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->execTotalTime:J

    .line 35
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    move-result-wide v1

    .line 41
    iget-object v3, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 43
    invoke-static {v3}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 46
    move-result-wide v3

    .line 47
    sub-long/2addr v1, v3

    .line 48
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$214(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->isPausedByNetwork:Z

    .line 54
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 56
    invoke-direct {p0, v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat;->resetValForNecessary(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)V

    .line 59
    return-void
.end method

.method public recordTransferStart()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 10
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 12
    invoke-static {v0}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J

    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, -0x1

    .line 18
    cmp-long v0, v0, v2

    .line 20
    if-nez v0, :cond_1e

    .line 22
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v1

    .line 28
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 31
    :cond_1e
    return-void
.end method

.method public setFileSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->fileSize:J

    .line 3
    return-void
.end method

.method public setFinishStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)V
    .registers 2

    .line 1
    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->stepName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->finishStep:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public setStartPos(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat;->helperVar:Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->access$302(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J

    .line 6
    return-void
.end method
