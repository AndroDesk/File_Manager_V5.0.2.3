.class Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;
.super Ljava/lang/Object;
.source "SyncDataManager.java"

# interfaces
.implements Lcom/micloud/midrive/cache/manager/ISyncDataManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/cache/manager/SyncDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncDataManagerProxy"
.end annotation


# instance fields
.field private final mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 6
    return-void
.end method


# virtual methods
.method public addSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

    .line 6
    return-void
.end method

.method public checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/util/List;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return-void
.end method

.method public clearData(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;)V

    .line 6
    return-void
.end method

.method public clearLocalFileInfo(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public insertOrUpdateCloudFiles(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/util/List;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public queryAllFileCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4400(Lcom/micloud/midrive/cache/manager/SyncDataManager;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public queryAllModifiedLocalFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public queryAllSyncFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2600(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryGroupId(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryLatestCountFiles(IZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4500(Lcom/micloud/midrive/cache/manager/SyncDataManager;IZ)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryParentInfoFromRoot(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p2

    .line 11
    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_32

    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object p3

    .line 21
    check-cast p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 23
    iget-object v0, p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 25
    if-eqz v0, :cond_a

    .line 27
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 29
    const-string v1, "folder"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_a

    .line 37
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 39
    iget-object v1, p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 41
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 43
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 47
    invoke-virtual {p3, v0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setFolderItemCount(I)V

    .line 50
    goto :goto_a

    .line 51
    :cond_32
    return-object p1
.end method

.method public queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public removeSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

    .line 6
    return-void
.end method

.method public searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public tryUpdateSyncedStatus()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return v0
.end method

.method public txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 6
    move-result-object p1

    .line 7
    iget-boolean v0, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 13
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 16
    :cond_f
    return-object p1
.end method

.method public txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 6
    move-result-object p1

    .line 7
    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 9
    if-eqz p2, :cond_f

    .line 11
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 13
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 16
    :cond_f
    return-object p1
.end method

.method public txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 6
    move-result-object p1

    .line 7
    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 9
    if-eqz p2, :cond_f

    .line 11
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 13
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 16
    :cond_f
    return-object p1
.end method

.method public txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 6
    move-result-object p1

    .line 7
    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 9
    if-eqz p2, :cond_f

    .line 11
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 13
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 16
    :cond_f
    return-object p1
.end method

.method public txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 6
    move-result-object p1

    .line 7
    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 9
    if-eqz p2, :cond_f

    .line 11
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 13
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 16
    :cond_f
    return-object p1
.end method

.method public txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public txUploadFile(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_11

    .line 13
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 15
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 18
    :cond_11
    return-object p1
.end method

.method public updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 4
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 11
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 14
    :cond_d
    return p1
.end method

.method public updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
