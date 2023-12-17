.class Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;
.super Ljava/lang/Object;
.source "UploadSessionHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/helper/ActionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/helper/UploadSessionHelper;->pauseAllTask(Landroid/content/Context;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/helper/UploadSessionHelper;

.field public final synthetic val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;->this$0:Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    iput-object p2, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Landroid/os/AsyncTask;Z)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->access$100(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;->val$callback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    :cond_c
    return-void
.end method
