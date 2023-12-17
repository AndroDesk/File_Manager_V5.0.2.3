.class public Lcom/micloud/midrive/server/protocol/ProtocolDataParser;
.super Ljava/lang/Object;
.source "ProtocolDataParser.java"


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

.method public static getFirstUrl(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getRecommendThumbnailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/micloud/midrive/infos/FileInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_41

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_41

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "seqNo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v3, "errCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v3, "width"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v3, "height"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v5, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getRecommendThumbnailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Lcom/micloud/midrive/infos/PTPAIRecord;

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/micloud/midrive/infos/PTPAIRecord;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_41
    return-object v0
.end method

.method public static parseJsonToDirPath(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo;
    .registers 3

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/micloud/midrive/infos/CloudFilePathInfo$Factory;->create(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseJsonToFolderInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FolderInfo;
    .registers 18

    const-string v0, "data"

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hasMore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v1, "records"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "allCount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    new-instance v0, Lcom/micloud/midrive/infos/FolderInfo;

    sget-object v4, Lcom/micloud/midrive/infos/FolderInfo$CategoryType;->ALL:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseChildrenFileListFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    move v9, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/micloud/midrive/infos/FolderInfo;-><init>(Ljava/lang/String;Lcom/micloud/midrive/infos/FolderInfo$CategoryType;JLjava/lang/String;Ljava/util/List;IZILjava/lang/String;)V

    return-object v0
.end method

.method public static parseJsonToFolderName(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseJsonToMiDriveRevokeStatus(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseJsonToMiDriveTrashSize(Lorg/json/JSONObject;)J
    .registers 3

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseJsonToOperatesInGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperatesInGroup;
    .registers 5

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "hasMore"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "records"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/micloud/midrive/infos/OperateRecord$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperateRecord;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    new-instance p0, Lcom/micloud/midrive/infos/OperatesInGroup;

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/infos/OperatesInGroup;-><init>(ZLjava/util/List;)V

    return-object p0
.end method

.method public static parseJsonToOperationInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;
    .registers 12

    const-string v0, "ts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "taskId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "expireTime"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    new-instance p0, Lcom/micloud/midrive/task/operation/OperationInfo;

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/micloud/midrive/task/operation/OperationInfo;-><init>(Ljava/lang/String;JJJLcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)V

    return-object p0
.end method

.method public static parseJsonToPageOfFileInfo(Lorg/json/JSONObject;ILjava/lang/String;Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;)Lcom/micloud/midrive/infos/PageOfFileInfo;
    .registers 11

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "hasMore"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "records"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v3, "allCount"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 p0, 0x0

    :goto_1e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_32

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/micloud/midrive/infos/FileInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_32
    new-instance p0, Lcom/micloud/midrive/infos/PageOfFileInfo;

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/micloud/midrive/infos/PageOfFileInfo;-><init>(ZLjava/util/List;IILjava/lang/String;Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;)V

    return-object p0
.end method

.method public static parseJsonToPageOfOperateGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfOperateGroup;
    .registers 5

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "hasMore"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "groups"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/micloud/midrive/infos/OperateGroupInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperateGroupInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    new-instance p0, Lcom/micloud/midrive/infos/PageOfOperateGroup;

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/infos/PageOfOperateGroup;-><init>(ZLjava/util/List;)V

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

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "records"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3c

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "purged"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v2}, Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;->createPurgedInfoFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_32
    invoke-static {v2}, Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;->createFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3c
    return-object v0
.end method

.method public static parseJsonToSyncPageInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncPageInfo;
    .registers 6

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "hasMore"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "list"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "syncToken"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_32

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;->createFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_32
    new-instance v2, Lcom/micloud/midrive/infos/SyncPageInfo;

    invoke-direct {v2, v1, p0, v0}, Lcom/micloud/midrive/infos/SyncPageInfo;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method private static parseJsonToTaskQueryErrorInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;
    .registers 14

    const-string v0, "errCode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "errMessage"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failedRecords"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_67

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_66

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "from"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_56

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "label"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "type"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    move-object v11, v10

    move-object v10, v9

    move-object v9, v7

    goto :goto_5a

    :cond_56
    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_5a
    new-instance v6, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/micloud/midrive/task/query/TaskQueryInfo$FailedRecord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_66
    move-object v3, v4

    :cond_67
    new-instance p0, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static parseJsonToTaskQueryInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo;
    .registers 11

    const-string v0, "ts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "operateType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "taskId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "taskResult"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "FAILED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_34

    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToTaskQueryErrorInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    move-result-object p0

    move-object v9, p0

    goto :goto_44

    :cond_34
    const-string v0, "RUNNING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "progress"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    move v6, p0

    :cond_43
    move-object v9, v1

    :goto_44
    new-instance p0, Lcom/micloud/midrive/task/query/TaskQueryInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/micloud/midrive/task/query/TaskQueryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IJLcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;)V

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

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "thumbnails"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "fileId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnailUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

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

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "micloudWebLiteToken"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static parsePageOfPTPRecommendInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;
    .registers 10

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "hasMore"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "syncToken"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recommends"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_53

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "recommendId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "recommendName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "source"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "imageRecords"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->getFirstUrl(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/micloud/midrive/infos/PTPRecommendInfo;

    invoke-static {v7}, Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;->valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;

    move-result-object v7

    invoke-direct {v8, v5, v6, v7, v4}, Lcom/micloud/midrive/infos/PTPRecommendInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/PTPRecommendInfo$Source;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_53
    new-instance p0, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;

    invoke-direct {p0, v0, v1, v2}, Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static parseRecommendDetail(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPDetailInfo;
    .registers 5

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "recommendId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommendName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageRecords"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseImageRecord(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v3, Lcom/micloud/midrive/infos/PTPDetailInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/micloud/midrive/infos/PTPDetailInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method public static parseRecommendStatus(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPRecommendStatus;
    .registers 6

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "galleryStatus"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "galleryCount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "manualUploadSwitch"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "manualUploadH5Url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lcom/micloud/midrive/infos/PTPRecommendStatus;

    invoke-static {v0}, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    move-result-object v0

    new-instance v4, Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;

    invoke-direct {v4, v2, p0}, Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, v0, v4, v1}, Lcom/micloud/midrive/infos/PTPRecommendStatus;-><init>(Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;Lcom/micloud/midrive/infos/PTPRecommendStatus$ManualUploadConfig;I)V

    return-object v3
.end method
