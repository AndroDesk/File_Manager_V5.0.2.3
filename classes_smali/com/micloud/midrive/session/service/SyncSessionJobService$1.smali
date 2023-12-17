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
.method public constructor <init>(Lcom/micloud/midrive/session/service/SyncSessionJobService;Landroid/app/job/JobParameters;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->val$params:Landroid/app/job/JobParameters;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onExecutionComplete()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/service/SyncSessionJobService;->access$000(Lcom/micloud/midrive/session/service/SyncSessionJobService;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "SyncSessionJobService"

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eq v0, p0, :cond_19

    .line 14
    new-array v0, v3, [Ljava/lang/Object;

    .line 16
    aput-object v2, v0, v4

    .line 18
    const-string v2, "EXEC Complete: error session LISTENER"

    .line 20
    aput-object v2, v0, v1

    .line 22
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 25
    return-void

    .line 26
    :cond_19
    new-array v0, v3, [Ljava/lang/Object;

    .line 28
    aput-object v2, v0, v4

    .line 30
    const-string v2, "EXEC Complete"

    .line 32
    aput-object v2, v0, v1

    .line 34
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    .line 39
    iget-object v1, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->val$params:Landroid/app/job/JobParameters;

    .line 41
    invoke-virtual {v0, v1, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 44
    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/service/SyncSessionJobService;->access$102(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/SyncSession;

    .line 50
    iget-object v0, p0, Lcom/micloud/midrive/session/service/SyncSessionJobService$1;->this$0:Lcom/micloud/midrive/session/service/SyncSessionJobService;

    .line 52
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/service/SyncSessionJobService;->access$002(Lcom/micloud/midrive/session/service/SyncSessionJobService;Lcom/micloud/midrive/session/BaseSession$ExecutionListener;)Lcom/micloud/midrive/session/BaseSession$ExecutionListener;

    .line 55
    return-void
.end method
