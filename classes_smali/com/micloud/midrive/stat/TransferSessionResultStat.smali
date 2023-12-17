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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->sessionType:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/TransferSessionResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
.end method

.method private checkCountAndSize()Z
    .registers 5

    iget v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
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

.method private continueTimingIfPause()V
    .registers 5

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    return-void
.end method

.method private synthetic lambda$recordEvent$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->sessionType:Ljava/lang/String;

    const-string v1, "transfer_type"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    const-string v2, "exec_total_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    const-string v2, "files_total_size"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    const-string v1, "finish_count_without_cancel"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->isPausedByNetwork:Z

    const-string v1, "is_paused_by_network"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private pauseTiming()V
    .registers 7

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->isPausedByNetwork:Z

    return-void
.end method


# virtual methods
.method public increaseFinishCountAndSize(J)V
    .registers 5

    iget v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->finishCountWithoutCancel:I

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->filesTotalSize:J

    return-void
.end method

.method public recordEvent()V
    .registers 4

    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->checkCountAndSize()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "transfer count or size is zero"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void

    :cond_12
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    const-string v1, "transfer_session_result"

    const-string v2, "1096.0.0.0.27299"

    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public recordSessionEnd()V
    .registers 7

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->execTotalTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    return-void
.end method

.method public recordSessionStart()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferSessionResultStat;->startExecTimeStamp:J

    return-void
.end method

.method public recordWaitNetwork(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->pauseTiming()V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->continueTimingIfPause()V

    :goto_9
    return-void
.end method
