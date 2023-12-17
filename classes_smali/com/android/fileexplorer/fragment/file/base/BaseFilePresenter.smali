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
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mAllFiles:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    const/4 v0, 0x2

    .line 33
    iput v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mShowAll:Z

    .line 38
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 42
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_45

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    goto :goto_45

    .line 15
    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_15

    .line 21
    return-object p0

    .line 22
    :cond_15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 26
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_45

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    iget-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 40
    if-eqz v2, :cond_36

    .line 42
    iget v2, v1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 44
    if-nez v2, :cond_36

    .line 46
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 48
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isDirCreated(Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_36

    .line 54
    goto :goto_19

    .line 55
    :cond_36
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 57
    const-string v3, "/storage/emulated/0/Android"

    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_41

    .line 65
    goto :goto_19

    .line 66
    :cond_41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_19

    .line 70
    :cond_45
    :goto_45
    return-object v0
.end method

.method private static isDirCreated(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->getUserCreatedDirs()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private startNewSortTask()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/SortTask;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v2, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;

    .line 7
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 9
    invoke-direct {v2, v3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/fragment/file/task/SortTask;-><init>(Ljava/util/List;Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;)V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Void;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void
.end method

.method private updateSortMethod()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 11
    if-ne v0, v1, :cond_16

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->startNewSortTask()V

    .line 22
    goto :goto_25

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->sortTask:Lcom/android/fileexplorer/fragment/file/task/SortTask;

    .line 25
    if-eqz v0, :cond_22

    .line 27
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 33
    if-ne v0, v1, :cond_25

    .line 35
    :cond_22
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->startNewSortTask()V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method private updateViewMode(I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 15
    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v3

    .line 21
    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 23
    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    move-result-object v1

    .line 29
    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 31
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 36
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->switchViewMode(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public finishLoadStorage(ILcom/android/fileexplorer/model/StorageInfo;Z)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mForceMainSpace:Z

    .line 7
    return-void
.end method

.method public getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$1;)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;

    .line 15
    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getDirPackageToCache()Ljava/util/HashMap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    return-object v0
.end method

.method public getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$1;)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;

    .line 15
    return-object v0
.end method

.method public isLimitPath()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isRootPath()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    new-instance p2, Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 3
    invoke-direct {p2}, Lcom/android/fileexplorer/model/FileFragmentHelper;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 8
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->init(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->performLoadStorage()V

    .line 14
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    .line 6
    if-eqz v1, :cond_c

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    .line 13
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onSortMethodChanged(IZ)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->updateSortMethod()V

    .line 4
    return-void
.end method

.method public onUpdateUI()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->checkStorageTask:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 11
    if-ne v0, v1, :cond_21

    .line 13
    :cond_c
    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;)V

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->checkStorageTask:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask;

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    new-array v2, v2, [Ljava/lang/Void;

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    :cond_21
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->updateViewMode(I)V

    .line 4
    return-void
.end method

.method public abstract performLoadStorage()V
.end method

.method public saveDirPackageToCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDirPackageCache:Ljava/util/HashMap;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_7
    return-void
.end method

.method public final startLoadFile()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->loadFileTask:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 11
    if-ne v0, v1, :cond_30

    .line 13
    :cond_c
    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V

    .line 26
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->loadFileTask:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFileFragmentHelper:Lcom/android/fileexplorer/model/FileFragmentHelper;

    .line 30
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;->setFilter(Lcom/android/fileexplorer/util/FileNameExtFilter;)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->loadFileTask:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask;

    .line 39
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    new-array v2, v2, [Ljava/lang/Void;

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    :cond_30
    return-void
.end method
