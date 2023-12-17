.class public Lcom/micloud/midrive/server/protocol/ManagementProtocol;
.super Ljava/lang/Object;
.source "ManagementProtocol.java"


# static fields
.field public static final BIG_THUMBNAIL:I = 0x5

.field public static final SMALL_THUMBNAIL:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static categorySearch(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/micloud/midrive/infos/PageOfFileInfo;
    .registers 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_10

    .line 12
    const-string v1, "type"

    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1b

    .line 23
    const-string p1, "queryString"

    .line 25
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_26

    .line 34
    const-string p1, "startTime"

    .line 36
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_26
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_31

    .line 45
    const-string p1, "endTime"

    .line 47
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_31
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3c

    .line 56
    const-string p1, "order"

    .line 58
    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string p2, ""

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    const-string p3, "pageNo"

    .line 80
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    const-string p3, "limit"

    .line 100
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_80

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    const-string p2, "label"

    .line 126
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_80
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 131
    const-string p2, "categorySearch"

    .line 133
    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/search"

    .line 135
    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 141
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lorg/json/JSONObject;

    .line 147
    const/4 p1, 0x1

    .line 148
    new-array p1, p1, [Ljava/lang/Object;

    .line 150
    const/4 p3, 0x0

    .line 151
    const-string p4, "responseJson: "

    .line 153
    invoke-static {p4, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 156
    move-result-object p4

    .line 157
    aput-object p4, p1, p3

    .line 159
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 162
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 165
    :try_start_a4
    sget-object p1, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;->NETWORK:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    .line 167
    invoke-static {p0, p6, p5, p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToPageOfFileInfo(Lorg/json/JSONObject;ILjava/lang/String;Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;)Lcom/micloud/midrive/infos/PageOfFileInfo;

    .line 170
    move-result-object p0
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_aa} :catch_ab

    .line 171
    return-object p0

    .line 172
    :catch_ab
    move-exception p0

    .line 173
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 175
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 178
    throw p1
.end method

.method public static createFolder(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "parentId"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "name"

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 18
    const-string p2, "createFolder"

    .line 20
    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/folders/create"

    .line 22
    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    :try_start_18
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 28
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/json/JSONObject;

    .line 34
    const/4 v0, 0x1

    .line 35
    new-array v1, v0, [Ljava/lang/Object;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v3, "responseJson: "

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    aput-object v2, v1, v3

    .line 57
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 60
    invoke-static {p2, p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 63
    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToFolderName(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 74
    move-result-object p0

    .line 75
    new-array p1, v0, [Ljava/lang/Object;

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v0, "createFolder record: "

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    aput-object p2, p1, v3

    .line 96
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1, p0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_6f

    .line 109
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OK:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 111
    return-object p0

    .line 112
    :cond_6f
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
    :try_end_71
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_18 .. :try_end_71} :catch_a5
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_18 .. :try_end_71} :catch_a5
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_71} :catch_a5
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_18 .. :try_end_71} :catch_a5
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_18 .. :try_end_71} :catch_a5
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_71} :catch_a5
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_18 .. :try_end_71} :catch_a2
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_18 .. :try_end_71} :catch_72

    .line 114
    return-object p0

    .line 115
    :catch_72
    move-exception p0

    .line 116
    instance-of p1, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    .line 118
    if-eqz p1, :cond_7a

    .line 120
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 122
    return-object p0

    .line 123
    :cond_7a
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 125
    const/16 p1, 0x2718

    .line 127
    if-ne p0, p1, :cond_83

    .line 129
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->PARAM_ERROR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 131
    return-object p0

    .line 132
    :cond_83
    const/16 p1, 0x2712

    .line 134
    if-ne p0, p1, :cond_8a

    .line 136
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 138
    return-object p0

    .line 139
    :cond_8a
    const/16 p1, 0x2afd

    .line 141
    if-ne p0, p1, :cond_91

    .line 143
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_CONFLICT:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 145
    return-object p0

    .line 146
    :cond_91
    const/16 p1, 0x2b09

    .line 148
    if-ne p0, p1, :cond_98

    .line 150
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 152
    return-object p0

    .line 153
    :cond_98
    const/16 p1, 0x271f

    .line 155
    if-ne p0, p1, :cond_9f

    .line 157
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 159
    return-object p0

    .line 160
    :cond_9f
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 162
    return-object p0

    .line 163
    :catch_a2
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 165
    return-object p0

    .line 166
    :catch_a5
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 168
    return-object p0
