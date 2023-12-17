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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/common/XWrapper;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lmiui/cloud/common/XBroadcast$1;->val$result:Lmiui/cloud/common/XWrapper;

    iput-object p2, p0, Lmiui/cloud/common/XBroadcast$1;->val$cl:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "result received. "

    aput-object v1, p2, v0

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    iget-object p2, p0, Lmiui/cloud/common/XBroadcast$1;->val$result:Lmiui/cloud/common/XWrapper;

    new-instance v0, Lmiui/cloud/common/XBroadcast$BroadcastResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lmiui/cloud/common/XBroadcast$BroadcastResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lmiui/cloud/common/XBroadcast$1;->val$cl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
