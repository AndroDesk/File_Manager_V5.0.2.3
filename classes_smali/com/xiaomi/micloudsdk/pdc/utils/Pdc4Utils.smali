.class public Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;
.super Ljava/lang/Object;
.source "Pdc4Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_RETRY_TIME:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "Pdc4Utils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertErrorCode(I)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    .line 1
    if-eqz p0, :cond_36

    .line 3
    const/16 v0, 0x2711

    .line 5
    if-eq p0, v0, :cond_33

    .line 7
    const/16 v0, 0x271b

    .line 9
    if-eq p0, v0, :cond_33

    .line 11
    const v0, 0xc361

    .line 14
    if-eq p0, v0, :cond_30

    .line 16
    const v0, 0xcb20

    .line 19
    if-eq p0, v0, :cond_2d

    .line 21
    const v0, 0xcf08

    .line 24
    if-eq p0, v0, :cond_33

    .line 26
    const/16 v0, 0x2718

    .line 28
    if-eq p0, v0, :cond_30

    .line 30
    const/16 v0, 0x2719

    .line 32
    if-eq p0, v0, :cond_33

    .line 34
    packed-switch p0, :pswitch_data_3a

    .line 37
    packed-switch p0, :pswitch_data_4c

    .line 40
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 42
    return-object p0

    .line 43
    :pswitch_2a  #0x9c46
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 45
    return-object p0

    .line 46
    :cond_2d
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->NEED_RESYNC:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 48
    return-object p0

    .line 49
    :cond_30
    :pswitch_30  #0x9c40, 0x9c41, 0x9c42, 0x9c43, 0x9c44, 0x9c45, 0xc353
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 51
    return-object p0

    .line 52
    :cond_33
    :pswitch_33  #0xc352
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 54
    return-object p0

    .line 55
    :cond_36
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 57
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_3a
    .packed-switch 0x9c40
        :pswitch_30  #00009c40
        :pswitch_30  #00009c41
        :pswitch_30  #00009c42
        :pswitch_30  #00009c43
        :pswitch_30  #00009c44
        :pswitch_30  #00009c45
        :pswitch_2a  #00009c46
    .end packed-switch

    .line 77
    :pswitch_data_4c
    .packed-switch 0xc352
        :pswitch_33  #0000c352
        :pswitch_30  #0000c353
    .end packed-switch
.end method

.method public static parseBatchUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 12

    .line 1
    const-string v0, "Pdc4Utils"

    .line 3
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 5
    if-eqz v1, :cond_88

    .line 7
    :try_start_6
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 9
    const-string v2, "list"

    .line 11
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_88

    .line 17
    new-instance v10, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 22
    move-result v2

    .line 23
    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 30
    move-result v3

    .line 31
    if-ge v2, v3, :cond_5a

    .line 33
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 39
    invoke-direct {v4, v3}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>(Lorg/json/JSONObject;)V

    .line 42
    invoke-static {v4}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_54

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v6, "Sub item "

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, " got error: "

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    new-instance v5, Ljava/lang/Throwable;

    .line 79
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 82
    invoke-static {v0, v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_54
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_1a

    .line 91
    :cond_5a
    new-instance v1, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    .line 93
    iget-boolean v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 95
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 97
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 99
    iget v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 101
    iget-wide v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 103
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    .line 105
    move-object v2, v1

    .line 106
    invoke-direct/range {v2 .. v10}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Ljava/util/ArrayList;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6c} :catch_6d

    .line 109
    return-object v1

    .line 110
    :catch_6d
    move-exception p0

    .line 111
    const-string v1, "parseBatchUploadResult error "

    .line 113
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 136
    throw v0

    .line 137
    :cond_88
    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    .line 139
    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 141
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 143
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 145
    iget v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 147
    iget-wide v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 149
    iget-object v8, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    .line 151
    const/4 v9, 0x0

    .line 152
    move-object v1, v0

    .line 153
    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Ljava/util/ArrayList;)V

    .line 156
    return-object v0
.end method

.method public static parseDownloadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 16

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_72

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 7
    const-string v1, "watermark"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v10

    .line 13
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 15
    const-string v1, "syncToken"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v12

    .line 21
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 23
    const-string v1, "hasMore"

    .line 25
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 28
    move-result v13

    .line 29
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

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
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

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
    iget-boolean v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 71
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 73
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 75
    iget v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 77
    iget-wide v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 79
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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
    const-string v0, "Pdc4Utils"

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
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 121
    iget v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 123
    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 125
    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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

.method public static parseFetchChildrenResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 15

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_6d

    .line 5
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 18
    const-string v1, "hasMore"

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 23
    move-result v12

    .line 24
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

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
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

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
    iget-boolean v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 66
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 68
    iget-object v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 70
    iget v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 72
    iget-wide v8, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 74
    iget-object v10, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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
    const-string v0, "Pdc4Utils"

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
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 116
    iget v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 118
    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 120
    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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

