.class Lcom/android/fileexplorer/filemanager/FileOperationManager$1;
.super Landroid/os/AsyncTask;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$add:Z

.field public final synthetic val$fileInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;ZLjava/util/List;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->val$add:Z

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->val$fileInfos:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 7

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    .line 3
    :cond_c
    iget-boolean p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->val$add:Z

    if-eqz p1, :cond_6e

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->val$fileInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->val$fileInfos:Ljava/util/List;

    if-nez v3, :cond_2c

    goto :goto_1b

    .line 7
    :cond_2c
    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v3, v3, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v3, v3, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_60

    .line 8
    :cond_47
    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-nez v3, :cond_1b

    iget v3, v2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez v3, :cond_1b

    .line 9
    new-instance v3, Lcom/android/fileexplorer/dao/fav/Favorite;

    invoke-direct {v3}, Lcom/android/fileexplorer/dao/fav/Favorite;-><init>()V

    .line 10
    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/dao/fav/Favorite;->setLocation(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    goto :goto_1b

    .line 13
    :cond_60
    :goto_60
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_73

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V

    goto :goto_73

    .line 15
    :cond_6e
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->val$fileInfos:Ljava/util/List;

    invoke-static {p1}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileInfo(Ljava/util/List;)V

    :cond_73
    :goto_73
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    :cond_1f
    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_22

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 21
    iget-boolean v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$1;->val$add:Z

    .line 23
    if-eqz v1, :cond_1c

    .line 25
    const v1, 0x7f1102e5

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    const v1, 0x7f1102f8

    .line 32
    :goto_1f
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 35
    :cond_22
    return-void
.end method
