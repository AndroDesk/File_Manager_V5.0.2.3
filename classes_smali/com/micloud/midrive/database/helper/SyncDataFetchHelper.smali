.class public Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;
.super Ljava/lang/Object;
.source "SyncDataFetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;,
        Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;,
        Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SizeComparator;,
        Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;,
        Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(JJZ)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->strictTimComparatorReturnValue(JJZ)I

    move-result p0

    return p0
.end method

.method public static getAllFileCount()I
    .registers 1

    const-string v0, "cannot run in Main Thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryAllFileCount()I

    move-result v0

    return v0
.end method

.method public static getChildren(Ljava/lang/String;Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "cannot run in Main Thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    const-string v1, "cloud_modify_time"

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    if-eqz p1, :cond_48

    sget-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$1;->$SwitchMap$com$micloud$midrive$database$helper$SyncDataFetchHelper$SortType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_31

    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    goto :goto_48

    :cond_31
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;-><init>(Z)V

    goto :goto_48

    :cond_37
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    goto :goto_48

    :cond_3d
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SizeComparator;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SizeComparator;-><init>(Z)V

    goto :goto_48

    :cond_43
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;

    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;-><init>(Z)V

    :cond_48
    :goto_48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "folder"

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v5, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v5, :cond_51

    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_6f
    sget-object v2, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->NAME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    if-ne p1, v2, :cond_7c

    new-instance p1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;

    invoke-direct {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;-><init>(Z)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_84

    :cond_7c
    new-instance p1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    invoke-direct {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :goto_84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_92
    :goto_92
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v2, :cond_aa

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    :cond_aa
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_92

    :cond_ae
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static getLatestCountFiles(IZ)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "cannot run in Main Thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryLatestCountFiles(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLatestData(ILjava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "cannot run in Main Thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryGroupId(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cloud_modify_time"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    invoke-direct {v4, v3}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_35
    return-object p1
.end method

.method public static getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/files/thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    const-string v0, "cannot run in Main Thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static strictTimComparatorReturnValue(JJZ)I
    .registers 5

    cmp-long p0, p0, p2

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p1, 0x1

    const/4 p2, -0x1

    if-gez p0, :cond_e

    if-eqz p4, :cond_d

    move p1, p2

    :cond_d
    return p1

    :cond_e
    if-eqz p4, :cond_11

    goto :goto_12

    :cond_11
    move p1, p2

    :goto_12
    return p1
.end method
