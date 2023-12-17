.class Lcom/android/fileexplorer/filemanager/FileOperationManager$13;
.super Landroid/os/AsyncTask;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThreadMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public final synthetic val$f:Lcom/android/fileexplorer/model/FileInfo;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$f:Lcom/android/fileexplorer/model/FileInfo;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$text:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->lambda$onPostExecute$0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->lambda$onPostExecute$1(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onPostExecute$0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$onPostExecute$1(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 5

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$f:Lcom/android/fileexplorer/model/FileInfo;

    iget v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1e

    if-eq v0, v2, :cond_13

    const/16 p1, 0xc

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$text:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->renameFile(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$text:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->rename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v2, 0x0

    :cond_27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$text:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->renameFile(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)I

    move-result p1

    const-wide/16 v0, 0x1f4

    .line 7
    :try_start_34
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_51

    :catch_38
    move-exception v0

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rename FILE_IN_VOLUME sleep error: "

    .line 9
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    const/16 v0, 0x11

    if-ne v0, p1, :cond_78

    .line 11
    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    const v1, 0x7f0a0072

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$f:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileList(Ljava/util/ArrayList;)V

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setName(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 17
    :cond_78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 4
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_87

    const/16 v1, 0xe

    const/4 v2, 0x0

    const-string v3, ""

    if-eq p1, v1, :cond_69

    const/16 v1, 0x11

    if-eq p1, v1, :cond_53

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v1, 0x7f110390

    .line 6
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$f:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v5, v5, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/filemanager/d;

    invoke-direct {v2, v0}, Lcom/android/fileexplorer/filemanager/d;-><init>(I)V

    .line 7
    invoke-static {p1, v3, v1, v2}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    goto :goto_8e

    .line 8
    :cond_53
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->val$f:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_8e

    .line 9
    :cond_69
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f11015c

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/filemanager/d;

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/filemanager/d;-><init>(I)V

    .line 11
    invoke-static {p1, v3, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;)Lmiuix/appcompat/app/AlertDialog;

    goto :goto_8e

    .line 12
    :cond_87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 13
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :goto_8e
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
