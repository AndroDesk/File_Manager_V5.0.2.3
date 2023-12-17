.class Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;
.super Ljava/lang/Object;
.source "MirrorHomePictureFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 8
    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Z)V

    .line 7
    return-void
.end method
