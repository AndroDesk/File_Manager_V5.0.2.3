.class public Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;
.super Ljava/lang/Object;
.source "SyncCloudFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/SyncCloudFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "Factory class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static createFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    .registers 33

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "type"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    const-string v3, "folder"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    const-string v3, "createTime"

    .line 17
    const-string v4, "modifyTime"

    .line 19
    const/4 v5, 0x0

    .line 20
    const-wide/16 v6, 0x0

    .line 22
    if-nez v2, :cond_56

    .line 24
    const-string v2, "label"

    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    const-string v2, "sha1"

    .line 32
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const-string v6, "localCreateTime"

    .line 38
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_30

    .line 44
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 47
    move-result-wide v6

    .line 48
    goto :goto_34

    .line 49
    :cond_30
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 52
    move-result-wide v6

    .line 53
    :goto_34
    const-string v8, "localModifyTime"

    .line 55
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_41

    .line 61
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 64
    move-result-wide v8

    .line 65
    goto :goto_45

    .line 66
    :cond_41
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 69
    move-result-wide v8

    .line 70
    :goto_45
    const-string v10, "size"

    .line 72
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 75
    move-result-wide v10

    .line 76
    move-object/from16 v30, v2

    .line 78
    move-object/from16 v29, v5

    .line 80
    move-wide/from16 v21, v6

    .line 82
    move-wide/from16 v19, v8

    .line 84
    move-wide/from16 v27, v10

    .line 86
    goto :goto_60

    .line 87
    :cond_56
    move-object/from16 v29, v5

    .line 89
    move-object/from16 v30, v29

    .line 91
    move-wide/from16 v19, v6

    .line 93
    move-wide/from16 v21, v19

    .line 95
    move-wide/from16 v27, v21

    .line 97
    :goto_60
    new-instance v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 99
    const-string v5, "id"

    .line 101
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v13

    .line 105
    const-string v5, "name"

    .line 107
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v14

    .line 111
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 114
    move-result-wide v15

    .line 115
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 118
    move-result-wide v17

    .line 119
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v23

    .line 123
    const-string v1, "parentId"

    .line 125
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v24

    .line 129
    const-string v1, "revision"

    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v25

    .line 135
    const-string v1, "status"

    .line 137
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object v26

    .line 141
    const-string v1, "privacyStatus"

    .line 143
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_99

    .line 149
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    goto :goto_9b

    .line 154
    :cond_99
    const-string v0, "NORMAL"

    .line 156
    :goto_9b
    move-object/from16 v31, v0

    .line 158
    move-object v12, v2

    .line 159
    invoke-direct/range {v12 .. v31}, Lcom/micloud/midrive/infos/SyncCloudFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v2
.end method

.method public static createPurgedInfoFromServerJson(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v20, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 5
    const-string v1, "id"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "type"

    .line 13
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v11

    .line 17
    const-string v2, "revision"

    .line 19
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v13

    .line 23
    const-string v2, "status"

    .line 25
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v14

    .line 29
    const-string v2, "privacyStatus"

    .line 31
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_29

    .line 37
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    const-string v0, "NORMAL"

    .line 44
    :goto_2b
    move-object/from16 v19, v0

    .line 46
    const-string v2, ""

    .line 48
    const-wide/16 v3, 0x0

    .line 50
    const-wide/16 v5, 0x0

    .line 52
    const-wide/16 v7, 0x0

    .line 54
    const-wide/16 v9, 0x0

    .line 56
    const-string v12, ""

    .line 58
    const-wide/16 v15, 0x0

    .line 60
    const-string v17, ""

    .line 62
    const-string v18, ""

    .line 64
    move-object/from16 v0, v20

    .line 66
    invoke-direct/range {v0 .. v19}, Lcom/micloud/midrive/infos/SyncCloudFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v20
.end method
