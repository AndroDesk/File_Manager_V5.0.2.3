.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;
.super Ljava/lang/Object;
.source "HomeFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initListView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "initListView onEnterPrivate"

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$900(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0a042f

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 25
    if-eqz v0, :cond_1f

    .line 27
    const/16 v1, 0x8

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$1000(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method public onLoadMore()V
    .registers 1

    return-void
.end method

.method public onRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$8;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateUI()V

    .line 6
    return-void
.end method
