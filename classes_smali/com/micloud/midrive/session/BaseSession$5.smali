.class Lcom/micloud/midrive/session/BaseSession$5;
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

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$5;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/BaseSession$5;->this$0:Lcom/micloud/midrive/session/BaseSession;

    invoke-static {v0}, Lcom/micloud/midrive/session/BaseSession;->access$000(Lcom/micloud/midrive/session/BaseSession;)Lcom/micloud/midrive/session/BaseSession$SessionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/BaseSession$SessionListener;->onSessionStatusChanged()V

    return-void
.end method
