.class Lcom/xiaomi/opensdk/pdc/OpenPdcConsts;
.super Ljava/lang/Object;
.source "OpenPdcConsts.java"


# static fields
.field public static final ASSET_REQUEST_COMMIT_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/assets/commit"

.field public static final ASSET_REQUEST_DOWNLOAD_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/assets/%s"

.field public static final ASSET_REQUEST_UPLOAD_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/assets/upload"

.field public static final CONFLICT_ETAG:Ljava/lang/String; = "eTag"

.field public static final CONFLICT_ID:Ljava/lang/String; = "id"

.field public static final CONFLICT_NONE:Ljava/lang/String; = "none"

.field public static final CONFLICT_UNIQUE_KEY:Ljava/lang/String; = "uniqueKey"

.field public static final CREATE_RECORD_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records"

.field public static final DEFAULT_HOST:Ljava/lang/String; = "micpdc.openapi.xiaomi.net"

.field public static final DELETE_RECORD_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

.field public static final FETCH_CHILDREN_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/%s/children"

.field public static final FETCH_RECORDS_BY_INDEX_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/index"

.field public static final FETCH_RECORD_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

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

.field public static final MAX_RECORDS_FETCH_SIZE:I

.field public static final PARAM_BATCH_CONTENT:Ljava/lang/String; = "batchContent"

.field public static final PARAM_BEGIN_KEY:Ljava/lang/String; = "beginKey"

.field public static final PARAM_BODY:Ljava/lang/String; = "body"

.field public static final PARAM_CLIENT_ID:Ljava/lang/String; = "clientId"

.field public static final PARAM_CURSOR:Ljava/lang/String; = "cursor"

.field public static final PARAM_END_KEY:Ljava/lang/String; = "endKey"

.field public static final PARAM_ETAG:Ljava/lang/String; = "eTag"

.field public static final PARAM_ID:Ljava/lang/String; = "id"

.field public static final PARAM_INDEX_NAME:Ljava/lang/String; = "indexName"

.field public static final PARAM_IS_REVERSE:Ljava/lang/String; = "isReverse"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_SYNC_TOKEN:Ljava/lang/String; = "syncToken"

.field public static final PARAM_TOKEN:Ljava/lang/String; = "token"

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final STATUS_DELETED:Ljava/lang/String; = "deleted"

.field public static final STATUS_NORMAL:Ljava/lang/String; = "normal"

.field public static final SYNC_PATH_BASE:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records"

.field public static final UPDATE_RECORD_PATH:Ljava/lang/String; = "/mic/open/pdc/apps/%s/spaces/%s/records/%s"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/opensdk/pdc/OpenPdcConsts;->MAX_RECORDS_FETCH_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
