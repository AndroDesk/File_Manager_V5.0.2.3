.class Lcom/android/fileexplorer/filemanager/FileOperationManager$18;
.super Landroid/os/AsyncTask;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->addToPrivateFolder(ILjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$action:I

.field public final synthetic val$checkedCache:Ljava/util/ArrayList;

.field public final synthetic val$destDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$checkedCache:Ljava/util/ArrayList;

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$action:I

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$destDir:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 6

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$checkedCache:Ljava/util/ArrayList;

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_70

    :cond_b
    const/4 p1, 0x0

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1f
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$checkedCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    if-nez v3, :cond_36

    goto :goto_25

    .line 8
    :cond_36
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 9
    iget-object v0, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 p1, 0x11

    .line 10
    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    const v1, 0x7f0a0038

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 11
    iget v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$action:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setActionType(I)V

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$checkedCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileList(Ljava/util/ArrayList;)V

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$destDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setDistPath(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 15
    :cond_66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_70
    :goto_70
    const/4 p1, 0x2

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "addToPrivateFolder checkedCache is empty"

    if-eq p1, v0, :cond_72

    const/16 v0, 0x11

    if-eq p1, v0, :cond_38

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$checkedCache:Ljava/util/ArrayList;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_30

    .line 4
    :cond_18
    iget p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$action:I

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$checkedCache:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->val$destDir:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->addToPrivateFolder(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_79

    .line 5
    :cond_30
    :goto_30
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_38
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getActionCache()Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_60

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    const/4 v1, 0x0

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_60

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 11
    :cond_60
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_79

    .line 12
    :cond_72
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$18;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
