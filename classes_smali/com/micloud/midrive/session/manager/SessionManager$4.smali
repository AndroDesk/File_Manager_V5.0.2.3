.class Lcom/micloud/midrive/session/manager/SessionManager$4;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/manager/SessionManager;->postOnSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/manager/SessionManager;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$session:Lcom/micloud/midrive/session/BaseSession;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/manager/SessionManager;Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$4;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/manager/SessionManager$4;->val$context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/session/manager/SessionManager$4;->val$session:Lcom/micloud/midrive/session/BaseSession;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$4;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/manager/SessionManager$4;->val$context:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/session/manager/SessionManager$4;->val$session:Lcom/micloud/midrive/session/BaseSession;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/micloud/midrive/session/manager/SessionManager;->onSessionCompleted(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;)V

    .line 10
    return-void
.end method
