.class Lcom/micloud/midrive/session/service/UploadSessionService$1;
.super Ljava/lang/Object;
.source "UploadSessionService.java"

# interfaces
.implements Lcom/micloud/midrive/session/BaseSession$ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/service/UploadSessionService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/service/UploadSessionService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/service/UploadSessionService;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/service/UploadSessionService$1;->this$0:Lcom/micloud/midrive/session/service/UploadSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutionComplete()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/service/UploadSessionService$1;->this$0:Lcom/micloud/midrive/session/service/UploadSessionService;

    invoke-static {v0}, Lcom/micloud/midrive/session/service/UploadSessionService;->access$000(Lcom/micloud/midrive/session/service/UploadSessionService;)V

    return-void
.end method
