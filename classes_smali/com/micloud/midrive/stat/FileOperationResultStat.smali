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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateType:Ljava/lang/String;

    new-instance p1, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-direct {p1}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->lambda$recordSuccessEventIfErrorNotSet$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V

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

.method private synthetic lambda$recordSuccessEventIfErrorNotSet$0(Lcom/micloud/midrive/helper/StatHelper$IStatParam;)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateType:Ljava/lang/String;

    const-string v1, "operation_type"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->totalFileCount:I

    const-string v1, "total_file_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->cloudFileCount:I

    const-string v1, "cloud_file_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->localFileCount:I

    const-string v1, "local_file_count"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putInt(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execFileOperationTime:J

    const-string v2, "exec_file_operation_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execOperationQueryTime:J

    const-string v2, "exec_operation_query_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execGetSyncFileInfoTime:J

    const-string v2, "exec_get_sync_file_info_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->insertDBTime:J

    const-string v2, "insert_db_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateDBTime:J

    const-string v2, "operate_db_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execTotalTime:J

    const-string v2, "exec_total_time"

    invoke-interface {p1, v2, v0, v1}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorExceptionAndMsg:Ljava/lang/String;

    const-string v1, "fail_exception_and_msg"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-nez v0, :cond_53

    const/4 v0, 0x0

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_57
    const-string v1, "fail_error_type"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->result:Ljava/lang/String;

    const-string v1, "result"

    invoke-interface {p1, v1, v0}, Lcom/micloud/midrive/helper/StatHelper$IStatParam;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public recordExecGetSyncFileInfoEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$300(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execGetSyncFileInfoTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$300(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execGetSyncFileInfoTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$302(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordExecGetSyncFileInfoStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$302(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordInsertDBEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$200(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->insertDBTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$200(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->insertDBTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$202(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordInsertDBStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$202(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordOperateDBEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$100(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateDBTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$100(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->operateDBTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$102(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordOperateDBStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$102(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordOperationEnd()V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$000(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->checkTimestamp(J)V

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {v4}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$000(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execTotalTime:J

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$002(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordOperationStart()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->timeVariable:Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->access$002(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J

    return-void
.end method

.method public recordSuccessEventIfErrorNotSet()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-nez v0, :cond_7

    sget-object v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->SUCCESS:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/micloud/midrive/stat/FileOperationResultStat$Result;->FAIL:Lcom/micloud/midrive/stat/FileOperationResultStat$Result;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->result:Ljava/lang/String;

    iget v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->totalFileCount:I

    if-gtz v0, :cond_14

    return-void

    :cond_14
    new-instance v0, Lcom/android/cloud/fragment/presenter/b;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    const-string v1, "file_operation_result"

    const-string v2, "1096.0.0.0.27298"

    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/helper/StatHelper;->recordEvent(Ljava/lang/String;Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public setCloudFileCount(I)V
    .registers 2

    iput p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->cloudFileCount:I

    return-void
.end method

.method public setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorType:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p2}, Lcom/micloud/midrive/stat/StatUtils;->getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->errorExceptionAndMsg:Ljava/lang/String;

    return-void
.end method

.method public setFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execFileOperationTime:J

    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->fileOperationTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execFileOperationTime:J

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execOperationQueryTime:J

    iget-wide v2, p1, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->operationQueryTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->execOperationQueryTime:J

    return-void
.end method

.method public setLocalFileCount(I)V
    .registers 2

    iput p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->localFileCount:I

    return-void
.end method

.method public setTotalFileCount(I)V
    .registers 2

    iput p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat;->totalFileCount:I

    return-void
.end method
