.class Lcom/micloud/midrive/session/SyncSession$1;
.super Lcom/micloud/midrive/session/SyncSession$SyncEvent;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/SyncSession;->setSyncAfter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/SyncSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession$SyncEvent;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2

    const-string v0, "syncAfter"

    return-object v0
.end method

.method public run()Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/SyncSession;->access$000(Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/BaseSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/micloud/midrive/session/TransferSession$TransferStage;->RUNNING:Lcom/micloud/midrive/session/TransferSession$TransferStage;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/SyncSession;->access$102(Lcom/micloud/midrive/session/SyncSession;Z)Z

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/micloud/midrive/session/SyncSession;->access$200(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V

    return v1
.end method
