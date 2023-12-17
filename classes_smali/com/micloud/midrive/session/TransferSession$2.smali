.class Lcom/micloud/midrive/session/TransferSession$2;
.super Lcom/micloud/midrive/session/TransferSession$TransferEvent;
.source "TransferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/TransferSession;->setJobStatusChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$2;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;-><init>(Lcom/micloud/midrive/session/TransferSession;)V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2

    const-string v0, "performJobStatusChangedH"

    return-object v0
.end method

.method public run()Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$2;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$000(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$2;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$100(Lcom/micloud/midrive/session/TransferSession;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$2;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$400(Lcom/micloud/midrive/session/TransferSession;)V

    const/4 v0, 0x1

    return v0
.end method
