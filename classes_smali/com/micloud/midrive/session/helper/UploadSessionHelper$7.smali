.class Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;
.super Ljava/lang/Object;
.source "UploadSessionHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/helper/ActionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/helper/UploadSessionHelper;->resumeAllTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/helper/UploadSessionHelper;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;->this$0:Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;->val$context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;->val$account:Landroid/accounts/Account;

    .line 7
    iput-object p4, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onActionResult(Landroid/os/AsyncTask;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;->val$context:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;->val$account:Landroid/accounts/Account;

    .line 5
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->access$000(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    .line 15
    :cond_e
    return-void
.end method