.method public static parseFetchRecordResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 11

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_28

    .line 5
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 7
    const-string v1, "record"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

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
    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 26
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 28
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 30
    iget v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 32
    iget-wide v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 34
    iget-object v8, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 47
    iget v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 49
    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 51
    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    .line 53
    const/4 v8, 0x0

    .line 54
    move-object v0, v9

    .line 55
    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V

    .line 58
    return-object v9
.end method

.method public static parseFetchRecordsByIndexResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 14

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_6c

    .line 5
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 17
    const-string v1, "records"

    .line 19
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

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
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

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
    iget-boolean v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 65
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 67
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 69
    iget v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 71
    iget-wide v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 73
    iget-object v9, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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
    const-string v0, "Pdc4Utils"

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
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 115
    iget v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 117
    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 119
    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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

.method public static parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 13

    .line 1
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 3
    if-eqz v1, :cond_a2

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 65
    const-string v2, "record"

    .line 67
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

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
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 80
    const-string v2, "conflictRecord"

    .line 82
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseSyncRecord(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

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
    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 96
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 98
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 100
    iget v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 102
    iget-wide v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 104
    iget-object v8, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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
    const-string v0, "Pdc4Utils"

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
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 169
    iget v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 171
    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 173
    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

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

.method public static requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;"
        }
    .end annotation

    .line 1
    const-string v0, "requestServer error"

    .line 3
    const-string v1, "requestServer error:"

    .line 5
    const-string v2, "Pdc4Utils"

    .line 7
    const-wide/32 v3, 0x493e0

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v7, "requestServer started at "

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v7, "  isGet : "

    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-eqz p0, :cond_2d

    .line 41
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    goto :goto_31

    .line 46
    :cond_2d
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    :goto_31
    new-instance p1, Lorg/json/JSONObject;

    .line 52
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance p2, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 57
    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>(Lorg/json/JSONObject;)V

    .line 60
    iget-boolean p1, p2, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 62
    if-nez p1, :cond_53

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v6, "Got error: "

    .line 71
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_53} :catch_121
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_53} :catch_108
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_53} :catch_ef
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_53} :catch_c2
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_a .. :try_end_53} :catch_6d
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_53} :catch_54

    .line 84
    :cond_53
    return-object p2

    .line 85
    :catch_54
    move-exception p0

    .line 86
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1

    .line 110
    :catch_6d
    move-exception p0

    .line 111
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    .line 118
    move-result p2

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 131
    invoke-direct {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>()V

    .line 134
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    .line 137
    move-result p2

    .line 138
    const/16 v0, 0x191

    .line 140
    if-eq p2, v0, :cond_bb

    .line 142
    const/16 v0, 0x193

    .line 144
    if-eq p2, v0, :cond_bb

    .line 146
    const/16 v0, 0x1f4

    .line 148
    if-eq p2, v0, :cond_b2

    .line 150
    const/16 v0, 0x1f7

    .line 152
    if-eq p2, v0, :cond_a6

    .line 154
    iput-boolean v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 156
    sget-object p2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 158
    iput-object p2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    iput-object p0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 166
    goto :goto_c1

    .line 167
    :cond_a6
    iput-boolean v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 169
    sget-object p2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 171
    iput-object p2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 173
    iget p0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 175
    int-to-long v0, p0

    .line 176
    iput-wide v0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 178
    goto :goto_c1

    .line 179
    :cond_b2
    iput-boolean v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 181
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 183
    iput-object p0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 185
    iput-wide v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 187
    goto :goto_c1

    .line 188
    :cond_bb
    iput-boolean v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 190
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->AUTH_FAILED:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 192
    iput-object p0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 194
    :goto_c1
    return-object p1

    .line 195
    :catch_c2
    move-exception p0

    .line 196
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-static {p0}, Lcom/xiaomi/opensdk/exception/RetriableException;->isRetriableException(Ljava/lang/Throwable;)Z

    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_da

    .line 205
    new-instance p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 207
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>()V

    .line 210
    iput-boolean v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 212
    sget-object p1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 214
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 216
    iput-wide v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 218
    return-object p0

    .line 219
    :cond_da
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p0

    .line 236
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 239
    throw p1

    .line 240
    :catch_ef
    move-exception p0

    .line 241
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object p0

    .line 261
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 264
    throw p1

    .line 265
    :catch_108
    move-exception p0

    .line 266
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object p0

    .line 286
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 289
    throw p1

    .line 290
    :catch_121
    move-exception p0

    .line 291
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    move-result-object p0

    .line 311
    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 314
    throw p1
.end method
