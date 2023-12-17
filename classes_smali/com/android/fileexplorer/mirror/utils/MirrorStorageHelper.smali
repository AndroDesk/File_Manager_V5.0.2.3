.class public Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;
.super Ljava/lang/Object;
.source "MirrorStorageHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMountVolumeList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_23

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f110244

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/fileexplorer/model/StorageInfo;

    .line 33
    invoke-virtual {v2, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 36
    :cond_23
    return-object v0
.end method

.method public static getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_25

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/mirror/utils/MirrorStorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_25

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 27
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_e

    .line 37
    return-object v1

    .line 38
    :cond_25
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f110244

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method
