.class Lcom/android/cloud/activity/CloudStatusObserverActivity$3;
.super Ljava/lang/Object;
.source "CloudStatusObserverActivity.java"

# interfaces
.implements Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/activity/CloudStatusObserverActivity;->doQueryInWorkTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

.field public final synthetic val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    iput-object p2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryFinished(Lcom/micloud/midrive/task/InWorkJobQueryTask;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-static {v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$500(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/InWorkJobQueryTask;

    move-result-object v0

    if-eq v0, p1, :cond_f

    goto :goto_4e

    :cond_f
    const-string v0, "onSession"

    const-string v1, "onQueryFinished"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$502(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/InWorkJobQueryTask;)Lcom/micloud/midrive/task/InWorkJobQueryTask;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->getResultIfSuccessOrNull()Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

    move-result-object p1

    if-nez p1, :cond_2e

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "inwork job query failed. "

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    iget-object p1, p1, Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;->sessionJobInfoList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/TaskUtils;->convertSessionJobInfoToTaskItem(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealDownloadWorkTask(Ljava/util/List;)V

    goto :goto_4e

    :cond_49
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealUploadWorkTask(Ljava/util/List;)V

    :cond_4e
    :goto_4e
    return-void
.end method
