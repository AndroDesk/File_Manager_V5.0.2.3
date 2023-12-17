.class public Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;
.super Ljava/lang/Object;
.source "RecentSecondPresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudDrivePresenter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayRunnable:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

.field private mParentId:Ljava/lang/String;

.field private mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

.field private mQueryPathAsyncTask:Landroid/os/AsyncTask;

.field private mSortDataDisposable:Lk2/b;

.field private mSyncDataDisposable:Lk2/b;

.field private mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mParentId:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    new-instance p1, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    invoke-direct {p1, p3}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;ZLcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->lambda$refreshData$0(ZLcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V

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

.method private displayFiles(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    if-eqz v1, :cond_1f

    if-nez v0, :cond_c

    goto :goto_1f

    :cond_c
    invoke-interface {v1, v0, p2}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->updateFiles(Ljava/util/List;Z)V

    new-instance p2, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    invoke-direct {p2, v1, v0, p1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;-><init>(Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;Ljava/util/List;Z)V

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mDisplayRunnable:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method private synthetic lambda$refreshData$0(ZLcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->displayFiles(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;Z)V

    return-void
.end method

.method private refreshData(ZZ)V
    .registers 5

    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->clearModelData()V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->requestAppFileByPkgName(Z)Li2/e;

    move-result-object p2

    new-instance v0, Lcom/android/cloud/fragment/model/c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p2, v0}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSyncDataDisposable:Lk2/b;

    return-void
.end method


# virtual methods
.method public checkPreferenceUpdate(Lcom/android/fileexplorer/controller/FabPreference;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public detachView()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mDisplayRunnable:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mDisplayRunnable:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSyncDataDisposable:Lk2/b;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSyncDataDisposable:Lk2/b;

    invoke-interface {v1}, Lk2/b;->dispose()V

    :cond_1d
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSortDataDisposable:Lk2/b;

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSortDataDisposable:Lk2/b;

    invoke-interface {v1}, Lk2/b;->dispose()V

    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    :cond_36
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3f

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    :cond_3f
    return-void
.end method

.method public isFolder(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mParentId:Ljava/lang/String;

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
    .registers 2

    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->updateViewMode(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->switchViewMode()V

    return-void
.end method

.method public resetModel()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->clearModelData()V

    return-void
.end method

.method public updateUI(ZZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getAppRecentFileData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    goto :goto_2b

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getAppRecentFileData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    goto :goto_2b

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    :goto_2b
    if-eqz p1, :cond_31

    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->refreshData(ZZ)V

    goto :goto_38

    :cond_31
    if-eqz p3, :cond_38

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->switchViewMode()V

    :cond_38
    :goto_38
    return-void
.end method
