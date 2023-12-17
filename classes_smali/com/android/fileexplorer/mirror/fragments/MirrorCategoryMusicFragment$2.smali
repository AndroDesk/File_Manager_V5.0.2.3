.class Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$2;
.super Ljava/lang/Object;
.source "MirrorCategoryMusicFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 8
    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryMusicFragment;Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public onRefresh()V
    .registers 1

    return-void
.end method
