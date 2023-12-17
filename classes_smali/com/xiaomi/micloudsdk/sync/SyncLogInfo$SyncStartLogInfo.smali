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
.method public constructor <init>(Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;-><init>(Ljava/lang/String;)V

    .line 4
    iput-wide p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mStartTime:J

    .line 6
    iput-object p4, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mExtras:Landroid/os/Bundle;

    .line 8
    return-void
.end method


# virtual methods
.method public generateLogInfoString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "Start Sync"

    .line 3
    const-string v1, ":{"

    .line 5
    const-string v2, "authority:"

    .line 7
    invoke-static {v0, v1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->authority:Ljava/lang/String;

    .line 13
    const-string v2, ", "

    .line 15
    const-string v3, "start:"

    .line 17
    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mStartTime:J

    .line 22
    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->formatTime(J)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->mExtras:Landroid/os/Bundle;

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->appendSyncExtras(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "}"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
