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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    iput-object p2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryFinished(Lcom/micloud/midrive/task/SuccessJobQueryTask;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-static {v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$600(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/SuccessJobQueryTask;

    move-result-object v0

    if-eq v0, p1, :cond_f

    goto :goto_47

    :cond_f
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$602(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/SuccessJobQueryTask;)Lcom/micloud/midrive/task/SuccessJobQueryTask;

    invoke-virtual {p1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->getResultIfSuccessOrNull()Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

    move-result-object p1

    if-nez p1, :cond_27

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "inwork job query failed. "

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return-void

    :cond_27
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    iget-object p1, p1, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;->sessionJobInfoList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/TaskUtils;->convertSessionJobInfoToTaskItem(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->val$type:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealDownloadSuccessTask(Ljava/util/List;)V

    goto :goto_47

    :cond_42
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-virtual {v0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->dealUploadSuccessTask(Ljava/util/List;)V

    :cond_47
    :goto_47
    return-void
.end method
