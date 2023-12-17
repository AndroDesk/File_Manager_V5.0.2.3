.class Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;
.super Landroid/os/AsyncTask;
.source "CloudFileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startDeleteThread(Ljava/lang/String;)V
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
.field public final synthetic this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;


# direct methods
.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method

.method private deleteLocal()Ljava/lang/Integer;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 5
    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 14
    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x4

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ge v1, v3, :cond_21

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_21
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_48

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 47
    iget v4, v4, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 49
    const/4 v5, 0x3

    .line 50
    if-ne v4, v5, :cond_48

    .line 52
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 54
    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 64
    invoke-static {v1, v0}, Lcom/android/fileexplorer/smb/SmbFileOperationUtil;->deleteFiles(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/ArrayList;)I

    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_61

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 85
    iget v1, v1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 87
    if-ne v1, v2, :cond_61

    .line 89
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->deleteFiles(Ljava/util/List;)I

    .line 92
    move-result v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :cond_61
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 100
    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v3, v1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFiles(Ljava/util/List;ZLjava/lang/ref/WeakReference;)I

    .line 107
    move-result v1

    .line 108
    const/16 v2, 0x11

    .line 110
    if-ne v2, v1, :cond_83

    .line 112
    new-instance v2, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 114
    const v3, 0x7f0a005a

    .line 117
    invoke-direct {v2, v3}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 120
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->setFileList(Ljava/util/ArrayList;)V

    .line 123
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 126
    move-result-object v0

    .line 127
    iget-object v3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 129
    invoke-virtual {v0, v2, v3}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 132
    :cond_83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v0

    .line 136
    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 7

    .line 2
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object p1, p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_ed

    .line 3
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v0, p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v0, v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/CloudDriveManager;->deleteCloudFile(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/FileChangeEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/event/CloudChangeEvent;

    invoke-direct {v1}, Lcom/android/cloud/event/CloudChangeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteCloudFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x18

    const/16 v3, 0x17

    if-lez v0, :cond_b2

    .line 10
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 11
    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->deleteLocal()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 12
    :cond_8c
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v0

    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 13
    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->deleteLocal()Ljava/lang/Integer;

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 15
    :cond_a0
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object p1

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne p1, v0, :cond_ad

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :cond_ad
    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->deleteLocal()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 18
    :cond_b2
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->hasDeleteSoundEffect(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->playDeleteAudio()V

    .line 21
    :cond_c5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 22
    :cond_ca
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v0

    sget-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 24
    :cond_db
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object p1

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne p1, v0, :cond_e8

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 26
    :cond_e8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 27
    :cond_ed
    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->deleteLocal()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 7

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v1, v1, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 5
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->dismissProgress()V

    .line 6
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudFileOperationManager"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1f8

    const/16 v0, 0xf

    const v1, 0x7f1100eb

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v0, :cond_189

    const/16 v0, 0x11

    if-eq p1, v0, :cond_14d

    const/16 v0, 0x17

    if-eq p1, v0, :cond_dd

    const/16 v0, 0x18

    if-eq p1, v0, :cond_c4

    .line 8
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_20f

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_20f

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_20f

    .line 9
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$3300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 10
    invoke-static {v0, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    sget-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 11
    invoke-static {v0, v3, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_20f

    .line 13
    :cond_c4
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    goto/16 :goto_20f

    .line 14
    :cond_dd
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_20f

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_20f

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_20f

    .line 15
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 16
    invoke-static {v0, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    sget-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 17
    invoke-static {v0, v3, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_20f

    .line 19
    :cond_14d
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getActionCache()Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    move-result-object p1

    if-eqz p1, :cond_20f

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getFileList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_174

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_174

    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_174

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 24
    :cond_174
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_20f

    .line 25
    :cond_189
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_20f

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_20f

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_20f

    .line 26
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 27
    invoke-static {v0, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    sget-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_SUPPORT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 28
    invoke-static {v0, v3, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$2100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_20f

    .line 30
    :cond_1f8
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$1700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz p1, :cond_20f

    .line 31
    instance-of v0, p1, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    if-eqz v0, :cond_20f

    .line 32
    check-cast p1, Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onDelete()V

    :cond_20f
    :goto_20f
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 15
    invoke-static {v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->access$700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 25
    const v1, 0x7f1102fd

    .line 28
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 31
    :cond_1e
    return-void
.end method
