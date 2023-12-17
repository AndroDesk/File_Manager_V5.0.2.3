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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(JJZ)I
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->strictTimComparatorReturnValue(JJZ)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getAllFileCount()I
    .registers 1

    .line 1
    const-string v0, "cannot run in Main Thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryAllFileCount()I

    .line 13
    move-result v0

    .line 14
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

    .line 1
    const-string v0, "cannot run in Main Thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "cloud_modify_time"

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, p0, v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    .line 19
    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    .line 22
    if-eqz p1, :cond_48

    .line 24
    sget-object v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$1;->$SwitchMap$com$micloud$midrive$database$helper$SyncDataFetchHelper$SortType:[I

    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    move-result v1

    .line 30
    aget v0, v0, v1

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eq v0, v1, :cond_43

    .line 35
    const/4 v1, 0x2

    .line 36
    if-eq v0, v1, :cond_3d

    .line 38
    const/4 v1, 0x3

    .line 39
    if-eq v0, v1, :cond_37

    .line 41
    const/4 v1, 0x4

    .line 42
    if-eq v0, v1, :cond_31

    .line 44
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    .line 46
    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    .line 49
    goto :goto_48

    .line 50
    :cond_31
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;

    .line 52
    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$TypeComparator;-><init>(Z)V

    .line 55
    goto :goto_48

    .line 56
    :cond_37
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    .line 58
    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    .line 61
    goto :goto_48

    .line 62
    :cond_3d
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SizeComparator;

    .line 64
    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SizeComparator;-><init>(Z)V

    .line 67
    goto :goto_48

    .line 68
    :cond_43
    new-instance v0, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;

    .line 70
    invoke-direct {v0, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;-><init>(Z)V

    .line 73
    :cond_48
    :goto_48
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v2

    .line 82
    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v3

    .line 86
    const-string v4, "folder"

    .line 88
    if-eqz v3, :cond_6f

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 96
    iget-object v5, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 98
    if-eqz v5, :cond_51

    .line 100
    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_51

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_51

    .line 112
    :cond_6f
    sget-object v2, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;->NAME:Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;

    .line 114
    if-ne p1, v2, :cond_7c

    .line 116
    new-instance p1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;

    .line 118
    invoke-direct {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$NameComparator;-><init>(Z)V

    .line 121
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 124
    goto :goto_84

    .line 125
    :cond_7c
    new-instance p1, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    .line 127
    invoke-direct {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    .line 130
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 133
    :goto_84
    new-instance p1, Ljava/util/ArrayList;

    .line 135
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    .line 140
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    move-result-object p0

    .line 147
    :cond_92
    :goto_92
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_ae

    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 159
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 161
    if-eqz v2, :cond_aa

    .line 163
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 165
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_92

    .line 171
    :cond_aa
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    goto :goto_92

    .line 175
    :cond_ae
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 178
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
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

    .line 1
    const-string v0, "cannot run in Main Thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryLatestCountFiles(IZ)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
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

    .line 1
    const-string v0, "cannot run in Main Thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1, p0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryGroupId(Ljava/lang/String;I)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 16
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_35

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 35
    const-string v2, "cloud_modify_time"

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-interface {v0, v1, v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 41
    move-result-object v2

    .line 42
    new-instance v4, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;

    .line 44
    invoke-direct {v4, v3}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$ModifyTimeComparator;-><init>(Z)V

    .line 47
    invoke-interface {v2, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 50
    invoke-virtual {p1, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_16

    .line 54
    :cond_35
    return-object p1
.end method

.method public static getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/files/thumbnail"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "?level="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, "&id="

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
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

    .line 1
    const-string v0, "cannot run in Main Thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
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
