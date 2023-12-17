.class public Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;
.super Lcom/android/fileexplorer/filemanager/FileOperationManager;
.source "CloudFileOperationManager.java"

# interfaces
.implements Lcom/android/cloud/fragment/presenter/CloudFileContract$FileOperatePresenter;


# static fields
.field private static final FULL_SPACE_NUM:I = 0x4

.field private static final OPERATION_COPY:I = 0x0

.field private static final OPERATION_CREATE_FOLDER:I = 0x4

.field private static final OPERATION_DELETE:I = 0x2

.field private static final OPERATION_MOVE:I = 0x1

.field private static final OPERATION_RENAME:I = 0x3

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
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 4
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 6
    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 20
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

    .line 1
    iget-object p0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Lcom/android/cloud/fragment/model/CloudFileOperateModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorMsgRes(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorTitleRes(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lk2/b;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->addDisposable(Lk2/b;)V

    .line 4
    return-void
.end method

.method public static synthetic access$3000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->dealError(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method public static synthetic access$4000(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$4100(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$4200(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$4400(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayCreateResults(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCloudIdsByInfoList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method private addDisposable(Lk2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-boolean v0, v0, Lk2/a;->b:Z

    .line 7
    if-eqz v0, :cond_f

    .line 9
    :cond_8
    new-instance v0, Lk2/a;

    .line 11
    invoke-direct {v0}, Lk2/a;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    .line 18
    invoke-virtual {v0, p1}, Lk2/a;->c(Lk2/b;)Z

    .line 21
    return-void
.end method

.method public static synthetic d(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$getUploadPositiveListener$5(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static dealDownloadResult(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 7
    if-ne v0, v1, :cond_10

    .line 9
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 25
    :goto_18
    return-void
.end method

.method private dealError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    const-string v0, "createFolder error:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "CloudFileOperationManager"

    .line 20
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private displayCreateResults(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "create folder:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MiDrive_LOG"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-interface {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    .line 30
    if-nez p1, :cond_20

    .line 32
    return-void

    .line 33
    :cond_20
    sget-object v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OK:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 35
    if-eq p1, v0, :cond_40

    .line 37
    sget-object v0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 39
    if-ne p1, v0, :cond_36

    .line 41
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 47
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    .line 54
    return-void

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCreateFolderErrorMsgRes(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)I

    .line 60
    move-result p1

    .line 61
    invoke-interface {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showToast(I)V

    .line 64
    goto :goto_4b

    .line 65
    :cond_40
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-interface {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->requestRefresh(Z)V

    .line 71
    const-string p1, "云盘tab页"

    .line 73
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->createFolder(Ljava/lang/String;)V

    .line 76
    :goto_4b
    return-void
.end method

.method private displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    if-nez p1, :cond_a

    return-void

    .line 2
    :cond_a
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    .line 3
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showErrorDialog(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    goto :goto_33

    .line 4
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

    .line 5
    :goto_33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 6
    invoke-static {v2, v2, v2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method private displayResults(Ljava/lang/Throwable;Z)V
    .registers 5

    .line 10
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    .line 11
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1a

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 18
    if-eqz v1, :cond_5

    .line 20
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 22
    if-eqz v1, :cond_5

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_5

    .line 27
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_43

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileItem;

    .line 22
    if-eqz v2, :cond_2b

    .line 24
    check-cast v1, Lcom/android/cloud/bean/CloudFileItem;

    .line 26
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_9

    .line 36
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_9

    .line 44
    :cond_2b
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 46
    if-eqz v2, :cond_9

    .line 48
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 50
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_9

    .line 60
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_9

    .line 68
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_27

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 22
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_9

    .line 32
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_9

    .line 40
    :cond_27
    return-object v0
.end method

.method private static getConsumeDataSize(Ljava/util/List;J)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2b

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileItem;

    .line 19
    if-eqz v3, :cond_21

    .line 21
    check-cast v2, Lcom/android/cloud/bean/CloudFileItem;

    .line 23
    invoke-virtual {v2}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 30
    move-result-wide v2

    .line 31
    add-long/2addr v2, v0

    .line 32
    move-wide v0, v2

    .line 33
    goto :goto_6

    .line 34
    :cond_21
    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 36
    if-eqz v3, :cond_6

    .line 38
    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 40
    iget-wide v2, v2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 42
    add-long/2addr v0, v2

    .line 43
    goto :goto_6

    .line 44
    :cond_2b
    cmp-long p0, v0, p1

    .line 46
    if-lez p0, :cond_30

    .line 48
    sub-long/2addr v0, p1

    .line 49
    :cond_30
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private getConsumeUploadDataSize()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 3
    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->getConsumeUploadDataSize()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method private getCreateFolderErrorMsgRes(Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)I
    .registers 3

    .line 1
    sget-object v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$server$protocol$CreateFolderResponse:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    packed-switch p1, :pswitch_data_22

    .line 12
    const/4 p1, -0x1

    .line 13
    return p1

    .line 14
    :pswitch_d  #0x5, 0x6, 0x7
    const p1, 0x7f1102f6

    .line 17
    return p1

    .line 18
    :pswitch_11  #0x4
    const p1, 0x7f1102f4

    .line 21
    return p1

    .line 22
    :pswitch_15  #0x3
    const p1, 0x7f1102f5

    .line 25
    return p1

    .line 26
    :pswitch_19  #0x2
    const p1, 0x7f1102f3

    .line 29
    return p1

    .line 30
    :pswitch_1d  #0x1
    const p1, 0x7f1102f2

    .line 33
    return p1

    .line 34
    nop

    .line 35
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

    .line 1
    sget-object p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$6;->$SwitchMap$com$micloud$midrive$session$action$SyncFileOperationResponse$ErrorType:[I

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p2

    .line 7
    aget p1, p1, p2

    .line 9
    packed-switch p1, :pswitch_data_2e

    .line 12
    const/4 p1, -0x1

    .line 13
    return p1

    .line 14
    :pswitch_d  #0x9
    const p1, 0x7f110325

    .line 17
    return p1

    .line 18
    :pswitch_11  #0x8
    const p1, 0x7f11032a

    .line 21
    return p1

    .line 22
    :pswitch_15  #0x6, 0x7
    const p1, 0x7f110307

    .line 25
    return p1

    .line 26
    :pswitch_19  #0x5
    const p1, 0x7f110308

    .line 29
    return p1

    .line 30
    :pswitch_1d  #0x4
    const p1, 0x7f110306

    .line 33
    return p1

    .line 34
    :pswitch_21  #0x3
    const p1, 0x7f1102e6

    .line 37
    return p1

    .line 38
    :pswitch_25  #0x2
    const p1, 0x7f110311

    .line 41
    return p1

    .line 42
    :pswitch_29  #0x1
    const p1, 0x7f11030f

    .line 45
    return p1

    .line 46
    nop

    .line 47
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2c

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 18
    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_5

    .line 30
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "-"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_5

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_5

    .line 45
    :cond_2c
    return v0
.end method

.method private getUploadErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;
    .registers 5

    .line 1
    const v0, 0x7f11032e

    .line 4
    if-nez p1, :cond_a

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget p1, p1, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    .line 13
    const/16 v1, -0x2710

    .line 15
    if-eq p1, v1, :cond_5c

    .line 17
    const/16 v1, 0x2712

    .line 19
    if-eq p1, v1, :cond_54

    .line 21
    const/16 v1, 0x2716

    .line 23
    if-eq p1, v1, :cond_4c

    .line 25
    const/16 v1, 0x271e

    .line 27
    if-eq p1, v1, :cond_44

    .line 29
    const/16 v1, 0x2afa

    .line 31
    if-eq p1, v1, :cond_3c

    .line 33
    const/16 v1, 0x2b04

    .line 35
    if-eq p1, v1, :cond_29

    .line 37
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_29
    const p1, 0x7f11032c

    .line 45
    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v2

    .line 54
    aput-object v2, v0, v1

    .line 56
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3c
    const p1, 0x7f110328

    .line 64
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_44
    const p1, 0x7f11032d

    .line 72
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_4c
    const p1, 0x7f11032a

    .line 80
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :cond_54
    const p1, 0x7f11032b

    .line 88
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_5c
    const p1, 0x7f110329

    .line 96
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method

.method private getUploadNegativeButtonListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;
    .registers 5

    .line 1
    new-instance p1, Lcom/android/cloud/a;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, v0, p3, p2}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    return-object p1
.end method

.method private getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I
    .registers 2

    const p1, 0x7f110327

    return p1
.end method

.method private getUploadPositiveListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;
    .registers 11

    .line 1
    if-nez p2, :cond_e

    .line 3
    new-instance v6, Lcom/android/cloud/fragment/presenter/g;

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p3

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/cloud/fragment/presenter/g;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;I)V

    .line 14
    return-object v6

    .line 15
    :cond_e
    new-instance v6, Lcom/android/cloud/fragment/presenter/g;

    .line 17
    const/4 v5, 0x1

    .line 18
    move-object v0, v6

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p3

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/android/cloud/fragment/presenter/g;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;I)V

    .line 26
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

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
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

    .line 1
    const p2, 0x7f110050

    .line 4
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private synthetic lambda$getUploadPositiveListener$5(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    new-instance p4, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    move-object p5, p1

    .line 7
    check-cast p5, Lcom/android/cloud/bean/CloudFileInfo;

    .line 9
    invoke-virtual {p5}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    .line 12
    move-result-object p5

    .line 13
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p2, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDelete(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 19
    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I

    .line 22
    move-result p2

    .line 23
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p3, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private synthetic lambda$getUploadPositiveListener$6(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    new-instance p4, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    move-object p5, p1

    .line 7
    check-cast p5, Lcom/android/cloud/bean/CloudFileInfo;

    .line 9
    invoke-virtual {p5}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudLocalFileId()Ljava/lang/String;

    .line 12
    move-result-object p5

    .line 13
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p2, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDelete(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 19
    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I

    .line 22
    move-result p2

    .line 23
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p3, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowClick(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static synthetic lambda$requestDelete$2(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 9
    return-void
.end method

.method private static synthetic lambda$requestDeleteLocal$0(Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 7
    invoke-virtual {p1, v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;Ljava/util/List;)V

    .line 10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 16
    invoke-virtual {p1, v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;Ljava/util/List;)V

    .line 19
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

    .line 25
    invoke-virtual {p1, v0, p0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;Ljava/util/List;)V

    .line 28
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 36
    return-void
.end method

.method private static synthetic lambda$requestDownload$3(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->dealDownloadResult(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$requestModify$1(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 9
    return-void
.end method

.method private synthetic lambda$requestMoveOrCopy$15(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V

    .line 4
    return-void
.end method

.method private synthetic lambda$requestMoveOrCopy$16(ZLjava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Ljava/lang/Throwable;Z)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$requestQuotaInfo$13(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;->onQuotaInfoReceive(Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$requestQuotaInfo$14(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;->onError(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$showDataConsumeContinueUploadDialog$25(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudUploadStatusChanged(Z)V

    .line 9
    return-void
.end method

.method private static synthetic lambda$showDataConsumeContinueUploadDialog$26(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestContinueUpload(Ljava/util/List;Z)Li2/e;

    .line 5
    move-result-object p0

    .line 6
    new-instance p1, Lcom/android/cloud/fragment/model/g;

    .line 8
    const/4 p3, 0x3

    .line 9
    invoke-direct {p1, p3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    .line 12
    invoke-virtual {p0, p1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p2, p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 19
    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$10(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    move-result-object p3

    .line 5
    const/4 p4, 0x0

    .line 6
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDownload(Landroid/content/Context;Ljava/util/List;Z)Li2/e;

    .line 9
    move-result-object p0

    .line 10
    new-instance p2, Lcom/android/cloud/fragment/model/g;

    .line 12
    const/4 p3, 0x5

    .line 13
    invoke-direct {p2, p3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    .line 16
    invoke-virtual {p0, p2}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 23
    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$11(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 9
    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$12(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    move-result-object p3

    .line 5
    const/4 p4, 0x1

    .line 6
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDownload(Landroid/content/Context;Ljava/util/List;Z)Li2/e;

    .line 9
    move-result-object p0

    .line 10
    new-instance p2, Lcom/android/cloud/fragment/model/g;

    .line 12
    const/4 p3, 0x2

    .line 13
    invoke-direct {p2, p3}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    .line 16
    invoke-virtual {p0, p2}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 23
    return-void
.end method

.method private static synthetic lambda$showDataConsumeDownloadDialog$9(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 9
    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$19(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V

    .line 4
    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$20(ZLjava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Ljava/lang/Throwable;Z)V

    .line 4
    return-void
.end method

.method private lambda$showDataConsumeUploadDialog$21(Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .registers 7

    .line 1
    iget-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 3
    iget-object p4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object p4

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p3, p4, p1, v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCopyOrMove(Landroid/content/Context;Ljava/lang/String;Z)Li2/e;

    .line 13
    move-result-object p1

    .line 14
    new-instance p3, Lcom/android/cloud/fragment/presenter/d;

    .line 16
    const/4 p4, 0x2

    .line 17
    invoke-direct {p3, p0, p2, p4}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    .line 20
    new-instance p4, Lcom/android/cloud/fragment/presenter/d;

    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-direct {p4, p0, p2, v0}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object p2, Ln2/a;->b:Ln2/a$a;

    .line 31
    sget-object v0, Ln2/a;->c:Ln2/a$b;

    .line 33
    new-instance v1, Lio/reactivex/internal/observers/LambdaObserver;

    .line 35
    invoke-direct {v1, p3, p4, p2, v0}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    .line 38
    invoke-virtual {p1, v1}, Li2/e;->c(Li2/h;)V

    .line 41
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 43
    invoke-interface {p1, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 46
    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$22(ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;Z)V

    .line 4
    return-void
.end method

.method private synthetic lambda$showDataConsumeUploadDialog$23(ZLjava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->displayResults(Ljava/lang/Throwable;Z)V

    .line 4
    return-void
.end method

.method private lambda$showDataConsumeUploadDialog$24(Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .registers 7

    .line 1
    iget-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 3
    iget-object p4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object p4

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p3, p4, p1, v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCopyOrMove(Landroid/content/Context;Ljava/lang/String;Z)Li2/e;

    .line 13
    move-result-object p1

    .line 14
    new-instance p3, Lcom/android/cloud/fragment/presenter/d;

    .line 16
    const/4 p4, 0x0

    .line 17
    invoke-direct {p3, p0, p2, p4}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    .line 20
    new-instance p4, Lcom/android/cloud/fragment/presenter/d;

    .line 22
    invoke-direct {p4, p0, p2, v0}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-object p2, Ln2/a;->b:Ln2/a$a;

    .line 30
    sget-object v0, Ln2/a;->c:Ln2/a$b;

    .line 32
    new-instance v1, Lio/reactivex/internal/observers/LambdaObserver;

    .line 34
    invoke-direct {v1, p3, p4, p2, v0}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    .line 37
    invoke-virtual {p1, v1}, Li2/e;->c(Li2/h;)V

    .line 40
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 42
    invoke-interface {p1, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 45
    return-void
.end method

.method private static synthetic lambda$showDownloadErrorDialog$4(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$showNoNetworkContinueUploadDialog$18(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;JLandroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestContinueUpload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$showNoNetworkErrorDownloadDialog$8(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$showNoNetworkErrorUploadDialog$17(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestMoveOrCopy(Ljava/lang/String;)V

    .line 4
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

    .line 1
    if-eqz p1, :cond_44

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_44

    .line 10
    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 12
    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_24

    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showNoNetworkContinueUploadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    .line 36
    return-void

    .line 37
    :cond_24
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_43

    .line 55
    const-wide/16 v1, 0x0

    .line 57
    cmp-long v1, p2, v1

    .line 59
    if-lez v1, :cond_43

    .line 61
    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    invoke-static {p0, v0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDataConsumeContinueUploadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Ljava/lang/String;)V

    .line 68
    :cond_43
    return-void

    .line 69
    :cond_44
    :goto_44
    const-string p0, "CloudFileOperationManager"

    .line 71
    const-string p1, "ContinueUpload invalid, return"

    .line 73
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
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

    .line 1
    if-eqz p1, :cond_28

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_28

    .line 10
    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 12
    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDelete(Landroid/content/Context;Ljava/util/List;)Li2/e;

    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcom/android/cloud/fragment/model/g;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    .line 33
    invoke-virtual {p1, v0}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 40
    return-void

    .line 41
    :cond_28
    :goto_28
    const-string p0, "CloudFileOperationManager"

    .line 43
    const-string p1, "delete invalid, return"

    .line 45
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
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

    .line 1
    if-eqz p1, :cond_24

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_24

    .line 10
    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 12
    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    .line 15
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestDeleteLocal(Landroid/content/Context;Ljava/util/List;)Li2/e;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/cloud/fragment/presenter/b;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p1, v2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 29
    invoke-virtual {v0, v1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 36
    return-void

    .line 37
    :cond_24
    :goto_24
    const-string p0, "CloudFileOperationManager"

    .line 39
    const-string p1, "delete invalid, return"

    .line 41
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    return-void
.end method

.method public static requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V
    .registers 8

    const-string v0, "CloudFileOperationManager"

    if-eqz p1, :cond_6a

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6a

    .line 3
    :cond_b
    new-instance v1, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    invoke-direct {v1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_26

    .line 5
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showNoNetworkErrorDownloadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void

    .line 6
    :cond_26
    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCloudIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_36

    const-string p0, "download invalid, cloudIds size error, return"

    .line 8
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
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

    .line 10
    invoke-static {p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getConsumeDataSize(Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDataConsumeDownloadDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_69

    .line 11
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

    .line 12
    invoke-virtual {p1, p3}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    :goto_69
    return-void

    :cond_6a
    :goto_6a
    const-string p0, "download invalid, return"

    .line 14
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

    .line 1
    if-eqz p1, :cond_28

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_28

    .line 10
    :cond_9
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 12
    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestModifyFile(Landroid/content/Context;Ljava/util/List;)Li2/e;

    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcom/android/cloud/fragment/model/g;

    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    .line 33
    invoke-virtual {p1, v0}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->addDisposable(Lk2/b;)V

    .line 40
    return-void

    .line 41
    :cond_28
    :goto_28
    const-string p0, "CloudFileOperationManager"

    .line 43
    const-string p1, "delete invalid, return"

    .line 45
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static requestQuotaInfo(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestQuotaInfo()Li2/e;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/cloud/fragment/presenter/i;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/cloud/fragment/presenter/i;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;I)V

    .line 16
    new-instance v2, Lcom/android/cloud/fragment/presenter/i;

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, p0, v3}, Lcom/android/cloud/fragment/presenter/i;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;I)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object p0, Ln2/a;->b:Ln2/a$a;

    .line 27
    sget-object v3, Ln2/a;->c:Ln2/a$b;

    .line 29
    new-instance v4, Lio/reactivex/internal/observers/LambdaObserver;

    .line 31
    invoke-direct {v4, v1, v2, p0, v3}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    .line 34
    invoke-virtual {v0, v4}, Li2/e;->c(Li2/h;)V

    .line 37
    return-void
.end method

.method public static synthetic s(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->lambda$showDownloadErrorDialog$4(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_11

    .line 11
    const p0, 0x7f110123

    .line 14
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    invoke-static {p1}, Lcom/android/cloud/util/DialogUtil;->dismissIfAccountInvalid(Landroid/app/Dialog;)V

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 24
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

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 14
    move-result-object v0

    .line 15
    const v2, 0x7f1100fa

    .line 18
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 21
    move-result-object v0

    .line 22
    const v2, 0x1010355

    .line 25
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    move-result-object v0

    .line 29
    const v2, 0x7f1100f8

    .line 32
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object p3, v1, v3

    .line 41
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 48
    move-result-object p3

    .line 49
    new-instance v0, Lcom/android/cloud/fragment/presenter/e;

    .line 51
    invoke-direct {v0, p1, p2, p0}, Lcom/android/cloud/fragment/presenter/e;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Ljava/util/List;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 54
    const p1, 0x7f110332

    .line 57
    invoke-virtual {p3, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 60
    move-result-object p1

    .line 61
    const p2, 0x7f1102e8

    .line 64
    const/4 p3, 0x0

    .line 65
    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 80
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

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 14
    move-result-object v0

    .line 15
    const v2, 0x7f1100f9

    .line 18
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 21
    move-result-object v0

    .line 22
    const v2, 0x1010355

    .line 25
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    move-result-object v0

    .line 29
    const v2, 0x7f1100f8

    .line 32
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    new-array v3, v1, [Ljava/lang/Object;

    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object p3, v3, v4

    .line 41
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 48
    move-result-object p3

    .line 49
    new-instance v0, Lcom/android/cloud/fragment/presenter/e;

    .line 51
    invoke-direct {v0, p1, p0, p2, v4}, Lcom/android/cloud/fragment/presenter/e;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    .line 54
    const v2, 0x7f1102e7

    .line 57
    invoke-virtual {p3, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 60
    move-result-object p3

    .line 61
    new-instance v0, Lcom/android/cloud/fragment/presenter/e;

    .line 63
    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/cloud/fragment/presenter/e;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    .line 66
    const p1, 0x7f1102e8

    .line 69
    invoke-virtual {p3, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 84
    return-void
.end method

.method private showDataConsumeUploadDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 8
    move-result v0

    .line 9
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 11
    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 13
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 24
    move-result-object v1

    .line 25
    const v3, 0x7f1100fa

    .line 28
    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 31
    move-result-object v1

    .line 32
    const v3, 0x1010355

    .line 35
    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 38
    move-result-object v1

    .line 39
    const v3, 0x7f1100f8

    .line 42
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    new-array v4, v2, [Ljava/lang/Object;

    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object p1, v4, v5

    .line 51
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 58
    move-result-object p1

    .line 59
    new-instance v1, Lcom/android/cloud/fragment/presenter/f;

    .line 61
    invoke-direct {v1, p0, p2, v0, v5}, Lcom/android/cloud/fragment/presenter/f;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZI)V

    .line 64
    const v3, 0x7f110332

    .line 67
    invoke-virtual {p1, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    move-result-object p1

    .line 71
    new-instance v1, Lcom/android/cloud/fragment/presenter/f;

    .line 73
    invoke-direct {v1, p0, p2, v0, v2}, Lcom/android/cloud/fragment/presenter/f;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZI)V

    .line 76
    const p2, 0x7f1102e8

    .line 79
    invoke-virtual {p1, p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 89
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 96
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

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errinfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiDrive_LOG"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110301

    .line 12
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1010355

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110300

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/cloud/fragment/presenter/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/cloud/fragment/presenter/c;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    const p2, 0x7f11031d

    .line 15
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110050

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 18
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method public static showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110301

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
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

    .line 7
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private showErrorDialog(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V
    .registers 5

    .line 1
    if-nez p2, :cond_a

    .line 3
    const-string p1, "MiDrive_LOG"

    .line 5
    const-string p2, "errorType is null"

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 13
    if-ne p2, v0, :cond_22

    .line 15
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 27
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    .line 34
    return-void

    .line 35
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorTitleRes(I)I

    .line 38
    move-result v0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getErrorMsgRes(ILcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)I

    .line 42
    move-result p1

    .line 43
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 45
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 53
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 56
    move-result-object v1

    .line 57
    invoke-direct {p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 63
    move-result-object p2

    .line 64
    const v0, 0x1010355

    .line 67
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 74
    move-result-object p1

    .line 75
    const p2, 0x7f1100eb

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 90
    return-void
.end method

.method public static showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget p1, p1, Lcom/micloud/midrive/infos/ErrInfo;->errCode:I

    .line 7
    const/16 v1, 0x271e

    .line 9
    if-eq p1, v1, :cond_11

    .line 11
    const v1, 0xcf0b

    .line 14
    if-ne p1, v1, :cond_10

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    return v0

    .line 18
    :cond_11
    :goto_11
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/cloud/CloudDriveManager;->showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;

    .line 25
    const/4 p0, 0x1

    .line 26
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

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f1102d4

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 21
    move-result-object v0

    .line 22
    const v1, 0x1010355

    .line 25
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f1102d3

    .line 32
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/cloud/fragment/presenter/h;

    .line 38
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/h;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    .line 41
    const p1, 0x7f11031d

    .line 44
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 47
    move-result-object p1

    .line 48
    const p2, 0x7f110050

    .line 51
    const/4 p3, 0x0

    .line 52
    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 67
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

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 14
    move-result-object v0

    .line 15
    const v2, 0x7f1100dd

    .line 18
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 21
    move-result-object v0

    .line 22
    const v2, 0x1010355

    .line 25
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    move-result-object v0

    .line 29
    const v2, 0x7f1102d3

    .line 32
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Lcom/android/cloud/fragment/presenter/c;

    .line 38
    invoke-direct {v2, p0, p1, v1}, Lcom/android/cloud/fragment/presenter/c;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;I)V

    .line 41
    const p1, 0x7f11031d

    .line 44
    invoke-virtual {v0, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 47
    move-result-object p1

    .line 48
    const v0, 0x7f110050

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 67
    return-void
.end method

.method private showNoNetworkErrorUploadDialog(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f1102d4

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x1010355

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f1102d3

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/android/cloud/a;

    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-direct {v1, v2, p0, p1}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    const p1, 0x7f11031d

    .line 47
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 50
    move-result-object p1

    .line 51
    const v0, 0x7f110050

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 65
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 72
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

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mDisposableBag:Lk2/a;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lk2/a;->dispose()V

    .line 8
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_20

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    if-eqz v4, :cond_b

    .line 26
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 28
    if-eqz v4, :cond_b

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_b

    .line 33
    :cond_20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 36
    move-result p2

    .line 37
    sub-int/2addr p2, v3

    .line 38
    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getCloudDirectoryCount(Ljava/util/List;)I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v3, v1

    .line 43
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 46
    move-result v4

    .line 47
    sub-int/2addr v4, v1

    .line 48
    add-int/2addr v4, p2

    .line 49
    invoke-direct {p0, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getRealCloudFileCount(Ljava/util/List;)I

    .line 52
    move-result p2

    .line 53
    const/4 p3, 0x1

    .line 54
    if-lez p2, :cond_50

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p1

    .line 60
    const p2, 0x7f0f000e

    .line 63
    add-int/2addr v4, v3

    .line 64
    new-array p3, p3, [Ljava/lang/Object;

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v1

    .line 70
    aput-object v1, p3, v2

    .line 72
    invoke-virtual {p1, p2, v4, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    goto/16 :goto_cc

    .line 81
    :cond_50
    if-lez v3, :cond_ac

    .line 83
    const p2, 0x7f1102fc

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    if-nez v4, :cond_7f

    .line 95
    if-ne v3, p3, :cond_68

    .line 97
    const p2, 0x7f11011a

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    goto :goto_7b

    .line 105
    :cond_68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    move-result-object p1

    .line 109
    const p2, 0x7f0f0011

    .line 112
    new-array p3, p3, [Ljava/lang/Object;

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v1

    .line 118
    aput-object v1, p3, v2

    .line 120
    invoke-virtual {p1, p2, v3, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    :goto_7b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    goto :goto_cc

    .line 128
    :cond_7f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object p2

    .line 132
    const v1, 0x7f0f0010

    .line 135
    new-array v5, p3, [Ljava/lang/Object;

    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v6

    .line 141
    aput-object v6, v5, v2

    .line 143
    invoke-virtual {p2, v1, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    move-result-object p1

    .line 154
    const p2, 0x7f0f0012

    .line 157
    new-array p3, p3, [Ljava/lang/Object;

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v1

    .line 163
    aput-object v1, p3, v2

    .line 165
    invoke-virtual {p1, p2, v3, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_cc

    .line 173
    :cond_ac
    if-ne v4, p3, :cond_b6

    .line 175
    const p2, 0x7f110118

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    goto :goto_c9

    .line 183
    :cond_b6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    move-result-object p1

    .line 187
    const p2, 0x7f0f000f

    .line 190
    new-array p3, p3, [Ljava/lang/Object;

    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v1

    .line 196
    aput-object v1, p3, v2

    .line 198
    invoke-virtual {p1, p2, v4, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    :goto_c9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    return-object p1
.end method

.method public checkRename(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 3
    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 23
    if-eqz v0, :cond_1e

    .line 25
    check-cast p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startRenameCloudFileThread(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startRenameThread(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 34
    :goto_21
    return v1
.end method

.method public createFolder(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 20
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 23
    move-result-object v2

    .line 24
    const v1, 0x7f1102f0

    .line 27
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    const v1, 0x7f1102c8

    .line 35
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    new-instance v6, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;

    .line 41
    invoke-direct {v6, p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;)V

    .line 44
    const/4 v7, 0x1

    .line 45
    move-object v1, v0

    .line 46
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;Z)V

    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->setIsCloudRelated(Z)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 61
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 68
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

    .line 1
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

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mCurrentCloudOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
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

    .line 8
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

    .line 9
    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x1010355

    .line 10
    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 11
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

    .line 12
    invoke-virtual {p3, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f110050

    const/4 p4, 0x0

    .line 13
    invoke-virtual {p1, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_94

    .line 16
    iget-object p2, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_9b

    .line 17
    :cond_94
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_9b

    .line 18
    :cond_98
    invoke-virtual {p0, p4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startDeleteThread(Ljava/lang/String;)V

    :goto_9b
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 4
    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->unDisposable()V

    .line 7
    return-void
.end method

.method public renameFile(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_6d

    .line 9
    if-nez p1, :cond_b

    .line 11
    goto :goto_6d

    .line 12
    :cond_b
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 14
    instance-of v1, p1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 16
    if-eqz v1, :cond_1e

    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 21
    iget-object v2, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1e

    .line 29
    iget-object v0, v1, Lcom/android/fileexplorer/model/PcModeFileInfo;->mAppName:Ljava/lang/String;

    .line 31
    :cond_1e
    move-object v5, v0

    .line 32
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog;

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 36
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 42
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 45
    move-result-object v2

    .line 46
    const v1, 0x7f11031a

    .line 49
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    const v1, 0x7f11031c

    .line 56
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    iget-boolean v6, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 62
    new-instance v7, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;

    .line 64
    invoke-direct {v7, p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$4;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 67
    move-object v1, v0

    .line 68
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/view/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;)V

    .line 71
    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 73
    const/4 v2, 0x1

    .line 74
    xor-int/2addr v1, v2

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckExt(Z)V

    .line 78
    iget-boolean v1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 80
    xor-int/2addr v1, v2

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->setCheckFileName(Z)V

    .line 84
    instance-of p1, p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 86
    if-eqz p1, :cond_6a

    .line 88
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/TextInputDialog;->setIsCloudRelated(Z)V

    .line 91
    iget-object p1, p0, Lcom/android/fileexplorer/filemanager/FileOperationManager;->mRef:Ljava/lang/ref/WeakReference;

    .line 93
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 99
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 106
    goto :goto_6d

    .line 107
    :cond_6a
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method

.method public requestMoveOrCopy(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    const-string p1, "CloudFileOperationManager"

    .line 9
    const-string v0, "copyOrMoveFiles parentId is null or invalid, return"

    .line 11
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/ConnectivityManager;->isNetworkConnected()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_24

    .line 33
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showNoNetworkErrorUploadDialog(Ljava/lang/String;)V

    .line 36
    return-void

    .line 37
    :cond_24
    invoke-direct {p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getConsumeUploadDataSize()J

    .line 40
    move-result-wide v0

    .line 41
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_48

    .line 59
    const-wide/16 v2, 0x0

    .line 61
    cmp-long v2, v0, v2

    .line 63
    if-lez v2, :cond_48

    .line 65
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p0, v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDataConsumeUploadDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    goto :goto_89

    .line 73
    :cond_48
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 80
    move-result v0

    .line 81
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 83
    if-eqz v0, :cond_58

    .line 85
    const v2, 0x7f11030d

    .line 88
    goto :goto_5b

    .line 89
    :cond_58
    const v2, 0x7f110317

    .line 92
    :goto_5b
    const/4 v3, 0x1

    .line 93
    invoke-interface {v1, v3, v2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->showLoading(ZI)V

    .line 96
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mModel:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    .line 98
    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 100
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->requestCopyOrMove(Landroid/content/Context;Ljava/lang/String;Z)Li2/e;

    .line 107
    move-result-object p1

    .line 108
    new-instance v1, Lcom/android/cloud/fragment/presenter/d;

    .line 110
    const/4 v2, 0x4

    .line 111
    invoke-direct {v1, p0, v0, v2}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    .line 114
    new-instance v2, Lcom/android/cloud/fragment/presenter/d;

    .line 116
    const/4 v3, 0x5

    .line 117
    invoke-direct {v2, p0, v0, v3}, Lcom/android/cloud/fragment/presenter/d;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    sget-object v0, Ln2/a;->b:Ln2/a$a;

    .line 125
    sget-object v3, Ln2/a;->c:Ln2/a$b;

    .line 127
    new-instance v4, Lio/reactivex/internal/observers/LambdaObserver;

    .line 129
    invoke-direct {v4, v1, v2, v0, v3}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    .line 132
    invoke-virtual {p1, v4}, Li2/e;->c(Li2/h;)V

    .line 135
    invoke-direct {p0, v4}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->addDisposable(Lk2/b;)V

    .line 138
    :goto_89
    return-void
.end method

.method public setupView(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 3
    return-void
.end method

.method public showUploadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/cloud/bean/CloudFileInfo;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "errinfo:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MiDrive_LOG"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 25
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f11032f

    .line 40
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 43
    move-result-object v0

    .line 44
    const v1, 0x1010355

    .line 47
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadErrorMsg(Lcom/micloud/midrive/infos/ErrInfo;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveContent(Lcom/micloud/midrive/infos/ErrInfo;)I

    .line 62
    move-result v1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadPositiveListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->getUploadNegativeButtonListener(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Lcom/android/fileexplorer/model/FileInfo;)Landroid/content/DialogInterface$OnClickListener;

    .line 74
    move-result-object v1

    .line 75
    const v2, 0x7f110050

    .line 78
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 85
    move-result-object v0

    .line 86
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showCloudRelatedDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 93
    invoke-static {p3, p2}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadFailWindowShow(Lcom/android/fileexplorer/model/FileInfo;Lcom/micloud/midrive/infos/ErrInfo;)V

    .line 96
    return-void
.end method

.method public startDeleteThread(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;

    .line 3
    invoke-direct {p1, p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$3;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;)V

    .line 6
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    return-void
.end method

.method public startRenameCloudFileThread(Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-nez p1, :cond_a

    .line 3
    const-string p1, "CloudFileOperationManager"

    .line 5
    const-string p2, "fileInfo is null, return."

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;

    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$5;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Lcom/android/cloud/bean/CloudFileInfo;Ljava/lang/String;)V

    .line 16
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 18
    const/4 p2, 0x0

    .line 19
    new-array p2, p2, [Ljava/lang/Void;

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    return-void
.end method
