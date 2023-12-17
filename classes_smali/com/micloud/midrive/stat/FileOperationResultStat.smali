.class public Lcom/micloud/midrive/stat/FileOperationResultStat;
.super Ljava/lang/Object;
.source "FileOperationResultStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/stat/FileOperationResultStat$OperationType;,
        Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;,
        Lcom/micloud/midrive/stat/FileOperationResultStat$Result;
    }
.end annotation


# instance fields
.field private cloudFileCount:I

.field private errorExceptionAndMsg:Ljava/lang/String;

.field private errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field private execFileOperationTime:J

.field private execGetSyncFileInfoTime:J

.field private execOperationQueryTime:J

.field private execTotalTime:J

.field private insertDBTime:J

.field private localFileCount:I

.field private operateDBTime:J

.field private final operateType:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private final timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

.field private totalFileCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateType:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 8
    invoke-direct {p1}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->lambda$recordSuccessEventIfErrorNotSet$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

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

.method private synthetic lambda$recordSuccessEventIfErrorNotSet$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateType:Ljava/lang/String;

    .line 3
    const-string v1, "operation_type"

    .line 5
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->totalFileCount:I

    .line 10
    const-string v1, "total_file_count"

    .line 12
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 15
    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->cloudFileCount:I

    .line 17
    const-string v1, "cloud_file_count"

    .line 19
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 22
    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->localFileCount:I

    .line 24
    const-string v1, "local_file_count"

    .line 26
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    .line 29
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execFileOperationTime:J

    .line 31
    const-string v2, "exec_file_operation_time"

    .line 33
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 36
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execOperationQueryTime:J

    .line 38
    const-string v2, "exec_operation_query_time"

    .line 40
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 43
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execGetSyncFileInfoTime:J

    .line 45
    const-string v2, "exec_get_sync_file_info_time"

    .line 47
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 50
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->insertDBTime:J

    .line 52
    const-string v2, "insert_db_time"

    .line 54
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 57
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateDBTime:J

    .line 59
    const-string v2, "operate_db_time"

    .line 61
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 64
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execTotalTime:J

    .line 66
    const-string v2, "exec_total_time"

    .line 68
    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    .line 71
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorExceptionAndMsg:Ljava/lang/String;

    .line 73
    const-string v1, "fail_exception_and_msg"

    .line 75
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 80
    if-nez v0, :cond_53

    .line 82
    const/4 v0, 0x0

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    :goto_57
    const-string v1, "fail_error_type"

    .line 90
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->result:Ljava/lang/String;

    .line 95
    const-string v1, "result"

    .line 97
    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public recordExecGetSyncFileInfoEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$300(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execGetSyncFileInfoTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$300(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execGetSyncFileInfoTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$302(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordExecGetSyncFileInfoStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$302(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordInsertDBEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$200(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->insertDBTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$200(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->insertDBTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$202(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordInsertDBStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$202(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordOperateDBEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$100(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateDBTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$100(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateDBTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$102(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordOperateDBStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$102(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordOperationEnd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$000(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    .line 10
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execTotalTime:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 18
    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$000(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    add-long/2addr v2, v0

    .line 24
    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execTotalTime:J

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$002(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 33
    return-void
.end method

.method public recordOperationStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$002(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    .line 10
    return-void
.end method

.method public recordSuccessEventIfErrorNotSet()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 3
    if-nez v0, :cond_7

    .line 5
    sget-object v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    .line 10
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->result:Ljava/lang/String;

    .line 16
    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->totalFileCount:I

    .line 18
    if-gtz v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    .line 23
    const/16 v1, 0xb

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 28
    const-string v1, "file_operation_result"

    .line 30
    const-string v2, "1096.0.0.0.27298"

    .line 32
    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setCloudFileCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->cloudFileCount:I

    .line 3
    return-void
.end method

.method public setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 3
    invoke-static {p2}, Lcom/micloud/midrive/stat/StatUtils;->getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorExceptionAndMsg:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public setFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execFileOperationTime:J

    .line 6
    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->fileOperationTime:J

    .line 8
    add-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execFileOperationTime:J

    .line 11
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execOperationQueryTime:J

    .line 13
    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->operationQueryTime:J

    .line 15
    add-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execOperationQueryTime:J

    .line 18
    return-void
.end method

.method public setLocalFileCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->localFileCount:I

    .line 3
    return-void
.end method

.method public setTotalFileCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->totalFileCount:I

    .line 3
    return-void
.end method
