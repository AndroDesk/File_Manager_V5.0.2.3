.class public Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;
.super Ljava/lang/Object;
.source "CloudDrivePresenter.java"

# interfaces
.implements Lcom/android/cloud/fragment/presenter/CloudFileContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;,
        Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryMemberStatusTask;,
        Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryFileAllPathTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudDrivePresenter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayRunnable:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

.field private mParentId:Ljava/lang/String;

.field private mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

.field private mQueryPathAsyncTask:Landroid/os/AsyncTask;

.field private mSortDataDisposable:Lk2/b;

.field private mSyncDataDisposable:Lk2/b;

.field private mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 4

    const-string v0, "0"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mParentId:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mParentId:Ljava/lang/String;

    new-instance p1, Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-direct {p1, p3}, Lcom/android/cloud/fragment/model/CloudDriveModel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    return-void
.end method

.method public static synthetic a(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->lambda$onSortMethodChanged$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->lambda$onSortMethodChanged$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;ZLjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->lambda$refreshData$2(ZLjava/util/List;)V

    return-void
.end method

.method private dealError(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "requestSort error:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudDrivePresenter"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private displayFiles(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_7

    goto :goto_1d

    :cond_7
    invoke-interface {v0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->updateFiles(Ljava/util/List;Z)V

    new-instance p2, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-direct {p2, v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mDisplayRunnable:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-interface {p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->finishPullRefresh()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private synthetic lambda$onSortMethodChanged$0(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->updateFiles(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$onSortMethodChanged$1(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->dealError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$refreshData$2(ZLjava/util/List;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->displayFiles(Ljava/util/List;Z)V

    return-void
.end method

.method private refreshData(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->requestFileInfoByParentId()Li2/e;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/fragment/model/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSyncDataDisposable:Lk2/b;

    return-void
.end method


# virtual methods
.method public asyncGetFileAllPath(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryFileAllPathTask;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-direct {v0, p1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryFileAllPathTask;-><init>(Ljava/lang/String;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public asyncGetMemberStatus()V
    .registers 3

    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryMemberStatusTask;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryMemberStatusTask;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public checkPreferenceUpdate(Lcom/android/fileexplorer/controller/FabPreference;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->checkPreferenceViewModeUpdated(Lcom/android/fileexplorer/controller/FabPreference;)Z

    move-result p1

    return p1
.end method

.method public detachView()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mDisplayRunnable:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mDisplayRunnable:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    :cond_e
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSyncDataDisposable:Lk2/b;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSyncDataDisposable:Lk2/b;

    invoke-interface {v1}, Lk2/b;->dispose()V

    :cond_1d
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSortDataDisposable:Lk2/b;

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSortDataDisposable:Lk2/b;

    invoke-interface {v1}, Lk2/b;->dispose()V

    :cond_2c
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    :cond_36
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3f

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    :cond_3f
    return-void
.end method

.method public getCurrentParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getParentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/util/List;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2f

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object v2, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    if-eqz v2, :cond_2c

    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v3, :cond_2c

    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v2}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    return v1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2f
    :goto_2f
    return v0
.end method

.method public isFolder(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getCloudFileData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    if-nez v1, :cond_16

    return-void

    :cond_16
    iget-boolean v2, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-eqz v2, :cond_20

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-interface {p1, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    goto :goto_25

    :cond_20
    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->openFile(ILcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;)V

    :goto_25
    return-void
.end method

.method public onSortMethodChanged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0, p1, p2}, Lcom/android/cloud/fragment/model/CloudDriveModel;->updateSortMethod(IZ)V

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->requestSort()Li2/e;

    move-result-object p1

    new-instance p2, Lcom/android/cloud/fragment/presenter/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/cloud/fragment/presenter/a;-><init>(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;I)V

    new-instance v0, Lcom/android/cloud/fragment/presenter/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/a;-><init>(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ln2/a;->b:Ln2/a$a;

    sget-object v2, Ln2/a;->c:Ln2/a$b;

    new-instance v3, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v3, p2, v0, v1, v2}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    invoke-virtual {p1, v3}, Li2/e;->c(Li2/h;)V

    iput-object v3, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSortDataDisposable:Lk2/b;

    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->updateViewMode(I)V

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-interface {p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->switchViewMode()V

    return-void
.end method

.method public resetModel()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->setCloudFileData(Ljava/util/List;)V

    return-void
.end method

.method public syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/cloud/fragment/model/CloudDriveModel;->startSync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    return-void
.end method

.method public updateCloudParentId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->setParentId(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->refreshData(Z)V

    return-void
.end method

.method public updateUI(ZZ)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUi, needRefreshData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getCloudFileData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    goto :goto_48

    :cond_2d
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getCloudFileData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    goto :goto_48

    :cond_41
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    :goto_48
    if-eqz p1, :cond_4e

    invoke-direct {p0, p2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->refreshData(Z)V

    goto :goto_55

    :cond_4e
    if-eqz p2, :cond_55

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    invoke-interface {p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->switchViewMode()V

    :cond_55
    :goto_55
    return-void
.end method
