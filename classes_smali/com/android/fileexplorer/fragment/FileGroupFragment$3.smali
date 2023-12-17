.class Lcom/android/fileexplorer/fragment/FileGroupFragment$3;
.super Ljava/lang/Object;
.source "FileGroupFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileGroupFragment;->initRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$400(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    return-void
.end method

.method public onLoadMore()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$200(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$300(Lcom/android/fileexplorer/fragment/FileGroupFragment;Z)V

    goto :goto_18

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    :goto_18
    return-void
.end method

.method public onRefresh()V
    .registers 3

    const-string v0, "FileGroupFragment"

    const-string v1, "start load data by refresh"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    return-void
.end method
