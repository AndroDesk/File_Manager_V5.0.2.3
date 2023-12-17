.class Lcom/micloud/midrive/session/BaseSession$6;
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

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$6;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession$6;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/BaseSession;->access$000(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession$6;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-static {v1}, Lcom/micloud/midrive/session/BaseSession;->access$100(Lcom/micloud/midrive/session/BaseSession;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/micloud/midrive/session/BaseSession$6;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-static {v2}, Lcom/micloud/midrive/session/BaseSession;->access$200(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/params/SessionParams;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/micloud/midrive/session/BaseSession$SessionListener;->onSessionComplete(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V

    return-void
.end method
