.class Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;
.super Landroid/os/AsyncTask;
.source "MirrorFavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/model/FavoriteItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;",
            "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "FavoriteFragment"

    const-string v2, "doInBackground startSort"

    .line 3
    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    sget-object v3, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mMethod:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {v3}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_20
    const-string v2, "doInBackground endSort costTime = "

    .line 6
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mList:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment$SortTask;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFavoriteFragment;->handleSortResult(Ljava/util/List;)V

    :cond_18
    return-void
.end method
