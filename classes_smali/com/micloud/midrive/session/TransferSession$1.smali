.class Lcom/micloud/midrive/session/TransferSession$1;
.super Lcom/micloud/midrive/session/TransferSession$NewTransferTaskEvent;
.source "TransferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/TransferSession;->setNewJobAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$1;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession$NewTransferTaskEvent;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    .line 6
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2

    const-string v0, "tryLoadNewJobH"

    return-object v0
.end method

.method public run()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$1;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$000(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    .line 9
    if-eq v0, v1, :cond_c

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$1;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 15
    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$100(Lcom/micloud/midrive/session/TransferSession;)V

    .line 18
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$1;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 20
    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$200(Lcom/micloud/midrive/session/TransferSession;)V

    .line 23
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$1;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 25
    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$300(Lcom/micloud/midrive/session/TransferSession;)V

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0
.end method
