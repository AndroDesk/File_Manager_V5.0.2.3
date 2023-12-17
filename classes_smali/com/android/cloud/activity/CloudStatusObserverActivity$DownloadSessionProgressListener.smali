.class Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;
.super Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;
.source "CloudStatusObserverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/activity/CloudStatusObserverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadSessionProgressListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;


# direct methods
.method private constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/android/cloud/activity/CloudStatusObserverActivity$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;)V

    return-void
.end method


# virtual methods
.method public onSessionStageProgressChanged()V
    .registers 3

    .line 1
    const-string v0, "Should run in main thread!"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    const-string v0, "CloudStatusObserverActivity"

    .line 8
    const-string v1, "onSessionStageProgressChanged"

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 15
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 17
    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$200(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 20
    return-void
.end method

.method public onSessionStatusChanged()V
    .registers 3

    .line 1
    const-string v0, "Should run in main thread!"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    const-string v0, "CloudStatusObserverActivity"

    .line 8
    const-string v1, "onSessionStatusChanged:"

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    .line 15
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 17
    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$200(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 20
    return-void
.end method
