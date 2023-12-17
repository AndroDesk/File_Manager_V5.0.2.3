.class Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;
.super Landroid/os/AsyncTask;
.source "CloudFileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startRenameCloudFileThread(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V
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
.field public final synthetic this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public final synthetic val$f:Lcom/android/cloud/bean/CloudFileInfo;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->val$f:Lcom/android/cloud/bean/CloudFileInfo;

    .line 5
    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->val$text:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 6

    const-string p1, "rename fileType:"

    .line 1
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->val$f:Lcom/android/cloud/bean/CloudFileInfo;

    iget v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudFileOperationManager"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_8f

    .line 5
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->val$f:Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v2}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/cloud/CloudDriveManager;->renameCloudFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_53
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v1

    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne v1, v2, :cond_62

    const/16 p1, 0x17

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_62
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v1

    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne v1, v2, :cond_71

    const/16 p1, 0x18

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 12
    :cond_71
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v1

    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne v1, v2, :cond_80

    const/16 p1, 0xe

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 14
    :cond_80
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object p1

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne p1, v1, :cond_8f

    const/16 p1, 0x19

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_8f
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 3
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 4
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudFileOperationManager"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_138

    const/16 v2, 0xe

    const/4 v3, 0x0

    const v4, 0x7f1100eb

    const/4 v5, 0x3

    if-eq p1, v2, :cond_106

    packed-switch p1, :pswitch_data_152

    .line 6
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$4400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 7
    invoke-static {v2, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f110390

    .line 8
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->val$f:Lcom/android/cloud/bean/CloudFileInfo;

    iget-object v5, v5, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    aput-object v5, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_150

    .line 10
    :pswitch_88  #0x19
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$4200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 11
    invoke-static {v0, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110310

    .line 12
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_150

    .line 14
    :pswitch_bb  #0x18
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$4300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    goto/16 :goto_150

    .line 15
    :pswitch_d4  #0x17
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$4100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 16
    invoke-static {v0, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11030f

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_150

    .line 19
    :cond_106
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$4000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 20
    invoke-static {v0, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11015c

    .line 21
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v4, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_150

    .line 23
    :cond_138
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/android/fileexplorer/event/FileChangeEvent;

    invoke-direct {v2, v0, v1, v1}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZ)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/cloud/event/CloudChangeEvent;

    invoke-direct {v0}, Lcom/android/cloud/event/CloudChangeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_150
    return-void

    nop

    :pswitch_data_152
    .packed-switch 0x17
        :pswitch_d4  #00000017
        :pswitch_bb  #00000018
        :pswitch_88  #00000019
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 15
    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 25
    const v1, 0x7f11031a

    .line 28
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 31
    :cond_1e
    return-void
.end method
