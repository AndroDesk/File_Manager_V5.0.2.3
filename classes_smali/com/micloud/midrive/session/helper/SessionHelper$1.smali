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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$1;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Landroid/os/AsyncTask;Z)V
    .registers 4

    if-eqz p2, :cond_20

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getSession()Lcom/micloud/midrive/session/TransferSession;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setRequiredNetworkChanged()V

    :cond_11
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getSession()Lcom/micloud/midrive/session/TransferSession;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setRequiredNetworkChanged()V

    :cond_20
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$1;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    if-eqz v0, :cond_27

    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    :cond_27
    return-void
.end method
