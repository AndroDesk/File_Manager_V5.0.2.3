.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;
.super Landroid/os/AsyncTask;
.source "MirrorFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final RESULT_NOT_AVAILABLE:I

.field private final RESULT_REFRESH:I

.field private final RESULT_REMOVED:I

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->val$runnable:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->RESULT_REMOVED:I

    .line 11
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->RESULT_REFRESH:I

    .line 14
    const/4 p1, 0x3

    .line 15
    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->RESULT_NOT_AVAILABLE:I

    .line 17
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 9

    const-string p1, "MirrorFileFragment"

    const-string v0, "updateUI real"

    .line 2
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->hasCacheMountVolumeList()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getCacheMountVolumeList()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 5
    :goto_1b
    invoke-static {}, Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2f

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v3, p1, :cond_2f

    move p1, v2

    goto :goto_30

    :cond_2f
    move p1, v1

    :goto_30
    if-eqz p1, :cond_3c

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->clearExternalStorageDirectory()V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 9
    :cond_3c
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x2

    if-eqz v0, :cond_99

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_4d
    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 12
    iget-object v6, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget v6, v6, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    if-eq v6, p1, :cond_72

    :cond_69
    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget v5, v5, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7b

    .line 13
    :cond_72
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v5}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_7b
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v6, v5, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v6, :cond_4d

    iget-boolean v5, v5, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mForceMainSpace:Z

    if-nez v5, :cond_97

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v5, v5, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_97
    move v3, v1

    goto :goto_4d

    :cond_99
    move v3, v2

    .line 15
    :cond_9a
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-boolean v1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mForceMainSpace:Z

    if-nez v1, :cond_b0

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b0

    const/4 p1, 0x3

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b0
    if-eqz v3, :cond_b7

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 18
    :cond_b7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_44

    const/4 v3, 0x2

    if-eq p1, v3, :cond_36

    const/4 v3, 0x3

    if-eq p1, v3, :cond_16

    goto/16 :goto_9b

    .line 4
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v3, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    instance-of v4, v3, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v4, :cond_23

    .line 5
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto/16 :goto_9b

    .line 6
    :cond_23
    iput-object v0, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->backToViewMode()V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    const v0, 0x7f11014a

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    goto :goto_9b

    .line 10
    :cond_36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->val$runnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_9b

    .line 11
    :cond_44
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v3, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    instance-of v4, v3, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v4, :cond_50

    .line 12
    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_9b

    .line 13
    :cond_50
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v3

    iput-object v3, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v3, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v3, :cond_6c

    .line 15
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/StorageInfo;

    iput-object v3, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 16
    :cond_6c
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    new-instance v3, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v4, v4, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v5, v5, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v4, v4, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v3, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 18
    :goto_9b
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_a8

    goto :goto_a9

    :cond_a8
    move v2, v1

    :goto_a9
    if-nez v2, :cond_b0

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    .line 20
    :cond_b0
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->setLastSelectedVolumePath()V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz v2, :cond_be

    goto :goto_c0

    :cond_be
    const/16 v1, 0x8

    :goto_c0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$9;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1002(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z

    .line 7
    return-void
.end method
