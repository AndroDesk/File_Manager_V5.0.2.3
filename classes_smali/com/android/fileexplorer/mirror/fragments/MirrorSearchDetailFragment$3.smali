.class Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;
.super Landroid/os/AsyncTask;
.source "MirrorSearchDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->dataHandler(Lcom/android/fileexplorer/search/SearchResultContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
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

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->mSearch:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    aget-object p1, p1, v2

    check-cast p1, Lcom/android/fileexplorer/search/SearchResult;

    .line 4
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v2, v0, v1, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$600(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;ILjava/lang/String;Lcom/android/fileexplorer/search/SearchResult;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->onPostExecute(Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$700(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->mSearch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->mSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$800(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$900(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V

    :cond_48
    return-void
.end method
