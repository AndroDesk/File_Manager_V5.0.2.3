.class Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;
.super Ljava/lang/Object;
.source "MirrorRecentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->onScanFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    const-string v0, "RecentFragment"

    .line 3
    const-string v1, "onScanFinish: loadLocalFileGroupInfo onRefreshComplete"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$6;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 26
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 28
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 30
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
