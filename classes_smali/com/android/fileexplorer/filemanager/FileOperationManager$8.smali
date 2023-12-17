.class Lcom/android/fileexplorer/filemanager/FileOperationManager$8;
.super Landroid/os/AsyncTask;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->startCompressThread(Ljava/util/ArrayList;Ljava/lang/String;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$dest:Ljava/lang/String;

.field public final synthetic val$fileInfos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$fileInfos:Ljava/util/ArrayList;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$dest:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 6

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$fileInfos:Ljava/util/ArrayList;

    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto/16 :goto_9d

    .line 3
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$fileInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 5
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p1, 0x4

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_31
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileSize(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$dest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_56

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "not enough space"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 11
    :cond_56
    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v2, v2, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v2, v2, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 13
    :cond_6d
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v1, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$dest:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/model/ArchiveHelper;->compressZipArchiveZip4J(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-ne v1, v0, :cond_98

    .line 14
    new-instance v1, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    const v2, 0x7f0a0050

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileList(Ljava/util/ArrayList;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$dest:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setDistPath(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 18
    :cond_98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9d
    :goto_9d
    const/4 p1, 0x2

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 4
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_59

    const/4 v0, 0x5

    if-eq p1, v0, :cond_42

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2e

    const p1, 0x7f1100e8

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_7c

    .line 6
    :cond_2e
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$dest:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_7c

    .line 7
    :cond_42
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->val$dest:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_7c

    .line 10
    :cond_59
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    goto :goto_7c

    .line 11
    :cond_6b
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "compress success"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    .line 13
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1b

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$8;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 21
    const v1, 0x7f1102ec

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showProgressDialog(II)V

    .line 28
    :cond_1b
    return-void
.end method
