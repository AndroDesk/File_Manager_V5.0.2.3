.class Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;
.super Ljava/lang/Object;
.source "DownloadSessionHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/helper/ActionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->pauseAllTask(Landroid/content/Context;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

.field public final synthetic val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;->this$0:Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;->val$context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onActionResult(Landroid/os/AsyncTask;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;->val$context:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->access$100(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    .line 13
    :cond_c
    return-void
.end method
