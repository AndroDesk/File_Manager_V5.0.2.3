.class public Lcom/android/cloud/fragment/model/CloudDriveModel;
.super Ljava/lang/Object;
.source "CloudDriveModel.java"


# static fields
.field private static final CLOUD_SORT_KEY:Ljava/lang/String;


# instance fields
.field private mCloudFileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation
.end field

.field private mParentId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/cloud/fragment/model/CloudDriveModel;->CLOUD_SORT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mParentId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/cloud/fragment/model/CloudDriveModel;IZLi2/f;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/fragment/model/CloudDriveModel;->lambda$requestSort$1(IZLi2/f;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/fragment/model/CloudDriveModel;Ljava/lang/String;ILjava/lang/Boolean;Li2/f;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cloud/fragment/model/CloudDriveModel;->lambda$requestFileInfoByParentId$0(Ljava/lang/String;ILjava/lang/Boolean;Li2/f;)V

    return-void
.end method

.method private getSortMethod()I
    .registers 2

    sget-object v0, Lcom/android/cloud/fragment/model/CloudDriveModel;->CLOUD_SORT_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    return v0
.end method

.method private getSyncCloudFileInfos(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_29

    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-static {v1}, Lcom/android/cloud/util/CloudFileUtils;->transSyncInfoToFileItemVO(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_12

    :cond_25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_29
    :goto_29
    return-object v0
.end method

.method private isSortReverse()Z
    .registers 2

    sget-object v0, Lcom/android/cloud/fragment/model/CloudDriveModel;->CLOUD_SORT_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    return v0
.end method

.method private synthetic lambda$requestFileInfoByParentId$0(Ljava/lang/String;ILjava/lang/Boolean;Li2/f;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getFileInfoByParentId(Ljava/lang/String;Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getSyncCloudFileInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/cloud/fragment/model/CloudDriveModel;->sortFiles(Ljava/util/List;ILjava/lang/Boolean;)V

    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->setCloudFileData(Ljava/util/List;)V

    invoke-interface {p4, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p4}, Li2/b;->onComplete()V

    return-void
.end method

.method private synthetic lambda$requestSort$1(IZLi2/f;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mCloudFileData:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mCloudFileData:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/cloud/fragment/model/CloudDriveModel;->sortFiles(Ljava/util/List;ILjava/lang/Boolean;)V

    :cond_13
    iget-object p1, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mCloudFileData:Ljava/util/List;

    if-eqz p1, :cond_1e

    invoke-interface {p3, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p3}, Li2/b;->onComplete()V

    goto :goto_28

    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestCopyOrMove return null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Li2/b;->onError(Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method


# virtual methods
.method public checkPreferenceViewModeUpdated(Lcom/android/fileexplorer/controller/FabPreference;)Z
    .registers 3

    sget-object v0, Lcom/android/cloud/fragment/model/CloudDriveModel;->CLOUD_SORT_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-eq v0, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public getCloudFileData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mCloudFileData:Ljava/util/List;

    return-object v0
.end method

.method public getFileInfoByParentId(Ljava/lang/String;Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/cloud/CloudDriveManager;->getChildren(Ljava/lang/String;Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public requestFileInfoByParentId()Li2/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li2/e<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->requestFileInfoByParentId(Ljava/lang/String;)Li2/e;

    move-result-object v0

    return-object v0
.end method

.method public requestFileInfoByParentId(Ljava/lang/String;)Li2/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li2/e<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getSortMethod()I

    move-result v0

    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->isSortReverse()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->requestFileInfoByParentId(Ljava/lang/String;ILjava/lang/Boolean;)Li2/e;

    move-result-object p1

    return-object p1
.end method

.method public requestFileInfoByParentId(Ljava/lang/String;ILjava/lang/Boolean;)Li2/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Boolean;",
            ")",
            "Li2/e<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/cloud/fragment/model/a;-><init>(Lcom/android/cloud/fragment/model/CloudDriveModel;Ljava/lang/String;ILjava/lang/Boolean;)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestSort()Li2/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li2/e<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getSortMethod()I

    move-result v0

    invoke-direct {p0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->isSortReverse()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->requestSort(IZ)Li2/e;

    move-result-object v0

    return-object v0
.end method

.method public requestSort(IZ)Li2/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Li2/e<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/cloud/fragment/model/b;-><init>(Lcom/android/cloud/fragment/model/CloudDriveModel;IZ)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public setCloudFileData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mCloudFileData:Ljava/util/List;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/model/CloudDriveModel;->mParentId:Ljava/lang/String;

    return-void
.end method

.method public sortFiles(Ljava/util/List;ILjava/lang/Boolean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;I",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    return-void
.end method

.method public startSync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
    .registers 5

    if-nez p2, :cond_a

    const-string p1, "MiDrive_LOG"

    const-string p2, "account is null, cannot startSync"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/cloud/CloudDriveManager;->startSync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    return-void
.end method

.method public updateSortMethod(IZ)V
    .registers 3

    return-void
.end method

.method public updateViewMode(I)V
    .registers 2

    return-void
.end method
