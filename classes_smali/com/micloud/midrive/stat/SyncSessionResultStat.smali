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
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 6
    invoke-direct {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/SyncSessionResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->lambda$recordEventAndRelease$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

    return-void
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

.method public static getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 14
    invoke-direct {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;-><init>()V

    .line 17
    sput-object v1, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 26
    return-object v0
.end method

.method private getMillsOfDay()J
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x5265c00

    .line 8
    div-long v4, v0, v2

    .line 10
    mul-long/2addr v4, v2

    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    .line 18
    move-result v2

    .line 19
    int-to-long v2, v2

    .line 20
    sub-long/2addr v4, v2

    .line 21
    sub-long/2addr v0, v4

    .line 22
    return-wide v0
.end method

.method private synthetic lambda$recordEventAndRelease$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execTotalTime:J

    .line 3
    const-string v2, "exec_total_time"

    .line 5
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 8
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->startTimeMillsOfDay:J

    .line 10
    const-string v2, "start_time"

    .line 12
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execRequestFileTime:J

    .line 17
    const-string v2, "exec_request_file_time"

    .line 19
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 22
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->insertDBTime:J

    .line 24
    const-string v2, "insert_db_time"

    .line 26
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 29
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->updateStatusTime:J

    .line 31
    const-string v2, "update_status_time"

    .line 33
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 36
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->handleSyncFileTime:J

    .line 38
    const-string v2, "handle_sync_file_time"

    .line 40
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 43
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->pushToSessionStartTime:J

    .line 45
    const-string v2, "push_to_session_start_time"

    .line 47
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 50
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execFileOperationTime:J

    .line 52
    const-string v2, "exec_file_operation_time"

    .line 54
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 57
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execOperationQueryTime:J

    .line 59
    const-string v2, "exec_operation_query_time"

    .line 61
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 64
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execGetSyncFileInfoTime:J

    .line 66
    const-string v2, "exec_get_sync_file_info_time"

    .line 68
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 71
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->syncTotalCount:I

    .line 73
    const-string v1, "sync_file_total_count"

    .line 75
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 78
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->moveCount:I

    .line 80
    const-string v1, "move_count"

    .line 82
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 85
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->deleteCount:I

    .line 87
    const-string v1, "delete_count"

    .line 89
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 92
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->renameCount:I

    .line 94
    const-string v1, "rename_count"

    .line 96
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 99
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->modifyCount:I

    .line 101
    const-string v1, "modify_count"

    .line 103
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 106
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->transferCount:I

    .line 108
    const-string v1, "transfer_file_total_count"

    .line 110
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->finishStep:Ljava/lang/String;

    .line 115
    const-string v1, "finish_step"

    .line 117
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->failExceptionAndMsg:Ljava/lang/String;

    .line 122
    const-string v1, "fail_exception_and_msg"

    .line 124
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    .line 129
    const-string v1, "result"

    .line 131
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private recordEventAndRelease()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_10

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "syncSessionStat result is null, ignore"

    .line 11
    aput-object v2, v0, v1

    .line 13
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 19
    const/16 v1, 0xc

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 24
    const-string v1, "sync_session_result"

    .line 26
    const-string v2, "1096.0.0.0.27294"

    .line 28
    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->release()V

    .line 34
    return-void
.end method

.method private release()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->sessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 4
    return-void
.end method


# virtual methods
.method public increaseDeleteCount()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->deleteCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->deleteCount:I

    .line 7
    return-void
.end method

.method public increaseModifyCount()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->modifyCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->modifyCount:I

    .line 7
    return-void
.end method

.method public increaseMoveCount()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->moveCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->moveCount:I

    .line 7
    return-void
.end method

.method public increaseRenameCount()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->renameCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->renameCount:I

    .line 7
    return-void
.end method

.method public increaseTransferCount()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->transferCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->transferCount:I

    .line 7
    return-void
.end method

.method public recordEventByStopInfoAndRelease(Lcom/micloud/midrive/task/BaseTask$StopInfo;)V
    .registers 3

    .line 1
    if-nez p1, :cond_b

    .line 3
    sget-object p1, Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    .line 11
    goto :goto_2a

    .line 12
    :cond_b
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    sget-object p1, Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;->CANCEL:Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    .line 26
    goto :goto_2a

    .line 27
    :cond_1a
    sget-object v0, Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/SyncSessionResultStat$Result;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    .line 35
    iget-object p1, p1, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 37
    invoke-static {p1}, Lcom/micloud/midrive/stat/StatUtils;->getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->failExceptionAndMsg:Ljava/lang/String;

    .line 43
    :goto_2a
    invoke-direct {p0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordEventAndRelease()V

    .line 46
    return-void
.end method

.method public recordGetSyncFileInfoEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$600(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execGetSyncFileInfoTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$600(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execGetSyncFileInfoTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$602(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordGetSyncFileInfoStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$602(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordHandleSyncFileEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->handleSyncFileTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$500(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->handleSyncFileTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordHandleSyncFileStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$502(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordInsertDBEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$300(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->insertDBTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$300(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->insertDBTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$302(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordInsertDBStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$302(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordPushArrived()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$102(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordRequestFileEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$200(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execRequestFileTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$200(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execRequestFileTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$202(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordRequestFileStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$202(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordSyncSessionEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execTotalTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execTotalTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 28
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, -0x1

    .line 34
    cmp-long v0, v0, v2

    .line 36
    if-nez v0, :cond_28

    .line 38
    const-wide/16 v0, 0x0

    .line 40
    goto :goto_35

    .line 41
    :cond_28
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 43
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 46
    move-result-wide v0

    .line 47
    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 49
    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$100(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 52
    move-result-wide v4

    .line 53
    sub-long/2addr v0, v4

    .line 54
    :goto_35
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->pushToSessionStartTime:J

    .line 56
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 58
    invoke-static {v0, v2, v3}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 61
    return-void
.end method

.method public recordSyncSessionStart()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getMillsOfDay()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->startTimeMillsOfDay:J

    .line 7
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$002(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 16
    return-void
.end method

.method public recordUpdateSyncStatusEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->updateStatusTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$400(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->updateStatusTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordUpdateSyncStatusStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->helperVar:Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->access$402(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J

    .line 10
    return-void
.end method

.method public setExecFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execFileOperationTime:J

    .line 6
    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->fileOperationTime:J

    .line 8
    add-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execFileOperationTime:J

    .line 11
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execOperationQueryTime:J

    .line 13
    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->operationQueryTime:J

    .line 15
    add-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->execOperationQueryTime:J

    .line 18
    return-void
.end method

.method public setFinishStep(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->finishStep:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->result:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSyncTotalCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat;->syncTotalCount:I

    .line 3
    return-void
.end method