.end method

.method public static createPrivateFolder(Lcom/micloud/midrive/server/transport/Network;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 8
    const-string v2, "createPrivateFolder"

    .line 10
    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/folders/createPrivacyFolder"

    .line 12
    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 18
    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/json/JSONObject;

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    const-string v1, "responseJson: "

    .line 29
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v1, v0, v3

    .line 36
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 39
    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToFolderName(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 45
    move-result-object p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 46
    return-object p0

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 50
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    throw v0
.end method

.method public static fileOperation(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "operateRecords"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p2, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->label:Ljava/lang/String;

    .line 13
    const-string v1, "operateType"

    .line 15
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 20
    const-string v1, "fileOperation"

    .line 22
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/filemanager"

    .line 24
    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 30
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lorg/json/JSONObject;

    .line 36
    const/4 p1, 0x1

    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    const-string v0, "responseJson: "

    .line 41
    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x0

    .line 46
    aput-object v0, p1, v2

    .line 48
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 51
    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    :try_start_35
    invoke-static {p0, p2}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToOperationInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    .line 57
    move-result-object p0
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_39} :catch_3a

    .line 58
    return-object p0

    .line 59
    :catch_3a
    move-exception p0

    .line 60
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 62
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 65
    throw p1
.end method

.method public static getBigThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0, p0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static getChildrenFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/infos/FolderInfo;
    .registers 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "parentId"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, ""

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const-string v3, "pageNo"

    .line 30
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p4

    .line 48
    const-string v1, "limit"

    .line 50
    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string p4, "type"

    .line 55
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string p4, "order"

    .line 60
    invoke-virtual {v0, p4, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p4, "privacyStatus"

    .line 65
    invoke-virtual {v0, p4, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance p4, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 70
    const-string p5, "getChildrenFileInfo"

    .line 72
    const-string p7, "http://driveapi.micloud.xiaomi.net/v2/user/folders/children"

    .line 74
    invoke-direct {p4, p5, p7, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    invoke-static {p0, p4}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 80
    invoke-virtual {p4}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lorg/json/JSONObject;

    .line 86
    const/4 p4, 0x1

    .line 87
    new-array p4, p4, [Ljava/lang/Object;

    .line 89
    const-string p7, "responseJson: "

    .line 91
    invoke-static {p7, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 94
    move-result-object p7

    .line 95
    const/4 v0, 0x0

    .line 96
    aput-object p7, p4, v0

    .line 98
    invoke-static {p4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 101
    invoke-static {p5, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 104
    :try_start_67
    invoke-static {p1, p2, p3, p6, p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToFolderInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FolderInfo;

    .line 107
    move-result-object p0
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_6b} :catch_6c

    .line 108
    return-object p0

    .line 109
    :catch_6c
    move-exception p0

    .line 110
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 112
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    throw p1
.end method

.method public static getDirPath(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/CloudFilePathInfo;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "id"

    .line 8
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p2, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 13
    const-string v1, "getDirPath"

    .line 15
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/dir/get"

    .line 17
    invoke-direct {p2, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 23
    invoke-virtual {p2}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lorg/json/JSONObject;

    .line 29
    const/4 p2, 0x1

    .line 30
    new-array p2, p2, [Ljava/lang/Object;

    .line 32
    const-string v0, "responseJson: "

    .line 34
    invoke-static {v0, p1}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object v0, p2, v2

    .line 41
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 44
    invoke-static {v1, p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    :try_start_2e
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToDirPath(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo;

    .line 50
    move-result-object p0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_32} :catch_33

    .line 51
    return-object p0

    .line 52
    :catch_33
    move-exception p0

    .line 53
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 55
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    throw p1
.end method

.method public static getLiteToken(Lcom/micloud/midrive/server/transport/Network;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 8
    const-string v2, "getLiteToken"

    .line 10
    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/litetoken/get"

    .line 12
    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 18
    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/json/JSONObject;

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    const-string v1, "responseJson: "

    .line 29
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v1, v0, v3

    .line 36
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 39
    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToTokenMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 45
    move-result-object p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 46
    return-object p0

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 50
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    throw v0
.end method

.method public static getMiDriveItemUsed()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "MiCloud QuotaInfo = "

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 28
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 31
    if-nez v0, :cond_23

    .line 33
    const-wide/16 v0, -0x1

    .line 35
    return-wide v0

    .line 36
    :cond_23
    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getItemInfoList()Ljava/util/ArrayList;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_48

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    .line 56
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getName()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    const-string v3, "Drive"

    .line 62
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2b

    .line 68
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    .line 71
    move-result-wide v0

    .line 72
    return-wide v0

    .line 73
    :cond_48
    const-wide/16 v0, 0x0

    .line 75
    return-wide v0
.end method

.method public static getMiDriveQuotaInfo()Lcom/micloud/midrive/infos/MiDriveQuotaInfo;
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance v1, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;

    .line 11
    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    .line 18
    move-result-wide v4

    .line 19
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;-><init>(JJ)V

    .line 22
    return-object v1
.end method

.method public static getMiDriveTrashSize(Lcom/micloud/midrive/server/transport/Network;)J
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v2, "getMiDriveTrashSize"

    .line 10
    const-string v3, "http://driveapi.micloud.xiaomi.net/v1/user/trash/size"

    .line 12
    invoke-direct {v0, v2, v3, v1}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-static {p0, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 18
    invoke-virtual {v0}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/json/JSONObject;

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    const-string v1, "responseJson: "

    .line 29
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v1, v0, v3

    .line 36
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 39
    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToMiDriveTrashSize(Lorg/json/JSONObject;)J

    .line 45
    move-result-wide v0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 46
    return-wide v0

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 50
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    throw v0
.end method

.method public static getOperateLatestListInGroup(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;II)Lcom/micloud/midrive/infos/OperatesInGroup;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "groupId"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v1, ""

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string p2, "pageNo"

    .line 30
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string p2, "pageSize"

    .line 50
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 55
    const-string p2, "getOperateLatestListInGroup"

    .line 57
    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/list"

    .line 59
    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 65
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Lorg/json/JSONObject;

    .line 71
    const/4 p1, 0x1

    .line 72
    new-array p1, p1, [Ljava/lang/Object;

    .line 74
    const-string p3, "responseJson: "

    .line 76
    invoke-static {p3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 79
    move-result-object p3

    .line 80
    const/4 v0, 0x0

    .line 81
    aput-object p3, p1, v0

    .line 83
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 86
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 89
    :try_start_58
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToOperatesInGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperatesInGroup;

    .line 92
    move-result-object p0
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5c} :catch_5d

    .line 93
    return-object p0

    .line 94
    :catch_5d
    move-exception p0

    .line 95
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 97
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 100
    throw p1
.end method

.method public static getOperateTimeline(Lcom/micloud/midrive/server/transport/Network;III)Lcom/micloud/midrive/infos/PageOfOperateGroup;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, ""

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v1, "groupPageNo"

    .line 25
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string p2, "groupPageSize"

    .line 45
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    const-string p2, "pageSizeInGroup"

    .line 65
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 70
    const-string p2, "getOperateTimeline"

    .line 72
    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/timeline"

    .line 74
    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 80
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lorg/json/JSONObject;

    .line 86
    const/4 p1, 0x1

    .line 87
    new-array p1, p1, [Ljava/lang/Object;

    .line 89
    const-string p3, "responseJson: "

    .line 91
    invoke-static {p3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 94
    move-result-object p3

    .line 95
    const/4 v0, 0x0

    .line 96
    aput-object p3, p1, v0

    .line 98
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 101
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 104
    :try_start_67
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToPageOfOperateGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfOperateGroup;

    .line 107
    move-result-object p0
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_6b} :catch_6c

    .line 108
    return-object p0

    .line 109
    :catch_6c
    move-exception p0

    .line 110
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 112
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    throw p1
.end method

.method public static getPTPRecommendStatus(Lcom/micloud/midrive/server/transport/Network;)Lcom/micloud/midrive/infos/PTPRecommendStatus;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 8
    const-string v2, "getRecommendStatus"

    .line 10
    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/ai/status/get"

    .line 12
    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 18
    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/json/JSONObject;

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    const-string v1, "responseJson: "

    .line 29
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v1, v0, v3

    .line 36
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 39
    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseRecommendStatus(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPRecommendStatus;

    .line 45
    move-result-object p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    .line 46
    return-object p0

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 50
    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    throw v0
.end method

.method public static getPlayOnlineURL(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "fileId"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 13
    const-string v1, "getPlayOnlineURL"

    .line 15
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/files/play/online"

    .line 17
    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/json/JSONObject;

    .line 29
    const/4 p1, 0x1

    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    const-string v0, "responseJson: "

    .line 34
    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object v0, p1, v2

    .line 41
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 44
    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    :try_start_2e
    const-string p1, "data"

    .line 49
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 52
    move-result-object p0

    .line 53
    const-string p1, "downloadUrl"

    .line 55
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p0
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3a} :catch_3b

    .line 59
    return-object p0

    .line 60
    :catch_3b
    move-exception p0

    .line 61
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 63
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    throw p1
.end method

.method private static getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_7
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v0, v2}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getMiCloudStatusInfo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1c

    .line 28
    return-object v0

    .line 29
    :cond_1c
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseToQuotaInfo()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseQuotaString(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 39
    move-result-object v0
    :try_end_27
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_7 .. :try_end_27} :catch_27
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_7 .. :try_end_27} :catch_27
    .catch Lcom/xiaomi/opensdk/exception/UnretriableException; {:try_start_7 .. :try_end_27} :catch_27
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_27} :catch_27

    .line 40
    :catch_27
    return-object v0

    .line 41
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    const-string v1, "account is null"

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method

.method public static getRecommendDetail(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/PTPDetailInfo;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "recommendId"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 13
    const-string v1, "getRecommendDetail"

    .line 15
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/detail"

    .line 17
    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/json/JSONObject;

    .line 29
    const/4 p1, 0x1

    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    const-string v0, "responseJson: "

    .line 34
    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object v0, p1, v2

    .line 41
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 44
    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    :try_start_2e
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseRecommendDetail(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPDetailInfo;

    .line 50
    move-result-object p0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_32} :catch_33

    .line 51
    return-object p0

    .line 52
    :catch_33
    move-exception p0

    .line 53
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 55
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    throw p1
.end method

.method public static getRecommendList(Lcom/micloud/midrive/server/transport/Network;ILjava/lang/String;)Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v1, "limit"

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p1, "syncToken"

    .line 17
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 22
    const-string p2, "getRecommendList"

    .line 24
    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/list"

    .line 26
    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 32
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lorg/json/JSONObject;

    .line 38
    const/4 p1, 0x1

    .line 39
    new-array p1, p1, [Ljava/lang/Object;

    .line 41
    const-string v0, "responseJson: "

    .line 43
    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    aput-object v0, p1, v1

    .line 50
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 53
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 56
    :try_start_37
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parsePageOfPTPRecommendInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;

    .line 59
    move-result-object p0
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3b} :catch_3c

    .line 60
    return-object p0

    .line 61
    :catch_3c
    move-exception p0

    .line 62
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 64
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 67
    throw p1
.end method

.method public static getRecommendThumbnailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v3, "getRecommendThumbnailUrl: id = "

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v3, ", source: "

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v2, v1, v3

    .line 32
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/thumbnail"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "?id="

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p0, "&source="

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-array p0, v0, [Ljava/lang/Object;

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v0, "getThumbnailUrl: "

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    aput-object p1, p0, v3

    .line 82
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static getSyncData(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;I)Lcom/micloud/midrive/infos/SyncPageInfo;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_10

    .line 12
    const-string v1, "syncToken"

    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const-string p2, "limit"

    .line 23
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 28
    const-string p2, "getSyncData"

    .line 30
    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/records/sync"

    .line 32
    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 38
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lorg/json/JSONObject;

    .line 44
    const/4 p1, 0x1

    .line 45
    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    .line 48
    const-string v1, "responseJson: "

    .line 50
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    aput-object v1, p1, v0

    .line 56
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 59
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 62
    :try_start_3d
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToSyncPageInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncPageInfo;

    .line 65
    move-result-object p0
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_41} :catch_42

    .line 66
    return-object p0

    .line 67
    :catch_42
    move-exception p0

    .line 68
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 70
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    throw p1
.end method

.method public static getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    new-instance p1, Ljava/util/HashMap;

    .line 28
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "ids"

    .line 37
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 42
    const-string v1, "getSyncFileInfo"

    .line 44
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/full/get"

    .line 46
    invoke-direct {v0, v1, v2, p1}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    invoke-static {p0, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 52
    invoke-virtual {v0}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lorg/json/JSONObject;

    .line 58
    const/4 p1, 0x1

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    .line 62
    const-string v2, "responseJson: "

    .line 64
    invoke-static {v2, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    aput-object v2, p1, v0

    .line 70
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 73
    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    :try_start_4b
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToSyncFileInfoList(Lorg/json/JSONObject;)Ljava/util/List;

    .line 79
    move-result-object p0
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_4f} :catch_50

    .line 80
    return-object p0

    .line 81
    :catch_50
    move-exception p0

    .line 82
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 84
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    throw p1
.end method

.method public static getTaskStatus(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/task/query/TaskQueryInfo;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "taskId"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 13
    const-string v1, "getTaskStatus"

    .line 15
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/taskquery"

    .line 17
    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/json/JSONObject;

    .line 29
    const/4 p1, 0x1

    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    const-string v0, "responseJson: "

    .line 34
    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object v0, p1, v2

    .line 41
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 44
    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    :try_start_2e
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToTaskQueryInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo;

    .line 50
    move-result-object p0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_32} :catch_33

    .line 51
    return-object p0

    .line 52
    :catch_33
    move-exception p0

    .line 53
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 55
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    throw p1
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

.method public static getThumbnails(Lcom/micloud/midrive/server/transport/Network;ILjava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, ""

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v1, "level"

    .line 25
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance p1, Lorg/json/JSONArray;

    .line 30
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p2

    .line 37
    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_34

    .line 43
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    goto :goto_24

    .line 53
    :cond_34
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    const-string p2, "ids"

    .line 59
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 64
    const-string p2, "getThumbnails"

    .line 66
    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/files/thumbnails"

    .line 68
    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 74
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lorg/json/JSONObject;

    .line 80
    const/4 p1, 0x1

    .line 81
    new-array p1, p1, [Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    .line 84
    const-string v1, "responseJson: "

    .line 86
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    aput-object v1, p1, v0

    .line 92
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 95
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 98
    :try_start_61
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToThumbnailMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 101
    move-result-object p0
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_65} :catch_66

    .line 102
    return-object p0

    .line 103
    :catch_66
    move-exception p0

    .line 104
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 106
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    throw p1
.end method

.method public static isCloudSpaceFull()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static openPTPAiRecommend(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sget-object v1, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->ON:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    .line 8
    iget-object v1, v1, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->value:Ljava/lang/String;

    .line 10
    const-string v2, "galleryStatus"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 17
    const-string v2, "updateRecommendStatus"

    .line 19
    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/ai/status/update"

    .line 21
    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 27
    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/json/JSONObject;

    .line 33
    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    const-string v1, "responseJson: "

    .line 38
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object v1, v0, v3

    .line 45
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 48
    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 51
    return-void
.end method

.method public static postCleanUserOperates(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 8
    const-string v2, "postCleanUserOperates"

    .line 10
    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/clean"

    .line 12
    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 18
    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/json/JSONObject;

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    const-string v1, "responseJson: "

    .line 29
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v1, v0, v3

    .line 36
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 39
    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    return-void
.end method

.method public static postDeleteRecommends(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    .line 8
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1e

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "recommendIds"

    .line 37
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 42
    const-string v1, "getRecommendDetail"

    .line 44
    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/delete"

    .line 46
    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 52
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lorg/json/JSONObject;

    .line 58
    const/4 p1, 0x1

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    .line 62
    const-string v2, "responseJson: "

    .line 64
    invoke-static {v2, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    aput-object v2, p1, v0

    .line 70
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 73
    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    return-void
.end method

.method public static postOperateDelete(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/util/Set;)Lcom/micloud/midrive/task/operation/OperationInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/micloud/midrive/task/operation/OperationInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "idType"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Lorg/json/JSONArray;

    .line 13
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 16
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p2

    .line 20
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_23

    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string p2, "ids"

    .line 42
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 47
    const-string p2, "postOperateDelete"

    .line 49
    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/operates/deleteByIds"

    .line 51
    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 57
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lorg/json/JSONObject;

    .line 63
    const/4 p1, 0x1

    .line 64
    new-array p1, p1, [Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    .line 67
    const-string v1, "responseJson: "

    .line 69
    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    aput-object v1, p1, v0

    .line 75
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 78
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 81
    :try_start_50
    sget-object p1, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->DELETE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 83
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToOperationInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    .line 86
    move-result-object p0
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_56} :catch_57

    .line 87
    return-object p0

    .line 88
    :catch_57
    move-exception p0

    .line 89
    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 91
    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    throw p1
.end method

.method public static postReportOperate(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "fileId"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "channel"

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "operateType"

    .line 18
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 23
    const-string p2, "postReportOperate"

    .line 25
    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/create"

    .line 27
    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 33
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lorg/json/JSONObject;

    .line 39
    const/4 p1, 0x1

    .line 40
    new-array p1, p1, [Ljava/lang/Object;

    .line 42
    const-string p3, "responseJson: "

    .line 44
    invoke-static {p3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 47
    move-result-object p3

    .line 48
    const/4 v0, 0x0

    .line 49
    aput-object p3, p1, v0

    .line 51
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 54
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 57
    return-void
.end method

.method public static setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "id"

    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "newName"

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p1, Lcom/micloud/midrive/constants/CommonConstants;->CURRENT_CHANNEL:Ljava/lang/String;

    .line 18
    const-string p2, "channel"

    .line 20
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    .line 25
    const-string p2, "setRename"

    .line 27
    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/records/rename"

    .line 29
    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    .line 35
    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lorg/json/JSONObject;

    .line 41
    const/4 p1, 0x1

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    .line 44
    const-string v0, "responseJson: "

    .line 46
    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    aput-object v0, p1, v1

    .line 53
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 56
    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 59
    return-void
.end method

.method public static singleMoveOrCopy(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;
    .registers 8

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    const-string v2, "id"

    .line 13
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string p1, "type"

    .line 18
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string p1, "parentId"

    .line 23
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, p1, p4}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->fileOperation(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    .line 36
    move-result-object p0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 37
    return-object p0

    .line 38
    :catch_25
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    throw p1
.end method
