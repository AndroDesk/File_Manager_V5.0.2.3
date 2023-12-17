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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    return-void
.end method

.method public onLoadMore()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;ZZ)V

    :cond_f
    return-void
.end method

.method public onRefresh()V
    .registers 1

    return-void
.end method
