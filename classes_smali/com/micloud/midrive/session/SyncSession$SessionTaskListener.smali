.class Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;
.super Ljava/lang/Object;
.source "SyncSession.java"

# interfaces
.implements Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionTaskListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/SyncSession;


# direct methods
.method private constructor <init>(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/SyncSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/SyncSession$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    return-void
.end method


# virtual methods
.method public onRunningStepChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    invoke-static {p1}, Lcom/micloud/midrive/session/SyncSession;->access$1000(Lcom/micloud/midrive/session/SyncSession;)V

    .line 6
    return-void
.end method

.method public onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 3
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_d

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 11
    invoke-static {v0, p1}, Lcom/micloud/midrive/session/SyncSession;->access$200(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 16
    invoke-static {p1}, Lcom/micloud/midrive/session/SyncSession;->access$900(Lcom/micloud/midrive/session/SyncSession;)Landroid/os/Handler;

    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener$1;

    .line 22
    invoke-direct {v0, p0}, Lcom/micloud/midrive/session/SyncSession$SessionTaskListener$1;-><init>(Lcom/micloud/midrive/session/SyncSession$SessionTaskListener;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method
