.class Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;
.super Ljava/lang/Object;
.source "FileOperationResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/FileOperationResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeHelperVariable"
.end annotation


# instance fields
.field private insertDBTimestamp:J

.field private methodStartTimestamp:J

.field private operationDBTimestamp:J

.field private startExecGetSyncFileInfoTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->methodStartTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->insertDBTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->operationDBTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->startExecGetSyncFileInfoTimestamp:J

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->methodStartTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->methodStartTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->operationDBTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->operationDBTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->insertDBTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$202(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->insertDBTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->startExecGetSyncFileInfoTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$302(Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/FileOperationResultStat$TimeHelperVariable;->startExecGetSyncFileInfoTimestamp:J

    return-wide p1
.end method
