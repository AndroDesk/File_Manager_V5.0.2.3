.class Lcom/micloud/midrive/session/service/DownloadSessionService$1;
.super Ljava/lang/Object;
.source "DownloadSessionService.java"

# interfaces
.implements Lcom/micloud/midrive/session/BaseSession$ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/service/DownloadSessionService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/service/DownloadSessionService;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/service/DownloadSessionService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/service/DownloadSessionService$1;->this$0:Lcom/micloud/midrive/session/service/DownloadSessionService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onExecutionComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/service/DownloadSessionService$1;->this$0:Lcom/micloud/midrive/session/service/DownloadSessionService;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/service/DownloadSessionService;->access$000(Lcom/micloud/midrive/session/service/DownloadSessionService;)V

    .line 6
    return-void
.end method
