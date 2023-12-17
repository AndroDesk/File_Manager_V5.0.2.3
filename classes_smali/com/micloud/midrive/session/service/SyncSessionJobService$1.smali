.class Lcom/micloud/midrive/session/service/SyncSessionJobService$1;
.super Ljava/lang/Object;
.source "SyncSessionJobService.java"

# interfaces
.implements Lcom/micloud/midrive/session/BaseSession$ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/service/SyncSessionJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/service/SyncSessionJobService;Landroid/app/job/JobParameters;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    iput-object p2, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutionComplete()V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    invoke-static {v0}, Lcom/micloud/midrive/session/service/SyncSessionJobService;->access$000(Lcom/micloud/midrive/session/service/SyncSessionJobService;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SyncSessionJobService"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, p0, :cond_19

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "EXEC Complete: error session LISTENER"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-void

    :cond_19
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "EXEC Complete"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    iget-object v1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/service/SyncSessionJobService;->access$102(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/SyncSession;

    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/service/SyncSessionJobService;->access$002(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    return-void
.end method
