.class public Lcom/micloud/midrive/server/protocol/CheckResponse;
.super Ljava/lang/Object;
.source "CheckResponse.java"


# static fields
.field public static final CLIENT_ERROR_FILE_SIZE_ZERO:I = -0x2710

.field public static final ERROR_CLOUD_SPACE_FULL:I = 0x2716

.field public static final ERROR_CODE_ILLEGAL_CHAR:I = 0x2712

.field public static final ERROR_CURRENT_PATH_COPY_MOVE:I = 0x2afb

.field public static final ERROR_DELETE_FILE_NO_NULL:I = 0x2af9

.field public static final ERROR_FILE_NAME_IS_PRIVATE_SPACE_NAME:I = 0x2b09

.field public static final ERROR_FILE_NOT_FOUND:I = 0x2afa

.field public static final ERROR_FILE_SIZE_LARGER_THAN_4G:I = 0x2b04

.field public static final ERROR_GET_INDEX_CACHE:I = 0x2afe

.field public static final ERROR_MI_DRIVE_PRIVACY_REVOKED:I = 0xcf0b

.field public static final ERROR_NAME_CONFLICT:I = 0x2afd

.field public static final ERROR_NOT_SUPPORT_FOR_OVERSEAS_NEW_USERS:I = 0x271e

.field public static final ERROR_NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:I = 0x271f

.field public static final ERROR_ONLINE_PLAY_NOT_SUPPORT:I = 0x2b03

.field public static final ERROR_PARAM_ERROR:I = 0x2718

.field public static final ERROR_PARENT_FILE_NOT_EXIST:I = 0x2afc

.field public static final ERROR_SERVER_REDIRECT:I = 0x2732

.field public static final ERROR_SERVER_TIMEOUT:I = 0xc35a

.field public static final ERROR_SUB_PATH_MOVE_COPY:I = 0x2b02

.field public static final ERROR_TASK_TIMEOUT:I = 0x2aff

.field public static final ERROR_UNKNOW_ERROR:I = 0x2711

.field private static final JSON_INT_CODE:Ljava/lang/String; = "code"

.field private static final JSON_STR_DATA:Ljava/lang/String; = "data"

.field private static final JSON_STR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final JSON_STR_REASON:Ljava/lang/String; = "reason"

.field private static final JSON_STR_RESULT:Ljava/lang/String; = "result"

.field public static final OK:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "CheckResponse classRetryDelayConfig"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static varargs checkOperationResult(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Integer;)I
    .registers 10

    .line 1
    const-string v0, ""

    .line 3
    :try_start_2
    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->getResultCode(Lorg/json/JSONObject;)I

    .line 6
    move-result v2

    .line 7
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_15

    .line 21
    return v2

    .line 22
    :cond_15
    const-string p2, "result"

    .line 24
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    const-string p2, "reason"

    .line 30
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    const-string p2, "description"

    .line 36
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v6

    .line 40
    const p1, 0xcf0b

    .line 43
    if-eq v2, p1, :cond_39

    .line 45
    const/16 p1, 0x271e

    .line 47
    if-ne v2, p1, :cond_31

    .line 49
    goto :goto_39

    .line 50
    :cond_31
    new-instance p1, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 52
    move-object v1, p1

    .line 53
    move-object v3, p0

    .line 54
    invoke-direct/range {v1 .. v6}, Lcom/micloud/midrive/server/exception/OperationFailedException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    throw p1

    .line 58
    :cond_39
    :goto_39
    new-instance p1, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    .line 60
    move-object v1, p1

    .line 61
    move-object v3, p0

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    throw p1
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_41} :catch_41

    .line 66
    :catch_41
    move-exception p1

    .line 67
    new-instance p2, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 69
    const-string v0, "action: "

    .line 71
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p2, p0, p1}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    throw p2
.end method

.method public static checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    .line 1
    const-string v0, "action: "

    .line 3
    :try_start_2
    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->getResultCode(Lorg/json/JSONObject;)I

    .line 6
    move-result v1

    .line 7
    const v2, 0xc35a

    .line 10
    if-eq v2, v1, :cond_10

    .line 12
    const/16 v2, 0x2732

    .line 14
    if-eq v2, v1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    const-string v1, "data"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    move-result-object p1

    .line 23
    const-wide/16 v1, -0x1

    .line 25
    if-eqz p1, :cond_21

    .line 27
    const-string v3, "retryAfter"

    .line 29
    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 32
    move-result-wide v3

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move-wide v3, v1

    .line 35
    :goto_22
    const-wide/16 v5, 0x0

    .line 37
    cmp-long p1, v3, v5

    .line 39
    if-ltz p1, :cond_2b

    .line 41
    const-wide/16 v1, 0x3e8

    .line 43
    mul-long/2addr v1, v3

    .line 44
    :cond_2b
    new-instance p1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    invoke-direct {p1, v3, v1, v2}, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;-><init>(Ljava/lang/String;J)V

    .line 64
    throw p1
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_40} :catch_40

    .line 65
    :catch_40
    move-exception p1

    .line 66
    new-instance v1, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;

    .line 68
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    throw v1
.end method

.method public static ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Integer;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkOperationResult(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Integer;)I

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    const-string p1, "never reach here"

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0
.end method

.method private static getResultCode(Lorg/json/JSONObject;)I
    .registers 2

    .line 1
    const-string v0, "code"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method
