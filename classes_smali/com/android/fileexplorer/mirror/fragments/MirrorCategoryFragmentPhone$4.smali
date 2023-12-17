.class Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;
.super Landroid/os/AsyncTask;
.source "MirrorCategoryFragmentPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->onRefreshFileList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field public limit:I

.field public offset:I

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

.field public final synthetic val$loadMore:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->val$loadMore:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 8

    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->offset:I

    iget v4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->limit:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->offset:I

    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->limit:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$702(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;I)I

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5d

    if-eqz v2, :cond_5d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "category_load_time"

    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5d
    iget-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_67
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    if-eqz v0, :cond_72

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)V

    goto :goto_93

    :cond_72
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7f
    iget-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V

    :goto_93
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    :cond_d
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_26

    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->offset:I

    goto :goto_32

    :cond_26
    :goto_26
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->limit:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$4;->offset:I

    :goto_32
    return-void
.end method
