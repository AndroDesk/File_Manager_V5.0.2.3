.class Lcom/micloud/midrive/session/helper/SessionHelper$1;
.super Ljava/lang/Object;
.source "SessionHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/helper/ActionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/helper/SessionHelper;->changeFreeNetworkOnlyForAutoSyncJob(Landroid/content/Context;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$1;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionResult(Landroid/os/AsyncTask;Z)V
    .registers 4

    .line 1
    if-eqz p2, :cond_20

    .line 3
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getSession()Lcom/micloud/midrive/session/TransferSession;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setRequiredNetworkChanged()V

    .line 18
    :cond_11
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 20
    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getSession()Lcom/micloud/midrive/session/TransferSession;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_20

    .line 30
    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setRequiredNetworkChanged()V

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$1;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 35
    if-eqz v0, :cond_27

    .line 37
    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    .line 40
    :cond_27
    return-void
.end method
