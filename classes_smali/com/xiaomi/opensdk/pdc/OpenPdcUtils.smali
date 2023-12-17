.class public Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;
.super Ljava/lang/Object;
.source "OpenPdcUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenPdcUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDownloadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 16

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_72

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 7
    const-string v1, "watermark"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v10

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 15
    const-string v1, "syncToken"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v12

    .line 21
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 23
    const-string v1, "hasMore"

    .line 25
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 28
    move-result v13

    .line 29
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 31
    const-string v1, "records"

    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 36
    move-result-object v0

    .line 37
    new-instance v14, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 42
    move-result v1

    .line 43
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 50
    move-result v2

    .line 51
    if-ge v1, v2, :cond_42

    .line 53
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_2e

    .line 67
    :cond_42
    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    .line 69
    iget-boolean v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 71
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 73
    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 75
    iget v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 77
    iget-wide v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 79
    iget-object v9, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 81
    move-object v2, v0

    .line 82
    invoke-direct/range {v2 .. v14}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_54} :catch_55

    .line 85
    return-object v0

    .line 86
    :catch_55
    move-exception p0

    .line 87
    const-string v0, "OpenPdcUtils"

    .line 89
    const-string v1, "parseDownloadResult error "

    .line 91
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 114
    throw v0

    .line 115
    :cond_72
    new-instance v13, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    .line 117
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 121
    iget v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 123
    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 125
    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 127
    const-wide/16 v8, -0x1

    .line 129
    const/4 v10, 0x0

    .line 130
    const/4 v11, 0x0

    .line 131
    const/4 v12, 0x0

    .line 132
    move-object v0, v13

    .line 133
    invoke-direct/range {v0 .. v12}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V

    .line 136
    return-object v13
.end method

.method public static parseFetchChildrenResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 15

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_6d

    .line 5
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 7
    if-eqz v0, :cond_6d

    .line 9
    :try_start_8
    const-string v1, "cursor"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v11

    .line 16
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 18
    const-string v1, "hasMore"

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 23
    move-result v12

    .line 24
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 26
    const-string v1, "records"

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 31
    move-result-object v0

    .line 32
    new-instance v13, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 37
    move-result v1

    .line 38
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_29
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 45
    move-result v2

    .line 46
    if-ge v1, v2, :cond_3d

    .line 48
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_29

    .line 62
    :cond_3d
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    .line 64
    iget-boolean v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 66
    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 68
    iget-object v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 70
    iget v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 72
    iget-wide v8, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 74
    iget-object v10, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 76
    move-object v3, v0

    .line 77
    invoke-direct/range {v3 .. v13}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4f} :catch_50

    .line 80
    return-object v0

    .line 81
    :catch_50
    move-exception p0

    .line 82
    const-string v0, "OpenPdcUtils"

    .line 84
    const-string v1, "FetchChildrenOperation error "

    .line 86
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0

    .line 110
    :cond_6d
    new-instance v11, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    .line 112
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 116
    iget v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 118
    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 120
    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 122
    const/4 v8, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    const/4 v10, 0x0

    .line 125
    move-object v0, v11

    .line 126
    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 129
    return-object v11
.end method

.method public static parseFetchRecordResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 11

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_28

    .line 5
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 7
    const-string v1, "record"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-static {v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    move-object v9, v0

    .line 22
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    .line 24
    iget-boolean v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 26
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 28
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 30
    iget v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 32
    iget-wide v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 34
    iget-object v8, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 36
    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V

    .line 40
    return-object v0

    .line 41
    :cond_28
    new-instance v9, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    .line 43
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 47
    iget v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 49
    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 51
    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 53
    const/4 v8, 0x0

    .line 54
    move-object v0, v9

    .line 55
    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V

    .line 58
    return-object v9
.end method

.method public static parseFetchRecordsByIndexResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 14

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_6c

    .line 5
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 7
    if-eqz v0, :cond_6c

    .line 9
    :try_start_8
    const-string v1, "hasMore"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 14
    move-result v11

    .line 15
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 17
    const-string v1, "records"

    .line 19
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 25
    const-string v2, "beginKey"

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    move-result-object v10

    .line 31
    new-instance v12, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 36
    move-result v1

    .line 37
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_28
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 44
    move-result v2

    .line 45
    if-ge v1, v2, :cond_3c

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_28

    .line 61
    :cond_3c
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    .line 63
    iget-boolean v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 65
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 67
    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 69
    iget v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 71
    iget-wide v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 73
    iget-object v9, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 75
    move-object v2, v0

    .line 76
    invoke-direct/range {v2 .. v12}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4e} :catch_4f

    .line 79
    return-object v0

    .line 80
    :catch_4f
    move-exception p0

    .line 81
    const-string v0, "OpenPdcUtils"

    .line 83
    const-string v1, "FetchChildrenOperation error "

    .line 85
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v0

    .line 109
    :cond_6c
    new-instance v11, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    .line 111
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 115
    iget v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 117
    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 119
    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v10, 0x0

    .line 124
    move-object v0, v11

    .line 125
    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V

    .line 128
    return-object v11
