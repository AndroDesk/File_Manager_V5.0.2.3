.class Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;
.super Landroid/os/AsyncTask;
.source "PadNavigationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;
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
            "Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method

.method private findSelectItem(Ljava/util/List;Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ")",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_20

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 17
    iget-object v1, v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    .line 19
    if-eqz v1, :cond_4

    .line 21
    iget-object v2, p2, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->tag:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_4

    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, v0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;->selected:Z

    .line 32
    return-object v0

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e4

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    const v2, 0x7f0801f1

    const v3, 0x7f1101fe

    const-class v4, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "phone_main"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/fileexplorer/util/CategoryUtil;->transAppDataToCategory(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$600(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    move-result-object p1

    if-eqz p1, :cond_a0

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$600(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->isSelected()Z

    move-result p1

    if-nez p1, :cond_d5

    :cond_a0
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$700(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    move-result-object p1

    if-eqz p1, :cond_d5

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$700(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->findSelectItem(Ljava/util/List;Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$702(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 11
    :cond_d5
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$RefreshSourceTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$400(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_e4
    return-void
.end method
