.class public Lcom/micloud/midrive/infos/FileInfo$Factory;
.super Ljava/lang/Object;
.source "FileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/FileInfo;
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

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileInfo;
    .registers 28

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
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_33

    .line 18
    const-string v2, "size"

    .line 20
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1e

    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 29
    move-result-wide v4

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const-wide/16 v4, -0x1

    .line 33
    :goto_20
    const-string v2, "label"

    .line 35
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const-string v6, "sha1"

    .line 41
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    move-object/from16 v23, v2

    .line 47
    move-wide/from16 v21, v4

    .line 49
    move-object/from16 v24, v6

    .line 51
    goto :goto_3b

    .line 52
    :cond_33
    const-wide/16 v4, 0x0

    .line 54
    move-object/from16 v23, v3

    .line 56
    move-object/from16 v24, v23

    .line 58
    move-wide/from16 v21, v4

    .line 60
    :goto_3b
    const-string v2, "coverUrl"

    .line 62
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_47

    .line 68
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    :cond_47
    move-object/from16 v25, v3

    .line 74
    new-instance v2, Lcom/micloud/midrive/infos/FileInfo;

    .line 76
    const-string v3, "id"

    .line 78
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    const-string v3, "name"

    .line 84
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    const-string v3, "modifyTime"

    .line 90
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 93
    move-result-wide v9

    .line 94
    const-string v4, "createTime"

    .line 96
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 99
    move-result-wide v11

    .line 100
    const-string v5, "localModifyTime"

    .line 102
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_70

    .line 108
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 111
    move-result-wide v5

    .line 112
    goto :goto_74

    .line 113
    :cond_70
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 116
    move-result-wide v5

    .line 117
    :goto_74
    move-wide v13, v5

    .line 118
    const-string v3, "localCreateTime"

    .line 120
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_82

    .line 126
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 129
    move-result-wide v3

    .line 130
    goto :goto_86

    .line 131
    :cond_82
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 134
    move-result-wide v3

    .line 135
    :goto_86
    move-wide v15, v3

    .line 136
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v17

    .line 140
    const-string v1, "parentId"

    .line 142
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v18

    .line 146
    const-string v1, "revision"

    .line 148
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v19

    .line 152
    const-string v1, "status"

    .line 154
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v20

    .line 158
    const-string v1, "privacyStatus"

    .line 160
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_aa

    .line 166
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    goto :goto_ac

    .line 171
    :cond_aa
    const-string v0, "NORMAL"

    .line 173
    :goto_ac
    move-object/from16 v26, v0

    .line 175
    move-object v6, v2

    .line 176
    invoke-direct/range {v6 .. v26}, Lcom/micloud/midrive/infos/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-object v2
.end method
