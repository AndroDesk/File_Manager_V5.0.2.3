.class Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;
.super Ljava/lang/Object;
.source "SyncSessionResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/SyncSessionResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelperVariable"
.end annotation


# instance fields
.field private execGetSyncFileInfoTimestamp:J

.field private execRequestFileTimestamp:J

.field private handleSyncFileTimestamp:J

.field private insertDBTimestamp:J

.field private pushTimestamp:J

.field private startTimestamp:J

.field private updateStatusTimestamp:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->startTimestamp:J

    .line 8
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execGetSyncFileInfoTimestamp:J

    .line 10
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execRequestFileTimestamp:J

    .line 12
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->insertDBTimestamp:J

    .line 14
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->updateStatusTimestamp:J

    .line 16
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->handleSyncFileTimestamp:J

    .line 18
    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->pushTimestamp:J

    .line 20
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->startTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$002(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->startTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->pushTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->pushTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execRequestFileTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$202(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execRequestFileTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->insertDBTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$302(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->insertDBTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->updateStatusTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$402(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->updateStatusTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->handleSyncFileTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$502(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->handleSyncFileTimestamp:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execGetSyncFileInfoTimestamp:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$602(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execGetSyncFileInfoTimestamp:J

    .line 3
    return-wide p1
.end method
