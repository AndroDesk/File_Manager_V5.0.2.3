.class public Lcom/micloud/midrive/stat/TransferSessionResultStat;
.super Ljava/lang/Object;
.source "TransferSessionResultStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/stat/TransferSessionResultStat$SessionType;
    }
.end annotation


# instance fields
.field private execTotalTime:J

.field private filesTotalSize:J

.field private finishCountWithoutCancel:I

.field private isPausedByNetwork:Z

.field private final sessionType:Ljava/lang/String;

.field private startExecTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->sessionType:Ljava/lang/String;

    .line 6
    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/TransferSessionResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
.end method

.method private checkCountAndSize()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v0, v0, v2

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
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

.method private continueTimingIfPause()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 3
    const-wide/16 v2, -0x1

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 16
    return-void
.end method

.method private synthetic lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->sessionType:Ljava/lang/String;

    .line 3
    const-string v1, "transfer_type"

    .line 5
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    .line 10
    const-string v2, "exec_total_time"

    .line 12
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    .line 17
    const-string v2, "files_total_size"

    .line 19
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 22
    iget v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    .line 24
    const-string v1, "finish_count_without_cancel"

    .line 26
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 29
    iget-boolean v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->isPausedByNetwork:Z

    .line 31
    const-string v1, "is_paused_by_network"

    .line 33
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method private pauseTiming()V
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->checkTimestamp(J)V

    .line 6
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 14
    sub-long/2addr v2, v4

    .line 15
    add-long/2addr v2, v0

    .line 16
    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    .line 18
    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->isPausedByNetwork:Z

    .line 25
    return-void
.end method


# virtual methods
.method public increaseFinishCountAndSize(J)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    .line 7
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    .line 9
    add-long/2addr v0, p1

    .line 10
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    .line 12
    return-void
.end method

.method public recordEvent()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->checkCountAndSize()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_12

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "transfer count or size is zero"

    .line 13
    aput-object v2, v0, v1

    .line 15
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 21
    const/16 v1, 0xd

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 26
    const-string v1, "transfer_session_result"

    .line 28
    const-string v2, "1096.0.0.0.27299"

    .line 30
    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public recordSessionEnd()V
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->checkTimestamp(J)V

    .line 6
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 14
    sub-long/2addr v2, v4

    .line 15
    add-long/2addr v2, v0

    .line 16
    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    .line 18
    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 22
    return-void
.end method

.method public recordSessionStart()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    .line 7
    return-void
.end method

.method public recordWaitNetwork(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->pauseTiming()V

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->continueTimingIfPause()V

    .line 10
    :goto_9
    return-void
.end method
