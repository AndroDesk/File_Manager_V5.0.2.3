.class public abstract Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;
.super Ljava/lang/Object;
.source "BaseFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;,
        Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;,
        Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;,
        Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$Presenter;"
    }
.end annotation


# instance fields
.field private checkStorageTask:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;

.field private loadFileTask:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

.field public final mAllFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter<",
            "TV;>.CheckStorageCallback;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentDevice:I

.field public final mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDirPackageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

.field public final mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mForceMainSpace:Z

.field private mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter<",
            "TV;>.",
            "LoadFileCallback;"
        }
    .end annotation
.end field

.field public mShowAll:Z

.field public mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

.field public mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mAllFiles:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mShowAll:Z

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-void
.end method

.method public static filterFiles(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_45

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_45

    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    move-result v1

    if-nez v1, :cond_15

    return-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_36

    iget v2, v1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    if-nez v2, :cond_36

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isDirCreated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_19

    :cond_36
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const-string v3, "/storage/emulated/0/Android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_19

    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_45
    :goto_45
    return-object v0
.end method

.method private static isDirCreated(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->getUserCreatedDirs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private startNewSortTask()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/SortTask;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    invoke-direct {v2, v3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/fragment/file/task/SortTask;-><init>(Ljava/util/List;Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateSortMethod()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->startNewSortTask()V

    goto :goto_25

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_25

    :cond_22
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->startNewSortTask()V

    :cond_25
    :goto_25
    return-void
.end method

.method private updateViewMode(I)V
    .registers 6

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->switchViewMode(I)V

    return-void
.end method


# virtual methods
.method public finishLoadStorage(ILcom/android/fileexplorer/model/StorageInfo;Z)V
    .registers 4

    iput p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mForceMainSpace:Z

    return-void
.end method

.method public getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirPackageToCache()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$1;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    return-object v0
.end method

.method public isLimitPath()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRootPath()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    new-instance p2, Lcom/android/fileexplorer/model/FileFragmentHelper;

    invoke-direct {p2}, Lcom/android/fileexplorer/model/FileFragmentHelper;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->init(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->performLoadStorage()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onSortMethodChanged(IZ)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->updateSortMethod()V

    return-void
.end method

.method public onUpdateUI()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->checkStorageTask:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_21

    :cond_c
    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->checkStorageTask:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_21
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->updateViewMode(I)V

    return-void
.end method

.method public abstract performLoadStorage()V
.end method

.method public saveDirPackageToCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public final startLoadFile()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->loadFileTask:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_30

    :cond_c
    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->loadFileTask:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->setFilter(Lcom/android/fileexplorer/util/FileNameExtFilter;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->loadFileTask:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_30
    return-void
.end method
