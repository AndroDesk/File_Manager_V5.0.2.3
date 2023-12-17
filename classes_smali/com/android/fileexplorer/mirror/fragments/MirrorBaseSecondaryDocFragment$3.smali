.class Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;
.super Ljava/lang/Object;
.source "MirrorBaseSecondaryDocFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 8
    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 5
    const-string v1, "mMiuiPullRecyclerViewHelper onLoadMore"

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1f

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1f

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Z)V

    .line 32
    :cond_1f
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Z)V

    .line 7
    return-void
.end method
