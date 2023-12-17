.class Lcom/micloud/midrive/session/manager/SessionManager$3;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/manager/SessionManager;->postSessionChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/manager/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$3;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$3;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-static {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->access$500(Lcom/micloud/midrive/session/manager/SessionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;

    invoke-interface {v1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;->onSessionChanged()V

    goto :goto_a

    :cond_1a
    return-void
.end method
