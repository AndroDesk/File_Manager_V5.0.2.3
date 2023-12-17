.class Lcom/android/fileexplorer/filemanager/FileOperationManager$5;
.super Landroid/os/AsyncTask;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V
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

.field public final synthetic val$dist:Ljava/lang/String;

.field public final synthetic val$password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$password:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 5

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/fileexplorer/model/ArchiveHelper;->decompressArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_20

    :catch_11
    move-exception p1

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "decompressArchive error: "

    .line 4
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-static {p1, v1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x4

    :goto_20
    const/16 v0, 0x11

    if-ne v0, p1, :cond_4a

    .line 6
    new-instance v0, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    const v1, 0x7f0a0125

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setDistPath(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchivePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setSrcPath(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setPassword(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v1, v0, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 11
    :cond_4a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 11

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchivePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v1, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v1, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 6
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v1, 0x7f11010a

    const/4 v2, 0x0

    if-eqz p1, :cond_e8

    const/4 v3, 0x5

    if-eq p1, v3, :cond_e6

    const/16 v3, 0x11

    if-eq p1, v3, :cond_d3

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_cf

    const/4 v3, 0x2

    if-eq p1, v3, :cond_cb

    const/4 v3, 0x3

    if-eq p1, v3, :cond_b9

    packed-switch p1, :pswitch_data_106

    goto/16 :goto_ff

    :pswitch_47  #0xf
    const v1, 0x7f110109

    goto/16 :goto_ff

    :pswitch_4c  #0xe
    const v1, 0x7f11015e

    goto/16 :goto_ff

    .line 7
    :pswitch_51  #0xd
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5d

    goto/16 :goto_ff

    :cond_5d
    const p1, 0x7f11010f

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$password:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    const p1, 0x7f11010d

    goto :goto_73

    :cond_70
    const p1, 0x7f11010c

    :goto_73
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 10
    new-instance p1, Lcom/android/fileexplorer/view/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v1, v1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v4

    new-instance v8, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;

    invoke-direct {v8, p0, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$1;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$5;Ljava/lang/String;)V

    const-string v7, ""

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    .line 11
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$5$2;-><init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$5;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/TextInputDialog;->setOnCancelListener(Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;)V

    .line 12
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckFileNameLength(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_e6

    :pswitch_b5  #0xc
    const v1, 0x7f110107

    goto :goto_ff

    .line 15
    :cond_b9
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    goto :goto_e6

    :cond_cb
    const v1, 0x7f110108

    goto :goto_ff

    :cond_cf
    const v1, 0x7f11010b

    goto :goto_ff

    .line 16
    :cond_d3
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p1, p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_e6
    :goto_e6
    move v1, v2

    goto :goto_ff

    :cond_e8
    const v1, 0x7f11010e

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->val$dist:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_ff
    if-eqz v1, :cond_104

    .line 18
    invoke-static {v1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :cond_104
    return-void

    nop

    :pswitch_data_106
    .packed-switch 0xc
        :pswitch_b5  #0000000c
        :pswitch_51  #0000000d
        :pswitch_4c  #0000000e
        :pswitch_47  #0000000f
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1b

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager$5;->this$0:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 21
    const v1, 0x7f1102f7

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showProgressDialog(II)V

    .line 28
    :cond_1b
    return-void
.end method
