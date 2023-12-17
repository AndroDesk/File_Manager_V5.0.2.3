.class public Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;
.super Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;
.source "HomeFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter<",
        "Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;",
        ">;",
        "Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeFilePresenter"


# instance fields
.field private final mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileEntryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExpanding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCategories:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mEntries:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCategories:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mIsExpanding:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mEntries:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mForceMainSpace:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->startLoadFile()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;ILcom/android/fileexplorer/model/StorageInfo;Z)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->finishLoadStorage(ILcom/android/fileexplorer/model/StorageInfo;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    .line 14
    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_d

    .line 11
    const-string v0, ""

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public onBackPressed()Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v2, :cond_9

    .line 7
    const/4 v2, 0x7

    .line 8
    if-ne v0, v2, :cond_1a

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1a

    .line 26
    return v1

    .line 27
    :cond_1a
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->TAG:Ljava/lang/String;

    .line 29
    const-string v2, "onBack111"

    .line 31
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 36
    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    .line 38
    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->dismissToastView()V

    .line 41
    return v1
.end method

.method public onItemClick(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-gt v0, p1, :cond_10

    .line 9
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->TAG:Ljava/lang/String;

    .line 11
    const-string v1, "error : size < position "

    .line 13
    invoke-static {v1, p1, v0}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 25
    if-nez v0, :cond_22

    .line 27
    sget-object p1, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "error : fileInfo is null"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 35
    :cond_22
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 37
    if-eqz v1, :cond_49

    .line 39
    new-instance p1, Landroid/os/Bundle;

    .line 41
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 44
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 46
    const-string v2, "current_directory"

    .line 48
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget v1, v0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 53
    const-string v2, "current_directory_file_amount"

    .line 55
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const/4 v1, 0x1

    .line 59
    const-string v2, "bundle_key_istobackstack"

    .line 61
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 66
    check-cast v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    .line 68
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 70
    invoke-interface {v1, v0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->openDir(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    goto :goto_52

    .line 74
    :cond_49
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 76
    check-cast v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    .line 78
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    invoke-interface {v1, p1, v0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->openFile(ILcom/android/fileexplorer/model/FileInfo;Ljava/util/List;)V

    .line 83
    :goto_52
    return-void
.end method

.method public onResume()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    .line 7
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mIsExpanding:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_10

    .line 12
    invoke-static {v2}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    goto :goto_19

    .line 17
    :cond_10
    invoke-static {v2}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x4

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    :goto_19
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->updateCategories(Ljava/util/List;)V

    .line 29
    :cond_1c
    return-void
.end method

.method public onUpdateUI()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mShowAll:Z

    .line 9
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onUpdateUI()V

    .line 12
    return-void
.end method

.method public performLoadStorage()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;

    .line 8
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Void;

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-void
.end method

.method public setExpanding(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mIsExpanding:Z

    .line 3
    return-void
.end method
