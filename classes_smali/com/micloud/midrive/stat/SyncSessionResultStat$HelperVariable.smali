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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->startTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execGetSyncFileInfoTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execRequestFileTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->insertDBTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->updateStatusTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->handleSyncFileTimestamp:J

    iput-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->pushTimestamp:J

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->startTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->startTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->pushTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->pushTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execRequestFileTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$202(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execRequestFileTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->insertDBTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$302(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->insertDBTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->updateStatusTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$402(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->updateStatusTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->handleSyncFileTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$502(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->handleSyncFileTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;)J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execGetSyncFileInfoTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$602(Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/stat/SyncSessionResultStat$HelperVariable;->execGetSyncFileInfoTimestamp:J

    return-wide p1
.end method
