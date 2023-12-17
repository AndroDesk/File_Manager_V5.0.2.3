.class public Lcom/micloud/midrive/session/action/SyncFileOperateHelper;
.super Ljava/lang/Object;
.source "SyncFileOperateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;
    }
.end annotation


# static fields
.field private static final MAX_OPERATION_COUNT:I

.field private static mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92e7e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->MAX_OPERATION_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileDelete$7(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildMoveOrCopyOperationRecordsString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Ljava/util/List;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildDeleteOperationRecordsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileRename$5(Landroid/content/Context;)V

    return-void
.end method

.method private static buildDeleteOperationRecordsString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "type"

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_34

    return-object p0

    :catch_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private static buildMoveOrCopyOperationRecordsString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "type"

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "parentId"

    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_34
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    const/4 p0, 0x0

    return-object p0
.end method

.method private static buildMoveUploadInfo(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/micloud/midrive/infos/FileUploadInfo;
    .registers 14

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/micloud/midrive/utils/DiskFileOperator;->MOVE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v10

    iget-wide v11, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object p0

    return-object p0
.end method

.method private static buildUploadLocalFileInfoAndCopyDiskFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/micloud/midrive/infos/SyncLocalFileInfo;
    .registers 15

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_63

    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_41

    invoke-static {p0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_44

    :cond_41
    invoke-static {p0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_44
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance p2, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {p0}, La/b;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    return-object p2

    :cond_63
    :goto_63
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "originFile not exists, originFilePath: "

    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileUploadChangeFreeNetworkOnly$1()V

    return-void
.end method

.method private static checkNativeFileExists(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_33

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_d

    :cond_2b
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "native file doesn\'t exists or is directory"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileDownload$0()V

    return-void
.end method

.method public static synthetic e(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileMoveOrCopy$2(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$startTransferTask$9(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/content/Context;)V

    return-void
.end method

.method public static fileContentModify(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    const-string v0, "fileContentModify method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fileContentModify start, fileIds: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    const-string v2, "fileContentModify"

    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v3

    move v4, v2

    move v5, v4

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileContentModify query file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz v6, :cond_f5

    iget-object v7, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-nez v7, :cond_6f

    goto/16 :goto_f5

    :cond_6f
    add-int/lit8 v4, v4, 0x1

    new-instance v7, Ljava/io/File;

    iget-object v8, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, La/b;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    const-string v10, "fileContentModify new sha1: "

    invoke-static {v10, v8}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v9, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a3

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "fileContentModify sha1 equals."

    aput-object v7, v6, v3

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    goto :goto_3b

    :cond_a3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v7

    iget-object v11, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v7, v11, v8, v9, v10}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object v7

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    new-array v8, v0, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileContentModify txFileContentChanged DBOperationResponse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-boolean v8, v7, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz v8, :cond_3b

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3b

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "fileContentModify remove TransferTask and notify"

    aput-object v9, v8, v3

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v6

    invoke-static {p0, v7, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    goto/16 :goto_3b

    :cond_f5
    :goto_f5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3b

    :cond_f9
    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V

    if-lez v5, :cond_12b

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "fileContentModify notify sync session"

    aput-object v2, p1, v3

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Landroidx/appcompat/app/j;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v4}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileContentModify return successful response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_12b
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileContentModify return failed response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fileCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    const-string v0, "fileCopy method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fileDelete(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    const-string v0, "fileDelete method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fileDelete start, fileIds: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    const-string v2, "fileDelete"

    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_3e
    invoke-static {p1, v2, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->filterFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4f} :catch_24e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v5, "fileDelete remove TransferTask and notify"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez p1, :cond_19a

    :try_start_59
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5d
    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_94

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v5, v9, v3

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v9

    iget-object v10, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    :cond_94
    const-string v9, "folder"

    iget-object v10, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v10, v10, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    iget-object v8, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v8, v8, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-static {v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getAllSingleFilesUnderFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_ac
    :goto_ac
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_dc

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v10

    iget-object v11, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    :cond_dc
    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v9, :cond_ac

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    goto :goto_ac

    :cond_e8
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    goto/16 :goto_5d

    :cond_ed
    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p1

    new-instance v8, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$4;

    invoke-direct {v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$4;-><init>()V

    invoke-static {p0, v2, v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoStart()V

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcom/android/fileexplorer/widget/helper/a;

    invoke-direct {v8, v6}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p1, v2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoEnd()V

    new-array v2, v0, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileDelete getSyncFileInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    move-result p1

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    new-array v2, v0, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileDelete insertOrUpdateCloudFiles result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v2
    :try_end_160
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_59 .. :try_end_160} :catch_187
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_160} :catch_16b
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_59 .. :try_end_160} :catch_169
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_59 .. :try_end_160} :catch_167
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_59 .. :try_end_160} :catch_165
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_59 .. :try_end_160} :catch_163
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_59 .. :try_end_160} :catch_161

    goto :goto_19c

    :catch_161
    move-exception p0

    goto :goto_16c

    :catch_163
    move-exception p0

    goto :goto_16c

    :catch_165
    move-exception p0

    goto :goto_16c

    :catch_167
    move-exception p0

    goto :goto_16c

    :catch_169
    move-exception p0

    goto :goto_16c

    :catch_16b
    move-exception p0

    :goto_16c
    new-array p1, v6, [Ljava/lang/Object;

    const-string v2, "fileDelete protocol exception"

    aput-object v2, p1, v3

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :catch_187
    move-exception p0

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleFileDeleteOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    return-object p1

    :cond_19a
    move p1, v3

    move-object v2, v7

    :goto_19c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_203

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :goto_1a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    new-instance v9, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;

    invoke-direct {v9, v8, v1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;-><init>(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/stat/FileOperationResultStat;)V

    :try_start_1b8
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    move-result-object v10

    iget-object v11, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1c1
    .catch Ljava/lang/InterruptedException; {:try_start_1b8 .. :try_end_1c1} :catch_1c4
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_1b8 .. :try_end_1c1} :catch_1c2

    goto :goto_1d0

    :catch_1c2
    move-exception v10

    goto :goto_1c5

    :catch_1c4
    move-exception v10

    :goto_1c5
    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "local write failed"

    aput-object v12, v11, v3

    aput-object v10, v11, v0

    invoke-static {v11}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    :goto_1d0
    iget-boolean v10, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    if-eqz v10, :cond_1ec

    iget-object v10, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1ec

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v5, v10, v3

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v10, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v8

    invoke-static {p0, v10, v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    :cond_1ec
    iget-boolean v8, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    add-int/2addr v4, v8

    goto :goto_1a7

    :cond_1f0
    if-lez v4, :cond_1f8

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v2

    move p1, v0

    goto :goto_203

    :cond_1f8
    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, v2, v7}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v2

    :cond_203
    :goto_203
    if-eqz p1, :cond_212

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v4, Landroidx/appcompat/app/j;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_212
    if-nez v2, :cond_22f

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDelete return failed."

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_RESPONSE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v7}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_22f
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDelete return "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    return-object v2

    :catch_24e
    move-exception p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "fileDelete file not found"

    aput-object v0, p1, v3

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fileDeleteLocal(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    const-string v0, "fileDeleteLocal method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fileDeleteLocal start, fileIds: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    const-string v2, "fileDeleteLocal"

    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileDeleteLocal query file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz v4, :cond_79

    iget-object v6, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_79

    :cond_75
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_79
    :goto_79
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDeleteLocal return failed response cause totalFileInfo is null or localFileId is null"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v3

    :goto_9e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_117

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_ca

    new-array v6, v0, [Ljava/lang/Object;

    const-string v8, "fileDeleteLocal remove TransferTask and notify"

    aput-object v8, v6, v3

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v8

    invoke-static {p0, v6, v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    goto :goto_f6

    :cond_ca
    iget-object v6, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    iget-object v8, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/micloud/midrive/infos/FileDownloadInfo;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "fileDeleteLocal change transfer success to remove if exists, transferId:"

    aput-object v9, v8, v3

    aput-object v6, v8, v0

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    sget-object v8, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v8}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeToRemove(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    :goto_f6
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;

    invoke-direct {v6, v1, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;-><init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)V

    :try_start_fb
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    move-result-object v8

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {v8, v4, v6}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_104
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_104} :catch_107
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_fb .. :try_end_104} :catch_105

    goto :goto_113

    :catch_105
    move-exception v4

    goto :goto_108

    :catch_107
    move-exception v4

    :goto_108
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "local write failed"

    aput-object v8, v7, v3

    aput-object v4, v7, v0

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    :goto_113
    iget-boolean v4, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    add-int/2addr v2, v4

    goto :goto_9e

    :cond_117
    if-lez v2, :cond_12d

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDeleteLocal return successful response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_12d
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDeleteLocal return failed response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fileDownload(Landroid/content/Context;Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    const-string v0, "fileDownload method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fileDownload start, fileIds: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    const-string v2, "fileDownload"

    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_3a
    invoke-static {p1, v2, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->filterFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_44} :catch_16f

    const-wide/16 v5, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v7, v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v7, :cond_4a

    iget-wide v7, v7, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    add-long/2addr v5, v7

    goto :goto_4a

    :cond_5e
    invoke-static {v5, v6}, Lcom/micloud/midrive/utils/DiskFileOperator;->isDiskFullAfterDownload(J)Z

    move-result v2

    if-eqz v2, :cond_7d

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDownload disk not enough!"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_7d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v3

    :cond_82
    :goto_82
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "fileDownload query fileInfo, fileId: "

    invoke-static {v9, v5}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v0

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz v6, :cond_10e

    iget-object v5, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v5, :cond_10e

    iget-object v5, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c6

    goto :goto_10e

    :cond_c6
    iget-object v5, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    invoke-static {v5, v3}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileDownloadInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Z)Lcom/micloud/midrive/infos/FileDownloadInfo;

    move-result-object v6

    new-instance v7, Lcom/micloud/midrive/infos/SyncTargetInfo;

    iget-object v8, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    iget-object v9, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v10, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v9

    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v9, v5, v7, v8}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    new-array v7, v0, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileDownload call firstDownload, result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz v5, :cond_82

    add-int/lit8 v2, v2, 0x1

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {p0, v6, v5, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->startTransferTask(Landroid/content/Context;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Z)V

    goto/16 :goto_82

    :cond_10e
    :goto_10e
    if-eqz v6, :cond_82

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_82

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v5}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v5

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeFreeNetworkOnly(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    if-eqz v5, :cond_82

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/cloud/activity/a;

    invoke-direct {v6, v7}, Lcom/android/cloud/activity/a;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_82

    :cond_13e
    if-lez v2, :cond_154

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDownload return successful response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_154
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "fileDownload return failed response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_DOWNLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :catch_16f
    move-exception p0

    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static fileMove(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    const-string v0, "fileMove method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method private static fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p3

    move/from16 v12, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_15

    const-string v3, "fileMove"

    goto :goto_17

    :cond_15
    const-string v3, "fileCopy"

    :goto_17
    new-instance v13, Lcom/micloud/midrive/stat/FileOperationResultStat;

    invoke-direct {v13, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v13, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    :try_start_2b
    invoke-static/range {p2 .. p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->checkNativeFileExists(Ljava/util/List;)V

    move-object/from16 v3, p1

    invoke-static {v3, v0, v2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->filterFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v13, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_46} :catch_305

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v14, 0x0

    if-nez v3, :cond_100

    :try_start_4f
    invoke-static/range {p0 .. p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v3

    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;

    invoke-direct {v6, v11, v12}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1, v0, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    move-result-object v6

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoStart()V

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v7, Lcom/android/fileexplorer/widget/helper/a;

    invoke-direct {v7, v5}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoEnd()V

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileMoveOrCopy getSyncFileInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v14

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileMoveOrCopy insertOrUpdateCloudFiles result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v14

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v13, v6}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    :try_end_c5
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_4f .. :try_end_c5} :catch_ed
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_c5} :catch_d1
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_4f .. :try_end_c5} :catch_cf
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_4f .. :try_end_c5} :catch_cd
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_4f .. :try_end_c5} :catch_cb
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_4f .. :try_end_c5} :catch_c9
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_4f .. :try_end_c5} :catch_c7

    move v15, v0

    goto :goto_101

    :catch_c7
    move-exception v0

    goto :goto_d2

    :catch_c9
    move-exception v0

    goto :goto_d2

    :catch_cb
    move-exception v0

    goto :goto_d2

    :catch_cd
    move-exception v0

    goto :goto_d2

    :catch_cf
    move-exception v0

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "fileMoveOrCopy protocol exception"

    aput-object v2, v1, v14

    aput-object v0, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v13, v1, v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {v1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v0

    return-object v0

    :catch_ed
    move-exception v0

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleFileMoveOrCopyOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v2

    invoke-virtual {v13, v2, v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    return-object v1

    :cond_100
    move v15, v14

    :goto_101
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_201

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move/from16 v19, v14

    :goto_112
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v0, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13b

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v0

    return-object v0

    :cond_13b
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "fileMoveOrCopy folderPath: "

    invoke-static {v3, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "fileMoveOrCopy newPath: "

    invoke-static {v2, v6}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v14

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v10, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;

    move-object v2, v10

    move/from16 v3, p4

    move-object v4, v13

    move-object v5, v9

    move-object/from16 v7, p3

    move-object v14, v9

    move/from16 v20, v15

    move-object v15, v10

    move-wide/from16 v9, v16

    invoke-direct/range {v2 .. v10}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;-><init>(ZLcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_19b
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    move-result-object v0

    iget-object v2, v14, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {v0, v2, v15}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1a4
    .catch Ljava/lang/InterruptedException; {:try_start_19b .. :try_end_1a4} :catch_1a8
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_19b .. :try_end_1a4} :catch_1a6

    const/4 v0, 0x1

    goto :goto_1b8

    :catch_1a6
    move-exception v0

    goto :goto_1a9

    :catch_1a8
    move-exception v0

    :goto_1a9
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "local write failed"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    move v0, v3

    :goto_1b8
    iget-boolean v2, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    if-eqz v2, :cond_1d7

    iget-object v2, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d7

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "fileMoveOrCopy remove TransferTask and notify"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v0, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    :cond_1d7
    iget-boolean v0, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    add-int v19, v19, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move/from16 v15, v20

    const/4 v14, 0x0

    goto/16 :goto_112

    :cond_1e2
    move/from16 v20, v15

    if-lez v19, :cond_1f2

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v15, 0x1

    move-object/from16 v21, v3

    move-object v3, v0

    move-object/from16 v0, v21

    goto :goto_204

    :cond_1f2
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v0

    move/from16 v15, v20

    goto :goto_204

    :cond_201
    move/from16 v20, v15

    move-object v0, v3

    :goto_204
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2cf

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_218
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v11, v12}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildUploadLocalFileInfoAndCopyDiskFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    move-result-object v7

    if-nez v7, :cond_23a

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v0

    return-object v0

    :cond_23a
    invoke-virtual {v7}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v1, v7, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_218

    :cond_24e
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_253
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2cf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-static {v3, v5, v8}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v6

    if-eqz v12, :cond_276

    invoke-static {v5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildMoveUploadInfo(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v6

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/micloud/midrive/infos/FileUploadInfo;->setFailedMovePath(Ljava/lang/String;)V

    :cond_276
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v5, v7}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileMoveOrCopy insertLocalFileInfo result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz v5, :cond_2b6

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move/from16 v7, p5

    invoke-static {v1, v6, v5, v7}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->startTransferTask(Landroid/content/Context;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Z)V

    const/4 v15, 0x1

    move v8, v9

    goto :goto_253

    :cond_2b6
    move/from16 v7, p5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "fileMoveOrCopy return failed response"

    aput-object v5, v0, v9

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_UPLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v0

    const/4 v8, 0x0

    goto :goto_253

    :cond_2cf
    if-eqz v15, :cond_2de

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/app/j;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2de
    if-nez v0, :cond_2e4

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v0

    :cond_2e4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "fileMoveOrCopy return "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    return-object v0

    :catch_305
    move-exception v0

    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v13, v1, v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {v1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;",
            "Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;",
            ")",
            "Lcom/micloud/midrive/infos/FileOperationTimeInfo;"
        }
    .end annotation

    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    move v6, v3

    :goto_d
    sub-int v7, v0, v6

    if-lez v7, :cond_60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    div-int/lit16 v9, v6, 0x3e8

    mul-int/lit16 v9, v9, 0x3e8

    add-int/lit16 v9, v9, 0x3e8

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-interface {p1, v6, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;->getOperateRecords(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;->getOperateType()Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    move-result-object v10

    invoke-static {p0, v6, v10}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->fileOperation(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    add-long/2addr v1, v10

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query operationInfo:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {p0, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleOperationQuery(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/operation/OperationInfo;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    add-long/2addr v4, v10

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_d

    :cond_60
    new-instance p0, Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/micloud/midrive/infos/FileOperationTimeInfo;-><init>(JJ)V

    return-object p0
.end method

.method public static fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 14

    const-string v0, "fileRename method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fileRename start, fileId: "

    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "newName: "

    invoke-static {v2, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    const-string v2, "fileRename"

    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileRename query file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-nez v2, :cond_66

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "fileRename return failed response cause totalFileInfo is null"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_66
    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "fileRename return successful response"

    const-string v8, "fileRename notify sync session"

    if-nez v6, :cond_1b4

    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-nez v6, :cond_78

    goto/16 :goto_1b4

    :cond_78
    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V

    iget-object p1, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-nez p1, :cond_86

    iget-object p1, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object p1

    goto :goto_88

    :cond_86
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    :goto_88
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v6

    invoke-interface {v6, p1, v5, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_99
    :goto_99
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v10, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v10, :cond_bd

    invoke-virtual {v10}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bd

    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_bd
    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v9, :cond_99

    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_c7
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e6

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "fileRename new file conflict, return failed response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_e6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v6

    iget-object v9, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p1, v6, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "fileRename new file path: "

    invoke-static {v9, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_138

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "fileRename new file exists, return failed response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_138
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;

    invoke-direct {v6, v1, v2, p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;-><init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13d
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    move-result-object p1

    iget-object p2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {p1, p2, v6}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_146
    .catch Ljava/lang/InterruptedException; {:try_start_13d .. :try_end_146} :catch_149
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_13d .. :try_end_146} :catch_147

    goto :goto_155

    :catch_147
    move-exception p1

    goto :goto_14a

    :catch_149
    move-exception p1

    :goto_14a
    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "local write failed"

    aput-object v0, p2, v3

    aput-object p1, p2, v4

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    :goto_155
    iget-boolean p1, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    if-eqz p1, :cond_199

    iget-object p1, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_173

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "fileRename remove TransferTask and notify"

    aput-object p2, p1, v3

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    :cond_173
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v8, p1, v3

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/app/j;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-array p0, v4, [Ljava/lang/Object;

    aput-object v7, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_199
    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "fileRename return failed response"

    aput-object p1, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_1b4
    :goto_1b4
    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    :try_start_1b7
    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoStart()V

    iget-object p1, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoEnd()V

    new-array p2, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileRename getSyncFileInfo: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    move-result p1

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    new-array p2, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileRename insertOrUpdateCloudFiles result: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz p1, :cond_22b

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v8, p1, v3

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/app/j;

    const/4 v2, 0x3

    invoke-direct {p2, p0, v2}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22b
    new-array p0, v4, [Ljava/lang/Object;

    aput-object v7, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0
    :try_end_23c
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_1b7 .. :try_end_23c} :catch_263
    .catch Ljava/lang/InterruptedException; {:try_start_1b7 .. :try_end_23c} :catch_247
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_1b7 .. :try_end_23c} :catch_245
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_1b7 .. :try_end_23c} :catch_243
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_1b7 .. :try_end_23c} :catch_241
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_1b7 .. :try_end_23c} :catch_23f
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_1b7 .. :try_end_23c} :catch_23d

    return-object p0

    :catch_23d
    move-exception p0

    goto :goto_248

    :catch_23f
    move-exception p0

    goto :goto_248

    :catch_241
    move-exception p0

    goto :goto_248

    :catch_243
    move-exception p0

    goto :goto_248

    :catch_245
    move-exception p0

    goto :goto_248

    :catch_247
    move-exception p0

    :goto_248
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "fileRename protocol exception"

    aput-object p2, p1, v3

    aput-object p0, p1, v4

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :catch_263
    move-exception p0

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleFileRenameOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object p2

    invoke-virtual {v1, p2, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    return-object p1
.end method

.method public static fileUploadChangeFreeNetworkOnly(Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    const-string v0, "fileUploadChangeFreeNetworkOnly method should not run in Main Thread."

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/micloud/midrive/stat/FileOperationResultStat;

    const-string v1, "fileUpload"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeFreeNetworkOnly(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    if-eqz v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3c
    if-lez v1, :cond_56

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/cloud/activity/a;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/android/cloud/activity/a;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_56
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->UPLOAD_CHANGE_FREE_NETWORK_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method private static filterFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    if-eqz v1, :cond_50

    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-nez v0, :cond_44

    goto :goto_4a

    :cond_44
    if-eqz p2, :cond_7

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_4a
    :goto_4a
    if-eqz p1, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_50
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "totalFileInfo is null, fileId is "

    aput-object p1, p0, v5

    aput-object v0, p0, v2

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    :cond_62
    return-void
.end method

.method public static synthetic g(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileDelete$6(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAllSingleFilesUnderFolder(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v2

    const-string v3, "cloud_modify_time"

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    if-eqz v2, :cond_3f

    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-eqz v5, :cond_3b

    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v6, "folder"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v5

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v5, v2, v3, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_3b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_3f
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "query single files under "

    const-string v3, " children count: "

    invoke-static {v2, p0, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .registers 2

    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->mainHandler:Landroid/os/Handler;

    :cond_f
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_d

    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static synthetic h(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileRename$4(Landroid/content/Context;)V

    return-void
.end method

.method private static handleFileDeleteOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "handleFileDeleteOperationFailed:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    instance-of v0, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    if-eqz v0, :cond_19

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_19
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    const/16 v0, 0x2af9

    if-ne p0, v0, :cond_26

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DELETE_FILE_NULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_26
    const/16 v0, 0x2718

    if-ne p0, v0, :cond_31

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_31
    const/16 v0, 0x271f

    if-ne p0, v0, :cond_3c

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_3c
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method private static handleFileMoveOrCopyOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "handleFileMoveOrCopyOperationFailed:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    instance-of v0, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    if-eqz v0, :cond_19

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_19
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    const/16 v0, 0x2716

    if-ne p0, v0, :cond_26

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_26
    const/16 v0, 0x2afc

    if-ne p0, v0, :cond_31

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARENT_FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_31
    const/16 v0, 0x2afb

    if-ne p0, v0, :cond_3c

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_3c
    const/16 v0, 0x2718

    if-ne p0, v0, :cond_47

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_47
    const/16 v0, 0x2afa

    if-ne p0, v0, :cond_52

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_52
    const/16 v0, 0x2b02

    if-ne p0, v0, :cond_5d

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->ERROR_SUB_PATH_MOVE_COPY:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_5d
    const/16 v0, 0x271f

    if-ne p0, v0, :cond_68

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_68
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method private static handleFileRenameOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "handleFileRenameOperationFailed:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    instance-of v0, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    if-eqz v0, :cond_19

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_19
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    const/16 v0, 0x2712

    if-ne p0, v0, :cond_26

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_26
    const/16 v0, 0x2afd

    if-ne p0, v0, :cond_31

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_31
    const/16 v0, 0x2718

    if-ne p0, v0, :cond_3c

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_3c
    const/16 v0, 0x2afa

    if-ne p0, v0, :cond_47

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_47
    const/16 v0, 0x271f

    if-ne p0, v0, :cond_52

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_52
    const/16 v0, 0x2b09

    if-ne p0, v0, :cond_5d

    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0

    :cond_5d
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method private static handleOperationQuery(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/operation/OperationInfo;)V
    .registers 16

    iget-wide v0, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->currentTime:J

    :cond_2
    :goto_2
    iget-wide v2, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->expireTime:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4f

    iget-object v2, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->taskId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getTaskStatus(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/task/query/TaskQueryInfo;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    const-string v4, "FAILED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    const-string v4, "SUCCESS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-void

    :cond_2c
    iget-object v3, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    const-string v4, "RUNNING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v0, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->interval:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-wide v0, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->currentTime:J

    goto :goto_2

    :cond_3e
    new-instance p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    iget-object p1, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->errorInfo:Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    iget v3, p1, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errMessage:Ljava/lang/String;

    const-string v4, "query_task"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/micloud/midrive/server/exception/OperationFailedException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4f
    new-instance p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v10, "query_task"

    const-string v13, "query time out"

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/micloud/midrive/server/exception/OperationFailedException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic i(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileContentModify$8(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic j(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileMoveOrCopy$3(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$fileContentModify$8(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$fileDelete$6(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$fileDelete$7(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$fileDownload$0()V
    .registers 1

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->notifyRequiredNetworkChangedIfExist()V

    return-void
.end method

.method private static synthetic lambda$fileMoveOrCopy$2(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$fileMoveOrCopy$3(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$fileRename$4(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$fileRename$5(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$fileUploadChangeFreeNetworkOnly$1()V
    .registers 1

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->notifyRequiredNetworkChangedIfExist()V

    return-void
.end method

.method private static synthetic lambda$startTransferTask$9(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object p0

    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->notifyNewTaskAddedOrStartSessionIfNotExist(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method private static removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V
    .registers 4

    sget-object v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-ne p2, v0, :cond_7

    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    goto :goto_9

    :cond_7
    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    :goto_9
    invoke-static {p2}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static startTransferTask(Landroid/content/Context;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Z)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, p3, v1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->addToOngoing(Ljava/util/List;ZZ)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Landroidx/appcompat/app/s;

    const/16 v0, 0x8

    invoke-direct {p3, v0, p2, p0}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method
