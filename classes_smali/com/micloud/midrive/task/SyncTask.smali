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
.method public constructor <init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/RunOnNetworkTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;)V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->getInstance()Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 10
    iput-boolean p2, p0, Lcom/micloud/midrive/task/SyncTask;->mCheckLocalFile:Z

    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    iput-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mMainHandler:Landroid/os/Handler;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mOperationFailedMap:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/task/SyncTask;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/task/SyncTask;->lambda$startTransferTask$0(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$400(Ljava/util/Map;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/task/SyncTask;->buildMoveOperationRecordsString(Ljava/util/Map;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Ljava/util/List;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/task/SyncTask;->buildDeleteOperationRecordsString(Ljava/util/List;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
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

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2f

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 19
    new-instance v3, Lorg/json/JSONObject;

    .line 21
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const-string v4, "id"

    .line 26
    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 28
    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 30
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v4, "type"

    .line 35
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 37
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 39
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_6

    .line 48
    :cond_2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_34

    .line 52
    return-object p0

    .line 53
    :catch_34
    const/4 p0, 0x0

    .line 54
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

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_51

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/List;

    .line 32
    if-eqz v3, :cond_d

    .line 34
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v3

    .line 38
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_d

    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 50
    new-instance v5, Lorg/json/JSONObject;

    .line 52
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 55
    const-string v6, "id"

    .line 57
    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 59
    iget-object v7, v7, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v6, "type"

    .line 66
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 68
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 70
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v4, "parentId"

    .line 75
    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    goto :goto_25

    .line 82
    :cond_51
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_55} :catch_56

    .line 86
    return-object p0

    .line 87
    :catch_56
    const/4 p0, 0x0

    .line 88
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

    .line 1
    invoke-static {p2}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p2, v0, p1, v1}, Lcom/micloud/midrive/session/helper/ISessionHelper;->removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 13
    return-void
.end method

.method private checkLocalFile()V
    .registers 10

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryAllSyncFiles()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_d0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 25
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 27
    if-eqz v2, :cond_c

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    :try_start_1e
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 38
    move-result-object v2

    .line 39
    iget-wide v5, v2, Landroid/system/StructStat;->st_mtime:J

    .line 41
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 43
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 46
    move-result-wide v7

    .line 47
    cmp-long v2, v5, v7

    .line 49
    if-nez v2, :cond_33

    .line 51
    goto :goto_c

    .line 52
    :cond_33
    new-instance v2, Ljava/io/FileInputStream;

    .line 54
    iget-object v5, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 56
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v2}, Lcom/micloud/midrive/utils/Coder;->encodeSHA1(Ljava/io/InputStream;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    iget-object v5, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 69
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    move-result v5
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4c} :catch_a6
    .catch Landroid/system/ErrnoException; {:try_start_1e .. :try_end_4c} :catch_a4

    .line 77
    if-eqz v5, :cond_4f

    .line 79
    goto :goto_c

    .line 80
    :cond_4f
    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    const-string v5, "sync file "

    .line 84
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v5

    .line 88
    iget-object v6, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 90
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v6, " changed"

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v5

    .line 106
    aput-object v5, v3, v4

    .line 108
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 114
    move-result-object v3

    .line 115
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 117
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 119
    new-instance v5, Ljava/io/File;

    .line 121
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 123
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 133
    move-result-wide v5

    .line 134
    invoke-interface {v3, v4, v2, v5, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lcom/micloud/midrive/infos/FileDownloadInfo;->isKeyMatch(Ljava/lang/String;)Z

    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_96

    .line 148
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 150
    goto :goto_98

    .line 151
    :cond_96
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 153
    :goto_98
    invoke-virtual {v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/task/SyncTask;->cancelTransferTask(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 160
    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    .line 163
    goto/16 :goto_c

    .line 165
    :catch_a4
    move-exception v2

    .line 166
    goto :goto_a7

    .line 167
    :catch_a6
    move-exception v2

    .line 168
    :goto_a7
    const-string v5, "check_local_file"

    .line 170
    invoke-static {v5, v2}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 173
    const/4 v5, 0x2

    .line 174
    new-array v5, v5, [Ljava/lang/Object;

    .line 176
    const-string v6, "check file "

    .line 178
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    move-result-object v6

    .line 182
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 184
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, " change failed, IGNORE"

    .line 193
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 200
    aput-object v1, v5, v4

    .line 202
    aput-object v2, v5, v3

    .line 204
    invoke-static {v5}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 207
    goto/16 :goto_c

    .line 209
    :cond_d0
    return-void
.end method

.method private handleSyncFile(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 3
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordHandleSyncFileStart()V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryAllModifiedLocalFiles()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v2, Ljava/util/HashMap;

    .line 21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v3

    .line 28
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_2b

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 40
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/micloud/midrive/task/SyncTask;->handleSyncFileImpl(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/util/List;Ljava/util/Map;)V

    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_4e

    .line 50
    invoke-direct {p0, v1}, Lcom/micloud/midrive/task/SyncTask;->syncUpFileDelete(Ljava/util/List;)Z

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p1

    .line 57
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4e

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 69
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 72
    move-result-object v3

    .line 73
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 75
    invoke-interface {v3, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    .line 78
    goto :goto_38

    .line 79
    :cond_4e
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_5d

    .line 85
    invoke-direct {p0, v2}, Lcom/micloud/midrive/task/SyncTask;->syncUpFileMove(Ljava/util/Map;)Z

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5d

    .line 91
    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    .line 94
    :cond_5d
    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 96
    invoke-virtual {p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordHandleSyncFileEnd()V

    .line 99
    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setSyncTotalCount(I)V

    .line 108
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

    .line 1
    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 2
    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 3
    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    if-eqz v4, :cond_251

    if-eqz v6, :cond_251

    if-nez v5, :cond_16

    goto/16 :goto_251

    .line 4
    :cond_16
    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isLocalChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v9

    .line 5
    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isCloudChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v10

    if-eqz v9, :cond_48

    if-eqz v10, :cond_48

    .line 6
    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isMergeConflict(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 7
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

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    return-void

    .line 9
    :cond_41
    invoke-direct {v0, v2}, Lcom/micloud/midrive/task/SyncTask;->isSamePropertyChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z

    move-result v11

    if-eqz v11, :cond_48

    const/4 v10, 0x0

    :cond_48
    if-eqz v9, :cond_73

    if-eqz v10, :cond_73

    .line 10
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

    .line 11
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

    .line 12
    iget-object v11, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 13
    iget-object v12, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    goto :goto_82

    .line 14
    :cond_7a
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v12

    :goto_82
    move-object v14, v12

    .line 16
    new-instance v12, Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v14, v11, v13}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v13, Ljava/io/File;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v15

    sget-object v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-ne v15, v7, :cond_a8

    move-object/from16 v7, p3

    .line 19
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseDeleteCount()V

    return-void

    .line 21
    :cond_a8
    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    const-string v15, "deleted"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21a

    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    const-string v15, "purged"

    .line 22
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    goto/16 :goto_21a

    .line 23
    :cond_be
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_219

    if-nez v9, :cond_c8

    if-eqz v10, :cond_219

    .line 24
    :cond_c8
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ec

    .line 25
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v4, v7}, Lcom/micloud/midrive/task/SyncTask;->syncUpFileRename(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Ljava/lang/String;)Z

    .line 26
    iget-object v7, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v7}, Lcom/micloud/midrive/task/SyncTask;->updateSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-result-object v7

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    .line 28
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseRenameCount()V

    goto :goto_ed

    :cond_ec
    const/4 v7, 0x0

    .line 29
    :goto_ed
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_123

    .line 30
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    iget-object v2, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v12}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    .line 33
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseMoveCount()V

    return-void

    :cond_123
    if-eqz v10, :cond_19a

    .line 34
    iget-object v1, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13d

    iget-object v1, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 35
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19a

    .line 36
    :cond_13d
    iget-object v1, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14f

    .line 37
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseRenameCount()V

    goto :goto_154

    .line 38
    :cond_14f
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseMoveCount()V

    .line 39
    :goto_154
    new-instance v1, Ljava/io/File;

    invoke-static {v14, v11}, Lcom/micloud/midrive/utils/TransferPathUtils;->getDownloadTargetPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_174

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_174

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_174
    invoke-virtual {v13, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 43
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    .line 44
    :cond_17d
    new-instance v3, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 45
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

    .line 46
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v8

    iget-object v9, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v8, v9, v12}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    goto :goto_1c1

    .line 47
    :cond_1a7
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v8

    iget-object v9, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-interface {v8, v9, v3, v12}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v8

    if-eqz v8, :cond_1c1

    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v8

    sget-object v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-eq v8, v9, :cond_1c1

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/micloud/midrive/task/SyncTask;->markSyncAfter()V

    .line 50
    :cond_1c1
    :goto_1c1
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1ee

    .line 51
    iget-object v4, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v4, v3, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v1

    .line 52
    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {v0, v1, v3}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 53
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {v4, v2, v12, v3, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    .line 56
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseModifyCount()V

    goto :goto_219

    .line 57
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

    .line 58
    invoke-static {v4, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileDownloadInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Z)Lcom/micloud/midrive/infos/FileDownloadInfo;

    move-result-object v1

    .line 59
    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {v0, v1, v3}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 60
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {v4, v2, v12, v3, v1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    .line 63
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseModifyCount()V

    :cond_219
    :goto_219
    return-void

    .line 64
    :cond_21a
    :goto_21a
    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_238

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v1

    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-ne v1, v3, :cond_22f

    .line 66
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    goto :goto_231

    .line 67
    :cond_22f
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 68
    :goto_231
    invoke-virtual/range {p2 .. p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/micloud/midrive/task/SyncTask;->cancelTransferTask(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 69
    :cond_238
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 70
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    .line 71
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v1

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    .line 72
    iget-object v1, v0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    invoke-virtual {v1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseDeleteCount()V

    return-void

    :cond_251
    :goto_251
    if-eqz v4, :cond_278

    if-nez v5, :cond_278

    const/4 v1, 0x1

    .line 73
    invoke-static {v4, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileDownloadInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Z)Lcom/micloud/midrive/infos/FileDownloadInfo;

    move-result-object v1

    .line 74
    new-instance v3, Lcom/micloud/midrive/infos/SyncTargetInfo;

    iget-object v5, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    iget-object v6, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v4}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 76
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-interface {v4, v2, v3, v5, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    .line 78
    invoke-direct {v0, v1, v5}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void

    :cond_278
    if-eqz v5, :cond_2a5

    if-nez v4, :cond_2a5

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 79
    invoke-static {v1, v5, v3}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v1

    .line 80
    new-instance v3, Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v6, v5}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v4

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 82
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-interface {v4, v2, v3, v5, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    .line 84
    invoke-direct {v0, v1, v5}, Lcom/micloud/midrive/task/SyncTask;->startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    :cond_2a5
    return-void
.end method

.method private isCloudChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 3
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTargetRevision()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 15
    return p1
.end method

.method private isLocalChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 3
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_31

    .line 19
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_31

    .line 33
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2f

    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    const/4 p1, 0x0

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    :goto_31
    const/4 p1, 0x1

    .line 51
    :goto_32
    return p1
.end method

.method private isMergeConflict(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 3
    iget-object v1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 5
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_22

    .line 21
    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_22

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    return p1
.end method

.method private isSamePropertyChanged(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Z
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 3
    iget-object v1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 5
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->targetFileInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_20

    .line 21
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3a

    .line 33
    :cond_20
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3c

    .line 47
    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3c

    .line 59
    :cond_3a
    const/4 p1, 0x1

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    const/4 p1, 0x0

    .line 62
    :goto_3d
    return p1
.end method

.method private synthetic lambda$startTransferTask$0(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)V
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getTransferWithFreeNetwork(Landroid/content/Context;)Z

    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v3, p2

    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/micloud/midrive/session/helper/ISessionHelper;->addTask(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 30
    return-void
.end method

.method private static synthetic lambda$syncUpFileDelete$2(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 3
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$syncUpFileMove$1(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 3
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method private markSyncAfter()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSyncAfter:Z

    .line 4
    return-void
.end method

.method private requestSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSyncToken(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :try_start_9
    iget-object v2, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 12
    invoke-virtual {v2}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordRequestFileStart()V

    .line 15
    const/16 v2, 0xc8

    .line 17
    invoke-static {p1, v0, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncData(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;I)Lcom/micloud/midrive/infos/SyncPageInfo;

    .line 20
    move-result-object v1

    .line 21
    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 23
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordRequestFileEnd()V

    .line 26
    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "SyncTask getSyncData"

    .line 32
    aput-object v3, v0, v2

    .line 34
    const/4 v2, 0x1

    .line 35
    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->fileInfos:Ljava/util/List;

    .line 37
    aput-object v3, v0, v2

    .line 39
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_29} :catch_2e
    .catch Lcom/micloud/midrive/server/exception/RemoteServiceException; {:try_start_9 .. :try_end_29} :catch_2c
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_9 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_32

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    goto :goto_2f

    .line 45
    :catch_2c
    move-exception v0

    .line 46
    goto :goto_2f

    .line 47
    :catch_2e
    move-exception v0

    .line 48
    :goto_2f
    invoke-static {v0}, Lcom/micloud/midrive/task/BaseTask;->breakTaskByException(Ljava/lang/Exception;)V

    .line 51
    :goto_32
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v2

    .line 59
    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->fileInfos:Ljava/util/List;

    .line 61
    invoke-interface {v0, v2, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 66
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBStart()V

    .line 69
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 72
    move-result-object v0

    .line 73
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->fileInfos:Ljava/util/List;

    .line 75
    invoke-interface {v0, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 78
    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 80
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBEnd()V

    .line 83
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v0

    .line 87
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->syncToken:Ljava/lang/String;

    .line 89
    invoke-static {v0, v2}, Lcom/micloud/midrive/helper/SyncConfigHelper;->setSyncToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->syncToken:Ljava/lang/String;

    .line 94
    iget-boolean v1, v1, Lcom/micloud/midrive/infos/SyncPageInfo;->hasMore:Z

    .line 96
    if-nez v1, :cond_8

    .line 98
    return-void
.end method

.method private startTransferTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mMainHandler:Landroid/os/Handler;

    .line 11
    new-instance v1, Landroidx/emoji2/text/g;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p0, p2, v0, v2}, Landroidx/emoji2/text/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 22
    invoke-virtual {p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->increaseTransferCount()V

    .line 25
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

    .line 1
    const-string v0, "sync_up_delete"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_5
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v4

    .line 10
    new-instance v5, Lcom/micloud/midrive/task/SyncTask$2;

    .line 12
    invoke-direct {v5, p0}, Lcom/micloud/midrive/task/SyncTask$2;-><init>(Lcom/micloud/midrive/task/SyncTask;)V

    .line 15
    invoke-static {v4, p1, v5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 21
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoStart()V

    .line 24
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v5

    .line 28
    invoke-static {v5}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 31
    move-result-object v5

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 35
    move-result-object p1

    .line 36
    new-instance v6, Lcom/android/fileexplorer/widget/helper/a;

    .line 38
    const/4 v7, 0x4

    .line 39
    invoke-direct {v6, v7}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    .line 42
    invoke-interface {p1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 49
    move-result-object v6

    .line 50
    invoke-interface {p1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/util/List;

    .line 56
    invoke-static {v5, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 59
    move-result-object p1

    .line 60
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 62
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoEnd()V

    .line 65
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 67
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBStart()V

    .line 70
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 73
    move-result-object v5

    .line 74
    invoke-interface {v5, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 77
    move-result p1

    .line 78
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 80
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBEnd()V

    .line 83
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 85
    invoke-virtual {v5, v4}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setExecFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_57} :catch_72
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_5 .. :try_end_57} :catch_70
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_5 .. :try_end_57} :catch_6e
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_5 .. :try_end_57} :catch_6c
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_5 .. :try_end_57} :catch_6a
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_57} :catch_68
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_57} :catch_58

    .line 88
    return p1

    .line 89
    :catch_58
    move-exception p1

    .line 90
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 93
    new-array v0, v2, [Ljava/lang/Object;

    .line 95
    const-string v2, "sync up delete operation failed."

    .line 97
    aput-object v2, v0, v3

    .line 99
    aput-object p1, v0, v1

    .line 101
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 104
    return v3

    .line 105
    :catch_68
    move-exception p1

    .line 106
    goto :goto_73

    .line 107
    :catch_6a
    move-exception p1

    .line 108
    goto :goto_73

    .line 109
    :catch_6c
    move-exception p1

    .line 110
    goto :goto_73

    .line 111
    :catch_6e
    move-exception p1

    .line 112
    goto :goto_73

    .line 113
    :catch_70
    move-exception p1

    .line 114
    goto :goto_73

    .line 115
    :catch_72
    move-exception p1

    .line 116
    :goto_73
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 119
    new-array v0, v2, [Ljava/lang/Object;

    .line 121
    const-string v2, "sync up delete failed."

    .line 123
    aput-object v2, v0, v3

    .line 125
    aput-object p1, v0, v1

    .line 127
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 130
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

    .line 1
    const-string v0, "sync_up_move"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v5

    .line 19
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_22

    .line 25
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Ljava/util/List;

    .line 31
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v5

    .line 39
    new-instance v6, Lcom/micloud/midrive/task/SyncTask$1;

    .line 41
    invoke-direct {v6, p0, p1}, Lcom/micloud/midrive/task/SyncTask$1;-><init>(Lcom/micloud/midrive/task/SyncTask;Ljava/util/Map;)V

    .line 44
    invoke-static {v5, v4, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    .line 47
    move-result-object p1

    .line 48
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 50
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoStart()V

    .line 53
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 64
    move-result-object v4

    .line 65
    new-instance v6, Lcom/android/fileexplorer/widget/helper/a;

    .line 67
    const/4 v7, 0x3

    .line 68
    invoke-direct {v6, v7}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    .line 71
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 74
    move-result-object v4

    .line 75
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/util/List;

    .line 85
    invoke-static {v5, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 88
    move-result-object v4

    .line 89
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 91
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordGetSyncFileInfoEnd()V

    .line 94
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 96
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBStart()V

    .line 99
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 102
    move-result-object v5

    .line 103
    invoke-interface {v5, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 106
    move-result v4

    .line 107
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 109
    invoke-virtual {v5}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordInsertDBEnd()V

    .line 112
    iget-object v5, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 114
    invoke-virtual {v5, p1}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setExecFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_74} :catch_8f
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_5 .. :try_end_74} :catch_8d
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_5 .. :try_end_74} :catch_8b
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_5 .. :try_end_74} :catch_89
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_5 .. :try_end_74} :catch_87
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_74} :catch_85
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_74} :catch_75

    .line 117
    return v4

    .line 118
    :catch_75
    move-exception p1

    .line 119
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    new-array v0, v2, [Ljava/lang/Object;

    .line 124
    const-string v2, "sync up move operation failed."

    .line 126
    aput-object v2, v0, v3

    .line 128
    aput-object p1, v0, v1

    .line 130
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 133
    return v3

    .line 134
    :catch_85
    move-exception p1

    .line 135
    goto :goto_90

    .line 136
    :catch_87
    move-exception p1

    .line 137
    goto :goto_90

    .line 138
    :catch_89
    move-exception p1

    .line 139
    goto :goto_90

    .line 140
    :catch_8b
    move-exception p1

    .line 141
    goto :goto_90

    .line 142
    :catch_8d
    move-exception p1

    .line 143
    goto :goto_90

    .line 144
    :catch_8f
    move-exception p1

    .line 145
    :goto_90
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 148
    new-array v0, v2, [Ljava/lang/Object;

    .line 150
    const-string v2, "sync up move failed."

    .line 152
    aput-object v2, v0, v3

    .line 154
    aput-object p1, v0, v1

    .line 156
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 159
    return v3
.end method

.method private syncUpFileRename(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Ljava/lang/String;)Z
    .registers 9

    .line 1
    const-string v0, "sync_up_rename"

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_5
    iget-object v4, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 8
    invoke-static {p1, v4, p3}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_2a
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_5 .. :try_end_a} :catch_28
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_5 .. :try_end_a} :catch_26
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_5 .. :try_end_a} :catch_24
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_5 .. :try_end_a} :catch_22
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_a} :catch_20
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_a} :catch_b

    .line 11
    return v2

    .line 12
    :catch_b
    move-exception p1

    .line 13
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 16
    new-array p3, v1, [Ljava/lang/Object;

    .line 18
    const-string v0, "sync up rename operation failed."

    .line 20
    aput-object v0, p3, v3

    .line 22
    aput-object p1, p3, v2

    .line 24
    invoke-static {p3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 27
    iget-object p3, p0, Lcom/micloud/midrive/task/SyncTask;->mOperationFailedMap:Ljava/util/Map;

    .line 29
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return v3

    .line 33
    :catch_20
    move-exception p1

    .line 34
    goto :goto_2b

    .line 35
    :catch_22
    move-exception p1

    .line 36
    goto :goto_2b

    .line 37
    :catch_24
    move-exception p1

    .line 38
    goto :goto_2b

    .line 39
    :catch_26
    move-exception p1

    .line 40
    goto :goto_2b

    .line 41
    :catch_28
    move-exception p1

    .line 42
    goto :goto_2b

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    :goto_2b
    invoke-static {v0, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    new-array p2, v1, [Ljava/lang/Object;

    .line 49
    const-string p3, "sync up rename failed."

    .line 51
    aput-object p3, p2, v3

    .line 53
    aput-object p1, p2, v2

    .line 55
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 58
    return v3
.end method

.method private updateSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {p1, v1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_40

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_20} :catch_2d
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_1 .. :try_end_20} :catch_2b
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_1 .. :try_end_20} :catch_29
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_1 .. :try_end_20} :catch_27
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_1 .. :try_end_20} :catch_25
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_1 .. :try_end_20} :catch_23
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_1 .. :try_end_20} :catch_21

    .line 33
    return-object p1

    .line 34
    :catch_21
    move-exception p1

    .line 35
    goto :goto_2e

    .line 36
    :catch_23
    move-exception p1

    .line 37
    goto :goto_2e

    .line 38
    :catch_25
    move-exception p1

    .line 39
    goto :goto_2e

    .line 40
    :catch_27
    move-exception p1

    .line 41
    goto :goto_2e

    .line 42
    :catch_29
    move-exception p1

    .line 43
    goto :goto_2e

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    goto :goto_2e

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    :goto_2e
    const-string p2, "update_sync_file_info"

    .line 49
    invoke-static {p2, p1}, Lcom/micloud/midrive/stat/SyncTaskExceptionStat;->recordExceptionEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 52
    const/4 p2, 0x2

    .line 53
    new-array p2, p2, [Ljava/lang/Object;

    .line 55
    const-string v1, "update sync file info failed"

    .line 57
    aput-object v1, p2, v0

    .line 59
    const/4 v0, 0x1

    .line 60
    aput-object p1, p2, v0

    .line 62
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 65
    :cond_40
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method private updateSyncStatus()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 3
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordUpdateSyncStatusStart()V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->tryUpdateSyncedStatus()Z

    .line 13
    iget-object v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 15
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->recordUpdateSyncStatusEnd()V

    .line 18
    return-void
.end method


# virtual methods
.method public isSyncAfter()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/task/SyncTask;->mSyncAfter:Z

    .line 3
    return v0
.end method

.method public onFinish(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/micloud/midrive/task/SyncTask;->mSessionResultStat:Lcom/micloud/midrive/stat/SyncSessionResultStat;

    .line 3
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/micloud/midrive/task/BaseTask$RunTaskStep;->stepName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Lcom/micloud/midrive/stat/SyncSessionResultStat;->setFinishStep(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public runOnNetworkAtStep(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Lcom/micloud/midrive/task/BaseTask$RunTaskStep;
    .registers 4

    .line 1
    if-nez p2, :cond_7

    .line 3
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$000()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$000()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 11
    move-result-object v0

    .line 12
    if-ne v0, p2, :cond_15

    .line 14
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/SyncTask;->requestSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;)V

    .line 17
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$100()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$100()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 25
    move-result-object v0

    .line 26
    if-ne v0, p2, :cond_2c

    .line 28
    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->updateSyncStatus()V

    .line 31
    iget-boolean p1, p0, Lcom/micloud/midrive/task/SyncTask;->mCheckLocalFile:Z

    .line 33
    if-eqz p1, :cond_27

    .line 35
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$200()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$300()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 43
    move-result-object p1

    .line 44
    :goto_2b
    return-object p1

    .line 45
    :cond_2c
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$200()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 48
    move-result-object v0

    .line 49
    if-ne v0, p2, :cond_3a

    .line 51
    invoke-direct {p0}, Lcom/micloud/midrive/task/SyncTask;->checkLocalFile()V

    .line 54
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$300()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_3a
    invoke-static {}, Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;->access$300()Lcom/micloud/midrive/task/SyncTask$SyncTaskStep;

    .line 62
    move-result-object v0

    .line 63
    if-ne v0, p2, :cond_45

    .line 65
    invoke-direct {p0, p1}, Lcom/micloud/midrive/task/SyncTask;->handleSyncFile(Lcom/micloud/midrive/server/transport/Network;)V

    .line 68
    const/4 p1, 0x0

    .line 69
    return-object p1

    .line 70
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    const-string p2, "should not reach here"

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
.end method
