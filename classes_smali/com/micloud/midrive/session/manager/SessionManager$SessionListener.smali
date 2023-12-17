.class Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/micloud/midrive/session/BaseSession$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/manager/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/manager/SessionManager;Lcom/micloud/midrive/session/manager/SessionManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;-><init>(Lcom/micloud/midrive/session/manager/SessionManager;)V

    return-void
.end method


# virtual methods
.method public onSessionComplete(Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/session/manager/SessionManager;->access$200(Lcom/micloud/midrive/session/manager/SessionManager;Landroid/content/Context;Lcom/micloud/midrive/session/BaseSession;Lcom/micloud/midrive/session/params/SessionParams;)V

    return-void
.end method

.method public onSessionStageProgressChanged()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-static {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->access$100(Lcom/micloud/midrive/session/manager/SessionManager;)V

    return-void
.end method

.method public onSessionStatusChanged()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionListener;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-static {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->access$000(Lcom/micloud/midrive/session/manager/SessionManager;)V

    return-void
.end method
