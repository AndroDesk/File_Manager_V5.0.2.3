.class public Lcom/micloud/midrive/server/protocol/UrlConstants;
.super Ljava/lang/Object;
.source "UrlConstants.java"


# static fields
.field public static final URL_BASE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user"

.field public static final URL_BASE_MOCK:Ljava/lang/String; = "http://api.micloud.d.xiaomi.net/mock/289/v2/user"

.field public static final URL_BASE_STAGING:Ljava/lang/String; = "http://driveapi.micloud.preview.n.xiaomi.net/v2/user"

.field public static final URL_CRATE_FILE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/files/create"

.field public static final URL_CREATE_FOLDER:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/folders/create"

.field public static final URL_CREATE_PRIVATE_FOLDER:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/folders/createPrivacyFolder"

.field public static final URL_DOWNLOAD_FILE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/files/download"

.field public static final URL_FILE_COMMIT:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/files/commit"

.field public static final URL_GET_CHILDREN:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/folders/children"

.field public static final URL_GET_DIR_PATH:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/records/dir/get"

.field public static final URL_GET_FOLDER_DETAIL:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/folders/detail"

.field public static final URL_GET_PHOTO_TIME_LINE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/search/timeline"

.field public static final URL_GET_PHOTO_URL_REDIRECT:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/files/thumbnail"

.field public static final URL_GET_PLAY_ONLINE_URL:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/files/play/online"

.field public static final URL_GET_RECOMMEND_DETAIL:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/detail"

.field public static final URL_GET_RECOMMEND_LIST:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/list"

.field public static final URL_GET_RECOMMEND_STATUS:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/ai/status/get"

.field public static final URL_GET_RECOMMEND_THUMBNAIL:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/thumbnail"

.field public static final URL_GET_RECOMMEND_THUMBNAILS:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/thumbnails"

.field public static final URL_GET_SYNC_FILE_INFO:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/records/full/get"

.field public static final URL_GET_TASK_STATUE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/records/taskquery"

.field public static final URL_GET_THUMBNAILS:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/files/thumbnails"

.field public static final URL_GET_WEB_LITE_TOKEN:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/litetoken/get"

.field public static final URL_MICLOUD_TRASH_SIZE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v1/user/trash/size"

.field public static final URL_ONLINE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user"

.field public static final URL_ONLINE_V1:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v1/user"

.field public static final URL_OPERATE_CLEAN:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/operates/clean"

.field public static final URL_OPERATE_CREATE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/operates/create"

.field public static final URL_OPERATE_DELETE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/operates/deleteByIds"

.field public static final URL_OPERATE_LATEST:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/operates/latest"

.field public static final URL_OPERATE_LATEST_LIST:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/operates/list"

.field public static final URL_OPERATE_TIME_LINE:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/operates/timeline"

.field public static final URL_POST_DELETE_RECOMMEND:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/ai/recommend/delete"

.field public static final URL_POST_UPDATE_USER_STATUS:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/ai/status/update"

.field public static final URL_RENAME:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/records/rename"

.field public static final URL_REPORT_FILE_OPERATION:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/records/filemanager"

.field public static final URL_REVOKE_DATA:Ljava/lang/String; = "http://api.micloud.xiaomi.net/mic/user/privacy/status/set"

.field public static final URL_SEARCH:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/search"

.field public static final URL_SYNC:Ljava/lang/String; = "http://driveapi.micloud.xiaomi.net/v2/user/records/sync"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UrlConstants class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
