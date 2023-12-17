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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTransferTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTaskTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPos:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPosTimestamp:J

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTaskTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTaskTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTransferTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startTransferTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->transferTime:J

    return-wide v0
.end method

.method public static synthetic access$214(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 5

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->transferTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->transferTime:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startPos:J

    return-wide v0
.end method

.method public static synthetic access$302(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->startPos:J

    return-wide p1
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPos:J

    return-wide v0
.end method

.method public static synthetic access$402(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPos:J

    return-wide p1
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPosTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$502(Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/TransferTaskResultStat$HelperVariable;->lastPosTimestamp:J

    return-wide p1
.end method
