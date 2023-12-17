.class public Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;
.super Lcom/android/fileexplorer/filemanager/FileOperationManager;
.source "CloudFileOperationManager.java"

# interfaces
.implements Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;


# static fields
.field private static final FULL_SPACE_NUM:I

.field private static final OPERATION_COPY:I

.field private static final OPERATION_CREATE_FOLDER:I

.field private static final OPERATION_DELETE:I

.field private static final OPERATION_MOVE:I

.field private static final OPERATION_RENAME:I

.field private static final TAG:Ljava/lang/String; = "CloudFileOperationManager"


# instance fields
.field private final mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final mCurrentCloudOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDisposableBag:Lk2/a;

.field private final mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

.field private mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->FULL_SPACE_NUM:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->OPERATION_COPY:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->OPERATION_CREATE_FOLDER:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->OPERATION_DELETE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->OPERATION_MOVE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->OPERATION_RENAME:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-void
.end method

.method public static synthetic A(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestQuotaInfo$13(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeUploadDialog$22(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showNoNetworkErrorUploadDialog$17(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic D(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeUploadDialog$23(ZLjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/cloud/fragment/presenter/CloudFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/cloud/fragment/model/CloudFileOperateModel;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorMsgRes(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorTitleRes(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lk2/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->addDisposable(Lk2/b;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$3900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->dealError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$4000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$4100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$4200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayCreateResults(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCloudIdsByInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addDisposable(Lk2/b;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lk2/a;->b:Z

    if-eqz v0, :cond_f

    :cond_8
    new-instance v0, Lk2/a;

    invoke-direct {v0}, Lk2/a;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    :cond_f
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    invoke-virtual {v0, p1}, Lk2/a;->c(Lk2/b;)Z

    return-void
.end method

.method public static synthetic d(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$getUploadPositiveListener$5(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static dealDownloadResult(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 4

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    goto :goto_18

    :cond_10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    :goto_18
    return-void
.end method

.method private dealError(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "createFolder error:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudFileOperationManager"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private displayCreateResults(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create folder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    if-nez p1, :cond_20

    return-void

    :cond_20
    sget-object v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OK:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    if-eq p1, v0, :cond_40

    sget-object v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    if-ne p1, v0, :cond_36

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCreateFolderErrorMsgRes(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showToast(I)V

    goto :goto_4b

    :cond_40
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->requestRefresh(Z)V

    const-string p1, "云盘tab页"

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->createFolder(Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method private displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showErrorDialog(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    goto :goto_33

    :cond_19
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    if-nez p2, :cond_30

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result p2

    if-eqz p2, :cond_30

    move v1, v2

    :cond_30
    invoke-interface {p1, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->requestRefresh(Z)V

    :goto_33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v2, v2, v2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method private displayResults(Ljava/lang/Throwable;Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showErrorDialog(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestQuotaInfo$14(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeUploadDialog$21(Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestDownload$3(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method private getCloudDirectoryCount(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_5

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    return v0
.end method

.method private static getCloudIds(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v2, :cond_2b

    check-cast v1, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2b
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_43
    return-object v0
.end method

.method private getCloudIdsByInfoList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_27
    return-object v0
.end method

.method private static getConsumeDataSize(Ljava/util/List;J)Ljava/lang/String;
    .registers 7

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v3, :cond_21

    check-cast v2, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {v2}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    move-wide v0, v2

    goto :goto_6

    :cond_21
    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    iget-wide v2, v2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v0, v2

    goto :goto_6

    :cond_2b
    cmp-long p0, v0, p1

    if-lez p0, :cond_30

    sub-long/2addr v0, p1

    :cond_30
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConsumeUploadDataSize()J
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->getConsumeUploadDataSize()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCreateFolderErrorMsgRes(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)I
    .registers 3

    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_22

    const/4 p1, -0x1

    return p1

    :pswitch_d  #0x5, 0x6, 0x7
    const p1, 0x7f1102f6

    return p1

    :pswitch_11  #0x4
    const p1, 0x7f1102f4

    return p1

    :pswitch_15  #0x3
    const p1, 0x7f1102f5

    return p1

    :pswitch_19  #0x2
    const p1, 0x7f1102f3

    return p1

    :pswitch_1d  #0x1
    const p1, 0x7f1102f2

    return p1

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_11  #00000004
        :pswitch_d  #00000005
        :pswitch_d  #00000006
        :pswitch_d  #00000007
    .end packed-switch
.end method

.method private getErrorMsgRes(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I
    .registers 3

    sget-object p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_2e

    const/4 p1, -0x1

    return p1

    :pswitch_d  #0x9
    const p1, 0x7f110325

    return p1

    :pswitch_11  #0x8
    const p1, 0x7f11032a

    return p1

    :pswitch_15  #0x6, 0x7
    const p1, 0x7f110307

    return p1

    :pswitch_19  #0x5
    const p1, 0x7f110308

    return p1

    :pswitch_1d  #0x4
    const p1, 0x7f110306

    return p1

    :pswitch_21  #0x3
    const p1, 0x7f1102e6

    return p1

    :pswitch_25  #0x2
    const p1, 0x7f110311

    return p1

    :pswitch_29  #0x1
    const p1, 0x7f11030f

    return p1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_25  #00000002
        :pswitch_21  #00000003
        :pswitch_1d  #00000004
        :pswitch_19  #00000005
        :pswitch_15  #00000006
        :pswitch_15  #00000007
        :pswitch_11  #00000008
        :pswitch_d  #00000009
    .end packed-switch
.end method

.method private getErrorTitleRes(I)I
    .registers 3

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 p1, -0x1

    return p1

    :cond_d
    const p1, 0x7f11031b

    return p1

    :cond_11
    const p1, 0x7f11015b

    return p1

    :cond_15
    const p1, 0x7f110297

    return p1

    :cond_19
    const p1, 0x7f1100f2

    return p1
.end method

.method private getRealCloudFileCount(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2c
    return v0
.end method

.method private getUploadErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;
    .registers 5

    const v0, 0x7f11032e

    if-nez p1, :cond_a

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    iget p1, p1, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_5c

    const/16 v1, 0x2712

    if-eq p1, v1, :cond_54

    const/16 v1, 0x2716

    if-eq p1, v1, :cond_4c

    const/16 v1, 0x271e

    if-eq p1, v1, :cond_44

    const/16 v1, 0x2afa

    if-eq p1, v1, :cond_3c

    const/16 v1, 0x2b04

    if-eq p1, v1, :cond_29

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    const p1, 0x7f11032c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3c
    const p1, 0x7f110328

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_44
    const p1, 0x7f11032d

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4c
    const p1, 0x7f11032a

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_54
    const p1, 0x7f11032b

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5c
    const p1, 0x7f110329

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUploadNegativeButtonListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;
    .registers 5

    new-instance p1, Lcom/android/cloud/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p3, p2}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I
    .registers 2

    const p1, 0x7f110327

    return p1
.end method

.method private getUploadPositiveListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;
    .registers 11

    if-nez p2, :cond_e

    new-instance v6, Lcom/android/cloud/fragment/presenter/g;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/cloud/fragment/presenter/g;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;I)V

    return-object v6

    :cond_e
    new-instance v6, Lcom/android/cloud/fragment/presenter/g;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/cloud/fragment/presenter/g;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;I)V

    return-object v6
.end method

.method public static synthetic h(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$getUploadPositiveListener$6(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestModify$1(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method private isInit()Z
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static synthetic j(Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestDeleteLocal$0(Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static synthetic k(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestDelete$2(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeDownloadDialog$10(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$getUploadNegativeButtonListener$7(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 4

    const p2, 0x7f110050

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getUploadPositiveListener$5(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move-object p5, p1

    check-cast p5, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {p5}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDelete(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I

    move-result p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getUploadPositiveListener$6(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move-object p5, p1

    check-cast p5, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {p5}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDelete(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I

    move-result p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$requestDelete$2(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$requestDeleteLocal$0(Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {p1, v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;Ljava/util/List;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {p1, v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;Ljava/util/List;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {p1, v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;Ljava/util/List;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$requestDownload$3(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->dealDownloadResult(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method private static synthetic lambda$requestModify$1(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    return-void
.end method

.method private synthetic lambda$requestMoveOrCopy$15(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V

    return-void
.end method

.method private synthetic lambda$requestMoveOrCopy$16(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static synthetic lambda$requestQuotaInfo$13(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;->onQuotaInfoReceive(Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V

    return-void
.end method

.method private static synthetic lambda$requestQuotaInfo$14(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$showDataConsumeContinueUploadDialog$25(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudUploadStatusChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$showDataConsumeContinueUploadDialog$26(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestContinueUpload(Ljava/util/List;Z)Li2/e;

    move-result-object p0

    new-instance p1, Lcom/android/cloud/fragment/model/g;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    invoke-virtual {p0, p1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$10(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p2, p4}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDownload(Landroid/content/Context;Ljava/util/List;Z)Li2/e;

    move-result-object p0

    new-instance p2, Lcom/android/cloud/fragment/model/g;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    invoke-virtual {p0, p2}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$11(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$12(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p0, p3, p2, p4}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDownload(Landroid/content/Context;Ljava/util/List;Z)Li2/e;

    move-result-object p0

    new-instance p2, Lcom/android/cloud/fragment/model/g;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    invoke-virtual {p0, p2}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$9(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$19(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V

    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$20(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private lambda$showDataConsumeUploadDialog$21(Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .registers 7

    iget-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iget-object p4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p1, v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCopyOrMove(Landroid/content/Context;Ljava/lang/String;Z)Li2/e;

    move-result-object p1

    new-instance p3, Lcom/android/cloud/fragment/presenter/d;

    const/4 p4, 0x2

    invoke-direct {p3, p0, p2, p4}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    new-instance p4, Lcom/android/cloud/fragment/presenter/d;

    const/4 v0, 0x3

    invoke-direct {p4, p0, p2, v0}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Ln2/a;->b:Ln2/a$a;

    sget-object v0, Ln2/a;->c:Ln2/a$b;

    new-instance v1, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v1, p3, p4, p2, v0}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    invoke-virtual {p1, v1}, Li2/e;->c(Li2/h;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$22(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V

    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$23(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private lambda$showDataConsumeUploadDialog$24(Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .registers 7

    iget-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iget-object p4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p3, p4, p1, v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCopyOrMove(Landroid/content/Context;Ljava/lang/String;Z)Li2/e;

    move-result-object p1

    new-instance p3, Lcom/android/cloud/fragment/presenter/d;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p2, p4}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    new-instance p4, Lcom/android/cloud/fragment/presenter/d;

    invoke-direct {p4, p0, p2, v0}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Ln2/a;->b:Ln2/a$a;

    sget-object v0, Ln2/a;->c:Ln2/a$b;

    new-instance v1, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v1, p3, p4, p2, v0}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    invoke-virtual {p1, v1}, Li2/e;->c(Li2/h;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void
.end method

.method private static synthetic lambda$showDownloadErrorDialog$4(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$showNoNetworkContinueUploadDialog$18(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;JLandroid/content/DialogInterface;I)V
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestContinueUpload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    return-void
.end method

.method private static synthetic lambda$showNoNetworkErrorDownloadDialog$8(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$showNoNetworkErrorUploadDialog$17(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestMoveOrCopy(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showNoNetworkErrorDownloadDialog$8(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestMoveOrCopy$15(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static synthetic o(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeDownloadDialog$11(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static synthetic p(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeUploadDialog$24(Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;JLandroid/content/DialogInterface;I)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showNoNetworkContinueUploadDialog$18(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeContinueUploadDialog$25(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static requestContinueUpload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_44

    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showNoNetworkContinueUploadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    return-void

    :cond_24
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_43

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_43

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDataConsumeContinueUploadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Ljava/lang/String;)V

    :cond_43
    return-void

    :cond_44
    :goto_44
    const-string p0, "CloudFileOperationManager"

    const-string p1, "ContinueUpload invalid, return"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestDelete(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDelete(Landroid/content/Context;Ljava/util/List;)Li2/e;

    move-result-object p1

    new-instance v0, Lcom/android/cloud/fragment/model/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    invoke-virtual {p1, v0}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void

    :cond_28
    :goto_28
    const-string p0, "CloudFileOperationManager"

    const-string p1, "delete invalid, return"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDeleteLocal(Landroid/content/Context;Ljava/util/List;)Li2/e;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/fragment/presenter/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void

    :cond_24
    :goto_24
    const-string p0, "CloudFileOperationManager"

    const-string p1, "delete invalid, return"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    return-void
.end method

.method public static requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V
    .registers 8

    const-string v0, "CloudFileOperationManager"

    if-eqz p1, :cond_6a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6a

    :cond_b
    new-instance v1, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showNoNetworkErrorDownloadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void

    :cond_26
    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCloudIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_36

    const-string p0, "download invalid, cloudIds size error, return"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getConsumeDataSize(Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDataConsumeDownloadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_69

    :cond_50
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDownload(Landroid/content/Context;Ljava/util/List;Z)Li2/e;

    move-result-object p1

    new-instance p3, Lcom/android/cloud/fragment/presenter/b;

    invoke-direct {p3, p0, p2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    :goto_69
    return-void

    :cond_6a
    :goto_6a
    const-string p0, "download invalid, return"

    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestModifyFile(Landroid/content/Context;Ljava/util/List;)Li2/e;

    move-result-object p1

    new-instance v0, Lcom/android/cloud/fragment/model/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    invoke-virtual {p1, v0}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    return-void

    :cond_28
    :goto_28
    const-string p0, "CloudFileOperationManager"

    const-string p1, "delete invalid, return"

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestQuotaInfo(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;)V
    .registers 6

    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestQuotaInfo()Li2/e;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/fragment/presenter/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/i;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;I)V

    new-instance v2, Lcom/android/cloud/fragment/presenter/i;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/cloud/fragment/presenter/i;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ln2/a;->b:Ln2/a$a;

    sget-object v3, Ln2/a;->c:Ln2/a$b;

    new-instance v4, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v4, v1, v2, p0, v3}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    invoke-virtual {v0, v4}, Li2/e;->c(Li2/h;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDownloadErrorDialog$4(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V
    .registers 3

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_11

    const p0, 0x7f110123

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    goto :goto_17

    :cond_11
    invoke-static {p1}, Lcom/android/cloud/util/DialogUtil;->dismissIfAccountInvalid(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_17
    return-void
.end method

.method private static showDataConsumeContinueUploadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/cloud/fragment/model/CloudFileOperateModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100fa

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100f8

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/android/cloud/fragment/presenter/e;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/cloud/fragment/presenter/e;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    const p1, 0x7f110332

    invoke-virtual {p3, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1102e8

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private static showDataConsumeDownloadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/cloud/fragment/model/CloudFileOperateModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100f9

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100f8

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/android/cloud/fragment/presenter/e;

    invoke-direct {v0, p1, p0, p2, v4}, Lcom/android/cloud/fragment/presenter/e;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    const v2, 0x7f1102e7

    invoke-virtual {p3, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/android/cloud/fragment/presenter/e;

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/cloud/fragment/presenter/e;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    const p1, 0x7f1102e8

    invoke-virtual {p3, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private showDataConsumeUploadDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f1100fa

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1010355

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f1100f8

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/cloud/fragment/presenter/f;

    invoke-direct {v1, p0, p2, v0, v5}, Lcom/android/cloud/fragment/presenter/f;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZI)V

    const v3, 0x7f110332

    invoke-virtual {p1, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/cloud/fragment/presenter/f;

    invoke-direct {v1, p0, p2, v0, v2}, Lcom/android/cloud/fragment/presenter/f;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZI)V

    const p2, 0x7f1102e8

    invoke-virtual {p1, p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method public static showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/micloud/midrive/infos/ErrInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errinfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiDrive_LOG"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110301

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1010355

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110300

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/cloud/fragment/presenter/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/cloud/fragment/presenter/c;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    const p2, 0x7f11031d

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110050

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method public static showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110301

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne p1, v1, :cond_3a

    const p1, 0x7f1102ff

    goto :goto_3d

    :cond_3a
    const p1, 0x7f110300

    :goto_3d
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1100eb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private showErrorDialog(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 5

    if-nez p2, :cond_a

    const-string p1, "MiDrive_LOG"

    const-string p2, "errorType is null"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    if-ne p2, v0, :cond_22

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    return-void

    :cond_22
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorTitleRes(I)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorMsgRes(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I

    move-result p1

    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x1010355

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1100eb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget p1, p1, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    const/16 v1, 0x271e

    if-eq p1, v1, :cond_11

    const v1, 0xcf0b

    if-ne p1, v1, :cond_10

    goto :goto_11

    :cond_10
    return v0

    :cond_11
    :goto_11
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method private static showNoNetworkContinueUploadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102d4

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102d3

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/fragment/presenter/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/h;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    const p1, 0x7f11031d

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110050

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private static showNoNetworkErrorDownloadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1100dd

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1102d3

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/cloud/fragment/presenter/c;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/cloud/fragment/presenter/c;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    const p1, 0x7f11031d

    invoke-virtual {v0, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private showNoNetworkErrorUploadDialog(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102d4

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102d3

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p1, 0x7f11031d

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method public static synthetic t(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeUploadDialog$20(ZLjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeDownloadDialog$12(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private unDisposable()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lk2/a;->dispose()V

    :cond_7
    return-void
.end method

.method public static synthetic v(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeContinueUploadDialog$26(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$getUploadNegativeButtonListener$7(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic x(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeDownloadDialog$9(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static synthetic y(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDataConsumeUploadDialog$19(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void
.end method

.method public static synthetic z(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$requestMoveOrCopy$16(ZLjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public buildDeleteMessage(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v4, :cond_b

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCloudDirectoryCount(Ljava/util/List;)I

    move-result v1

    add-int/2addr v3, v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v4, p2

    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getRealCloudFileCount(Ljava/util/List;)I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_50

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f000e

    add-int/2addr v4, v3

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v2

    invoke-virtual {p1, p2, v4, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d8

    :cond_50
    if-lez v3, :cond_b4

    const p2, 0x7f182f6a

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_87

    if-ne v3, p3, :cond_70

    const p2, 0x7f182c8c

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_83

    :cond_70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0011

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v2

    invoke-virtual {p1, p2, v3, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d8

    :cond_87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f0010

    new-array v5, p3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0012

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v2

    invoke-virtual {p1, p2, v3, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d8

    :cond_b4
    if-ne v4, p3, :cond_c2

    const p2, 0x7f182c8e

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_d5

    :cond_c2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f000f

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v2

    invoke-virtual {p1, p2, v4, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_d5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z
    .registers 5

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    return v1

    :cond_14
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startRenameCloudFileThread(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :goto_21
    return v1
.end method

.method public createFolder(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v1, 0x7f1102f0

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v1, 0x7f1102c8

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;

    invoke-direct {v6, p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;)V

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->setIsCloudRelated(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method public deleteFiles(Ljava/util/List;Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "手机tab页"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    return-void

    :cond_2e
    if-eqz p3, :cond_98

    new-instance p3, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x7f12000d

    invoke-direct {p3, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1102fb

    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x1010355

    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->buildDeleteMessage(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x7f110116

    new-instance v1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f110050

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_94

    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_9b

    :cond_94
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_9b

    :cond_98
    invoke-virtual {p0, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startDeleteThread(Ljava/lang/String;)V

    :goto_9b
    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->unDisposable()V

    return-void
.end method

.method public renameFile(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6d

    if-nez p1, :cond_b

    goto :goto_6d

    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    instance-of v1, p1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v1, :cond_1e

    move-object v1, p1

    check-cast v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    iget-object v2, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v0, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    :cond_1e
    move-object v5, v0

    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    const v1, 0x7f11031a

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f11031c

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    new-instance v7, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;

    invoke-direct {v7, p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckExt(Z)V

    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckFileName(Z)V

    instance-of p1, p1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz p1, :cond_6a

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/TextInputDialog;->setIsCloudRelated(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_6d

    :cond_6a
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public requestMoveOrCopy(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "CloudFileOperationManager"

    const-string v0, "copyOrMoveFiles parentId is null or invalid, return"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showNoNetworkErrorUploadDialog(Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getConsumeUploadDataSize()J

    move-result-wide v0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_48

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_48

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDataConsumeUploadDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    :cond_48
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v0

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    if-eqz v0, :cond_58

    const v2, 0x7f11030d

    goto :goto_5b

    :cond_58
    const v2, 0x7f110317

    :goto_5b
    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCopyOrMove(Landroid/content/Context;Ljava/lang/String;Z)Li2/e;

    move-result-object p1

    new-instance v1, Lcom/android/cloud/fragment/presenter/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    new-instance v2, Lcom/android/cloud/fragment/presenter/d;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v0, v3}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ln2/a;->b:Ln2/a$a;

    sget-object v3, Ln2/a;->c:Ln2/a$b;

    new-instance v4, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v4, v1, v2, v0, v3}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    invoke-virtual {p1, v4}, Li2/e;->c(Li2/h;)V

    invoke-direct {p0, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->addDisposable(Lk2/b;)V

    :goto_89
    return-void
.end method

.method public setupView(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    return-void
.end method

.method public showUploadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errinfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11032f

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I

    move-result v1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadNegativeButtonListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    const v2, 0x7f110050

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-static {p3, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowShow(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;)V

    return-void
.end method

.method public startDeleteThread(Ljava/lang/String;)V
    .registers 4

    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;

    invoke-direct {p1, p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startRenameCloudFileThread(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    const-string p1, "CloudFileOperationManager"

    const-string p2, "fileInfo is null, return."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
