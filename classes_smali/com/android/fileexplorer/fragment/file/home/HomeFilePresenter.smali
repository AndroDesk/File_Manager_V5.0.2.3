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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCategories:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mEntries:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCategories:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mIsExpanding:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mForceMainSpace:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->startLoadFile()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;ILcom/android/fileexplorer/model/StorageInfo;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->finishLoadStorage(ILcom/android/fileexplorer/model/StorageInfo;Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method


# virtual methods
.method public getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$2;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1a

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->TAG:Ljava/lang/String;

    const-string v2, "onBack111"

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->dismissToastView()V

    return v1
.end method

.method public onItemClick(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_10

    sget-object v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->TAG:Ljava/lang/String;

    const-string v1, "error : size < position "

    invoke-static {v1, p1, v0}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_22

    sget-object p1, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->TAG:Ljava/lang/String;

    const-string v0, "error : fileInfo is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_49

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const-string v2, "current_directory"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    const-string v2, "current_directory_file_amount"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string v2, "bundle_key_istobackstack"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->openDir(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_52

    :cond_49
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1, p1, v0, v2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->openFile(ILcom/android/fileexplorer/model/FileInfo;Ljava/util/List;)V

    :goto_52
    return-void
.end method

.method public onResume()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    if-eqz v0, :cond_1c

    check-cast v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mIsExpanding:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-static {v2}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_19

    :cond_10
    invoke-static {v2}, Lcom/android/fileexplorer/util/CategoryUtil;->getHomeDisplayCategories(Z)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :goto_19
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileContract$View;->updateCategories(Ljava/util/List;)V

    :cond_1c
    return-void
.end method

.method public onUpdateUI()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mShowAll:Z

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onUpdateUI()V

    return-void
.end method

.method public performLoadStorage()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter$1;-><init>(Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;)V

    new-instance v1, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/fragment/file/task/SimpleLoadStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setExpanding(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->mIsExpanding:Z

    return-void
.end method
