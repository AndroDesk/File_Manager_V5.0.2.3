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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

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

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

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

    invoke-virtual {v4}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    :cond_40
    if-eqz v0, :cond_7

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setItems(Ljava/util/List;)V

    :cond_45
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-wide v1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupId:J

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5a
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileGroup(J)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteGroupDetailByGroupId(J)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->deleteFileItem(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$100(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$200(Lcom/android/fileexplorer/fragment/RecentFragment;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    const v0, 0x7f110183

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/RecentFragment;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$RemoveTask;->cacheGroupList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$000(Lcom/android/fileexplorer/fragment/RecentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    return-void
.end method
