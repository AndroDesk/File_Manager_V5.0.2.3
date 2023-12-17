.class public Lcom/micloud/midrive/task/SyncTask;
.super Lcom/micloud/midrive/task/RunOnNetworkTask;
.source "SyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;
    }
.end annotation


# instance fields
.field private final mCheckLocalFile:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mOperationFailedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            "Lcom/micloud/midrive/server/exception/OperationFailedException;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

.field private mSyncAfter:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;)V

    invoke-static {}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    iput-boolean p2, p0, Lcom/micloud/midrive/task/SyncTask;->mCheckLocalFile:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mMainHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mOperationFailedMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/task/SyncTask;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/task/SyncTask;->lambda$startTransferTask$0(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$400(Ljava/util/Map;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/task/SyncTask;->buildMoveOperationRecordsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Ljava/util/List;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/task/SyncTask;->buildDeleteOperationRecordsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/task/SyncTask;->lambda$syncUpFileMove$1(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method private static buildMoveOperationRecordsString(Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v7, v7, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "type"

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "parentId"

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_25

    :cond_51
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_55} :catch_56

    return-object p0

    :catch_56
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic c(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/task/SyncTask;->lambda$syncUpFileDelete$2(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cancelTransferTask(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    invoke-static {p2}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object p2

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lcom/micloud/midrive/session/helper/ISessionHelper;->removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkLocalFile()V
    .registers 10

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryAllSyncFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v2, :cond_c

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget-wide v5, v2, Landroid/system/StructStat;->st_mtime:J

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_33

    goto :goto_c

    :cond_33
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/micloud/midrive/utils/Coder;->encodeSHA1(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4c} :catch_a6
    .catch Landroid/system/ErrnoException; {:try_start_1e .. :try_end_4c} :catch_a4

    if-eqz v5, :cond_4f

    goto :goto_c

    :cond_4f
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "sync file "

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v3

    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/micloud/midrive/infos/FileDownloadInfo;->isKeyMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    goto :goto_98

    :cond_96
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    :goto_98
    invoke-virtual {v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;->cancelTransferTask(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    goto/16 :goto_c

    :catch_a4
    move-exception v2

    goto :goto_a7

    :catch_a6
    move-exception v2

    :goto_a7
    const-string v5, "check_local_file"

    invoke-static {v5, v2}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "check file "

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " change failed, IGNORE"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    aput-object v2, v5, v3

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_d0
    return-void
.end method

.method private handleSyncFile(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordHandleSyncFileStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryAllModifiedLocalFiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/micloud/midrive/task/SyncTask;->handleSyncFileImpl(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1b

    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4e

    invoke-direct {p0, v1}, Lcom/micloud/midrive/task/SyncTask;->syncUpFileDelete(Ljava/util/List;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v3

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    goto :goto_38

    :cond_4e
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5d

    invoke-direct {p0, v2}, Lcom/micloud/midrive/task/SyncTask;->syncUpFileMove(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    :cond_5d
    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordHandleSyncFileEnd()V

    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setSyncTotalCount(I)V

    return-void
.end method

.method private handleSyncFileImpl(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/util/List;Ljava/util/Map;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    if-eqz v4, :cond_251

    if-eqz v6, :cond_251

    if-nez v5, :cond_16

    goto/16 :goto_251

    :cond_16
    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isLocalChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v9

    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isCloudChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v10

    if-eqz v9, :cond_48

    if-eqz v10, :cond_48

    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isMergeConflict(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    invoke-direct/range {p0 .. p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    return-void

    :cond_41
    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isSamePropertyChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v11

    if-eqz v11, :cond_48

    const/4 v10, 0x0

    :cond_48
    if-eqz v9, :cond_73

    if-eqz v10, :cond_73

    iget-object v11, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_5f

    :cond_5d
    iget-object v11, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    :goto_5f
    iget-object v12, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_70

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v12

    goto :goto_82

    :cond_70
    iget-object v12, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    goto :goto_82

    :cond_73
    if-eqz v10, :cond_7a

    iget-object v11, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v12, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    goto :goto_82

    :cond_7a
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v12

    :goto_82
    move-object v14, v12

    new-instance v12, Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v14, v11, v13}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v15

    sget-object v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-ne v15, v7, :cond_a8

    move-object/from16 v7, p3

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseDeleteCount()V

    return-void

    :cond_a8
    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    const-string v15, "deleted"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21a

    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    const-string v15, "purged"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    goto/16 :goto_21a

    :cond_be
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_219

    if-nez v9, :cond_c8

    if-eqz v10, :cond_219

    :cond_c8
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ec

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v4, v7}, Lcom/micloud/midrive/task/SyncTask;->syncUpFileRename(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Ljava/lang/String;)Z

    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v7}, Lcom/micloud/midrive/task/SyncTask;->updateSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseRenameCount()V

    goto :goto_ed

    :cond_ec
    const/4 v7, 0x0

    :goto_ed
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_123

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    iget-object v2, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v12}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseMoveCount()V

    return-void

    :cond_123
    if-eqz v10, :cond_19a

    iget-object v1, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13d

    iget-object v1, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19a

    :cond_13d
    iget-object v1, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14f

    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseRenameCount()V

    goto :goto_154

    :cond_14f
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseMoveCount()V

    :goto_154
    new-instance v1, Ljava/io/File;

    invoke-static {v14, v11}, Lcom/micloud/midrive/utils/TransferPathUtils;->getDownloadTargetPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_174

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_174

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_174
    invoke-virtual {v13, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_17d

    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    :cond_17d
    new-instance v3, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v21

    iget-wide v8, v5, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    move-object v13, v3

    move-object/from16 v16, v11

    move-wide/from16 v22, v8

    invoke-direct/range {v13 .. v23}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    goto :goto_19b

    :cond_19a
    move-object v3, v5

    :goto_19b
    if-nez v10, :cond_1a7

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v8

    iget-object v9, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v8, v9, v12}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    goto :goto_1c1

    :cond_1a7
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v8

    iget-object v9, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v8, v9, v3, v12}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v8

    if-eqz v8, :cond_1c1

    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v8

    sget-object v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-eq v8, v9, :cond_1c1

    invoke-direct/range {p0 .. p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    :cond_1c1
    :goto_1c1
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1ee

    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v4, v3, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v1

    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {v0, v1, v3}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v12, v3, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseModifyCount()V

    goto :goto_219

    :cond_1ee
    iget-object v3, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_219

    if-eqz v7, :cond_1fd

    move-object v4, v7

    :cond_1fd
    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileDownloadInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Z)Lcom/micloud/midrive/infos/FileDownloadInfo;

    move-result-object v1

    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {v0, v1, v3}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v12, v3, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseModifyCount()V

    :cond_219
    :goto_219
    return-void

    :cond_21a
    :goto_21a
    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_238

    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v1

    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-ne v1, v3, :cond_22f

    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    goto :goto_231

    :cond_22f
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    :goto_231
    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/micloud/midrive/task/SyncTask;->cancelTransferTask(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    :cond_238
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseDeleteCount()V

    return-void

    :cond_251
    :goto_251
    if-eqz v4, :cond_278

    if-nez v5, :cond_278

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileDownloadInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Z)Lcom/micloud/midrive/infos/FileDownloadInfo;

    move-result-object v1

    new-instance v3, Lcom/micloud/midrive/infos/SyncTargetInfo;

    iget-object v5, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    iget-object v6, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v4}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    invoke-direct {v0, v1, v5}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void

    :cond_278
    if-eqz v5, :cond_2a5

    if-nez v4, :cond_2a5

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v5, v3}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v1

    new-instance v3, Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    invoke-direct {v0, v1, v5}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    :cond_2a5
    return-void
.end method

.method private isCloudChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 3

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTargetRevision()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isLocalChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 5

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p1, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p1, 0x1

    :goto_32
    return p1
.end method

.method private isMergeConflict(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 5

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method private isSamePropertyChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 6

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_20
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    :cond_3a
    const/4 p1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    return p1
.end method

.method private synthetic lambda$startTransferTask$0(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V
    .registers 9

    invoke-static {p1}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getTransferWithFreeNetwork(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/micloud/midrive/session/helper/ISessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static synthetic lambda$syncUpFileDelete$2(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$syncUpFileMove$1(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method private markSyncAfter()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSyncAfter:Z

    return-void
.end method

.method private requestSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 6

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSyncToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordRequestFileStart()V

    const/16 v2, 0xc8

    invoke-static {p1, v0, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncData(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;I)Lcom/micloud/midrive/infos/SyncPageInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordRequestFileEnd()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SyncTask getSyncData"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->fileInfos:Ljava/util/List;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_29} :catch_2e
    .catch Lcom/micloud/midrive/server/exception/RemoteServiceException; {:try_start_9 .. :try_end_29} :catch_2c
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception v0

    goto :goto_2f

    :catch_2c
    move-exception v0

    goto :goto_2f

    :catch_2e
    move-exception v0

    :goto_2f
    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/Exception;)V

    :goto_32
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->fileInfos:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->fileInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBEnd()V

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->syncToken:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setSyncToken(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->syncToken:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->hasMore:Z

    if-nez v1, :cond_8

    return-void
.end method

.method private startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/emoji2/text/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v0, v2}, Landroidx/emoji2/text/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseTransferCount()V

    return-void
.end method

.method private syncUpFileDelete(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "sync_up_delete"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/micloud/midrive/task/SyncTask$2;

    invoke-direct {v5, p0}, Lcom/micloud/midrive/task/SyncTask$2;-><init>(Lcom/micloud/midrive/task/SyncTask;)V

    invoke-static {v4, p1, v5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoStart()V

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v6, Lcom/android/fileexplorer/widget/helper/a;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    invoke-interface {p1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v5, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoEnd()V

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    move-result p1

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBEnd()V

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5, v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setExecFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_57} :catch_72
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_5 .. :try_end_57} :catch_70
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_5 .. :try_end_57} :catch_6e
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_5 .. :try_end_57} :catch_6c
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_5 .. :try_end_57} :catch_6a
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_57} :catch_68
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_57} :catch_58

    return p1

    :catch_58
    move-exception p1

    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "sync up delete operation failed."

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return v3

    :catch_68
    move-exception p1

    goto :goto_73

    :catch_6a
    move-exception p1

    goto :goto_73

    :catch_6c
    move-exception p1

    goto :goto_73

    :catch_6e
    move-exception p1

    goto :goto_73

    :catch_70
    move-exception p1

    goto :goto_73

    :catch_72
    move-exception p1

    :goto_73
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "sync up delete failed."

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return v3
.end method

.method private syncUpFileMove(Ljava/util/Map;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "sync_up_move"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_22
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/micloud/midrive/task/SyncTask$1;

    invoke-direct {v6, p0, p1}, Lcom/micloud/midrive/task/SyncTask$1;-><init>(Lcom/micloud/midrive/task/SyncTask;Ljava/util/Map;)V

    invoke-static {v5, v4, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    move-result-object p1

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoStart()V

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/fileexplorer/widget/helper/a;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoEnd()V

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    move-result v4

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBEnd()V

    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v5, p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setExecFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_74} :catch_8f
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_5 .. :try_end_74} :catch_8d
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_5 .. :try_end_74} :catch_8b
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_5 .. :try_end_74} :catch_89
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_5 .. :try_end_74} :catch_87
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_74} :catch_85
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_74} :catch_75

    return v4

    :catch_75
    move-exception p1

    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "sync up move operation failed."

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return v3

    :catch_85
    move-exception p1

    goto :goto_90

    :catch_87
    move-exception p1

    goto :goto_90

    :catch_89
    move-exception p1

    goto :goto_90

    :catch_8b
    move-exception p1

    goto :goto_90

    :catch_8d
    move-exception p1

    goto :goto_90

    :catch_8f
    move-exception p1

    :goto_90
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "sync up move failed."

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return v3
.end method

.method private syncUpFileRename(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "sync_up_rename"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    iget-object v4, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-static {p1, v4, p3}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_2a
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_5 .. :try_end_a} :catch_28
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_5 .. :try_end_a} :catch_26
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_5 .. :try_end_a} :catch_24
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_5 .. :try_end_a} :catch_22
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_a} :catch_20
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_a} :catch_b

    return v2

    :catch_b
    move-exception p1

    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "sync up rename operation failed."

    aput-object v0, p3, v3

    aput-object p1, p3, v2

    invoke-static {p3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/micloud/midrive/task/SyncTask;->mOperationFailedMap:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :catch_20
    move-exception p1

    goto :goto_2b

    :catch_22
    move-exception p1

    goto :goto_2b

    :catch_24
    move-exception p1

    goto :goto_2b

    :catch_26
    move-exception p1

    goto :goto_2b

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "sync up rename failed."

    aput-object p3, p2, v3

    aput-object p1, p2, v2

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return v3
.end method

.method private updateSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_40

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_20} :catch_2d
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_1 .. :try_end_20} :catch_2b
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_1 .. :try_end_20} :catch_29
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_1 .. :try_end_20} :catch_27
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_1 .. :try_end_20} :catch_25
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_1 .. :try_end_20} :catch_23
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_1 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    goto :goto_2e

    :catch_23
    move-exception p1

    goto :goto_2e

    :catch_25
    move-exception p1

    goto :goto_2e

    :catch_27
    move-exception p1

    goto :goto_2e

    :catch_29
    move-exception p1

    goto :goto_2e

    :catch_2b
    move-exception p1

    goto :goto_2e

    :catch_2d
    move-exception p1

    :goto_2e
    const-string p2, "update_sync_file_info"

    invoke-static {p2, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "update sync file info failed"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateSyncStatus()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordUpdateSyncStatusStart()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->tryUpdateSyncedStatus()Z

    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordUpdateSyncStatusEnd()V

    return-void
.end method


# virtual methods
.method public isSyncAfter()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSyncAfter:Z

    return v0
.end method

.method public onFinish(Z)V
    .registers 3

    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v0

    iget-object v0, v0, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->stepName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setFinishStep(Ljava/lang/String;)V

    return-void
.end method

.method public runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 4

    if-nez p2, :cond_7

    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$000()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$000()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object v0

    if-ne v0, p2, :cond_15

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/SyncTask;->requestSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;)V

    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$100()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$100()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object v0

    if-ne v0, p2, :cond_2c

    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->updateSyncStatus()V

    iget-boolean p1, p0, Lcom/micloud/midrive/task/SyncTask;->mCheckLocalFile:Z

    if-eqz p1, :cond_27

    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$200()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object p1

    goto :goto_2b

    :cond_27
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$300()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object p1

    :goto_2b
    return-object p1

    :cond_2c
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$200()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object v0

    if-ne v0, p2, :cond_3a

    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->checkLocalFile()V

    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$300()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object p1

    return-object p1

    :cond_3a
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$300()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    move-result-object v0

    if-ne v0, p2, :cond_45

    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/SyncTask;->handleSyncFile(Lcom/micloud/midrive/server/transport/Network;)V

    const/4 p1, 0x0

    return-object p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should not reach here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
