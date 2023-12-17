.class Lcom/android/fileexplorer/fragment/FileFragment$8;
.super Landroid/os/AsyncTask;
.source "FileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V
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

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;

.field public final synthetic val$fileAmount:I

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iput p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->val$fileAmount:I

    iput-object p3, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->RESULT_REMOVED:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->RESULT_REFRESH:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->RESULT_NOT_AVAILABLE:I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 9

    const-string p1, "FileFragment"

    const-string v0, "updateUI real"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$000(Lcom/android/fileexplorer/fragment/FileFragment;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->val$fileAmount:I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->val$path:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$100(Lcom/android/fileexplorer/fragment/FileFragment;ILjava/lang/String;)V

    :cond_18
    const/4 p1, 0x0

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->hasCacheMountVolumeList()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->getCacheMountVolumeList()Ljava/util/ArrayList;

    move-result-object p1

    :cond_2b
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_43

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v3, p1, :cond_43

    move p1, v2

    goto :goto_44

    :cond_43
    move p1, v1

    :goto_44
    if-eqz p1, :cond_50

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageHelper;->clearExternalStorageDirectory()V

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    :cond_50
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1200(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x2

    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v5

    if-nez v5, :cond_7d

    iget-object v6, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget v6, v6, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    if-eq v6, p1, :cond_86

    :cond_7d
    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget v5, v5, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8f

    :cond_86
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {v5}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1200(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8f
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v6, v5, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v6, :cond_61

    iget-boolean v5, v5, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mForceMainSpace:Z

    if-nez v5, :cond_ab

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v5, v5, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    :cond_ab
    move v3, v1

    goto :goto_61

    :cond_ad
    move v3, v2

    :cond_ae
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-boolean v1, v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mForceMainSpace:Z

    if-nez v1, :cond_c4

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1200(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c4
    if-eqz v3, :cond_cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_cb
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1102(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_15

    goto/16 :goto_b2

    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v3, v2, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v3, :cond_26

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto/16 :goto_b2

    :cond_26
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->exitActionMode()Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->backToViewMode()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const v2, 0x7f11014a

    invoke-static {p1, v2}, Lcom/android/fileexplorer/fragment/FileFragment;->access$600(Lcom/android/fileexplorer/fragment/FileFragment;I)V

    goto/16 :goto_b2

    :cond_3b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v2, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, v3, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentFileAmount()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1400(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;I)V

    goto :goto_b2

    :cond_4f
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    instance-of v3, v2, Lcom/android/fileexplorer/activity/FileActivity;

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_b2

    :cond_5f
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1200(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1300(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    iput-object v2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v2, :cond_7b

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1200(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    iput-object v2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    :cond_7b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, v3, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v4, v4, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, v3, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v2, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, v3, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentFileAmount()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1400(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;I)V

    :goto_b2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1200(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_bf

    move v1, v0

    :cond_bf
    if-nez v1, :cond_c6

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1500(Lcom/android/fileexplorer/fragment/FileFragment;)V

    :cond_c6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->setLastSelectedVolumePath()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$8;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1102(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z

    return-void
.end method
