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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$600(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$600(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    :cond_15
    return-void
.end method

.method public onLoadMore()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$400(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$500(Lcom/android/fileexplorer/fragment/RecentFragment;ZZ)V

    :cond_f
    return-void
.end method

.method public onRefresh()V
    .registers 3

    const-string v0, "RecentFragment"

    const-string v1, "start load data by refresh"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$300(Lcom/android/fileexplorer/fragment/RecentFragment;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    return-void
.end method
