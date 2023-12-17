.class Lcom/android/cloud/activity/CloudStatusObserverActivity$4;
.super Ljava/lang/Object;
.source "CloudStatusObserverActivity.java"

# interfaces
.implements Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/activity/CloudStatusObserverActivity;->doQuerySuccessTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
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
    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onQueryFinished(Lcom/micloud/midrive/task/SuccessJobQueryTask;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_47

    .line 7
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 9
    invoke-static {v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$600(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 12
    move-result-object v0

    .line 13
    if-eq v0, p1, :cond_f

    .line 15
    goto :goto_47

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$602(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/SuccessJobQueryTask;)Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 22
    invoke-virtual {p1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->getResultIfSuccessOrNull()Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_27

    .line 28
    const/4 p1, 0x1

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    .line 32
    const-string v1, "inwork job query failed. "

    .line 34
    aput-object v1, p1, v0

    .line 36
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 39
    return-void

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 42
    iget-object p1, p1, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;->sessionJobInfoList:Ljava/util/List;

    .line 44
    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/TaskUtils;->convertSessionJobInfoToTaskItem(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;

    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_36

    .line 54
    return-void

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 57
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 59
    if-ne v0, v1, :cond_42

    .line 61
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 63
    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealDownloadSuccessTask(Ljava/util/List;)V

    .line 66
    goto :goto_47

    .line 67
    :cond_42
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 69
    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealUploadSuccessTask(Ljava/util/List;)V

    .line 72
    :cond_47
    :goto_47
    return-void
.end method
