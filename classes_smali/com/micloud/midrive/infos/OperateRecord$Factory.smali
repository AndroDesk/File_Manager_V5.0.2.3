.class public Lcom/micloud/midrive/infos/OperateRecord$Factory;
.super Ljava/lang/Object;
.source "OperateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/OperateRecord;
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
    const-string v1, "SavedFileInfo Factory"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperateRecord;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v16, Lcom/micloud/midrive/infos/OperateRecord;

    .line 5
    const-string v1, "id"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "groupId"

    .line 13
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const-string v3, "fileId"

    .line 19
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const-string v4, "name"

    .line 25
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const-string v5, "operateTime"

    .line 31
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 34
    move-result-wide v5

    .line 35
    const-string v7, "operateType"

    .line 37
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v7

    .line 41
    const-string v8, "parentId"

    .line 43
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v8

    .line 47
    const-string v9, "channel"

    .line 49
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v9

    .line 53
    const-string v10, "type"

    .line 55
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v10

    .line 59
    const-string v11, "label"

    .line 61
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v11

    .line 65
    const-string v12, "sha1"

    .line 67
    const-string v13, ""

    .line 69
    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v12

    .line 73
    const-string v13, "size"

    .line 75
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 78
    move-result-wide v13

    .line 79
    const-string v15, "coverUrl"

    .line 81
    move-wide/from16 v17, v13

    .line 83
    const/4 v13, 0x0

    .line 84
    invoke-virtual {v0, v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v15

    .line 88
    move-object/from16 v0, v16

    .line 90
    move-wide/from16 v13, v17

    .line 92
    invoke-direct/range {v0 .. v15}, Lcom/micloud/midrive/infos/OperateRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 95
    return-object v16
.end method
