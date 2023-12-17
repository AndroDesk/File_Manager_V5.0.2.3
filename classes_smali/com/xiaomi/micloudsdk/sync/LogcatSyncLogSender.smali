.class Lcom/xiaomi/micloudsdk/sync/LogcatSyncLogSender;
.super Lcom/xiaomi/micloudsdk/sync/SyncLogSender;
.source "LogcatSyncLogSender.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;-><init>()V

    return-void
.end method


# virtual methods
.method public openSyncLog()V
    .registers 1

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public sendLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
