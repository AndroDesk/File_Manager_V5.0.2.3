.class Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;
.super Ljava/lang/Object;
.source "DownloadSessionHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/helper/ActionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;->this$0:Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    iput-object p2, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Landroid/os/AsyncTask;Z)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->access$100(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    :cond_c
    return-void
.end method