.class public Lcom/micloud/midrive/server/protocol/ProtocolDataParser;
.super Ljava/lang/Object;
.source "ProtocolDataParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstUrl(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_18

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_18

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 13
    move-result-object p0

    .line 14
    const-string v0, "id"

    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getRecommendThumbnailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method private static parseChildrenFileListFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1a

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/micloud/midrive/infos/FileInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileInfo;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    return-object v0
.end method

.method public static parseImageRecord(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/PTPAIRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_41

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_41

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 18
    move-result-object v2

    .line 19
    const-string v3, "id"

    .line 21
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    const-string v3, "seqNo"

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 30
    move-result v6

    .line 31
    const-string v3, "errCode"

    .line 33
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 36
    move-result v7

    .line 37
    const-string v3, "width"

    .line 39
    const/4 v4, -0x1

    .line 40
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 43
    move-result v9

    .line 44
    const-string v3, "height"

    .line 46
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 49
    move-result v10

    .line 50
    invoke-static {v5, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getRecommendThumbnailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v8

    .line 54
    new-instance v2, Lcom/micloud/midrive/infos/PTPAIRecord;

    .line 56
    move-object v4, v2

    .line 57
    invoke-direct/range {v4 .. v10}, Lcom/micloud/midrive/infos/PTPAIRecord;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_8

    .line 66
    :cond_41
    return-object v0
.end method

.method public static parseJsonToDirPath(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo;
    .registers 3

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/micloud/midrive/infos/CloudFilePathInfo$Factory;->create(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static parseJsonToFolderInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FolderInfo;
    .registers 18

    .line 1
    const-string v0, "data"

    .line 3
    move-object/from16 v1, p4

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "hasMore"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 14
    move-result v10

    .line 15
    const-string v1, "records"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 20
    move-result-object v1

    .line 21
    const-string v2, "allCount"

    .line 23
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 26
    move-result v11

    .line 27
    new-instance v0, Lcom/micloud/midrive/infos/FolderInfo;

    .line 29
    sget-object v4, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->ALL:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v5

    .line 35
    invoke-static {v1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseChildrenFileListFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    .line 38
    move-result-object v8

    .line 39
    move-object v2, v0

    .line 40
    move-object v3, p0

    .line 41
    move-object v7, p1

    .line 42
    move v9, p2

    .line 43
    move-object/from16 v12, p3

    .line 45
    invoke-direct/range {v2 .. v12}, Lcom/micloud/midrive/infos/FolderInfo;-><init>(Ljava/lang/String;Lcom/micloud/midrive/infos/FolderInfo$CategoryType;JLjava/lang/String;Ljava/util/List;IZILjava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public static parseJsonToFolderName(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "id"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static parseJsonToMiDriveRevokeStatus(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "status"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static parseJsonToMiDriveTrashSize(Lorg/json/JSONObject;)J
    .registers 3

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "size"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static parseJsonToOperatesInGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperatesInGroup;
    .registers 5

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "hasMore"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "records"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 18
    move-result-object p0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 28
    move-result v3

    .line 29
    if-ge v2, v3, :cond_2c

    .line 31
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/micloud/midrive/infos/OperateRecord$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperateRecord;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_18

    .line 45
    :cond_2c
    new-instance p0, Lcom/micloud/midrive/infos/OperatesInGroup;

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/infos/OperatesInGroup;-><init>(ZLjava/util/List;)V

    .line 50
    return-object p0
.end method

.method public static parseJsonToOperationInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;
    .registers 12

    .line 1
    const-string v0, "ts"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 6
    move-result-wide v3

    .line 7
    const-string v0, "data"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "taskId"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const-string v0, "expireTime"

    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 24
    move-result-wide v5

    .line 25
    const-string v0, "interval"

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 30
    move-result-wide v7

    .line 31
    new-instance p0, Lcom/micloud/midrive/task/operation/OperationInfo;

    .line 33
    move-object v1, p0

    .line 34
    move-object v9, p1

    .line 35
    invoke-direct/range {v1 .. v9}, Lcom/micloud/midrive/task/operation/OperationInfo;-><init>(Ljava/lang/String;JJJLcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)V

    .line 38
    return-object p0
.end method

.method public static parseJsonToPageOfFileInfo(Lorg/json/JSONObject;ILjava/lang/String;Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;)Lcom/micloud/midrive/infos/PageOfFileInfo;
    .registers 11

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const-string v0, "hasMore"

    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    const-string v0, "records"

    .line 20
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 23
    move-result-object v0

    .line 24
    const-string v3, "allCount"

    .line 26
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 29
    move-result v4

    .line 30
    const/4 p0, 0x0

    .line 31
    :goto_1e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 34
    move-result v3

    .line 35
    if-ge p0, v3, :cond_32

    .line 37
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lcom/micloud/midrive/infos/FileInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileInfo;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 p0, p0, 0x1

    .line 50
    goto :goto_1e

    .line 51
    :cond_32
    new-instance p0, Lcom/micloud/midrive/infos/PageOfFileInfo;

    .line 53
    move-object v0, p0

    .line 54
    move v3, p1

    .line 55
    move-object v5, p2

    .line 56
    move-object v6, p3

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/micloud/midrive/infos/PageOfFileInfo;-><init>(ZLjava/util/List;IILjava/lang/String;Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;)V

    .line 60
    return-object p0
.end method

.method public static parseJsonToPageOfOperateGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfOperateGroup;
    .registers 5

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "hasMore"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "groups"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 18
    move-result-object p0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 28
    move-result v3

    .line 29
    if-ge v2, v3, :cond_2c

    .line 31
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/micloud/midrive/infos/OperateGroupInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperateGroupInfo;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_18

    .line 45
    :cond_2c
    new-instance p0, Lcom/micloud/midrive/infos/PageOfOperateGroup;

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/infos/PageOfOperateGroup;-><init>(ZLjava/util/List;)V

    .line 50
    return-object p0
.end method

.method public static parseJsonToSyncFileInfoList(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const-string v1, "records"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_3c

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "status"

    .line 31
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    const-string v4, "purged"

    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_32

    .line 43
    invoke-static {v2}, Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;->createPurgedInfoFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_39

    .line 51
    :cond_32
    invoke-static {v2}, Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;->createFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_39
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_12

    .line 61
    :cond_3c
    return-object v0
.end method

.method public static parseJsonToSyncPageInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncPageInfo;
    .registers 6

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const-string v1, "hasMore"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    const-string v2, "list"

    .line 20
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, "syncToken"

    .line 26
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_1e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 34
    move-result v4

    .line 35
    if-ge v3, v4, :cond_32

    .line 37
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;->createFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 50
    goto :goto_1e

    .line 51
    :cond_32
    new-instance v2, Lcom/micloud/midrive/infos/SyncPageInfo;

    .line 53
    invoke-direct {v2, v1, p0, v0}, Lcom/micloud/midrive/infos/SyncPageInfo;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 56
    return-object v2
.end method

.method private static parseJsonToTaskQueryErrorInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;
    .registers 14

    .line 1
    const-string v0, "errCode"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    move-result v1

    .line 7
    const-string v2, "errMessage"

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const-string v3, "failedRecords"

    .line 15
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 18
    move-result-object p0

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz p0, :cond_67

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_1b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 31
    move-result v6

    .line 32
    if-ge v5, v6, :cond_66

    .line 34
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lorg/json/JSONObject;

    .line 40
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 43
    move-result v8

    .line 44
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lorg/json/JSONObject;

    .line 50
    const-string v7, "from"

    .line 52
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 55
    move-result-object v6

    .line 56
    if-eqz v6, :cond_56

    .line 58
    const-string v7, "name"

    .line 60
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v7

    .line 64
    const-string v9, "id"

    .line 66
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v9

    .line 70
    const-string v10, "label"

    .line 72
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v10

    .line 76
    const-string v11, "type"

    .line 78
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    move-object v12, v6

    .line 83
    move-object v11, v10

    .line 84
    move-object v10, v9

    .line 85
    move-object v9, v7

    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    move-object v9, v3

    .line 88
    move-object v10, v9

    .line 89
    move-object v11, v10

    .line 90
    move-object v12, v11

    .line 91
    :goto_5a
    new-instance v6, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;

    .line 93
    move-object v7, v6

    .line 94
    invoke-direct/range {v7 .. v12}, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 102
    goto :goto_1b

    .line 103
    :cond_66
    move-object v3, v4

    .line 104
    :cond_67
    new-instance p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    .line 106
    invoke-direct {p0, v1, v2, v3}, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 109
    return-object p0
.end method

.method public static parseJsonToTaskQueryInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo;
    .registers 11

    .line 1
    const-string v0, "ts"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 6
    move-result-wide v7

    .line 7
    const-string v0, "data"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "status"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const-string v0, "operateType"

    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    const-string v0, "taskId"

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const-string v0, "taskResult"

    .line 33
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    move-result-object v5

    .line 37
    const-string v0, "FAILED"

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v0, :cond_34

    .line 47
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToTaskQueryErrorInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    .line 50
    move-result-object p0

    .line 51
    move-object v9, p0

    .line 52
    goto :goto_44

    .line 53
    :cond_34
    const-string v0, "RUNNING"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_43

    .line 61
    const-string v0, "progress"

    .line 63
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 66
    move-result p0

    .line 67
    move v6, p0

    .line 68
    :cond_43
    move-object v9, v1

    .line 69
    :goto_44
    new-instance p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;

    .line 71
    move-object v1, p0

    .line 72
    invoke-direct/range {v1 .. v9}, Lcom/micloud/midrive/task/query/TaskQueryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IJLcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;)V

    .line 75
    return-object p0
.end method

.method public static parseJsonToThumbnailMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v1, "thumbnails"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_2e

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "fileId"

    .line 31
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    const-string v4, "thumbnailUrl"

    .line 37
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_12

    .line 47
    :cond_2e
    return-object v0
.end method

.method public static parseJsonToTokenMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "micloudWebLiteToken"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object v1
.end method

.method public static parsePageOfPTPRecommendInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;
    .registers 10

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "hasMore"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "syncToken"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "recommends"

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    move-result-object p0

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_1e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 34
    move-result v4

    .line 35
    if-ge v3, v4, :cond_53

    .line 37
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 40
    move-result-object v4

    .line 41
    const-string v5, "recommendId"

    .line 43
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    const-string v6, "recommendName"

    .line 49
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    const-string v7, "source"

    .line 55
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v7

    .line 59
    const-string v8, "imageRecords"

    .line 61
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 64
    move-result-object v4

    .line 65
    invoke-static {v4, v7}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->getFirstUrl(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    new-instance v8, Lcom/micloud/midrive/infos/PTPRecommendInfo;

    .line 71
    invoke-static {v7}, Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;->valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;

    .line 74
    move-result-object v7

    .line 75
    invoke-direct {v8, v5, v6, v7, v4}, Lcom/micloud/midrive/infos/PTPRecommendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_1e

    .line 84
    :cond_53
    new-instance p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;

    .line 86
    invoke-direct {p0, v0, v1, v2}, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 89
    return-object p0
.end method

.method public static parseRecommendDetail(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPDetailInfo;
    .registers 5

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "recommendId"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "recommendName"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "source"

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "imageRecords"

    .line 27
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, v2}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseImageRecord(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    .line 34
    move-result-object p0

    .line 35
    new-instance v3, Lcom/micloud/midrive/infos/PTPDetailInfo;

    .line 37
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/micloud/midrive/infos/PTPDetailInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 40
    return-object v3
.end method

.method public static parseRecommendStatus(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPRecommendStatus;
    .registers 6

    .line 1
    const-string v0, "data"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "galleryStatus"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "galleryCount"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    const-string v2, "manualUploadSwitch"

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "ON"

    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    const-string v3, "manualUploadH5Url"

    .line 33
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    new-instance v3, Lcom/micloud/midrive/infos/PTPRecommendStatus;

    .line 39
    invoke-static {v0}, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    .line 42
    move-result-object v0

    .line 43
    new-instance v4, Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;

    .line 45
    invoke-direct {v4, v2, p0}, Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;-><init>(ZLjava/lang/String;)V

    .line 48
    invoke-direct {v3, v0, v4, v1}, Lcom/micloud/midrive/infos/PTPRecommendStatus;-><init>(Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;I)V

    .line 51
    return-object v3
.end method
