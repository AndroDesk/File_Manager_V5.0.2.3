.class public Lcom/micloud/midrive/infos/FileDownloadInfo$Factory;
.super Ljava/lang/Object;
.source "FileDownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/FileDownloadInfo;
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
    const-string v1, "FileDownLoadInfo.Factory class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileDownloadInfo;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "file_path"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_11

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    move-object v7, v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move-object v7, v3

    .line 19
    :goto_12
    const-string v1, "thumb_url"

    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_20

    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    move-object v15, v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object v15, v3

    .line 34
    :goto_21
    const-string v1, "err_info"

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_39

    .line 42
    new-instance v2, Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {v2}, Lcom/micloud/midrive/infos/ErrInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/ErrInfo;

    .line 54
    move-result-object v1

    .line 55
    move-object/from16 v16, v1

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    move-object/from16 v16, v3

    .line 60
    :goto_3b
    const-string v1, "sha1_to_check"

    .line 62
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v17

    .line 66
    new-instance v1, Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 68
    const-string v2, "fileId"

    .line 70
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    const-string v2, "file_name"

    .line 76
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    const-string v2, "sha1"

    .line 82
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v8

    .line 86
    const-string v2, "file_type"

    .line 88
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 91
    move-result v9

    .line 92
    const-string v2, "is_background"

    .line 94
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 97
    move-result v10

    .line 98
    const-string v2, "size"

    .line 100
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 103
    move-result-wide v11

    .line 104
    const-string v2, "time"

    .line 106
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 109
    move-result-wide v13

    .line 110
    move-object v4, v1

    .line 111
    invoke-direct/range {v4 .. v17}, Lcom/micloud/midrive/infos/FileDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V

    .line 114
    return-object v1
.end method
