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
.method public constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onQueryFinished(Lcom/micloud/midrive/task/InWorkJobQueryTask;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4e

    .line 7
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 9
    invoke-static {v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$500(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 12
    move-result-object v0

    .line 13
    if-eq v0, p1, :cond_f

    .line 15
    goto :goto_4e

    .line 16
    :cond_f
    const-string v0, "onSession"

    .line 18
    const-string v1, "onQueryFinished"

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$502(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/InWorkJobQueryTask;)Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 29
    invoke-virtual {p1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->getResultIfSuccessOrNull()Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2e

    .line 35
    const/4 p1, 0x1

    .line 36
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    .line 39
    const-string v1, "inwork job query failed. "

    .line 41
    aput-object v1, p1, v0

    .line 43
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 46
    return-void

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 49
    iget-object p1, p1, Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;->sessionJobInfoList:Ljava/util/List;

    .line 51
    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/TaskUtils;->convertSessionJobInfoToTaskItem(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;

    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3d

    .line 61
    return-void

    .line 62
    :cond_3d
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 64
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 66
    if-ne v0, v1, :cond_49

    .line 68
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 70
    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealDownloadWorkTask(Ljava/util/List;)V

    .line 73
    goto :goto_4e

    .line 74
    :cond_49
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealUploadWorkTask(Ljava/util/List;)V

    .line 79
    :cond_4e
    :goto_4e
    return-void
.end method
