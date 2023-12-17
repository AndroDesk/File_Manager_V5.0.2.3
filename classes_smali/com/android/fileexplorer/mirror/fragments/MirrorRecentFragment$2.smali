.class Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;
.super Ljava/lang/Object;
.source "MirrorRecentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->initUI()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 10
    return-void
.end method

.method public onLoadMore()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V

    .line 16
    :cond_f
    return-void
.end method

.method public onRefresh()V
    .registers 1

    return-void
.end method
