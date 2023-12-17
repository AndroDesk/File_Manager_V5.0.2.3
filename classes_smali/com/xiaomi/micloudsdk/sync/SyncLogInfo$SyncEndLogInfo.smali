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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJLjava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mIsSuccess:Z

    iput-wide p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mStartTime:J

    iput-wide p5, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mEndTime:J

    if-nez p7, :cond_10

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mErrorMsg:Ljava/lang/String;

    goto :goto_12

    :cond_10
    iput-object p7, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mErrorMsg:Ljava/lang/String;

    :goto_12
    return-void
.end method


# virtual methods
.method public generateLogInfoString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mIsSuccess:Z

    if-eqz v1, :cond_c

    const-string v1, "Success"

    goto :goto_e

    :cond_c
    const-string v1, "Error"

    :goto_e
    const-string v2, ":{"

    const-string v3, "authority:"

    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->authority:Ljava/lang/String;

    const-string v2, ", "

    const-string v3, "start:"

    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mStartTime:J

    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "end:"

    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mEndTime:J

    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "delta:"

    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mStartTime:J

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mEndTime:J

    invoke-static {v3, v4, v5, v6}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->getDeltaTime(JJ)Ljava/lang/String;

    move-result-object v1

    const-string v3, "error:"

    invoke-static {v0, v1, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->mErrorMsg:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
