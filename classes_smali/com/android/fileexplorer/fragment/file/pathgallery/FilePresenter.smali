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
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDesiredDevice:I

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;ILcom/android/fileexplorer/model/StorageInfo;Z)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->finishLoadStorage(ILcom/android/fileexplorer/model/StorageInfo;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->showStorageNotEnoughHint()V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentStorageRemoved:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1402(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentStorageRemoved:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    return p0
.end method

.method public static synthetic access$1600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    return p0
.end method

.method public static synthetic access$1700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mForceMainSpace:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2202(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$2300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getPrimaryVolume(Ljava/util/List;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2602(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$2700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    return p0
.end method

.method public static synthetic access$3000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/PathSegment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentPathSegment:Lcom/android/fileexplorer/model/PathSegment;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mSearchFilePath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$3802(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mSearchFilePath:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$3900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->manualListItemClick(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$4000(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$4100(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    return p0
.end method

.method public static synthetic access$4200(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 3
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

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getLastSelectedVolumePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "-1"

    .line 13
    move v4, v2

    .line 14
    :goto_d
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 16
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 19
    move-result v5

    .line 20
    if-ge v4, v5, :cond_66

    .line 22
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 24
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/fileexplorer/model/StorageInfo;

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v6

    .line 45
    const-string v7, ""

    .line 47
    if-eqz v6, :cond_4a

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_63

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    goto :goto_63

    .line 75
    :cond_4a
    invoke-virtual {v5}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_63

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    .line 102
    goto :goto_d

    .line 103
    :cond_66
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    return-object v1
.end method

.method private getLastSelectedVolumePath()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "last_storage_path"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_25

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_25

    .line 11
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_25

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_e

    .line 37
    return-object v1

    .line 38
    :cond_25
    :goto_25
    return-object v0
.end method

.method private getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 17
    return-object p1

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method private manualListItemClick(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/io/File;

    .line 10
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    if-ge p1, v1, :cond_48

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    if-eqz v1, :cond_45

    .line 40
    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_45

    .line 48
    new-instance v3, Ljava/io/File;

    .line 50
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 52
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_45

    .line 69
    goto :goto_49

    .line 70
    :cond_45
    add-int/lit8 p1, p1, 0x1

    .line 72
    goto :goto_14

    .line 73
    :cond_48
    move p1, v2

    .line 74
    :goto_49
    if-ne p1, v2, :cond_4c

    .line 76
    return-void

    .line 77
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->onItemClick(I)V

    .line 80
    return-void
.end method

.method private showStorageNotEnoughHint()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getEnterFileViewTime()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v2, v0, v2

    .line 9
    if-eqz v2, :cond_18

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/model/TimeUtils;->getDaysBetween(JJ)J

    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x1

    .line 21
    cmp-long v0, v0, v2

    .line 23
    if-ltz v0, :cond_25

    .line 25
    :cond_18
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSpaceNotEnough()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_25

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 33
    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 35
    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->showSpaceNotEnough()V

    .line 38
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v0

    .line 42
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/SettingManager;->setEnterFileViewTime(J)V

    .line 45
    return-void
.end method


# virtual methods
.method public getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCheckStorageCallback()Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    new-instance v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;

    .line 12
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$2;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;)V

    .line 15
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCheckStorageCallback:Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;

    .line 17
    return-object v1
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentPathSegment:Lcom/android/fileexplorer/model/PathSegment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getLoadFileCallback()Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    new-instance v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;

    .line 12
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$3;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;)V

    .line 15
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mLoadFileCallback:Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;

    .line 17
    return-object v1
.end method

.method public onBackPressed()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_8

    .line 6
    const/4 v1, 0x7

    .line 7
    if-ne v0, v1, :cond_1a

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    if-eqz v0, :cond_1a

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isVolumeMounted(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1a

    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 29
    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 31
    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->dismissToastView()V

    .line 34
    iget v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    .line 36
    if-nez v0, :cond_3e

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isRootPath()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3e

    .line 44
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_51

    .line 54
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 62
    goto :goto_51

    .line 63
    :cond_3e
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 65
    check-cast v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 67
    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->getPrevPath()Lcom/android/fileexplorer/model/PathSegment;

    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_51

    .line 73
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 75
    check-cast v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 77
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->changePath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 80
    const/4 v0, 0x1

    .line 81
    return v0

    .line 82
    :cond_51
    :goto_51
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onBackPressed()Z

    .line 85
    move-result v0

    .line 86
    return v0
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4
    if-eqz p2, :cond_28

    .line 6
    const-string p1, "path"

    .line 8
    const-string v0, ""

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    .line 16
    const-string p1, "device"

    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDesiredDevice:I

    .line 25
    const-string p1, "mode"

    .line 27
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    .line 33
    const-string p1, "search"

    .line 35
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mSearchFilePath:Ljava/lang/String;

    .line 41
    :cond_28
    return-void
.end method

.method public onItemClick(I)V
    .registers 2

    return-void
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mCurrentPathSegment:Lcom/android/fileexplorer/model/PathSegment;

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 11
    return-void
.end method

.method public onShowVolumePopup()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getDeviceStr()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 23
    :try_start_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 29
    check-cast v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    .line 33
    invoke-interface {v1, v2, v0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->updatePopupVolumes(Ljava/util/List;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_24

    .line 36
    goto :goto_3b

    .line 37
    :catch_24
    move-exception v0

    .line 38
    sget-object v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->TAG:Ljava/lang/String;

    .line 40
    const-string v2, "showVolumesPopup parseInt error: "

    .line 42
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_3b
    return-void
.end method

.method public onUserVisible()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$4;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V

    .line 6
    const-wide/16 v1, 0x1f4

    .line 8
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method

.method public onVolumeSelect(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getLastSelectedVolumePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDeviceStr:Ljava/util/List;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->getSelectedVolume(I)Lcom/android/fileexplorer/model/StorageInfo;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_5f

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 28
    if-eqz v0, :cond_2d

    .line 30
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 36
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5f

    .line 46
    :cond_2d
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 48
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 50
    check-cast p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 52
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 54
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 56
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 62
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 71
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-interface {p1, v0, v1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 80
    check-cast p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;

    .line 82
    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileContract$View;->exitActionMode()Z

    .line 85
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->onUpdateUI()V

    .line 88
    iget p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 90
    const/4 v0, 0x2

    .line 91
    if-ne p1, v0, :cond_5f

    .line 93
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->setLastSelectedVolumePath()V

    .line 96
    :cond_5f
    return-void
.end method

.method public performLoadStorage()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mExtraPath:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->path:Ljava/lang/String;

    .line 10
    iget v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mDesiredDevice:I

    .line 12
    iput v1, v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->device:I

    .line 14
    iget v1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;->mMode:I

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x3

    .line 18
    if-ne v1, v3, :cond_15

    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, v2

    .line 23
    :goto_16
    iput-boolean v1, v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->isMultiChoiceMode:Z

    .line 25
    new-instance v1, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;

    .line 27
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter$1;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FilePresenter;)V

    .line 30
    new-instance v3, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;

    .line 32
    invoke-direct {v3, v0, v1}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;-><init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 38
    move-result-object v0

    .line 39
    new-array v1, v2, [Ljava/lang/Void;

    .line 41
    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method

.method public final setLastSelectedVolumePath()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-eqz v0, :cond_2a

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_2a

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 30
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "last_storage_path"

    .line 36
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method
