.class Lmiui/cloud/common/XBroadcast$1;
.super Landroid/content/BroadcastReceiver;
.source "XBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/XBroadcast;->syncSendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Lmiui/cloud/common/XBroadcast$BroadcastResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$cl:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$result:Lmiui/cloud/common/XWrapper;


# direct methods
.method public constructor <init>(Lmiui/cloud/common/XWrapper;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiui/cloud/common/XBroadcast$1;->val$result:Lmiui/cloud/common/XWrapper;

    .line 3
    iput-object p2, p0, Lmiui/cloud/common/XBroadcast$1;->val$cl:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p2, p1, [Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "result received. "

    .line 7
    aput-object v1, p2, v0

    .line 9
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lmiui/cloud/common/XBroadcast$1;->val$result:Lmiui/cloud/common/XWrapper;

    .line 14
    new-instance v0, Lmiui/cloud/common/XBroadcast$BroadcastResult;

    .line 16
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, v1, v2, p1}, Lmiui/cloud/common/XBroadcast$BroadcastResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p2, v0}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lmiui/cloud/common/XBroadcast$1;->val$cl:Ljava/util/concurrent/CountDownLatch;

    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 39
    return-void
.end method
