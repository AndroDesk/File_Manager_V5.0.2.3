.class Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;
.super Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;
.source "SyncLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncEndLogInfo"
.end annotation


# instance fields
.field private final mEndTime:J

.field private final mErrorMsg:Ljava/lang/String;

.field private final mIsSuccess:Z

.field private final mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJJLjava/lang/String;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;-><init>(Ljava/lang/String;)V

    .line 4
    iput-boolean p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mIsSuccess:Z

    .line 6
    iput-wide p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mStartTime:J

    .line 8
    iput-wide p5, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mEndTime:J

    .line 10
    if-nez p7, :cond_10

    .line 12
    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mErrorMsg:Ljava/lang/String;

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    iput-object p7, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mErrorMsg:Ljava/lang/String;

    .line 19
    :goto_12
    return-void
.end method


# virtual methods
.method public generateLogInfoString()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mIsSuccess:Z

    .line 8
    if-eqz v1, :cond_c

    .line 10
    const-string v1, "Success"

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-string v1, "Error"

    .line 15
    :goto_e
    const-string v2, ":{"

    .line 17
    const-string v3, "authority:"

    .line 19
    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->authority:Ljava/lang/String;

    .line 24
    const-string v2, ", "

    .line 26
    const-string v3, "start:"

    .line 28
    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mStartTime:J

    .line 33
    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->formatTime(J)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const-string v3, "end:"

    .line 39
    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mEndTime:J

    .line 44
    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->formatTime(J)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string v3, "delta:"

    .line 50
    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mStartTime:J

    .line 55
    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mEndTime:J

    .line 57
    invoke-static {v3, v4, v5, v6}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->getDeltaTime(JJ)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    const-string v3, "error:"

    .line 63
    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mErrorMsg:Ljava/lang/String;

    .line 68
    const-string v2, "}"

    .line 70
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method
