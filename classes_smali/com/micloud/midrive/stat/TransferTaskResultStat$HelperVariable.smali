.class Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;
.super Ljava/lang/Object;
.source "TransferTaskResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/TransferTaskResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelperVariable"
.end annotation


# static fields
.field public static final CALCULATE_MAX_SPEED_INTERVAL:J = 0x3e8L


# instance fields
.field private lastPos:J

.field private lastPosTimestamp:J

.field private startPos:J

.field private startTaskTimestamp:J

.field private startTransferTimestamp:J

.field private transferTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTransferTimestamp:J

    .line 8
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTaskTimestamp:J

    .line 10
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPos:J

    .line 12
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPosTimestamp:J

    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTaskTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTaskTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTransferTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTransferTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->transferTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$214(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->transferTime:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->transferTime:J

    .line 6
    return-wide v0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startPos:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$302(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startPos:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPos:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPos:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPosTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPosTimestamp:J

    .line 3
    return-wide p1
.end method
