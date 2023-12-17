.class Lcom/micloud/midrive/session/BaseSession$7;
.super Ljava/lang/Object;
.source "BaseSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/BaseSession;->finish(Lcom/micloud/midrive/session/BaseSession$Result;)V
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
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$7;->this$0:Lcom/micloud/midrive/session/BaseSession;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession$7;->this$0:Lcom/micloud/midrive/session/BaseSession;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/BaseSession;->access$102(Lcom/micloud/midrive/session/BaseSession;Landroid/content/Context;)Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession$7;->this$0:Lcom/micloud/midrive/session/BaseSession;

    .line 9
    invoke-static {v0}, Lcom/micloud/midrive/session/BaseSession;->access$300(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/micloud/midrive/session/BaseSession$ExecutionListener;->onExecutionComplete()V

    .line 16
    return-void
.end method
