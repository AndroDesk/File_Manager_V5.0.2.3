.class Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;
.super Landroid/os/AsyncTask;
.source "MoreCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshSourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/dao/file/AppTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field public ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/MoreCategoryFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_27

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    :cond_27
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->access$200(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->access$300(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    .line 5
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->access$200(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getNotAddedCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_4f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->access$202(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;Ljava/util/List;)Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mNotAddedCategories:Ljava/util/List;

    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->transAppDataToNotAddedCategory(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_78
    return-void
.end method
