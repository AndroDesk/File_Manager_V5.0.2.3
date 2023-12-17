.class public Lcom/micloud/midrive/server/protocol/ManagementProtocol;
.super Ljava/lang/Object;
.source "ManagementProtocol.java"


# static fields
.field public static final BIG_THUMBNAIL:I

.field public static final SMALL_THUMBNAIL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->BIG_THUMBNAIL:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->SMALL_THUMBNAIL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static categorySearch(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/micloud/midrive/infos/PageOfFileInfo;
    .registers 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b

    const-string p1, "queryString"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "startTime"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    const-string p1, "endTime"

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    const-string p1, "order"

    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "pageNo"

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "limit"

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_80

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "label"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "categorySearch"

    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/search"

    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "responseJson: "

    invoke-static {p4, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p3

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_a4
    sget-object p1, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;->NETWORK:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    invoke-static {p0, p6, p5, p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToPageOfFileInfo(Lorg/json/JSONObject;ILjava/lang/String;Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;)Lcom/micloud/midrive/infos/PageOfFileInfo;

    move-result-object p0
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_aa} :catch_ab

    return-object p0

    :catch_ab
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createFolder(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "parentId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "createFolder"

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/folders/create"

    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :try_start_18
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseJson: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToFolderName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createFolder record: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_6f

    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OK:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

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

    return-object p0

    :catch_72
    move-exception p0

    instance-of p1, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    if-eqz p1, :cond_7a

    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :cond_7a
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    const/16 p1, 0x2718

    if-ne p0, p1, :cond_83

    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->PARAM_ERROR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :cond_83
    const/16 p1, 0x2712

    if-ne p0, p1, :cond_8a

    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :cond_8a
    const/16 p1, 0x2afd

    if-ne p0, p1, :cond_91

    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_CONFLICT:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :cond_91
    const/16 p1, 0x2b09

    if-ne p0, p1, :cond_98

    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :cond_98
    const/16 p1, 0x271f

    if-ne p0, p1, :cond_9f

    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :cond_9f
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :catch_a2
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0

    :catch_a5
    sget-object p0, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;->OTHER:Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    return-object p0
.end method

.method public static createPrivateFolder(Lcom/micloud/midrive/server/transport/Network;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v2, "createPrivateFolder"

    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/folders/createPrivacyFolder"

    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToFolderName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fileOperation(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "operateRecords"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->label:Ljava/lang/String;

    const-string v1, "operateType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v1, "fileOperation"

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/filemanager"

    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "responseJson: "

    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_35
    invoke-static {p0, p2}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToOperationInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    move-result-object p0
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getBigThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChildrenFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/infos/FolderInfo;
    .registers 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "parentId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pageNo"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "limit"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "type"

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "order"

    invoke-virtual {v0, p4, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "privacyStatus"

    invoke-virtual {v0, p4, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p5, "getChildrenFileInfo"

    const-string p7, "http://driveapi.micloud.xiaomi.net/v2/user/folders/children"

    invoke-direct {p4, p5, p7, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p4}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p4}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const-string p7, "responseJson: "

    invoke-static {p7, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p7

    const/4 v0, 0x0

    aput-object p7, p4, v0

    invoke-static {p4}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p5, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_67
    invoke-static {p1, p2, p3, p6, p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToFolderInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FolderInfo;

    move-result-object p0
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_6b} :catch_6c

    return-object p0

    :catch_6c
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getDirPath(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/CloudFilePathInfo;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v1, "getDirPath"

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/dir/get"

    invoke-direct {p2, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p1, p2}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "responseJson: "

    invoke-static {v0, p1}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p2, v2

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_2e
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToDirPath(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo;

    move-result-object p0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v2, "getLiteToken"

    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/litetoken/get"

    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToTokenMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getMiDriveItemUsed()J
    .registers 4

    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiCloud QuotaInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-nez v0, :cond_23

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_23
    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getItemInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Drive"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->getUsed()J

    move-result-wide v0

    return-wide v0

    :cond_48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getMiDriveQuotaInfo()Lcom/micloud/midrive/infos/MiDriveQuotaInfo;
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v1, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v2

    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;-><init>(JJ)V

    return-object v1
.end method

.method public static getMiDriveTrashSize(Lcom/micloud/midrive/server/transport/Network;)J
    .registers 5

    new-instance v0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "getMiDriveTrashSize"

    const-string v3, "http://driveapi.micloud.xiaomi.net/v1/user/trash/size"

    invoke-direct {v0, v2, v3, v1}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v0}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToMiDriveTrashSize(Lorg/json/JSONObject;)J

    move-result-wide v0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    return-wide v0

    :catch_2e
    move-exception p0

    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getOperateLatestListInGroup(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;II)Lcom/micloud/midrive/infos/OperatesInGroup;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageNo"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "getOperateLatestListInGroup"

    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/list"

    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "responseJson: "

    invoke-static {p3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_58
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToOperatesInGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperatesInGroup;

    move-result-object p0
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5c} :catch_5d

    return-object p0

    :catch_5d
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getOperateTimeline(Lcom/micloud/midrive/server/transport/Network;III)Lcom/micloud/midrive/infos/PageOfOperateGroup;
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "groupPageNo"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "groupPageSize"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pageSizeInGroup"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "getOperateTimeline"

    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/timeline"

    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "responseJson: "

    invoke-static {p3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_67
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToPageOfOperateGroup(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfOperateGroup;

    move-result-object p0
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_6b} :catch_6c

    return-object p0

    :catch_6c
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getPTPRecommendStatus(Lcom/micloud/midrive/server/transport/Network;)Lcom/micloud/midrive/infos/PTPRecommendStatus;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v2, "getRecommendStatus"

    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/ai/status/get"

    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_29
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseRecommendStatus(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPRecommendStatus;

    move-result-object p0
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {v0, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getPlayOnlineURL(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fileId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v1, "getPlayOnlineURL"

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/files/play/online"

    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "responseJson: "

    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_2e
    const-string p1, "data"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "downloadUrl"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :try_start_7
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getMiCloudStatusInfo(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object v1

    if-nez v1, :cond_1c

    return-object v0

    :cond_1c
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseToQuotaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseQuotaString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v0
    :try_end_27
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_7 .. :try_end_27} :catch_27
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_7 .. :try_end_27} :catch_27
    .catch Lcom/xiaomi/opensdk/exception/UnretriableException; {:try_start_7 .. :try_end_27} :catch_27
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_27} :catch_27

    :catch_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRecommendDetail(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/PTPDetailInfo;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "recommendId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v1, "getRecommendDetail"

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/detail"

    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "responseJson: "

    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_2e
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseRecommendDetail(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PTPDetailInfo;

    move-result-object p0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getRecommendList(Lcom/micloud/midrive/server/transport/Network;ILjava/lang/String;)Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "syncToken"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "getRecommendList"

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/list"

    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "responseJson: "

    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_37
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parsePageOfPTPRecommendInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/PageOfPTPRecommendInfo;

    move-result-object p0
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3b} :catch_3c

    return-object p0

    :catch_3c
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getRecommendThumbnailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecommendThumbnailUrl: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/thumbnail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&source="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v0, [Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getThumbnailUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSyncData(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;I)Lcom/micloud/midrive/infos/SyncPageInfo;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "syncToken"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "getSyncData"

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/records/sync"

    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_3d
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToSyncPageInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/SyncPageInfo;

    move-result-object p0
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

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

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ids"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v1, "getSyncFileInfo"

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/full/get"

    invoke-direct {v0, v1, v2, p1}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v0}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v0}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "responseJson: "

    invoke-static {v2, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_4b
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToSyncFileInfoList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_4f} :catch_50

    return-object p0

    :catch_50
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getTaskStatus(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/task/query/TaskQueryInfo;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "taskId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v1, "getTaskStatus"

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/records/taskquery"

    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "responseJson: "

    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_2e
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToTaskQueryInfo(Lorg/json/JSONObject;)Lcom/micloud/midrive/task/query/TaskQueryInfo;

    move-result-object p0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/files/thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_24

    :cond_34
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ids"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "getThumbnails"

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/files/thumbnails"

    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->get(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_61
    invoke-static {p0}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToThumbnailMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_65} :catch_66

    return-object p0

    :catch_66
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isCloudSpaceFull()Z
    .registers 1

    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {v0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result v0

    return v0
.end method

.method public static openPTPAiRecommend(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->ON:Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;

    iget-object v1, v1, Lcom/micloud/midrive/infos/PTPRecommendStatus$RecommendStatus;->value:Ljava/lang/String;

    const-string v2, "galleryStatus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v2, "updateRecommendStatus"

    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/ai/status/update"

    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static postCleanUserOperates(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v2, "postCleanUserOperates"

    const-string v3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/clean"

    invoke-direct {v1, v2, v3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, v1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    :cond_1e
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "recommendIds"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string v1, "getRecommendDetail"

    const-string v2, "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/delete"

    invoke-direct {p1, v1, v2, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "responseJson: "

    invoke-static {v2, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v1, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "idType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    :cond_23
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ids"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "postOperateDelete"

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/operates/deleteByIds"

    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "responseJson: "

    invoke-static {v1, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_50
    sget-object p1, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->DELETE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ProtocolDataParser;->parseJsonToOperationInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    move-result-object p0
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_56} :catch_57

    return-object p0

    :catch_57
    move-exception p0

    new-instance p1, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static postReportOperate(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fileId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "channel"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "operateType"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "postReportOperate"

    const-string p3, "http://driveapi.micloud.xiaomi.net/v2/user/operates/create"

    invoke-direct {p1, p2, p3, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "responseJson: "

    invoke-static {p3, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "newName"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/micloud/midrive/constants/CommonConstants;->CURRENT_CHANNEL:Ljava/lang/String;

    const-string p2, "channel"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;

    const-string p2, "setRename"

    const-string v1, "http://driveapi.micloud.xiaomi.net/v2/user/records/rename"

    invoke-direct {p1, p2, v1, v0}, Lcom/micloud/midrive/server/protocol/CloudRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/transport/AccountHttpClient;->post(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/transport/RequestHandler;)V

    invoke-virtual {p1}, Lcom/micloud/midrive/server/protocol/AbsRequestHandler;->getProcessedResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "responseJson: "

    invoke-static {v0, p0}, Lf0/e;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static singleMoveOrCopy(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;
    .registers 8

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "parentId"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->fileOperation(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    move-result-object p0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
