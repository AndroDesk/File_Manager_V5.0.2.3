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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 1

    return-void
.end method

.method public onLoadMore()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    return-void
.end method

.method public onRefresh()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    goto :goto_21

    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->updateUI(ZZZ)V

    :goto_21
    return-void
.end method
