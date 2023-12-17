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
.method public constructor <init>(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession$SyncEvent;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    .line 6
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/SyncSession;->access$000(Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/BaseSession$Stage;

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
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/SyncSession;->access$102(Lcom/micloud/midrive/session/SyncSession;Z)Z

    .line 19
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$1;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v2}, Lcom/micloud/midrive/session/SyncSession;->access$200(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V

    .line 25
    return v1
.end method
