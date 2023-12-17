.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;
.super Landroid/os/AsyncTask;
.source "MirrorFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->runLoadTask(Ljava/lang/String;Ljava/lang/Runnable;)V
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
        "Ljava/util/ArrayList<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

.field public final synthetic val$path:Ljava/lang/String;

.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$path:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$runnable:Ljava/lang/Runnable;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->lambda$onPostExecute$0(Lcom/android/fileexplorer/model/PathSegment;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    iget v1, p1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    .line 13
    iget p1, p1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    .line 15
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v0, 0x6

    const-string v1, "MirrorFileFragment"

    if-eq p1, v0, :cond_43

    const/16 v0, 0xc

    if-eq p1, v0, :cond_28

    const-string p1, "mLoadFileListTask load local with path:"

    .line 3
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_28
    const-string p1, "mLoadFileListTask load mtp with path:"

    .line 6
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_43
    const-string p1, "mLoadFileListTask load router with path:"

    .line 9
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v1, :cond_c

    .line 4
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 5
    :cond_c
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    if-nez p1, :cond_34

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget v2, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2c

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2c

    .line 8
    invoke-static {p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    goto :goto_32

    :cond_2c
    const v1, 0x7f1100ef

    .line 9
    invoke-static {p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    .line 10
    :goto_32
    monitor-exit v0

    return-void

    .line 11
    :cond_34
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "MirrorFileFragment"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFileNameList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 17
    iget v2, p1, Lcom/android/fileexplorer/model/PathSegment;->position:I

    if-eqz v2, :cond_94

    iget v2, p1, Lcom/android/fileexplorer/model/PathSegment;->top:I

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v2, v2, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v2, :cond_94

    .line 18
    new-instance v3, Lcom/android/fileexplorer/mirror/fragments/d;

    invoke-direct {v3, v1, p0, p1}, Lcom/android/fileexplorer/mirror/fragments/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_94
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget v1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_ae

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ae

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 21
    :cond_ae
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c7

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->manualListItemClick(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    const-string v1, ""

    iput-object v1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mSearchFilePath:Ljava/lang/String;

    .line 24
    :cond_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_3 .. :try_end_c8} :catchall_d6

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->val$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_d5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_d5

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_d5
    return-void

    :catchall_d6
    move-exception p1

    .line 27
    :try_start_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw p1
.end method
