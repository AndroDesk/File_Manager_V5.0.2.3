.class Lcom/micloud/midrive/task/TransferBaseTask$2;
.super Ljava/lang/Object;
.source "TransferBaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/TransferBaseTask;->performTransferDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/TransferBaseTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/task/TransferBaseTask$2;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask$2;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v0}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/micloud/midrive/task/TransferBaseTask$2;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v0}, Lcom/micloud/midrive/task/TransferBaseTask;->access$000(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/TransferBaseTask$2;->this$0:Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-static {v1}, Lcom/micloud/midrive/task/TransferBaseTask;->access$100(Lcom/micloud/midrive/task/TransferBaseTask;)Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;->onProgressUpdate(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V

    :cond_17
    return-void
.end method
