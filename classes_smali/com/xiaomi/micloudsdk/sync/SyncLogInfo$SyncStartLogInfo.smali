.class Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;
.super Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;
.source "SyncLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncStartLogInfo"
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mStartTime:J

    iput-object p4, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public generateLogInfoString()Ljava/lang/String;
    .registers 6

    const-string v0, "Start Sync"

    const-string v1, ":{"

    const-string v2, "authority:"

    invoke-static {v0, v1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->authority:Ljava/lang/String;

    const-string v2, ", "

    const-string v3, "start:"

    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mStartTime:J

    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->appendSyncExtras(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
