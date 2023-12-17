.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;
.super Ljava/lang/Object;
.source "MirrorFileGroupFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->initRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 10
    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;Z)V

    .line 15
    goto :goto_18

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 25
    :goto_18
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .line 1
    const-string v0, "FileGroupFragment"

    .line 3
    const-string v1, "start load data by refresh"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 16
    return-void
.end method
