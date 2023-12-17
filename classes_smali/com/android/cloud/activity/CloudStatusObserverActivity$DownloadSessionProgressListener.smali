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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    invoke-direct {p0}, Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/android/cloud/activity/CloudStatusObserverActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;)V

    return-void
.end method


# virtual methods
.method public onSessionStageProgressChanged()V
    .registers 3

    const-string v0, "Should run in main thread!"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    const-string v0, "CloudStatusObserverActivity"

    const-string v1, "onSessionStageProgressChanged"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$200(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method public onSessionStatusChanged()V
    .registers 3

    const-string v0, "Should run in main thread!"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    const-string v0, "CloudStatusObserverActivity"

    const-string v1, "onSessionStatusChanged:"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;->this$0:Lcom/android/cloud/activity/CloudStatusObserverActivity;

    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->access$200(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method
