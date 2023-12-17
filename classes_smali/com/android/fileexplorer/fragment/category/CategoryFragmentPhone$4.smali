.class Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;
.super Landroid/os/AsyncTask;
.source "CategoryFragmentPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onRefreshFileList(Z)V
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

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

.field public final synthetic val$loadMore:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    iput-boolean p2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->val$loadMore:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 8

    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$900(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$900(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->offset:I

    iget v4, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->limit:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1202(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    iget v1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->offset:I

    iget v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->limit:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1102(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;I)I

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1300(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_61

    if-eqz v2, :cond_61

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "category_load_time"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_61
    iget-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_6b
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    if-eqz v0, :cond_76

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)V

    goto :goto_97

    :cond_76
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_83
    iget-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1400(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V

    :goto_97
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    :cond_d
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->val$loadMore:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_26

    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->offset:I

    goto :goto_32

    :cond_26
    :goto_26
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->limit:I

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$1100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$4;->offset:I

    :goto_32
    return-void
.end method
