.class Lcom/micloud/midrive/task/TransferBaseTask$1;
.super Ljava/lang/Object;
.source "TransferBaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/TransferBaseTask;->performTransferStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/TransferBaseTask;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask$1;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask$1;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask$1;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 11
    invoke-static {v0}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask$1;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    .line 17
    invoke-static {v1}, Lcom/micloud/midrive/task/TransferBaseTask;->access$100(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;->onProgressUpdate(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    .line 24
    :cond_17
    return-void
.end method
