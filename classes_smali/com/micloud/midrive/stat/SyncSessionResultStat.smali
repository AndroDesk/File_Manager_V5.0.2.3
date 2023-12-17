.class public Lcom/micloud/midrive/stat/SyncSessionResultStat;
.super Ljava/lang/Object;
.source "SyncSessionResultStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;,
        Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;
    }
.end annotation


# static fields
.field private static volatile sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;


# instance fields
.field private deleteCount:I

.field private execFileOperationTime:J

.field private execGetSyncFileInfoTime:J

.field private execOperationQueryTime:J

.field private execRequestFileTime:J

.field private execTotalTime:J

.field private failExceptionAndMsg:Ljava/lang/String;

.field private finishStep:Ljava/lang/String;

.field private handleSyncFileTime:J

.field private final helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

.field private insertDBTime:J

.field private modifyCount:I

.field private moveCount:I

.field private pushToSessionStartTime:J

.field private renameCount:I

.field private result:Ljava/lang/String;

.field private startTimeMillsOfDay:J

.field private syncTotalCount:I

.field private transferCount:I

.field private updateStatusTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-direct {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/SyncSessionResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->lambda$recordEventAndRelease$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
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

.method public static getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;
    .registers 2

    sget-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    if-nez v0, :cond_17

    const-class v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    if-nez v1, :cond_12

    new-instance v1, Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-direct {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;-><init>()V

    sput-object v1, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    return-object v0
.end method

.method private getMillsOfDay()J
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long v4, v0, v2

    mul-long/2addr v4, v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    return-wide v0
.end method

.method private synthetic lambda$recordEventAndRelease$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 5

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execTotalTime:J

    const-string v2, "exec_total_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->startTimeMillsOfDay:J

    const-string v2, "start_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execRequestFileTime:J

    const-string v2, "exec_request_file_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->insertDBTime:J

    const-string v2, "insert_db_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->updateStatusTime:J

    const-string v2, "update_status_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->handleSyncFileTime:J

    const-string v2, "handle_sync_file_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->pushToSessionStartTime:J

    const-string v2, "push_to_session_start_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execFileOperationTime:J

    const-string v2, "exec_file_operation_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execOperationQueryTime:J

    const-string v2, "exec_operation_query_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execGetSyncFileInfoTime:J

    const-string v2, "exec_get_sync_file_info_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->syncTotalCount:I

    const-string v1, "sync_file_total_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->moveCount:I

    const-string v1, "move_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->deleteCount:I

    const-string v1, "delete_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->renameCount:I

    const-string v1, "rename_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->modifyCount:I

    const-string v1, "modify_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->transferCount:I

    const-string v1, "transfer_file_total_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->finishStep:Ljava/lang/String;

    const-string v1, "finish_step"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->failExceptionAndMsg:Ljava/lang/String;

    const-string v1, "fail_exception_and_msg"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    const-string v1, "result"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private recordEventAndRelease()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "syncSessionStat result is null, ignore"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void

    :cond_10
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    const-string v1, "sync_session_result"

    const-string v2, "1096.0.0.0.27294"

    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->release()V

    return-void
.end method

.method private release()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    return-void
.end method


# virtual methods
.method public increaseDeleteCount()V
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->deleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->deleteCount:I

    return-void
.end method

.method public increaseModifyCount()V
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->modifyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->modifyCount:I

    return-void
.end method

.method public increaseMoveCount()V
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->moveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->moveCount:I

    return-void
.end method

.method public increaseRenameCount()V
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->renameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->renameCount:I

    return-void
.end method

.method public increaseTransferCount()V
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->transferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->transferCount:I

    return-void
.end method

.method public recordEventByStopInfoAndRelease(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V
    .registers 3

    if-nez p1, :cond_b

    sget-object p1, Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    goto :goto_2a

    :cond_b
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p1, Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;->CANCEL:Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    goto :goto_2a

    :cond_1a
    sget-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    invoke-static {p1}, Lcom/micloud/midrive/stat/StatUtils;->getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->failExceptionAndMsg:Ljava/lang/String;

    :goto_2a
    invoke-direct {p0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordEventAndRelease()V

    return-void
.end method

.method public recordGetSyncFileInfoEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$600(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execGetSyncFileInfoTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$600(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execGetSyncFileInfoTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$602(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordGetSyncFileInfoStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$602(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordHandleSyncFileEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->handleSyncFileTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->handleSyncFileTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordHandleSyncFileStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordInsertDBEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$300(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->insertDBTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$300(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->insertDBTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$302(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordInsertDBStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$302(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordPushArrived()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordRequestFileEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$200(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execRequestFileTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$200(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execRequestFileTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$202(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordRequestFileStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$202(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordSyncSessionEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execTotalTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const-wide/16 v0, 0x0

    goto :goto_35

    :cond_28
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    :goto_35
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->pushToSessionStartTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0, v2, v3}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordSyncSessionStart()V
    .registers 4

    invoke-direct {p0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getMillsOfDay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->startTimeMillsOfDay:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordUpdateSyncStatusEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->updateStatusTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->updateStatusTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public recordUpdateSyncStatusStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    return-void
.end method

.method public setExecFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execFileOperationTime:J

    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->fileOperationTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execFileOperationTime:J

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execOperationQueryTime:J

    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->operationQueryTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execOperationQueryTime:J

    return-void
.end method

.method public setFinishStep(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->finishStep:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    return-void
.end method

.method public setSyncTotalCount(I)V
    .registers 2

    iput p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->syncTotalCount:I

    return-void
.end method
