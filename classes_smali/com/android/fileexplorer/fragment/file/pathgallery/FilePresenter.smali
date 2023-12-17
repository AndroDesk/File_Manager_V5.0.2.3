.class public Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;
.super Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;
.source "FilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter<",
        "Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;",
        ">;",
        "Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$Presenter;"
    }
.end annotation


# static fields
.field public static final KEY_DEVICE:Ljava/lang/String; = "device"

.field public static final KEY_EXTRA_PATH:Ljava/lang/String; = "path"

.field private static final KEY_LAST_STORAGE_PATH:Ljava/lang/String; = "last_storage_path"

.field public static final KEY_MODE:Ljava/lang/String; = "mode"

.field public static final KEY_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG:Ljava/lang/String; = "FilePresenter"


# instance fields
.field private mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

.field private mCurrentPathSegment:Lcom/android/fileexplorer/model/PathSegment;

.field private mCurrentStorageRemoved:Z

.field private mDesiredDevice:I

.field private mDeviceStr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraPath:Ljava/lang/String;

.field private mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

.field private mMode:I

.field private mSearchFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDesiredDevice:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;ILcom/android/fileexplorer/model/StorageInfo;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->finishLoadStorage(ILcom/android/fileexplorer/model/StorageInfo;Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->showStorageNotEnoughHint()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentStorageRemoved:Z

    return p0
.end method

.method public static synthetic access$1402(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentStorageRemoved:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mForceMainSpace:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getPrimaryVolume(Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p1
.end method

.method public static synthetic access$2700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    return p0
.end method

.method public static synthetic access$3000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentPathSegment:Lcom/android/fileexplorer/model/PathSegment;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mSearchFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3802(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mSearchFilePath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->manualListItemClick(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$4000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$4100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    return p0
.end method

.method public static synthetic access$4200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    return-object p0
.end method

.method private getDeviceStr()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getLastSelectedVolumePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const-string v3, "-1"

    move v4, v2

    :goto_d
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_66

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_4a

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v5

    if-eqz v5, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    :cond_4a
    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_66
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v1
.end method

.method private getLastSelectedVolumePath()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_storage_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrimaryVolume(Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)",
            "Lcom/android/fileexplorer/model/StorageInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_25

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v1

    :cond_25
    :goto_25
    return-object v0
.end method

.method private getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/StorageInfo;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private manualListItemClick(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge p1, v1, :cond_48

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_45

    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_49

    :cond_45
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_48
    move p1, v2

    :goto_49
    if-ne p1, v2, :cond_4c

    return-void

    :cond_4c
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->onItemClick(I)V

    return-void
.end method

.method private showStorageNotEnoughHint()V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEnterFileViewTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_25

    :cond_18
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSpaceNotEnough()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->showSpaceNotEnough()V

    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setEnterFileViewTime(J)V

    return-void
.end method


# virtual methods
.method public getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    if-eqz v1, :cond_9

    return-object v1

    :cond_9
    new-instance v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    return-object v1
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentPathSegment:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    if-eqz v1, :cond_9

    return-object v1

    :cond_9
    new-instance v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    return-object v1
.end method

.method public onBackPressed()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    return v0

    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->dismissToastView()V

    iget v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    goto :goto_51

    :cond_3e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->getPrevPath()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {v1, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->changePath(Lcom/android/fileexplorer/model/PathSegment;)V

    const/4 v0, 0x1

    return v0

    :cond_51
    :goto_51
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz p2, :cond_28

    const-string p1, "path"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    const-string p1, "device"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDesiredDevice:I

    const-string p1, "mode"

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    const-string p1, "search"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mSearchFilePath:Ljava/lang/String;

    :cond_28
    return-void
.end method

.method public onItemClick(I)V
    .registers 2

    return-void
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentPathSegment:Lcom/android/fileexplorer/model/PathSegment;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public onShowVolumePopup()V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getDeviceStr()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->updatePopupVolumes(Ljava/util/List;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_3b

    :catch_24
    move-exception v0

    sget-object v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->TAG:Ljava/lang/String;

    const-string v2, "showVolumesPopup parseInt error: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public onUserVisible()V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onVolumeSelect(I)V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getLastSelectedVolumePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_2d
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    check-cast p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->exitActionMode()Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onUpdateUI()V

    iget p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5f

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->setLastSelectedVolumePath()V

    :cond_5f
    return-void
.end method

.method public performLoadStorage()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->path:Ljava/lang/String;

    iget v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDesiredDevice:I

    iput v1, v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->device:I

    iget v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    iput-boolean v1, v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->isMultiChoiceMode:Z

    new-instance v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V

    new-instance v3, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;

    invoke-direct {v3, v0, v1}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final setLastSelectedVolumePath()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_storage_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2a
    :goto_2a
    return-void
.end method
