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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    return-void
.end method

.method public onLoadMore()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    const-string v1, "mMiuiPullRecyclerViewHelper onLoadMore"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Z)V

    :cond_1f
    return-void
.end method

.method public onRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;Z)V

    return-void
.end method
