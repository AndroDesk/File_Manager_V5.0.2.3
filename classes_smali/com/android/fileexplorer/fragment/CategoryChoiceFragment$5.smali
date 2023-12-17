.class Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;
.super Landroid/os/AsyncTask;
.source "CategoryChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onRefreshFileList(Z)V
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

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

.field public final synthetic val$loadMore:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->val$loadMore:Z

    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 8

    .line 2
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;-><init>()V

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$700(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$700(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->offset:I

    iget v4, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V
    .registers 7

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$302(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    iget v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->offset:I

    iget v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$602(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;I)I

    .line 4
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->val$loadMore:Z

    if-eqz v0, :cond_44

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$900(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/util/TimeCost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->getCostTime()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$1000(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_44

    if-eqz v2, :cond_44

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "name"

    .line 8
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "category_load_time"

    .line 10
    invoke-static {v0, v3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    :cond_44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$500(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onPullRefreshComplete()V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$500(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->onLoadMoreComplete()V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$500(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 14
    iget-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_6b
    iget-boolean v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->hasMore:Z

    if-eqz v0, :cond_76

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$200(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V

    goto :goto_97

    .line 16
    :cond_76
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->val$loadMore:Z

    if-nez v0, :cond_83

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$800(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    :cond_83
    iget-object v0, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    if-eqz v0, :cond_92

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$800(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$1100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    :goto_97
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->onPostExecute(Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$302(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)Z

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->val$loadMore:Z

    .line 9
    if-nez v0, :cond_1f

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$600(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_1f

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 22
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$600(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->offset:I

    .line 31
    goto :goto_2b

    .line 32
    :cond_1f
    :goto_1f
    const/16 v0, 0x64

    .line 34
    iput v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 38
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$600(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->offset:I

    .line 44
    :goto_2b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$700(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 52
    if-ne v0, v1, :cond_4c

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$800(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/util/ArrayList;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v0

    .line 64
    iget v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    .line 66
    add-int/2addr v0, v1

    .line 67
    rem-int/lit8 v0, v0, 0x4

    .line 69
    rsub-int/lit8 v0, v0, 0x4

    .line 71
    rem-int/lit8 v0, v0, 0x4

    .line 73
    add-int/2addr v0, v1

    .line 74
    iput v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    .line 76
    goto :goto_6c

    .line 77
    :cond_4c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 79
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$700(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 85
    if-ne v0, v1, :cond_6c

    .line 87
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 89
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$800(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/util/ArrayList;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v0

    .line 97
    iget v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    .line 99
    add-int/2addr v0, v1

    .line 100
    rem-int/lit8 v0, v0, 0x2

    .line 102
    rsub-int/lit8 v0, v0, 0x2

    .line 104
    rem-int/lit8 v0, v0, 0x2

    .line 106
    add-int/2addr v0, v1

    .line 107
    iput v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;->limit:I

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method
