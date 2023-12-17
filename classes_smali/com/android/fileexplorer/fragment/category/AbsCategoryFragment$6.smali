.class Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$6;
.super Ljava/lang/Object;
.source "AbsCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$6;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$6;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 12
    return-void
.end method

.method public onLoadMore()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$6;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadGroupList(ZZ)V

    .line 8
    return-void
.end method

.method public onRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$6;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onPullRefresh()V

    .line 6
    return-void
.end method
