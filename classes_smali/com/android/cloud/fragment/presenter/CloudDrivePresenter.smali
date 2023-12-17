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
.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V
    .registers 4

    const-string v0, "0"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;-><init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/lang/String;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mParentId:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mHandler:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 7
    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mParentId:Ljava/lang/String;

    .line 8
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

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    if-nez p1, :cond_7

    .line 7
    goto :goto_1d

    .line 8
    :cond_7
    invoke-interface {v0, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->updateFiles(Ljava/util/List;Z)V

    .line 11
    new-instance p2, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    .line 13
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 15
    invoke-direct {p2, v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;Ljava/util/List;)V

    .line 18
    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mDisplayRunnable:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    .line 20
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mHandler:Landroid/os/Handler;

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 27
    invoke-interface {p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->finishPullRefresh()V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method private synthetic lambda$onSortMethodChanged$0(Ljava/util/List;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->updateFiles(Ljava/util/List;Z)V

    .line 7
    return-void
.end method

.method private synthetic lambda$onSortMethodChanged$1(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->dealError(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$refreshData$2(ZLjava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->displayFiles(Ljava/util/List;Z)V

    .line 4
    return-void
.end method

.method private refreshData(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->requestFileInfoByParentId()Li2/e;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/cloud/fragment/model/c;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    .line 13
    invoke-virtual {v0, v1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSyncDataDisposable:Lk2/b;

    .line 19
    return-void
.end method


# virtual methods
.method public asyncGetFileAllPath(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryFileAllPathTask;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 5
    invoke-direct {v0, p1, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryFileAllPathTask;-><init>(Ljava/lang/String;Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    .line 17
    return-void
.end method

.method public asyncGetMemberStatus()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryMemberStatusTask;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$CloudQueryMemberStatusTask;-><init>(Lcom/android/cloud/fragment/presenter/CloudFileContract$View;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    .line 17
    return-void
.end method

.method public checkPreferenceUpdate(Lcom/android/fileexplorer/controller/FabPreference;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->checkPreferenceViewModeUpdated(Lcom/android/fileexplorer/controller/FabPreference;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public detachView()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 4
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mDisplayRunnable:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    .line 6
    if-eqz v1, :cond_e

    .line 8
    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mDisplayRunnable:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter$DisplayRunnable;

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSyncDataDisposable:Lk2/b;

    .line 17
    if-eqz v1, :cond_1d

    .line 19
    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1d

    .line 25
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSyncDataDisposable:Lk2/b;

    .line 27
    invoke-interface {v1}, Lk2/b;->dispose()V

    .line 30
    :cond_1d
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSortDataDisposable:Lk2/b;

    .line 32
    if-eqz v1, :cond_2c

    .line 34
    invoke-interface {v1}, Lk2/b;->isDisposed()Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2c

    .line 40
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSortDataDisposable:Lk2/b;

    .line 42
    invoke-interface {v1}, Lk2/b;->dispose()V

    .line 45
    :cond_2c
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_36

    .line 50
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 53
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryPathAsyncTask:Landroid/os/AsyncTask;

    .line 55
    :cond_36
    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    .line 57
    if-eqz v1, :cond_3f

    .line 59
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 62
    iput-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mQueryMemberStatusAsyncTask:Landroid/os/AsyncTask;

    .line 64
    :cond_3f
    return-void
.end method

.method public getCurrentParentId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getParentId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
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

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_2f

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_2f

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_2f

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 24
    iget-object v2, v2, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 26
    if-eqz v2, :cond_2c

    .line 28
    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 30
    if-eqz v3, :cond_2c

    .line 32
    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 34
    invoke-virtual {v2}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2c

    .line 44
    return v1

    .line 45
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_b

    .line 48
    :cond_2f
    :goto_2f
    return v0
.end method

.method public isFolder(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mParentId:Ljava/lang/String;

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
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getCloudFileData()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    if-gt v1, p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 20
    if-nez v1, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    iget-boolean v2, v1, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 25
    if-eqz v2, :cond_20

    .line 27
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 29
    invoke-interface {p1, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V

    .line 32
    goto :goto_25

    .line 33
    :cond_20
    iget-object v2, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 35
    invoke-interface {v2, p1, v1, v0}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->openFile(ILcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;)V

    .line 38
    :goto_25
    return-void
.end method

.method public onSortMethodChanged(IZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/cloud/fragment/model/CloudDriveModel;->updateSortMethod(IZ)V

    .line 6
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 8
    invoke-virtual {p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->requestSort()Li2/e;

    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lcom/android/cloud/fragment/presenter/a;

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, p0, v0}, Lcom/android/cloud/fragment/presenter/a;-><init>(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;I)V

    .line 18
    new-instance v0, Lcom/android/cloud/fragment/presenter/a;

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/presenter/a;-><init>(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;I)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    sget-object v1, Ln2/a;->b:Ln2/a$a;

    .line 29
    sget-object v2, Ln2/a;->c:Ln2/a$b;

    .line 31
    new-instance v3, Lio/reactivex/internal/observers/LambdaObserver;

    .line 33
    invoke-direct {v3, p2, v0, v1, v2}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Ll2/c;Ll2/c;Ll2/a;Ll2/c;)V

    .line 36
    invoke-virtual {p1, v3}, Li2/e;->c(Li2/h;)V

    .line 39
    iput-object v3, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mSortDataDisposable:Lk2/b;

    .line 41
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->updateViewMode(I)V

    .line 6
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 8
    invoke-interface {p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->switchViewMode()V

    .line 11
    return-void
.end method

.method public resetModel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->setCloudFileData(Ljava/util/List;)V

    .line 7
    return-void
.end method

.method public syncLastestData(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/cloud/fragment/model/CloudDriveModel;->startSync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V

    .line 6
    return-void
.end method

.method public updateCloudParentId(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->setParentId(Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->refreshData(Z)V

    .line 10
    return-void
.end method

.method public updateUI(ZZ)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "updateUi, needRefreshData:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "MiDrive_LOG"

    .line 27
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 32
    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getCloudFileData()Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2d

    .line 38
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 40
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 42
    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 45
    goto :goto_48

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mModel:Lcom/android/cloud/fragment/model/CloudDriveModel;

    .line 48
    invoke-virtual {v0}, Lcom/android/cloud/fragment/model/CloudDriveModel;->getCloudFileData()Ljava/util/List;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_41

    .line 58
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 60
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 62
    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 65
    goto :goto_48

    .line 66
    :cond_41
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 68
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    .line 70
    invoke-interface {v0, v1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V

    .line 73
    :goto_48
    if-eqz p1, :cond_4e

    .line 75
    invoke-direct {p0, p2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->refreshData(Z)V

    .line 78
    goto :goto_55

    .line 79
    :cond_4e
    if-eqz p2, :cond_55

    .line 81
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->mView:Lcom/android/cloud/fragment/presenter/CloudFileContract$View;

    .line 83
    invoke-interface {p1}, Lcom/android/cloud/fragment/presenter/CloudFileContract$View;->switchViewMode()V

    .line 86
    :cond_55
    :goto_55
    return-void
.end method
