.class public Lcom/micloud/midrive/infos/FileUploadInfo$Factory;
.super Ljava/lang/Object;
.source "FileUploadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/FileUploadInfo;
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
    const-string v1, "FileUploadInfo.Factory class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileUploadInfo;
    .registers 16

    .line 1
    const-string v0, "file_item_info"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_18

    .line 10
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, Lcom/micloud/midrive/infos/FileItemInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileItemInfo;

    .line 22
    move-result-object v0

    .line 23
    move-object v13, v0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move-object v13, v2

    .line 26
    :goto_19
    const-string v0, "record_id"

    .line 28
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_27

    .line 34
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    move-object v7, v0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move-object v7, v2

    .line 41
    :goto_28
    const-string v0, "err_info"

    .line 43
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3d

    .line 49
    new-instance v1, Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v1}, Lcom/micloud/midrive/infos/ErrInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/ErrInfo;

    .line 61
    move-result-object v2

    .line 62
    :cond_3d
    move-object v14, v2

    .line 63
    new-instance v0, Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 65
    const-string v1, "file_name"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    const-string v1, "file_path"

    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    const-string v1, "parent_id"

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    const-string v1, "time"

    .line 85
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 88
    move-result-wide v8

    .line 89
    const-string v1, "size"

    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 94
    move-result-wide v10

    .line 95
    const-string v1, "is_background"

    .line 97
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 100
    move-result v12

    .line 101
    move-object v3, v0

    .line 102
    invoke-direct/range {v3 .. v14}, Lcom/micloud/midrive/infos/FileUploadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/micloud/midrive/infos/FileItemInfo;Lcom/micloud/midrive/infos/ErrInfo;)V

    .line 105
    const-string v1, "failed_move_path"

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_77

    .line 113
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0, p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->setFailedMovePath(Ljava/lang/String;)V

    .line 120
    :cond_77
    return-object v0
.end method