.end method

.method public static parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 14

    .line 1
    const-string v0, "eTag"

    .line 3
    const-wide/16 v1, -0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 8
    move-result-wide v4

    .line 9
    const-string v0, "id"

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v6

    .line 16
    const-string v0, "uniqueKey"

    .line 18
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v7

    .line 22
    const-string v0, "parentId"

    .line 24
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v8

    .line 28
    const-string v0, "type"

    .line 30
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v9

    .line 34
    const-string v0, "status"

    .line 36
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "normal"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_33

    .line 48
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->NORMAL:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 50
    :goto_31
    move-object v12, v0

    .line 51
    goto :goto_3e

    .line 52
    :cond_33
    const-string v1, "deleted"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5f

    .line 60
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->DELETED:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 62
    goto :goto_31

    .line 63
    :goto_3e
    const-string v0, "contentJson"

    .line 65
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 68
    move-result-object v10

    .line 69
    const-string v0, "assetList"

    .line 71
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_57

    .line 77
    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 79
    invoke-static {p0, v9}, Lcom/xiaomi/opensdk/pdc/asset/AssetUtils;->parseJSONArrayToEntities(Lorg/json/JSONArray;Ljava/lang/String;)[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 82
    move-result-object v11

    .line 83
    move-object v3, v0

    .line 84
    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    .line 87
    return-object v0

    .line 88
    :cond_57
    new-instance p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 90
    const/4 v11, 0x0

    .line 91
    move-object v3, p0

    .line 92
    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    .line 95
    return-object p0

    .line 96
    :cond_5f
    new-instance p0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v2, "Unknown status "

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, " for "

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p0
.end method

.method public static parseUploadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 13

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_a2

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 7
    const-string v1, "conflictType"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "none"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_18

    .line 21
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->NONE:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 23
    :goto_16
    move-object v9, v0

    .line 24
    goto :goto_39

    .line 25
    :cond_18
    const-string v1, "eTag"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_23

    .line 33
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->ETAG:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 35
    goto :goto_16

    .line 36
    :cond_23
    const-string v1, "id"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2e

    .line 44
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->ID:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 46
    goto :goto_16

    .line 47
    :cond_2e
    const-string v1, "uniqueKey"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_6e

    .line 55
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->UNIQUE_KEY:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 57
    goto :goto_16

    .line 58
    :goto_39
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->NONE:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 60
    const/4 v1, 0x0

    .line 61
    if-ne v9, v0, :cond_4d

    .line 63
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 65
    const-string v2, "record"

    .line 67
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 74
    move-result-object v0

    .line 75
    move-object v10, v0

    .line 76
    move-object v11, v1

    .line 77
    goto :goto_5b

    .line 78
    :cond_4d
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 80
    const-string v2, "conflictRecord"

    .line 82
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 89
    move-result-object v0

    .line 90
    move-object v11, v0

    .line 91
    move-object v10, v1

    .line 92
    :goto_5b
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 94
    iget-boolean v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 96
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 98
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 100
    iget v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 102
    iget-wide v6, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 104
    iget-object v8, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 106
    move-object v1, v0

    .line 107
    invoke-direct/range {v1 .. v11}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V

    .line 110
    return-object v0

    .line 111
    :cond_6e
    new-instance p0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v2, "Unknown conflict type "

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_85} :catch_85

    .line 134
    :catch_85
    move-exception p0

    .line 135
    const-string v0, "OpenPdcUtils"

    .line 137
    const-string v1, "parseUploadResult error "

    .line 139
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 162
    throw v0

    .line 163
    :cond_a2
    new-instance v11, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 165
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 169
    iget v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 171
    iget-wide v5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 173
    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 175
    sget-object v8, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->NONE:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 177
    const/4 v9, 0x0

    .line 178
    const/4 v10, 0x0

    .line 179
    move-object v0, v11

    .line 180
    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V

    .line 183
    return-object v11
.end method
