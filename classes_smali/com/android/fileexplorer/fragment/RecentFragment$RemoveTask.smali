.class Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;
.super Landroid/os/AsyncTask;
.source "RecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field public cacheGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field public filePath:Ljava/lang/String;

.field public weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/RecentFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->weakReference:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->filePath:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 5
    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    :cond_40
    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setItems(Ljava/util/List;)V

    :cond_45
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_5a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 9
    iget-wide v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupId:J

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_5a
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileGroup(J)V

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteGroupDetailByGroupId(J)V

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileItem(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    if-nez v0, :cond_b

    return-void

    .line 3
    :cond_b
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$200(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    const v0, 0x7f110183

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->weakReference:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    :cond_1e
    return-void
.end method
