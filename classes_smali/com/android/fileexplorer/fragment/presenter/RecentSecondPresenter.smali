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
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "0"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mParentId:Ljava/lang/String;

    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mHandler:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 23
    new-instance p1, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 25
    invoke-direct {p1, p3}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;ZLcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->lambda$refreshData$0(ZLcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V

    return-void
.end method

.method private dealError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    const-string v0, "requestSort error:"

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
    const-string v0, "CloudDrivePresenter"

    .line 20
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
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

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 8
    if-eqz v1, :cond_1f

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_1f

    .line 13
    :cond_c
    invoke-interface {v1, v0, p2}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->updateFiles(Ljava/util/List;Z)V

    .line 16
    new-instance p2, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 20
    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 22
    invoke-direct {p2, v1, v0, p1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;-><init>(Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;Ljava/util/List;Z)V

    .line 25
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mDisplayRunnable:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mHandler:Landroid/os/Handler;

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method

.method private synthetic lambda$refreshData$0(ZLcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->displayFiles(Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;Z)V

    .line 4
    return-void
.end method

.method private refreshData(ZZ)V
    .registers 5

    .line 1
    if-nez p2, :cond_7

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->clearModelData()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 10
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->requestAppFileByPkgName(Z)Li2/e;

    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lcom/android/cloud/fragment/model/c;

    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    .line 20
    invoke-virtual {p2, v0}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSyncDataDisposable:Lk2/b;

    .line 26
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

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mDisplayRunnable:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    .line 6
    if-eqz v1, :cond_e

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mDisplayRunnable:Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter$DisplayRunnable;

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSyncDataDisposable:Lk2/b;

    .line 17
    if-eqz v1, :cond_1d

    .line 19
    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1d

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSyncDataDisposable:Lk2/b;

    .line 27
    invoke-interface {v1}, Lk2/b;->dispose()V

    .line 30
    :cond_1d
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSortDataDisposable:Lk2/b;

    .line 32
    if-eqz v1, :cond_2c

    .line 34
    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2c

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mSortDataDisposable:Lk2/b;

    .line 42
    invoke-interface {v1}, Lk2/b;->dispose()V

    .line 45
    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_36

    .line 50
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    .line 55
    :cond_36
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    .line 57
    if-eqz v1, :cond_3f

    .line 59
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 62
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    .line 64
    :cond_3f
    return-void
.end method

.method public isFolder(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mParentId:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->updateViewMode(I)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 8
    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->switchViewMode()V

    .line 11
    return-void
.end method

.method public resetModel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->clearModelData()V

    .line 6
    return-void
.end method

.method public updateUI(ZZZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getAppRecentFileData()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_10

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 11
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 13
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 16
    goto :goto_2b

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mModel:Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;

    .line 19
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/presenter/AppRecentFileModel;->getAppRecentFileData()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_24

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 31
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 33
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 36
    goto :goto_2b

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 39
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 41
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 44
    :goto_2b
    if-eqz p1, :cond_31

    .line 46
    invoke-direct {p0, p3, p2}, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->refreshData(ZZ)V

    .line 49
    goto :goto_38

    .line 50
    :cond_31
    if-eqz p3, :cond_38

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/presenter/RecentSecondPresenter;->mView:Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;

    .line 54
    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/presenter/RecentFileContract$View;->switchViewMode()V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method
