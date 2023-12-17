.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;
.super Ljava/lang/Object;
.source "MiCloudConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDC"
.end annotation


# static fields
.field public static final ASSET_GET_ASSET_URL_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s/playurl"

.field public static final ASSET_REQUEST_COMMIT_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/commit"

.field public static final ASSET_REQUEST_DOWNLOAD_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s"

.field public static final ASSET_REQUEST_UPLOAD_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/upload"

.field public static final BATCH_OPERATION_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/batch"

.field public static final CONFLICT_ETAG:Ljava/lang/String; = "eTag"

.field public static final CONFLICT_ID:Ljava/lang/String; = "id"

.field public static final CONFLICT_NONE:Ljava/lang/String; = "none"

.field public static final CONFLICT_UNIQUE_KEY:Ljava/lang/String; = "uniqueKey"

.field public static final CREATE_RECORD_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

.field public static final DELETE_RECORD_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/delete"

.field public static final ERROR_CODE_ARGUMENT:I = 0x2718

.field public static final ERROR_CODE_ASSET_NOT_EXIST:I = 0x9c46

.field public static final ERROR_CODE_BATCH_TOO_LARGE:I = 0xc361

.field public static final ERROR_CODE_CHILD_EXIST:I = 0x9c41

.field public static final ERROR_CODE_ILLEGAL_RECORD_TYPE:I = 0x9c42

.field public static final ERROR_CODE_INVALID_BATCH_URL:I = 0xc353

.field public static final ERROR_CODE_NODE_NOT_EXIST:I = 0x9c43

.field public static final ERROR_CODE_NODE_STATUS_INVALID:I = 0x9c44

.field public static final ERROR_CODE_OK:I = 0x0

.field public static final ERROR_CODE_PARENT_NOT_EXIST:I = 0x9c40

.field public static final ERROR_CODE_SCHEMA_NOT_EXIST:I = 0x9c45

.field public static final ERROR_CODE_SHOULD_RESYNC:I = 0xcb20

.field public static final ERROR_CODE_SYSTEM_BATCH:I = 0xc352

.field public static final ERROR_CODE_SYSTEM_BUSY:I = 0x2719

.field public static final ERROR_CODE_SYSTEM_GENERIC:I = 0x2711

.field public static final ERROR_CODE_SYSTEM_RPC:I = 0x271b

.field public static final ERROR_CODE_SYSTEM_STORAGE:I = 0xcf08

.field public static final FETCH_CHILDREN_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/children"

.field public static final FETCH_RECORDS_BY_INDEX_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/index"

.field public static final FETCH_RECORD_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s"

.field public static final J_ASSET_LIST:Ljava/lang/String; = "assetList"

.field public static final J_BEGIN_KEY:Ljava/lang/String; = "beginKey"

.field public static final J_CODE:Ljava/lang/String; = "code"

.field public static final J_CONFLICT_RECORD:Ljava/lang/String; = "conflictRecord"

.field public static final J_CONFLICT_TYPE:Ljava/lang/String; = "conflictType"

.field public static final J_CONTENT_JSON:Ljava/lang/String; = "contentJson"

.field public static final J_CURSOR:Ljava/lang/String; = "cursor"

.field public static final J_DATA:Ljava/lang/String; = "data"

.field public static final J_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final J_ETAG:Ljava/lang/String; = "eTag"

.field public static final J_HAS_MORE:Ljava/lang/String; = "hasMore"

.field public static final J_ID:Ljava/lang/String; = "id"

.field public static final J_LIST:Ljava/lang/String; = "list"

.field public static final J_PARAMS:Ljava/lang/String; = "params"

.field public static final J_PARENT_ID:Ljava/lang/String; = "parentId"

.field public static final J_PATH:Ljava/lang/String; = "path"

.field public static final J_REASON:Ljava/lang/String; = "reason"

.field public static final J_RECORD:Ljava/lang/String; = "record"

.field public static final J_RECORDS:Ljava/lang/String; = "records"

.field public static final J_RESULT:Ljava/lang/String; = "result"

.field public static final J_RETRIABLE:Ljava/lang/String; = "retriable"

.field public static final J_STATUS:Ljava/lang/String; = "status"

.field public static final J_SYNC_TOKEN:Ljava/lang/String; = "syncToken"

.field public static final J_TYPE:Ljava/lang/String; = "type"

.field public static final J_UNIQUE_KEY:Ljava/lang/String; = "uniqueKey"

.field public static final J_WATERMARK:Ljava/lang/String; = "watermark"

.field public static final MAX_RECORDS_FETCH_SIZE:I = 0xc8

.field public static final PARAM_BATCH_CONTENT:Ljava/lang/String; = "batchContent"

.field public static final PARAM_BEGIN_KEY:Ljava/lang/String; = "beginKey"

.field public static final PARAM_CURSOR:Ljava/lang/String; = "cursor"

.field public static final PARAM_END_KEY:Ljava/lang/String; = "endKey"

.field public static final PARAM_ETAG:Ljava/lang/String; = "eTag"

.field public static final PARAM_ID:Ljava/lang/String; = "id"

.field public static final PARAM_INDEX_NAME:Ljava/lang/String; = "indexName"

.field public static final PARAM_IS_REVERSE:Ljava/lang/String; = "isReverse"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_RECORD:Ljava/lang/String; = "record"

.field public static final PARAM_SYNC_TOKEN:Ljava/lang/String; = "syncToken"

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final STATUS_DELETED:Ljava/lang/String; = "deleted"

.field public static final STATUS_NORMAL:Ljava/lang/String; = "normal"

.field public static final SYNC_PATH_BASE:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

.field public static final UPDATE_RECORD_PATH:Ljava/lang/String; = "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/update"

.field public static final URL_SYNC_BASE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const-string v0, "http://micloud.preview.n.xiaomi.net"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, "http://pdc.micloud.xiaomi.net"

    .line 10
    :goto_9
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
