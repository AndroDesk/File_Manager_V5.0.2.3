.class Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;
.super Ljava/lang/Object;
.source "RecentSecondaryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 1

    return-void
.end method

.method public onLoadMore()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    .line 12
    return-void
.end method

.method public onRefresh()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "cloud"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_17

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 23
    goto :goto_21

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    .line 34
    :goto_21
    return-void
.end method
