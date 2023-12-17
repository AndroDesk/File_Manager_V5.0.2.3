.class Lcom/micloud/midrive/session/manager/SessionManager$2;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/manager/SessionManager;->postSessionStageProgressChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/manager/SessionManager;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$2;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$2;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->access$500(Lcom/micloud/midrive/session/manager/SessionManager;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    .line 23
    invoke-interface {v1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;->onSessionStageProgressChanged()V

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method
