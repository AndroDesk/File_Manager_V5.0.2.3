.class public Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;
.super Landroid/os/AsyncTask;
.source "LoadStorageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;,
        Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;,
        Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_LAST_STORAGE_PATH:Ljava/lang/String; = "last_storage_path"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallback:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;

.field private final mParams:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mParams:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;

    .line 8
    return-void
.end method

.method private getLastSelectedVolumePath()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "last_storage_path"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private getLastStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->getLastSelectedVolumePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_12

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;
    .registers 10

    .line 2
    new-instance p1, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {p1}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 4
    sget-object v0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->TAG:Ljava/lang/String;

    const-string v1, "doInitStorage: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    invoke-direct {v1}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mParams:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    iget-object v2, v2, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x2

    if-nez v2, :cond_7b

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mParams:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    iget-object v2, v2, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->extraPath:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    if-nez v2, :cond_70

    .line 9
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mParams:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    iget-object v5, v5, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->path:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mParams:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    iget-boolean v5, v5, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->isMultiChoiceMode:Z

    if-eqz v5, :cond_5f

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 11
    new-instance v2, Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mounted"

    invoke-direct {v2, v5, v3, v6}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->forceMainSpace:Z

    :cond_5f
    if-nez v2, :cond_6e

    const-string v2, ""

    .line 13
    iput-object v2, v1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->extraPath:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    goto :goto_91

    :cond_6e
    const/4 v3, -0x1

    goto :goto_92

    .line 15
    :cond_70
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v5

    if-eqz v5, :cond_91

    goto :goto_92

    .line 16
    :cond_7b
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mParams:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;

    iget v2, v2, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Params;->device:I

    if-ne v2, v3, :cond_8d

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/StorageHelper;->getUSBStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v3

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto :goto_92

    .line 18
    :cond_8d
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->getLastStorageInfo()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    :cond_91
    :goto_91
    move v3, v4

    :goto_92
    if-nez v2, :cond_a4

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v2

    if-nez v2, :cond_a5

    const-string v3, "doInitStorage: mStorageInfo is null."

    .line 20
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_a4
    move v4, v3

    :cond_a5
    :goto_a5
    const-string v3, "doInitStorage: end"

    .line 21
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_initStorage"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCostDebug(Ljava/lang/String;)V

    .line 23
    iput-object v2, v1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 24
    iput v4, v1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;->device:I

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;

    if-eqz p1, :cond_c9

    .line 26
    invoke-interface {p1, v1}, Lcom/android/fileexplorer/fragment/file/task/GenericCallback;->onBackgroundComplete(Ljava/lang/Object;)V

    :cond_c9
    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Callback;

    if-eqz v0, :cond_a

    .line 4
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/task/GenericCallback;->onComplete(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;->onPostExecute(Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;)V

    return-void
.end method
