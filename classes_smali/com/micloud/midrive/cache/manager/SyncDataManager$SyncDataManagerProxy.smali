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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    return-void
.end method


# virtual methods
.method public addSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return-void
.end method

.method public clearData(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;)V

    return-void
.end method

.method public clearLocalFileInfo(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public queryAllFileCount()I
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4400(Lcom/micloud/midrive/cache/manager/SyncDataManager;)I

    move-result v0

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2600(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4500(Lcom/micloud/midrive/cache/manager/SyncDataManager;IZ)Ljava/util/List;

    move-result-object p1

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p1

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v0, p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v1, "folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    iget-object v1, p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setFolderItemCount(I)V

    goto :goto_a

    :cond_32
    return-object p1
.end method

.method public queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p1

    return-object p1
.end method

.method public removeSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public tryUpdateSyncedStatus()Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$4000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return v0
.end method

.method public txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    iget-boolean v0, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_f
    return-object p1
.end method

.method public txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_f
    return-object p1
.end method

.method public txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_f
    return-object p1
.end method

.method public txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_f
    return-object p1
.end method

.method public txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    iget-boolean p2, p1, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_f
    return-object p1
.end method

.method public txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$2800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public txUploadFile(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$3400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_11
    return-object p1
.end method

.method public updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_d

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

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$1100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    :cond_d
    return p1
.end method

.method public updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;->mSyncDataManagerImpl:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-static {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->access$900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
