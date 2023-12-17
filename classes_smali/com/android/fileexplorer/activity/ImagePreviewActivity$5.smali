.class Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;
.super Lcom/micloud/midrive/task/ForegroundDownloadTask;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ImagePreviewActivity;->downloadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/micloud/midrive/task/ForegroundDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$800(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$400(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    if-eqz p1, :cond_7d

    .line 5
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v0, :cond_7d

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$600(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$900(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "filepath:"

    .line 8
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$600(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$600(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->getCurrentImagePreviewFragment()Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->getCurrentImagePreviewFragment()Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->loadImage()V

    .line 12
    :cond_73
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$1000(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$1100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroid/view/Menu;)V

    return-void

    .line 13
    :cond_7d
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$1200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/micloud/midrive/task/ForegroundDownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->getTaskException()Lcom/micloud/midrive/task/BaseTask$TaskException;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->errorToast(Lcom/micloud/midrive/task/BaseTask$TaskException;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->onPostExecute(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$800(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$400(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/viewpager/widget/ViewPager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    .line 20
    return-void
.end method
