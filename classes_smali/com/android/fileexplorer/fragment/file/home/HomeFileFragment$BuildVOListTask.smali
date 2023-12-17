.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;
.super Landroid/os/AsyncTask;
.source "HomeFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuildVOListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
        ">;>;"
    }
.end annotation


# instance fields
.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljava/util/List;Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->files:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->files:Ljava/util/List;

    if-eqz p1, :cond_48

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getDirPackageToCache()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildVOList(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildSizeAndTimeInfo(Ljava/util/List;Landroid/content/Context;)Z

    goto :goto_49

    :cond_48
    const/4 p1, 0x0

    :goto_49
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$BuildVOListTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->replaceData(Ljava/util/List;)V

    :cond_17
    return-void
.end method
