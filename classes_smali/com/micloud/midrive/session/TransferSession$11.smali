.class Lcom/micloud/midrive/session/TransferSession$11;
.super Ljava/lang/Object;
.source "TransferSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/TransferSession;->notifySessionProgressChangedH()V
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
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$11;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$11;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$900(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/micloud/midrive/session/BaseSession$SessionListener;->onSessionStageProgressChanged()V

    .line 10
    return-void
.end method
