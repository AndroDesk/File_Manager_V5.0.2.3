.class Lcom/micloud/midrive/session/BaseSession$3;
.super Ljava/lang/Object;
.source "BaseSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/BaseSession;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/BaseSession;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/BaseSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$3;->this$0:Lcom/micloud/midrive/session/BaseSession;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession$3;->this$0:Lcom/micloud/midrive/session/BaseSession;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/BaseSession;->access$000(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/micloud/midrive/session/BaseSession$SessionListener;->onSessionStatusChanged()V

    .line 10
    return-void
.end method
