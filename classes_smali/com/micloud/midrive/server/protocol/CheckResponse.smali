.class public Lcom/micloud/midrive/server/protocol/CheckResponse;
.super Ljava/lang/Object;
.source "CheckResponse.java"


# static fields
.field public static final CLIENT_ERROR_FILE_SIZE_ZERO:I

.field public static final ERROR_CLOUD_SPACE_FULL:I

.field public static final ERROR_CODE_ILLEGAL_CHAR:I

.field public static final ERROR_CURRENT_PATH_COPY_MOVE:I

.field public static final ERROR_DELETE_FILE_NO_NULL:I

.field public static final ERROR_FILE_NAME_IS_PRIVATE_SPACE_NAME:I

.field public static final ERROR_FILE_NOT_FOUND:I

.field public static final ERROR_FILE_SIZE_LARGER_THAN_4G:I

.field public static final ERROR_GET_INDEX_CACHE:I

.field public static final ERROR_MI_DRIVE_PRIVACY_REVOKED:I

.field public static final ERROR_NAME_CONFLICT:I

.field public static final ERROR_NOT_SUPPORT_FOR_OVERSEAS_NEW_USERS:I

.field public static final ERROR_NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:I

.field public static final ERROR_ONLINE_PLAY_NOT_SUPPORT:I

.field public static final ERROR_PARAM_ERROR:I

.field public static final ERROR_PARENT_FILE_NOT_EXIST:I

.field public static final ERROR_SERVER_REDIRECT:I

.field public static final ERROR_SERVER_TIMEOUT:I

.field public static final ERROR_SUB_PATH_MOVE_COPY:I

.field public static final ERROR_TASK_TIMEOUT:I

.field public static final ERROR_UNKNOW_ERROR:I

.field private static final JSON_INT_CODE:Ljava/lang/String; = "code"

.field private static final JSON_STR_DATA:Ljava/lang/String; = "data"

.field private static final JSON_STR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final JSON_STR_REASON:Ljava/lang/String; = "reason"

.field private static final JSON_STR_RESULT:Ljava/lang/String; = "result"

.field public static final OK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x90a9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->CLIENT_ERROR_FILE_SIZE_ZERO:I

    const v0, 0x90a80

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_CLOUD_SPACE_FULL:I

    const v0, 0x90a84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_CODE_ILLEGAL_CHAR:I

    const v0, 0x9076d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_CURRENT_PATH_COPY_MOVE:I

    const v0, 0x9076f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_DELETE_FILE_NO_NULL:I

    const v0, 0x9069f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_FILE_NAME_IS_PRIVATE_SPACE_NAME:I

    const v0, 0x9076c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_FILE_NOT_FOUND:I

    const v0, 0x90692

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_FILE_SIZE_LARGER_THAN_4G:I

    const v0, 0x90768

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_GET_INDEX_CACHE:I

    const v0, 0x9e29d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_MI_DRIVE_PRIVACY_REVOKED:I

    const v0, 0x9076b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_NAME_CONFLICT:I

    const v0, 0x90a88

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_NOT_SUPPORT_FOR_OVERSEAS_NEW_USERS:I

    const v0, 0x90a89

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:I

    const v0, 0x90695

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_ONLINE_PLAY_NOT_SUPPORT:I

    const v0, 0x90a8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_PARAM_ERROR:I

    const v0, 0x9076a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_PARENT_FILE_NOT_EXIST:I

    const v0, 0x90aa4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_SERVER_REDIRECT:I

    const v0, 0x9eecc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_SERVER_TIMEOUT:I

    const v0, 0x90694

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_SUB_PATH_MOVE_COPY:I

    const v0, 0x90769

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_TASK_TIMEOUT:I

    const v0, 0x90a87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/protocol/CheckResponse;->ERROR_UNKNOW_ERROR:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CheckResponse classRetryDelayConfig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs checkOperationResult(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Integer;)I
    .registers 10

    const-string v0, ""

    :try_start_2
    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->getResultCode(Lorg/json/JSONObject;)I

    move-result v2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    return v2

    :cond_15
    const-string p2, "result"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "reason"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "description"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const p1, 0xcf0b

    if-eq v2, p1, :cond_39

    const/16 p1, 0x271e

    if-ne v2, p1, :cond_31

    goto :goto_39

    :cond_31
    new-instance p1, Lcom/micloud/midrive/server/exception/OperationFailedException;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/micloud/midrive/server/exception/OperationFailedException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_39
    :goto_39
    new-instance p1, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_41} :catch_41

    :catch_41
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    const-string v0, "action: "

    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "action: "

    :try_start_2
    invoke-static {p1}, Lcom/micloud/midrive/server/protocol/CheckResponse;->getResultCode(Lorg/json/JSONObject;)I

    move-result v1

    const v2, 0xc35a

    if-eq v2, v1, :cond_10

    const/16 v2, 0x2732

    if-eq v2, v1, :cond_10

    return-void

    :cond_10
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_21

    const-string v3, "retryAfter"

    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_22

    :cond_21
    move-wide v3, v1

    :goto_22
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2b

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v3

    :cond_2b
    new-instance p1, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3, v1, v2}, Lcom/micloud/midrive/server/transport/exception/RequestServiceTemporaryNotAvailableException;-><init>(Ljava/lang/String;J)V

    throw p1
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_40} :catch_40

    :catch_40
    move-exception p1

    new-instance v1, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;

    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkOperationResult(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Integer;)I

    move-result p0

    if-nez p0, :cond_11

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "never reach here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getResultCode(Lorg/json/JSONObject;)I
    .registers 2

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
