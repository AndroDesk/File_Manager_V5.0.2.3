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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;->this$1:Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener$1;->this$1:Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;

    iget-object v0, v0, Lcom/micloud/midrive/session/TransferSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/TransferSession;->access$900(Lcom/micloud/midrive/session/TransferSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/BaseSession$SessionListener;->onSessionStatusChanged()V

    return-void
.end method
