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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/BaseSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$7;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession$7;->this$0:Lcom/micloud/midrive/session/BaseSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/BaseSession;->access$102(Lcom/micloud/midrive/session/BaseSession;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession$7;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/BaseSession;->access$300(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/BaseSession$ExecutionListener;->onExecutionComplete()V

    return-void
.end method
