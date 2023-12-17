.class public Lcom/micloud/midrive/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "watermark changed, try sync"

    aput-object v1, p2, v0

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;

    move-result-object p2

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p2}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordPushArrived()V

    :cond_18
    invoke-static {p1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    return-void
.end method
