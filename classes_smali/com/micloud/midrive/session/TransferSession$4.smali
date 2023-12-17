.class Lcom/micloud/midrive/session/TransferSession$4;
.super Ljava/lang/Object;
.source "TransferSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/TransferSession;->onExecute(ZLjava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;

.field public final synthetic val$abort:Z


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$4;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    iput-boolean p2, p0, Lcom/micloud/midrive/session/TransferSession$4;->val$abort:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$4;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    iget-boolean v1, p0, Lcom/micloud/midrive/session/TransferSession$4;->val$abort:Z

    .line 5
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/TransferSession;->access$500(Lcom/micloud/midrive/session/TransferSession;Z)V

    .line 8
    return-void
.end method
