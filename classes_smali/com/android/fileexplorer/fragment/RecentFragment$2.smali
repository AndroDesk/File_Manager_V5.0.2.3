.class Lcom/android/fileexplorer/fragment/RecentFragment$2;
.super Ljava/lang/Object;
.source "RecentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$600(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_15

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$600(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 22
    :cond_15
    return-void
.end method

.method public onLoadMore()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$500(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V

    .line 16
    :cond_f
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .line 1
    const-string v0, "RecentFragment"

    .line 3
    const-string v1, "start load data by refresh"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$300(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/util/TimeCost;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 25
    return-void
.end method
