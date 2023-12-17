.class Lcom/micloud/midrive/session/TransferSession$5;
.super Ljava/lang/Object;
.source "TransferSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/TransferSession;->onEvent(Lcom/micloud/midrive/session/BaseSession$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;

.field public final synthetic val$e:Lcom/micloud/midrive/session/BaseSession$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/BaseSession$Event;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$5;->this$0:Lcom/micloud/midrive/session/TransferSession;

    iput-object p2, p0, Lcom/micloud/midrive/session/TransferSession$5;->val$e:Lcom/micloud/midrive/session/BaseSession$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/TransferSession$5;->this$0:Lcom/micloud/midrive/session/TransferSession;

    iget-object v1, p0, Lcom/micloud/midrive/session/TransferSession$5;->val$e:Lcom/micloud/midrive/session/BaseSession$Event;

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/TransferSession;->access$600(Lcom/micloud/midrive/session/TransferSession;Lcom/micloud/midrive/session/BaseSession$Event;)V

    return-void
.end method
