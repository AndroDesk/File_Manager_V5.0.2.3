.class Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;
.super Landroid/os/AsyncTask;
.source "SearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mSearch:Ljava/lang/String;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/SearchResultFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->mSearch:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    aget-object p1, p1, v1

    check-cast p1, Lcom/android/fileexplorer/search/SearchResult;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->mSearch:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2900(Lcom/android/fileexplorer/fragment/SearchResultFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$3000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2402(Lcom/android/fileexplorer/fragment/SearchResultFragment;Z)Z

    goto :goto_40

    .line 6
    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2402(Lcom/android/fileexplorer/fragment/SearchResultFragment;Z)Z

    .line 7
    :goto_40
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$ConstructTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$3100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    :cond_69
    return-void
.end method
