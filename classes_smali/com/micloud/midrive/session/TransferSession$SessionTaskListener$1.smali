.class Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;
.super Ljava/lang/Object;
.source "TransferSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;->this$1:Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;->this$1:Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;

    .line 3
    iget-object v0, v0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$900(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/micloud/midrive/session/BaseSession$SessionListener;->onSessionStatusChanged()V

    .line 12
    return-void
.end method
