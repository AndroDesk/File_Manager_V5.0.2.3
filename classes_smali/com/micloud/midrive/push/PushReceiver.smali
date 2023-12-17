.class public Lcom/micloud/midrive/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "watermark changed, try sync"

    .line 7
    aput-object v1, p2, v0

    .line 9
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 15
    move-result-object p2

    .line 16
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_18

    .line 22
    invoke-virtual {p2}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordPushArrived()V

    .line 25
    :cond_18
    invoke-static {p1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 28
    return-void
.end method
