.class Lcom/android/fileexplorer/fragment/FileFragment$5;
.super Landroid/os/AsyncTask;
.source "FileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->runLoadTask(Ljava/lang/String;I)V
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
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;

.field public final synthetic val$fileAmount:I

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$fileAmount:I

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    const-string v0, "FileFragment"

    const-string v1, "mLoadFileListTask: "

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$000(Lcom/android/fileexplorer/fragment/FileFragment;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$fileAmount:I

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/fragment/FileFragment;->access$100(Lcom/android/fileexplorer/fragment/FileFragment;ILjava/lang/String;)V

    .line 7
    :cond_20
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget v1, v1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_61

    const/16 v2, 0xc

    if-eq v1, v2, :cond_46

    const-string v1, "mLoadFileListTask load local with path:"

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$400(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7b

    :cond_46
    const-string v1, "mLoadFileListTask load mtp with path:"

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$200(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7b

    :cond_61
    const-string v1, "mLoadFileListTask load router with path:"

    .line 14
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$300(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_7b
    if-eqz v0, :cond_88

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVOList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    const-string v1, "getLocalFileList total time"

    .line 18
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$5;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$002(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_b
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v2, v2, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v2, :cond_14

    .line 5
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 6
    :cond_14
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-boolean v3, v2, Lcom/android/fileexplorer/fragment/FileFragment;->mFirstIn:Z

    if-eqz v3, :cond_1c

    .line 7
    iput-boolean v1, v2, Lcom/android/fileexplorer/fragment/FileFragment;->mFirstIn:Z

    .line 8
    :cond_1c
    iput-boolean v1, v2, Lcom/android/fileexplorer/fragment/FileFragment;->mEventFromFolderClick:Z

    .line 9
    iget-object v2, v2, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_41

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$500(Lcom/android/fileexplorer/fragment/FileFragment;Z)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget v2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_39

    const/16 v3, 0xc

    if-eq v2, v3, :cond_39

    .line 12
    invoke-static {p1, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$600(Lcom/android/fileexplorer/fragment/FileFragment;I)V

    goto :goto_3f

    :cond_39
    const v1, 0x7f1100ef

    .line 13
    invoke-static {p1, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$600(Lcom/android/fileexplorer/fragment/FileFragment;I)V

    .line 14
    :goto_3f
    monitor-exit v0

    return-void

    .line 15
    :cond_41
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v2, v2, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "FileFragment"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFileNameList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, v3, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/fileexplorer/fragment/FileFragment;->access$500(Lcom/android/fileexplorer/fragment/FileFragment;Z)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8d

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$700(Lcom/android/fileexplorer/fragment/FileFragment;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_89

    move v1, v2

    :cond_89
    invoke-static {p1, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$800(Lcom/android/fileexplorer/fragment/FileFragment;Z)V

    goto :goto_92

    .line 20
    :cond_8d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$600(Lcom/android/fileexplorer/fragment/FileFragment;I)V

    .line 21
    :goto_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    if-eqz p1, :cond_b2

    .line 22
    iget v1, p1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    if-eqz v1, :cond_b2

    iget v1, p1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v1, :cond_b2

    .line 23
    new-instance v2, Lcom/android/fileexplorer/fragment/FileFragment$5$1;

    invoke-direct {v2, p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment$5$1;-><init>(Lcom/android/fileexplorer/fragment/FileFragment$5;Lcom/android/fileexplorer/model/PathSegment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_b2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c5

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$900(Lcom/android/fileexplorer/fragment/FileFragment;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 26
    :cond_c5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_de

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->manualListItemClick(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const-string v1, ""

    iput-object v1, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    .line 29
    :cond_de
    monitor-exit v0

    return-void

    :catchall_e0
    move-exception p1

    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_b .. :try_end_e2} :catchall_e0

    throw p1
.end method
