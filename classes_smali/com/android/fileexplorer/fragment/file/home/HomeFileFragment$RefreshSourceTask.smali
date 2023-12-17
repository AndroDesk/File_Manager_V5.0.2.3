.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;
.super Landroid/os/AsyncTask;
.source "HomeFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;
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
            "Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 2
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
    invoke-static {}, Lcom/android/fileexplorer/apptag/CategoryHelper;->getInstance()Lcom/android/fileexplorer/apptag/CategoryHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/CategoryHelper;->initAppTag()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->onPostExecute(Ljava/util/List;)V

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->transAppDataToCategory(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/category/HomeCategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_62
    return-void
.end method
