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
.field private static final MAX_OPERATION_COUNT:I = 0x3e8

.field private static mainHandler:Landroid/os/Handler;


# direct methods
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

    .line 1
    invoke-static {p0, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildMoveOrCopyOperationRecordsString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Ljava/util/List;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildDeleteOperationRecordsString(Ljava/util/List;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
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
    if-ge v1, v2, :cond_34

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
    const-string v2, "parentId"

    .line 44
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_6

    .line 53
    :cond_34
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    .line 57
    return-object p0

    .line 58
    :catch_39
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method private static buildMoveUploadInfo(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/micloud/midrive/infos/FileUploadInfo;
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    sget-object v3, Lcom/micloud/midrive/utils/DiskFileOperator;->MOVE_PATH:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 32
    invoke-static {v2, v1, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, v4}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    new-instance v0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 53
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 64
    move-result-wide v6

    .line 65
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 68
    move-result-wide v8

    .line 69
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 72
    move-result-object v10

    .line 73
    iget-wide v11, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 75
    move-object v2, v0

    .line 76
    invoke-direct/range {v2 .. v12}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    .line 79
    const/4 p0, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method private static buildUploadLocalFileInfoAndCopyDiskFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/micloud/midrive/infos/SyncLocalFileInfo;
    .registers 15

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_63

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    goto :goto_63

    .line 19
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    sget-object v3, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    if-eqz p2, :cond_41

    .line 62
    invoke-static {p0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    invoke-static {p0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    :goto_44
    new-instance p0, Ljava/io/File;

    .line 71
    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    new-instance p2, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 83
    move-result-wide v5

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 87
    move-result-wide v7

    .line 88
    invoke-static {p0}, La/b;->c(Ljava/io/File;)Ljava/lang/String;

    .line 91
    move-result-object v9

    .line 92
    const-wide/16 v10, 0x0

    .line 94
    move-object v1, p2

    .line 95
    move-object v2, p1

    .line 96
    invoke-direct/range {v1 .. v11}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    .line 99
    return-object p2

    .line 100
    :cond_63
    :goto_63
    const/4 p1, 0x1

    .line 101
    new-array p1, p1, [Ljava/lang/Object;

    .line 103
    const/4 p2, 0x0

    .line 104
    const-string v0, "originFile not exists, originFilePath: "

    .line 106
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    aput-object p0, p1, p2

    .line 112
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 115
    const/4 p0, 0x0

    .line 116
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

    .line 1
    if-eqz p0, :cond_33

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_33

    .line 10
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_33

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/io/File;

    .line 28
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2b

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    goto :goto_d

    .line 44
    :cond_2b
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 46
    const-string v0, "native file doesn\'t exists or is directory"

    .line 48
    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
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

    .line 1
    const-string v0, "fileContentModify method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const-string v2, "fileContentModify start, fileIds: "

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 33
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 36
    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 38
    const-string v2, "fileContentModify"

    .line 40
    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p1

    .line 57
    move v2, v3

    .line 58
    move v4, v2

    .line 59
    move v5, v4

    .line 60
    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_f9

    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 75
    move-result-object v7

    .line 76
    invoke-interface {v7, v6}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 79
    move-result-object v6

    .line 80
    new-array v7, v0, [Ljava/lang/Object;

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v9, "fileContentModify query file: "

    .line 89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v8

    .line 99
    aput-object v8, v7, v3

    .line 101
    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 104
    if-eqz v6, :cond_f5

    .line 106
    iget-object v7, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 108
    if-nez v7, :cond_6f

    .line 110
    goto/16 :goto_f5

    .line 112
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    .line 114
    new-instance v7, Ljava/io/File;

    .line 116
    iget-object v8, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 118
    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 122
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {v7}, La/b;->c(Ljava/io/File;)Ljava/lang/String;

    .line 128
    move-result-object v8

    .line 129
    new-array v9, v0, [Ljava/lang/Object;

    .line 131
    const-string v10, "fileContentModify new sha1: "

    .line 133
    invoke-static {v10, v8}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v10

    .line 137
    aput-object v10, v9, v3

    .line 139
    invoke-static {v9}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 142
    iget-object v9, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 144
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 147
    move-result-object v9

    .line 148
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 151
    move-result v9

    .line 152
    if-eqz v9, :cond_a3

    .line 154
    new-array v6, v0, [Ljava/lang/Object;

    .line 156
    const-string v7, "fileContentModify sha1 equals."

    .line 158
    aput-object v7, v6, v3

    .line 160
    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 163
    goto :goto_3b

    .line 164
    :cond_a3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 167
    move-result-wide v9

    .line 168
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 171
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 174
    move-result-object v7

    .line 175
    iget-object v11, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 177
    invoke-interface {v7, v11, v8, v9, v10}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 184
    new-array v8, v0, [Ljava/lang/Object;

    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    const-string v10, "fileContentModify txFileContentChanged DBOperationResponse: "

    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v9

    .line 203
    aput-object v9, v8, v3

    .line 205
    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 208
    iget-boolean v8, v7, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 210
    if-eqz v8, :cond_3b

    .line 212
    add-int/lit8 v5, v5, 0x1

    .line 214
    invoke-virtual {v7}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 217
    move-result-object v8

    .line 218
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    move-result v8

    .line 222
    if-nez v8, :cond_3b

    .line 224
    new-array v8, v0, [Ljava/lang/Object;

    .line 226
    const-string v9, "fileContentModify remove TransferTask and notify"

    .line 228
    aput-object v9, v8, v3

    .line 230
    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v7}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 240
    move-result-object v6

    .line 241
    invoke-static {p0, v7, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 244
    goto/16 :goto_3b

    .line 246
    :cond_f5
    :goto_f5
    add-int/lit8 v2, v2, 0x1

    .line 248
    goto/16 :goto_3b

    .line 250
    :cond_f9
    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    .line 253
    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V

    .line 256
    if-lez v5, :cond_12b

    .line 258
    new-array p1, v0, [Ljava/lang/Object;

    .line 260
    const-string v2, "fileContentModify notify sync session"

    .line 262
    aput-object v2, p1, v3

    .line 264
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 270
    move-result-object p1

    .line 271
    new-instance v2, Landroidx/appcompat/app/j;

    .line 273
    const/4 v4, 0x2

    .line 274
    invoke-direct {v2, p0, v4}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    .line 277
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    new-array p0, v0, [Ljava/lang/Object;

    .line 282
    const-string p1, "fileContentModify return successful response"

    .line 284
    aput-object p1, p0, v3

    .line 286
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 292
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 295
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 298
    move-result-object p0

    .line 299
    return-object p0

    .line 300
    :cond_12b
    new-array p0, v0, [Ljava/lang/Object;

    .line 302
    const-string p1, "fileContentModify return failed response"

    .line 304
    aput-object p1, p0, v3

    .line 306
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 309
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 311
    const/4 p1, 0x0

    .line 312
    invoke-virtual {v1, p0, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 315
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 318
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 321
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 323
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 326
    move-result-object p0

    .line 327
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

    .line 1
    const-string v0, "fileCopy method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move v6, p4

    .line 12
    invoke-static/range {v1 .. v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 15
    move-result-object p0

    .line 16
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

    .line 1
    const-string v0, "fileDelete method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const-string v2, "fileDelete start, fileIds: "

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 33
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 36
    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 38
    const-string v2, "fileDelete"

    .line 40
    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :try_start_3e
    invoke-static {p1, v2, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->filterFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result p1

    .line 70
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result p1

    .line 77
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4f} :catch_24e

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    move-result p1

    .line 84
    const-string v5, "fileDelete remove TransferTask and notify"

    .line 86
    const/4 v6, 0x2

    .line 87
    const/4 v7, 0x0

    .line 88
    if-nez p1, :cond_19a

    .line 90
    :try_start_59
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p1

    .line 94
    :cond_5d
    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_ed

    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 106
    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 109
    move-result-object v9

    .line 110
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v9

    .line 114
    if-nez v9, :cond_94

    .line 116
    new-array v9, v0, [Ljava/lang/Object;

    .line 118
    aput-object v5, v9, v3

    .line 120
    invoke-static {v9}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 130
    move-result-object v10

    .line 131
    invoke-static {p0, v9, v10}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 134
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 137
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 140
    move-result-object v9

    .line 141
    iget-object v10, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 143
    invoke-interface {v9, v10}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    .line 146
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 149
    :cond_94
    const-string v9, "folder"

    .line 151
    iget-object v10, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 153
    iget-object v10, v10, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 155
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_5d

    .line 161
    iget-object v8, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 163
    iget-object v8, v8, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 165
    invoke-static {v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getAllSingleFilesUnderFolder(Ljava/lang/String;)Ljava/util/List;

    .line 168
    move-result-object v8

    .line 169
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object v8

    .line 173
    :cond_ac
    :goto_ac
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result v9

    .line 177
    if-eqz v9, :cond_e8

    .line 179
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v9

    .line 183
    check-cast v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 185
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 188
    move-result-object v10

    .line 189
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    move-result v10

    .line 193
    if-nez v10, :cond_dc

    .line 195
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 198
    move-result-object v10

    .line 199
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 202
    move-result-object v11

    .line 203
    invoke-static {p0, v10, v11}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 206
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 209
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 212
    move-result-object v10

    .line 213
    iget-object v11, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 215
    invoke-interface {v10, v11}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearLocalFileInfo(Ljava/lang/String;)Z

    .line 218
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 221
    :cond_dc
    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 223
    if-eqz v9, :cond_ac

    .line 225
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 228
    move-result-object v9

    .line 229
    invoke-static {v9}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 232
    goto :goto_ac

    .line 233
    :cond_e8
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    .line 236
    goto/16 :goto_5d

    .line 238
    :cond_ed
    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 241
    move-result-object p1

    .line 242
    new-instance v8, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$4;

    .line 244
    invoke-direct {v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$4;-><init>()V

    .line 247
    invoke-static {p0, v2, v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    .line 250
    move-result-object v8

    .line 251
    invoke-virtual {v1, v8}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V

    .line 254
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoStart()V

    .line 257
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 260
    move-result-object v2

    .line 261
    new-instance v8, Lcom/android/fileexplorer/widget/helper/a;

    .line 263
    invoke-direct {v8, v6}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    .line 266
    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 269
    move-result-object v2

    .line 270
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 273
    move-result-object v8

    .line 274
    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Ljava/util/List;

    .line 280
    invoke-static {p1, v2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoEnd()V

    .line 287
    new-array v2, v0, [Ljava/lang/Object;

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    const-string v9, "fileDelete getSyncFileInfo: "

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object v8

    .line 306
    aput-object v8, v2, v3

    .line 308
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    .line 314
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 317
    move-result-object v2

    .line 318
    invoke-interface {v2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 321
    move-result p1

    .line 322
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    .line 325
    new-array v2, v0, [Ljava/lang/Object;

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    .line 329
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    const-string v9, "fileDelete insertOrUpdateCloudFiles result: "

    .line 334
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v8

    .line 344
    aput-object v8, v2, v3

    .line 346
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 352
    move-result-object v2
    :try_end_160
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_59 .. :try_end_160} :catch_187
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_160} :catch_16b
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_59 .. :try_end_160} :catch_169
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_59 .. :try_end_160} :catch_167
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_59 .. :try_end_160} :catch_165
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_59 .. :try_end_160} :catch_163
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_59 .. :try_end_160} :catch_161

    .line 353
    goto :goto_19c

    .line 354
    :catch_161
    move-exception p0

    .line 355
    goto :goto_16c

    .line 356
    :catch_163
    move-exception p0

    .line 357
    goto :goto_16c

    .line 358
    :catch_165
    move-exception p0

    .line 359
    goto :goto_16c

    .line 360
    :catch_167
    move-exception p0

    .line 361
    goto :goto_16c

    .line 362
    :catch_169
    move-exception p0

    .line 363
    goto :goto_16c

    .line 364
    :catch_16b
    move-exception p0

    .line 365
    :goto_16c
    new-array p1, v6, [Ljava/lang/Object;

    .line 367
    const-string v2, "fileDelete protocol exception"

    .line 369
    aput-object v2, p1, v3

    .line 371
    aput-object p0, p1, v0

    .line 373
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 376
    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 378
    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 381
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 384
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 387
    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 390
    move-result-object p0

    .line 391
    return-object p0

    .line 392
    :catch_187
    move-exception p0

    .line 393
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleFileDeleteOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v1, v0, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 404
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 407
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 410
    return-object p1

    .line 411
    :cond_19a
    move p1, v3

    .line 412
    move-object v2, v7

    .line 413
    :goto_19c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 416
    move-result v8

    .line 417
    if-nez v8, :cond_203

    .line 419
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 422
    move-result-object v2

    .line 423
    move v4, v3

    .line 424
    :goto_1a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    move-result v8

    .line 428
    if-eqz v8, :cond_1f0

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    move-result-object v8

    .line 434
    check-cast v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 436
    new-instance v9, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;

    .line 438
    invoke-direct {v9, v8, v1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$5;-><init>(Lcom/micloud/midrive/infos/SyncTotalFileInfo;Lcom/micloud/midrive/stat/FileOperationResultStat;)V

    .line 441
    :try_start_1b8
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    .line 444
    move-result-object v10

    .line 445
    iget-object v11, v8, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 447
    invoke-virtual {v10, v11, v9}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1c1
    .catch Ljava/lang/InterruptedException; {:try_start_1b8 .. :try_end_1c1} :catch_1c4
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_1b8 .. :try_end_1c1} :catch_1c2

    .line 450
    goto :goto_1d0

    .line 451
    :catch_1c2
    move-exception v10

    .line 452
    goto :goto_1c5

    .line 453
    :catch_1c4
    move-exception v10

    .line 454
    :goto_1c5
    new-array v11, v6, [Ljava/lang/Object;

    .line 456
    const-string v12, "local write failed"

    .line 458
    aput-object v12, v11, v3

    .line 460
    aput-object v10, v11, v0

    .line 462
    invoke-static {v11}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 465
    :goto_1d0
    iget-boolean v10, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 467
    if-eqz v10, :cond_1ec

    .line 469
    iget-object v10, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 471
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 474
    move-result v10

    .line 475
    if-nez v10, :cond_1ec

    .line 477
    new-array v10, v0, [Ljava/lang/Object;

    .line 479
    aput-object v5, v10, v3

    .line 481
    invoke-static {v10}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 484
    iget-object v10, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 486
    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 489
    move-result-object v8

    .line 490
    invoke-static {p0, v10, v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 493
    :cond_1ec
    iget-boolean v8, v9, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 495
    add-int/2addr v4, v8

    .line 496
    goto :goto_1a7

    .line 497
    :cond_1f0
    if-lez v4, :cond_1f8

    .line 499
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 502
    move-result-object v2

    .line 503
    move p1, v0

    .line 504
    goto :goto_203

    .line 505
    :cond_1f8
    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 507
    invoke-virtual {v1, v2, v7}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 510
    sget-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 512
    invoke-static {v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 515
    move-result-object v2

    .line 516
    :cond_203
    :goto_203
    if-eqz p1, :cond_212

    .line 518
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 521
    move-result-object p1

    .line 522
    new-instance v4, Landroidx/appcompat/app/j;

    .line 524
    const/4 v5, 0x6

    .line 525
    invoke-direct {v4, p0, v5}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    .line 528
    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    :cond_212
    if-nez v2, :cond_22f

    .line 533
    new-array p0, v0, [Ljava/lang/Object;

    .line 535
    const-string p1, "fileDelete return failed."

    .line 537
    aput-object p1, p0, v3

    .line 539
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 542
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_RESPONSE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 544
    invoke-virtual {v1, p0, v7}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 547
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 550
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 553
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 555
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 558
    move-result-object p0

    .line 559
    return-object p0

    .line 560
    :cond_22f
    new-array p0, v0, [Ljava/lang/Object;

    .line 562
    const-string p1, "fileDelete return "

    .line 564
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    move-result-object p1

    .line 568
    invoke-virtual {v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    .line 571
    move-result v0

    .line 572
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    move-result-object p1

    .line 579
    aput-object p1, p0, v3

    .line 581
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 584
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 587
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 590
    return-object v2

    .line 591
    :catch_24e
    move-exception p0

    .line 592
    new-array p1, v0, [Ljava/lang/Object;

    .line 594
    const-string v0, "fileDelete file not found"

    .line 596
    aput-object v0, p1, v3

    .line 598
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 601
    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 603
    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 606
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 609
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 612
    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 615
    move-result-object p0

    .line 616
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

    .line 1
    const-string v0, "fileDeleteLocal method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const-string v2, "fileDeleteLocal start, fileIds: "

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 33
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 36
    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 38
    const-string v2, "fileDeleteLocal"

    .line 40
    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p1

    .line 62
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    if-eqz v4, :cond_92

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v6, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 82
    move-result-object v4

    .line 83
    new-array v6, v0, [Ljava/lang/Object;

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v8, "fileDeleteLocal query file: "

    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v7

    .line 102
    aput-object v7, v6, v3

    .line 104
    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 107
    if-eqz v4, :cond_79

    .line 109
    iget-object v6, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 111
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_75

    .line 117
    goto :goto_79

    .line 118
    :cond_75
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_3d

    .line 122
    :cond_79
    :goto_79
    new-array p0, v0, [Ljava/lang/Object;

    .line 124
    const-string p1, "fileDeleteLocal return failed response cause totalFileInfo is null or localFileId is null"

    .line 126
    aput-object p1, p0, v3

    .line 128
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 131
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 133
    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 136
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 139
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 142
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 150
    move-result p1

    .line 151
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    move-result-object p1

    .line 158
    move v2, v3

    .line 159
    :goto_9e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_117

    .line 165
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 171
    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 174
    move-result-object v6

    .line 175
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    move-result v6

    .line 179
    const/4 v7, 0x2

    .line 180
    if-nez v6, :cond_ca

    .line 182
    new-array v6, v0, [Ljava/lang/Object;

    .line 184
    const-string v8, "fileDeleteLocal remove TransferTask and notify"

    .line 186
    aput-object v8, v6, v3

    .line 188
    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 198
    move-result-object v8

    .line 199
    invoke-static {p0, v6, v8}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 202
    goto :goto_f6

    .line 203
    :cond_ca
    iget-object v6, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 205
    iget-object v8, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 207
    invoke-virtual {v8}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 210
    move-result-object v8

    .line 211
    iget-object v9, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 213
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 216
    move-result-object v9

    .line 217
    invoke-static {v6, v8, v9}, Lcom/micloud/midrive/infos/FileDownloadInfo;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v6

    .line 221
    new-array v8, v7, [Ljava/lang/Object;

    .line 223
    const-string v9, "fileDeleteLocal change transfer success to remove if exists, transferId:"

    .line 225
    aput-object v9, v8, v3

    .line 227
    aput-object v6, v8, v0

    .line 229
    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 235
    sget-object v8, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 237
    invoke-static {v8}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 240
    move-result-object v8

    .line 241
    invoke-interface {v8, v6}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeToRemove(Ljava/lang/String;)Z

    .line 244
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 247
    :goto_f6
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;

    .line 249
    invoke-direct {v6, v1, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$6;-><init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;)V

    .line 252
    :try_start_fb
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    .line 255
    move-result-object v8

    .line 256
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 258
    invoke-virtual {v8, v4, v6}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_104
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_104} :catch_107
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_fb .. :try_end_104} :catch_105

    .line 261
    goto :goto_113

    .line 262
    :catch_105
    move-exception v4

    .line 263
    goto :goto_108

    .line 264
    :catch_107
    move-exception v4

    .line 265
    :goto_108
    new-array v7, v7, [Ljava/lang/Object;

    .line 267
    const-string v8, "local write failed"

    .line 269
    aput-object v8, v7, v3

    .line 271
    aput-object v4, v7, v0

    .line 273
    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 276
    :goto_113
    iget-boolean v4, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 278
    add-int/2addr v2, v4

    .line 279
    goto :goto_9e

    .line 280
    :cond_117
    if-lez v2, :cond_12d

    .line 282
    new-array p0, v0, [Ljava/lang/Object;

    .line 284
    const-string p1, "fileDeleteLocal return successful response"

    .line 286
    aput-object p1, p0, v3

    .line 288
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 294
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 297
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 300
    move-result-object p0

    .line 301
    return-object p0

    .line 302
    :cond_12d
    new-array p0, v0, [Ljava/lang/Object;

    .line 304
    const-string p1, "fileDeleteLocal return failed response"

    .line 306
    aput-object p1, p0, v3

    .line 308
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 311
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 313
    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 316
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 319
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 322
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 324
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 327
    move-result-object p0

    .line 328
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

    .line 1
    const-string v0, "fileDownload method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const-string v2, "fileDownload start, fileIds: "

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 33
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 36
    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 38
    const-string v2, "fileDownload"

    .line 40
    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const/4 v4, 0x0

    .line 59
    :try_start_3a
    invoke-static {p1, v2, v4}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->filterFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v5

    .line 66
    invoke-virtual {v1, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_44} :catch_16f

    .line 69
    const-wide/16 v5, 0x0

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v2

    .line 75
    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_5e

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 87
    iget-object v7, v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 89
    if-eqz v7, :cond_4a

    .line 91
    iget-wide v7, v7, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 93
    add-long/2addr v5, v7

    .line 94
    goto :goto_4a

    .line 95
    :cond_5e
    invoke-static {v5, v6}, Lcom/micloud/midrive/utils/DiskFileOperator;->isDiskFullAfterDownload(J)Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_7d

    .line 101
    new-array p0, v0, [Ljava/lang/Object;

    .line 103
    const-string p1, "fileDownload disk not enough!"

    .line 105
    aput-object p1, p0, v3

    .line 107
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 110
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 112
    invoke-virtual {v1, p0, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 115
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 118
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 121
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_7d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object p1

    .line 130
    move v2, v3

    .line 131
    :cond_82
    :goto_82
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_13e

    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 146
    move-result-object v6

    .line 147
    invoke-interface {v6, v5}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 150
    move-result-object v6

    .line 151
    const/4 v7, 0x2

    .line 152
    new-array v8, v7, [Ljava/lang/Object;

    .line 154
    const-string v9, "fileDownload query fileInfo, fileId: "

    .line 156
    invoke-static {v9, v5}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v5

    .line 160
    aput-object v5, v8, v3

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v9, "file:"

    .line 169
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v5

    .line 179
    aput-object v5, v8, v0

    .line 181
    invoke-static {v8}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 184
    if-eqz v6, :cond_10e

    .line 186
    iget-object v5, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 188
    if-eqz v5, :cond_10e

    .line 190
    iget-object v5, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 192
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    move-result v5

    .line 196
    if-nez v5, :cond_c6

    .line 198
    goto :goto_10e

    .line 199
    :cond_c6
    iget-object v5, v6, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 201
    invoke-static {v5, v3}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileDownloadInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Z)Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 204
    move-result-object v6

    .line 205
    new-instance v7, Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 207
    iget-object v8, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 209
    iget-object v9, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 211
    iget-object v10, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 213
    invoke-direct {v7, v8, v9, v10}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 223
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 226
    move-result-object v9

    .line 227
    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 229
    invoke-interface {v9, v5, v7, v8}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    .line 232
    move-result v5

    .line 233
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 236
    new-array v7, v0, [Ljava/lang/Object;

    .line 238
    new-instance v8, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string v9, "fileDownload call firstDownload, result: "

    .line 245
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v8

    .line 255
    aput-object v8, v7, v3

    .line 257
    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 260
    if-eqz v5, :cond_82

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 264
    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 266
    invoke-static {p0, v6, v5, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->startTransferTask(Landroid/content/Context;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Z)V

    .line 269
    goto/16 :goto_82

    .line 271
    :cond_10e
    :goto_10e
    if-eqz v6, :cond_82

    .line 273
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 276
    move-result-object v5

    .line 277
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    move-result v5

    .line 281
    if-nez v5, :cond_82

    .line 283
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 286
    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 288
    invoke-static {v5}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 295
    move-result-object v6

    .line 296
    invoke-interface {v5, v6, p2}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeFreeNetworkOnly(Ljava/lang/String;Z)Z

    .line 299
    move-result v5

    .line 300
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 303
    if-eqz v5, :cond_82

    .line 305
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 308
    move-result-object v5

    .line 309
    new-instance v6, Lcom/android/cloud/activity/a;

    .line 311
    invoke-direct {v6, v7}, Lcom/android/cloud/activity/a;-><init>(I)V

    .line 314
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    goto/16 :goto_82

    .line 319
    :cond_13e
    if-lez v2, :cond_154

    .line 321
    new-array p0, v0, [Ljava/lang/Object;

    .line 323
    const-string p1, "fileDownload return successful response"

    .line 325
    aput-object p1, p0, v3

    .line 327
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 330
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 333
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 336
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 339
    move-result-object p0

    .line 340
    return-object p0

    .line 341
    :cond_154
    new-array p0, v0, [Ljava/lang/Object;

    .line 343
    const-string p1, "fileDownload return failed response"

    .line 345
    aput-object p1, p0, v3

    .line 347
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 350
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_DOWNLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 352
    invoke-virtual {v1, p0, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 355
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 358
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 361
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 363
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 366
    move-result-object p0

    .line 367
    return-object p0

    .line 368
    :catch_16f
    move-exception p0

    .line 369
    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 371
    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 374
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 377
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 380
    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 383
    move-result-object p0

    .line 384
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

    .line 1
    const-string v0, "fileMove method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    const/4 v5, 0x1

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move v6, p4

    .line 12
    invoke-static/range {v1 .. v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 15
    move-result-object p0

    .line 16
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

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v11, p3

    .line 5
    move/from16 v12, p4

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    if-eqz v12, :cond_15

    .line 19
    const-string v3, "fileMove"

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const-string v3, "fileCopy"

    .line 24
    :goto_17
    new-instance v13, Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 26
    invoke-direct {v13, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    .line 32
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 35
    move-result v3

    .line 36
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 39
    move-result v4

    .line 40
    add-int/2addr v4, v3

    .line 41
    invoke-virtual {v13, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    .line 44
    :try_start_2b
    invoke-static/range {p2 .. p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->checkNativeFileExists(Ljava/util/List;)V

    .line 47
    move-object/from16 v3, p1

    .line 49
    invoke-static {v3, v0, v2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->filterFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v3

    .line 56
    invoke-virtual {v13, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result v3

    .line 63
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 66
    move-result v4

    .line 67
    add-int/2addr v3, v4

    .line 68
    invoke-virtual {v13, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_46} :catch_305

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x2

    .line 76
    const/4 v5, 0x1

    .line 77
    const/4 v14, 0x0

    .line 78
    if-nez v3, :cond_100

    .line 80
    :try_start_4f
    invoke-static/range {p0 .. p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 83
    move-result-object v3

    .line 84
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;

    .line 86
    invoke-direct {v6, v11, v12}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;-><init>(Ljava/lang/String;Z)V

    .line 89
    invoke-static {v1, v0, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileOperation(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;)Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoStart()V

    .line 96
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 99
    move-result-object v0

    .line 100
    new-instance v7, Lcom/android/fileexplorer/widget/helper/a;

    .line 102
    invoke-direct {v7, v5}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    .line 105
    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 108
    move-result-object v0

    .line 109
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 112
    move-result-object v7

    .line 113
    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/util/List;

    .line 119
    invoke-static {v3, v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoEnd()V

    .line 126
    new-array v3, v5, [Ljava/lang/Object;

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    const-string v8, "fileMoveOrCopy getSyncFileInfo: "

    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v7

    .line 145
    aput-object v7, v3, v14

    .line 147
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 153
    move-result-object v3

    .line 154
    invoke-interface {v3, v1, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V

    .line 157
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    .line 160
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v3, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 167
    move-result v0

    .line 168
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    .line 171
    new-array v3, v5, [Ljava/lang/Object;

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v8, "fileMoveOrCopy insertOrUpdateCloudFiles result: "

    .line 180
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v7

    .line 190
    aput-object v7, v3, v14

    .line 192
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v13, v6}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setFileOperationTimeInfo(Lcom/micloud/midrive/infos/FileOperationTimeInfo;)V
    :try_end_c5
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_4f .. :try_end_c5} :catch_ed
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_c5} :catch_d1
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_4f .. :try_end_c5} :catch_cf
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_4f .. :try_end_c5} :catch_cd
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_4f .. :try_end_c5} :catch_cb
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_4f .. :try_end_c5} :catch_c9
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_4f .. :try_end_c5} :catch_c7

    .line 198
    move v15, v0

    .line 199
    goto :goto_101

    .line 200
    :catch_c7
    move-exception v0

    .line 201
    goto :goto_d2

    .line 202
    :catch_c9
    move-exception v0

    .line 203
    goto :goto_d2

    .line 204
    :catch_cb
    move-exception v0

    .line 205
    goto :goto_d2

    .line 206
    :catch_cd
    move-exception v0

    .line 207
    goto :goto_d2

    .line 208
    :catch_cf
    move-exception v0

    .line 209
    goto :goto_d2

    .line 210
    :catch_d1
    move-exception v0

    .line 211
    :goto_d2
    new-array v1, v4, [Ljava/lang/Object;

    .line 213
    const-string v2, "fileMoveOrCopy protocol exception"

    .line 215
    aput-object v2, v1, v14

    .line 217
    aput-object v0, v1, v5

    .line 219
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 222
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 224
    invoke-virtual {v13, v1, v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 227
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 230
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 233
    invoke-static {v1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 236
    move-result-object v0

    .line 237
    return-object v0

    .line 238
    :catch_ed
    move-exception v0

    .line 239
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleFileMoveOrCopyOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v13, v2, v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 250
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 253
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 256
    return-object v1

    .line 257
    :cond_100
    move v15, v14

    .line 258
    :goto_101
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 261
    move-result v0

    .line 262
    const/4 v3, 0x0

    .line 263
    if-nez v0, :cond_201

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    move-result-wide v16

    .line 269
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 272
    move-result-object v18

    .line 273
    move/from16 v19, v14

    .line 275
    :goto_112
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_1e2

    .line 281
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    move-result-object v0

    .line 285
    move-object v9, v0

    .line 286
    check-cast v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 288
    iget-object v0, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 290
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_13b

    .line 300
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 302
    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 305
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 308
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 311
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 314
    move-result-object v0

    .line 315
    return-object v0

    .line 316
    :cond_13b
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 319
    move-result-object v0

    .line 320
    invoke-interface {v0, v11}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    move-result-object v0

    .line 324
    new-array v2, v5, [Ljava/lang/Object;

    .line 326
    const-string v3, "fileMoveOrCopy folderPath: "

    .line 328
    invoke-static {v3, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object v3

    .line 332
    aput-object v3, v2, v14

    .line 334
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    sget-object v3, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v0, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 357
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object v0

    .line 368
    invoke-static {v0, v11}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    move-result-object v6

    .line 372
    new-instance v0, Ljava/io/File;

    .line 374
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 380
    move-result-object v8

    .line 381
    new-array v0, v5, [Ljava/lang/Object;

    .line 383
    const-string v2, "fileMoveOrCopy newPath: "

    .line 385
    invoke-static {v2, v6}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    move-result-object v2

    .line 389
    aput-object v2, v0, v14

    .line 391
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 394
    new-instance v10, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;

    .line 396
    move-object v2, v10

    .line 397
    move/from16 v3, p4

    .line 399
    move-object v4, v13

    .line 400
    move-object v5, v9

    .line 401
    move-object/from16 v7, p3

    .line 403
    move-object v14, v9

    .line 404
    move/from16 v20, v15

    .line 406
    move-object v15, v10

    .line 407
    move-wide/from16 v9, v16

    .line 409
    invoke-direct/range {v2 .. v10}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;-><init>(ZLcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 412
    :try_start_19b
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    .line 415
    move-result-object v0

    .line 416
    iget-object v2, v14, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 418
    invoke-virtual {v0, v2, v15}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1a4
    .catch Ljava/lang/InterruptedException; {:try_start_19b .. :try_end_1a4} :catch_1a8
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_19b .. :try_end_1a4} :catch_1a6

    .line 421
    const/4 v0, 0x1

    .line 422
    goto :goto_1b8

    .line 423
    :catch_1a6
    move-exception v0

    .line 424
    goto :goto_1a9

    .line 425
    :catch_1a8
    move-exception v0

    .line 426
    :goto_1a9
    const/4 v2, 0x2

    .line 427
    new-array v2, v2, [Ljava/lang/Object;

    .line 429
    const-string v3, "local write failed"

    .line 431
    const/4 v4, 0x0

    .line 432
    aput-object v3, v2, v4

    .line 434
    const/4 v3, 0x1

    .line 435
    aput-object v0, v2, v3

    .line 437
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 440
    move v0, v3

    .line 441
    :goto_1b8
    iget-boolean v2, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 443
    if-eqz v2, :cond_1d7

    .line 445
    iget-object v2, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 447
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 450
    move-result v2

    .line 451
    if-nez v2, :cond_1d7

    .line 453
    new-array v0, v0, [Ljava/lang/Object;

    .line 455
    const-string v2, "fileMoveOrCopy remove TransferTask and notify"

    .line 457
    const/4 v3, 0x0

    .line 458
    aput-object v2, v0, v3

    .line 460
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 463
    iget-object v0, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 465
    invoke-virtual {v14}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 468
    move-result-object v2

    .line 469
    invoke-static {v1, v0, v2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 472
    :cond_1d7
    iget-boolean v0, v15, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 474
    add-int v19, v19, v0

    .line 476
    const/4 v3, 0x0

    .line 477
    const/4 v5, 0x1

    .line 478
    move/from16 v15, v20

    .line 480
    const/4 v14, 0x0

    .line 481
    goto/16 :goto_112

    .line 483
    :cond_1e2
    move/from16 v20, v15

    .line 485
    if-lez v19, :cond_1f2

    .line 487
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 490
    move-result-object v3

    .line 491
    const/4 v0, 0x0

    .line 492
    const/4 v15, 0x1

    .line 493
    move-object/from16 v21, v3

    .line 495
    move-object v3, v0

    .line 496
    move-object/from16 v0, v21

    .line 498
    goto :goto_204

    .line 499
    :cond_1f2
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 501
    const/4 v3, 0x0

    .line 502
    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 505
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 507
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 510
    move-result-object v0

    .line 511
    move/from16 v15, v20

    .line 513
    goto :goto_204

    .line 514
    :cond_201
    move/from16 v20, v15

    .line 516
    move-object v0, v3

    .line 517
    :goto_204
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 520
    move-result v2

    .line 521
    if-nez v2, :cond_2cf

    .line 523
    new-instance v2, Ljava/util/ArrayList;

    .line 525
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    new-instance v4, Ljava/util/HashMap;

    .line 530
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 533
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 536
    move-result-object v5

    .line 537
    :goto_218
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 540
    move-result v6

    .line 541
    if-eqz v6, :cond_24e

    .line 543
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 546
    move-result-object v6

    .line 547
    check-cast v6, Ljava/lang/String;

    .line 549
    invoke-static {v6, v11, v12}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildUploadLocalFileInfoAndCopyDiskFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 552
    move-result-object v7

    .line 553
    if-nez v7, :cond_23a

    .line 555
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 557
    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 560
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 563
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 566
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 569
    move-result-object v0

    .line 570
    return-object v0

    .line 571
    :cond_23a
    invoke-virtual {v7}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 574
    move-result-object v8

    .line 575
    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    const/4 v7, 0x1

    .line 582
    new-array v7, v7, [Ljava/lang/String;

    .line 584
    const/4 v8, 0x0

    .line 585
    aput-object v6, v7, v8

    .line 587
    invoke-static {v1, v7, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 590
    goto :goto_218

    .line 591
    :cond_24e
    const/4 v8, 0x0

    .line 592
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 595
    move-result-object v2

    .line 596
    :goto_253
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 599
    move-result v5

    .line 600
    if-eqz v5, :cond_2cf

    .line 602
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 605
    move-result-object v5

    .line 606
    check-cast v5, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 608
    invoke-static {v3, v5, v8}, Lcom/micloud/midrive/utils/TransferPathUtils;->generateFileUploadInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Z)Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 611
    move-result-object v6

    .line 612
    if-eqz v12, :cond_276

    .line 614
    invoke-static {v5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->buildMoveUploadInfo(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 617
    move-result-object v6

    .line 618
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 621
    move-result-object v7

    .line 622
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    move-result-object v7

    .line 626
    check-cast v7, Ljava/lang/String;

    .line 628
    invoke-virtual {v6, v7}, Lcom/micloud/midrive/infos/FileUploadInfo;->setFailedMovePath(Ljava/lang/String;)V

    .line 631
    :cond_276
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/FileUploadInfo;->getKey()Ljava/lang/String;

    .line 634
    move-result-object v7

    .line 635
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    .line 638
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 641
    move-result-object v8

    .line 642
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 645
    move-result-object v9

    .line 646
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 649
    move-result-object v9

    .line 650
    invoke-interface {v8, v9, v5, v7}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z

    .line 653
    move-result v5

    .line 654
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    .line 657
    const/4 v7, 0x1

    .line 658
    new-array v7, v7, [Ljava/lang/Object;

    .line 660
    new-instance v8, Ljava/lang/StringBuilder;

    .line 662
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    const-string v9, "fileMoveOrCopy insertLocalFileInfo result: "

    .line 667
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    move-result-object v8

    .line 677
    const/4 v9, 0x0

    .line 678
    aput-object v8, v7, v9

    .line 680
    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 683
    if-eqz v5, :cond_2b6

    .line 685
    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 687
    move/from16 v7, p5

    .line 689
    invoke-static {v1, v6, v5, v7}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->startTransferTask(Landroid/content/Context;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Z)V

    .line 692
    const/4 v15, 0x1

    .line 693
    move v8, v9

    .line 694
    goto :goto_253

    .line 695
    :cond_2b6
    move/from16 v7, p5

    .line 697
    const/4 v0, 0x1

    .line 698
    new-array v0, v0, [Ljava/lang/Object;

    .line 700
    const-string v5, "fileMoveOrCopy return failed response"

    .line 702
    aput-object v5, v0, v9

    .line 704
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 707
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_UPLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 709
    invoke-virtual {v13, v0, v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 712
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 714
    invoke-static {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 717
    move-result-object v0

    .line 718
    const/4 v8, 0x0

    .line 719
    goto :goto_253

    .line 720
    :cond_2cf
    if-eqz v15, :cond_2de

    .line 722
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 725
    move-result-object v2

    .line 726
    new-instance v3, Landroidx/appcompat/app/j;

    .line 728
    const/4 v4, 0x5

    .line 729
    invoke-direct {v3, v1, v4}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    .line 732
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    :cond_2de
    if-nez v0, :cond_2e4

    .line 737
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 740
    move-result-object v0

    .line 741
    :cond_2e4
    const/4 v1, 0x1

    .line 742
    new-array v1, v1, [Ljava/lang/Object;

    .line 744
    const-string v2, "fileMoveOrCopy return "

    .line 746
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    move-result-object v2

    .line 750
    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    .line 753
    move-result v3

    .line 754
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    move-result-object v2

    .line 761
    const/4 v3, 0x0

    .line 762
    aput-object v2, v1, v3

    .line 764
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 767
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 770
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 773
    return-object v0

    .line 774
    :catch_305
    move-exception v0

    .line 775
    sget-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 777
    invoke-virtual {v13, v1, v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 780
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 783
    invoke-virtual {v13}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 786
    invoke-static {v1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 789
    move-result-object v0

    .line 790
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

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move-wide v4, v1

    .line 13
    move v6, v3

    .line 14
    :goto_d
    sub-int v7, v0, v6

    .line 16
    if-lez v7, :cond_60

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v7

    .line 22
    div-int/lit16 v9, v6, 0x3e8

    .line 24
    mul-int/lit16 v9, v9, 0x3e8

    .line 26
    add-int/lit16 v9, v9, 0x3e8

    .line 28
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result v10

    .line 32
    invoke-interface {p1, v6, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 35
    move-result-object v6

    .line 36
    invoke-interface {p2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;->getOperateRecords(Ljava/util/List;)Ljava/lang/String;

    .line 39
    move-result-object v6

    .line 40
    invoke-interface {p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;->getOperateType()Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 43
    move-result-object v10

    .line 44
    invoke-static {p0, v6, v10}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->fileOperation(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;)Lcom/micloud/midrive/task/operation/OperationInfo;

    .line 47
    move-result-object v6

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    move-result-wide v10

    .line 52
    sub-long/2addr v10, v7

    .line 53
    add-long/2addr v1, v10

    .line 54
    const/4 v7, 0x1

    .line 55
    new-array v7, v7, [Ljava/lang/Object;

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v10, "query operationInfo:"

    .line 64
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v8

    .line 74
    aput-object v8, v7, v3

    .line 76
    invoke-static {v7}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    move-result-wide v7

    .line 83
    invoke-static {p0, v6}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleOperationQuery(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/operation/OperationInfo;)V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 89
    move-result-wide v10

    .line 90
    sub-long/2addr v10, v7

    .line 91
    add-long/2addr v4, v10

    .line 92
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 95
    move-result v6

    .line 96
    goto :goto_d

    .line 97
    :cond_60
    new-instance p0, Lcom/micloud/midrive/infos/FileOperationTimeInfo;

    .line 99
    invoke-direct {p0, v1, v2, v4, v5}, Lcom/micloud/midrive/infos/FileOperationTimeInfo;-><init>(JJ)V

    .line 102
    return-object p0
.end method

.method public static fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 14

    .line 1
    const-string v0, "fileRename method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    const-string v2, "fileRename start, fileId: "

    .line 11
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 18
    const-string v2, "newName: "

    .line 20
    invoke-static {v2, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x1

    .line 25
    aput-object v2, v1, v4

    .line 27
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 30
    new-instance v1, Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 32
    const-string v2, "fileRename"

    .line 34
    invoke-direct {v1, v2}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    .line 40
    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    .line 43
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 50
    move-result-object v2

    .line 51
    new-array v5, v4, [Ljava/lang/Object;

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v7, "fileRename query file: "

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    aput-object v6, v5, v3

    .line 72
    invoke-static {v5}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 75
    const/4 v5, 0x0

    .line 76
    if-nez v2, :cond_66

    .line 78
    new-array p0, v4, [Ljava/lang/Object;

    .line 80
    const-string p1, "fileRename return failed response cause totalFileInfo is null"

    .line 82
    aput-object p1, p0, v3

    .line 84
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 87
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 89
    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 92
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 95
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 98
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_66
    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v6

    .line 109
    const-string v7, "fileRename return successful response"

    .line 111
    const-string v8, "fileRename notify sync session"

    .line 113
    if-nez v6, :cond_1b4

    .line 115
    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 117
    if-nez v6, :cond_78

    .line 119
    goto/16 :goto_1b4

    .line 121
    :cond_78
    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setLocalFileCount(I)V

    .line 124
    iget-object p1, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 126
    if-nez p1, :cond_86

    .line 128
    iget-object p1, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 130
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    goto :goto_88

    .line 135
    :cond_86
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 137
    :goto_88
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 140
    move-result-object v6

    .line 141
    invoke-interface {v6, p1, v5, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 144
    move-result-object p1

    .line 145
    new-instance v6, Ljava/util/HashSet;

    .line 147
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object p1

    .line 154
    :cond_99
    :goto_99
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_c7

    .line 160
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v9

    .line 164
    check-cast v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 166
    iget-object v10, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 168
    if-eqz v10, :cond_bd

    .line 170
    invoke-virtual {v10}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 173
    move-result-object v10

    .line 174
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    move-result v10

    .line 178
    if-nez v10, :cond_bd

    .line 180
    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 182
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_99

    .line 190
    :cond_bd
    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 192
    if-eqz v9, :cond_99

    .line 194
    iget-object v9, v9, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 196
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    goto :goto_99

    .line 200
    :cond_c7
    invoke-virtual {v6, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_e6

    .line 206
    new-array p0, v4, [Ljava/lang/Object;

    .line 208
    const-string p1, "fileRename new file conflict, return failed response"

    .line 210
    aput-object p1, p0, v3

    .line 212
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 215
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 217
    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 220
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 223
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 226
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :cond_e6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    sget-object v6, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 238
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 244
    move-result-object v6

    .line 245
    iget-object v9, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 247
    invoke-virtual {v9}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 250
    move-result-object v9

    .line 251
    invoke-interface {v6, v9}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 260
    invoke-static {p1, v6, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    move-result-object p1

    .line 264
    new-array v6, v4, [Ljava/lang/Object;

    .line 266
    const-string v9, "fileRename new file path: "

    .line 268
    invoke-static {v9, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object v9

    .line 272
    aput-object v9, v6, v3

    .line 274
    invoke-static {v6}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 277
    new-instance v6, Ljava/io/File;

    .line 279
    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 285
    move-result v6

    .line 286
    if-eqz v6, :cond_138

    .line 288
    new-array p0, v4, [Ljava/lang/Object;

    .line 290
    const-string p1, "fileRename new file exists, return failed response"

    .line 292
    aput-object p1, p0, v3

    .line 294
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 297
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 299
    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 302
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 305
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 308
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 311
    move-result-object p0

    .line 312
    return-object p0

    .line 313
    :cond_138
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;

    .line 315
    invoke-direct {v6, v1, v2, p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$3;-><init>(Lcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :try_start_13d
    invoke-static {}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;->getInstance()Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    .line 321
    move-result-object p1

    .line 322
    iget-object p2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 324
    invoke-virtual {p1, p2, v6}, Lcom/micloud/midrive/helper/ThreadSafeActionHelper;->doAction(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_146
    .catch Ljava/lang/InterruptedException; {:try_start_13d .. :try_end_146} :catch_149
    .catch Lcom/micloud/midrive/helper/ThreadSafeActionHelper$WaitLockTimeOutException; {:try_start_13d .. :try_end_146} :catch_147

    .line 327
    goto :goto_155

    .line 328
    :catch_147
    move-exception p1

    .line 329
    goto :goto_14a

    .line 330
    :catch_149
    move-exception p1

    .line 331
    :goto_14a
    new-array p2, v0, [Ljava/lang/Object;

    .line 333
    const-string v0, "local write failed"

    .line 335
    aput-object v0, p2, v3

    .line 337
    aput-object p1, p2, v4

    .line 339
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 342
    :goto_155
    iget-boolean p1, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 344
    if-eqz p1, :cond_199

    .line 346
    iget-object p1, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 351
    move-result p1

    .line 352
    if-nez p1, :cond_173

    .line 354
    new-array p1, v4, [Ljava/lang/Object;

    .line 356
    const-string p2, "fileRename remove TransferTask and notify"

    .line 358
    aput-object p2, p1, v3

    .line 360
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 363
    iget-object p1, v6, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 365
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 368
    move-result-object p2

    .line 369
    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 372
    :cond_173
    new-array p1, v4, [Ljava/lang/Object;

    .line 374
    aput-object v8, p1, v3

    .line 376
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 379
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 382
    move-result-object p1

    .line 383
    new-instance p2, Landroidx/appcompat/app/j;

    .line 385
    const/4 v0, 0x4

    .line 386
    invoke-direct {p2, p0, v0}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    .line 389
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    new-array p0, v4, [Ljava/lang/Object;

    .line 394
    aput-object v7, p0, v3

    .line 396
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 399
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 402
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 405
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 408
    move-result-object p0

    .line 409
    return-object p0

    .line 410
    :cond_199
    new-array p0, v4, [Ljava/lang/Object;

    .line 412
    const-string p1, "fileRename return failed response"

    .line 414
    aput-object p1, p0, v3

    .line 416
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 419
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 421
    invoke-virtual {v1, p0, v5}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 424
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 427
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 430
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 432
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 435
    move-result-object p0

    .line 436
    return-object p0

    .line 437
    :cond_1b4
    :goto_1b4
    invoke-virtual {v1, v4}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setCloudFileCount(I)V

    .line 440
    :try_start_1b7
    invoke-static {p0}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 443
    move-result-object v5

    .line 444
    invoke-static {v5, p1, p2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->setRename(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoStart()V

    .line 450
    iget-object p1, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 452
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 454
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 457
    move-result-object p1

    .line 458
    invoke-static {v5, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordExecGetSyncFileInfoEnd()V

    .line 465
    new-array p2, v4, [Ljava/lang/Object;

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    .line 469
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    const-string v5, "fileRename getSyncFileInfo: "

    .line 474
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    move-result-object v2

    .line 484
    aput-object v2, p2, v3

    .line 486
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 492
    move-result-object p2

    .line 493
    invoke-interface {p2, p0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)V

    .line 496
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    .line 499
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 502
    move-result-object p2

    .line 503
    invoke-interface {p2, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 506
    move-result p1

    .line 507
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    .line 510
    new-array p2, v4, [Ljava/lang/Object;

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    .line 514
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    const-string v5, "fileRename insertOrUpdateCloudFiles result: "

    .line 519
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    move-result-object v2

    .line 529
    aput-object v2, p2, v3

    .line 531
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 534
    if-eqz p1, :cond_22b

    .line 536
    new-array p1, v4, [Ljava/lang/Object;

    .line 538
    aput-object v8, p1, v3

    .line 540
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 543
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 546
    move-result-object p1

    .line 547
    new-instance p2, Landroidx/appcompat/app/j;

    .line 549
    const/4 v2, 0x3

    .line 550
    invoke-direct {p2, p0, v2}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;I)V

    .line 553
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    :cond_22b
    new-array p0, v4, [Ljava/lang/Object;

    .line 558
    aput-object v7, p0, v3

    .line 560
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 563
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 566
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 569
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 572
    move-result-object p0
    :try_end_23c
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_1b7 .. :try_end_23c} :catch_263
    .catch Ljava/lang/InterruptedException; {:try_start_1b7 .. :try_end_23c} :catch_247
    .catch Lcom/micloud/midrive/server/transport/Network$NetworkNotAvailableException; {:try_start_1b7 .. :try_end_23c} :catch_245
    .catch Lcom/micloud/midrive/server/transport/exception/RequestIOException; {:try_start_1b7 .. :try_end_23c} :catch_243
    .catch Lcom/micloud/midrive/server/transport/exception/RequestServiceNotAvailableException; {:try_start_1b7 .. :try_end_23c} :catch_241
    .catch Lcom/micloud/midrive/server/transport/exception/RequestBadResponseException; {:try_start_1b7 .. :try_end_23c} :catch_23f
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_1b7 .. :try_end_23c} :catch_23d

    .line 573
    return-object p0

    .line 574
    :catch_23d
    move-exception p0

    .line 575
    goto :goto_248

    .line 576
    :catch_23f
    move-exception p0

    .line 577
    goto :goto_248

    .line 578
    :catch_241
    move-exception p0

    .line 579
    goto :goto_248

    .line 580
    :catch_243
    move-exception p0

    .line 581
    goto :goto_248

    .line 582
    :catch_245
    move-exception p0

    .line 583
    goto :goto_248

    .line 584
    :catch_247
    move-exception p0

    .line 585
    :goto_248
    new-array p1, v0, [Ljava/lang/Object;

    .line 587
    const-string p2, "fileRename protocol exception"

    .line 589
    aput-object p2, p1, v3

    .line 591
    aput-object p0, p1, v4

    .line 593
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 596
    sget-object p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 598
    invoke-virtual {v1, p1, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 601
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 604
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 607
    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 610
    move-result-object p0

    .line 611
    return-object p0

    .line 612
    :catch_263
    move-exception p0

    .line 613
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->handleFileRenameOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 616
    move-result-object p1

    .line 617
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 620
    move-result-object p2

    .line 621
    invoke-virtual {v1, p2, p0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 624
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 627
    invoke-virtual {v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 630
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

    .line 1
    const-string v0, "fileUploadChangeFreeNetworkOnly method should not run in Main Thread."

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 8
    const-string v1, "fileUpload"

    .line 10
    invoke-direct {v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationStart()V

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setTotalFileCount(I)V

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3c

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 43
    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 45
    invoke-static {v3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3, v2, p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeFreeNetworkOnly(Ljava/lang/String;Z)Z

    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 56
    if-eqz v2, :cond_1b

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_1b

    .line 61
    :cond_3c
    if-lez v1, :cond_56

    .line 63
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Lcom/android/cloud/activity/a;

    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-direct {p1, v1}, Lcom/android/cloud/activity/a;-><init>(I)V

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 79
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 82
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_56
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->UPLOAD_CHANGE_FREE_NETWORK_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 89
    const/4 p1, 0x0

    .line 90
    invoke-virtual {v0, p0, p1}, Lcom/micloud/midrive/stat/FileOperationResultStat;->setErrorTypeAndMsg(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;Ljava/lang/Exception;)V

    .line 93
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperationEnd()V

    .line 96
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordSuccessEventIfErrorNotSet()V

    .line 99
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 101
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 104
    move-result-object p0

    .line 105
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

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 8
    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_62

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    new-array v3, v2, [Ljava/lang/Object;

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v5, "query file: "

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object v4, v3, v5

    .line 51
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 54
    if-eqz v1, :cond_50

    .line 56
    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_4a

    .line 64
    iget-object v0, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 66
    if-nez v0, :cond_44

    .line 68
    goto :goto_4a

    .line 69
    :cond_44
    if-eqz p2, :cond_7

    .line 71
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_7

    .line 75
    :cond_4a
    :goto_4a
    if-eqz p1, :cond_7

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_7

    .line 81
    :cond_50
    const/4 p0, 0x2

    .line 82
    new-array p0, p0, [Ljava/lang/Object;

    .line 84
    const-string p1, "totalFileInfo is null, fileId is "

    .line 86
    aput-object p1, p0, v5

    .line 88
    aput-object v0, p0, v2

    .line 90
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 93
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 95
    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 98
    throw p0

    .line 99
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayDeque;

    .line 8
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 11
    move-result-object v2

    .line 12
    const-string v3, "cloud_modify_time"

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-interface {v2, p0, v3, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 22
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 28
    if-eqz v2, :cond_3f

    .line 30
    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 32
    if-eqz v5, :cond_3b

    .line 34
    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 36
    const-string v6, "folder"

    .line 38
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_3b

    .line 44
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 47
    move-result-object v5

    .line 48
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 50
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 52
    invoke-interface {v5, v2, v3, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v1, v2}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 59
    goto :goto_15

    .line 60
    :cond_3b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_15

    .line 64
    :cond_3f
    const/4 v1, 0x1

    .line 65
    new-array v1, v1, [Ljava/lang/Object;

    .line 67
    const-string v2, "query single files under "

    .line 69
    const-string v3, " children count: "

    .line 71
    invoke-static {v2, p0, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    move-result v2

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    aput-object p0, v1, v4

    .line 88
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 91
    return-object v0
.end method

.method private static getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->mainHandler:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    sput-object v0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->mainHandler:Landroid/os/Handler;

    .line 16
    :cond_f
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->mainHandler:Landroid/os/Handler;

    .line 18
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x32

    .line 7
    if-gt v0, v1, :cond_d

    .line 9
    invoke-static {p0, p1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getSyncFileInfo(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result v2

    .line 27
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getSyncFileInfoByIds(Lcom/micloud/midrive/server/transport/Network;Ljava/util/List;)Ljava/util/List;

    .line 34
    move-result-object p0

    .line 35
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-object v0
.end method

.method public static synthetic h(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->lambda$fileRename$4(Landroid/content/Context;)V

    return-void
.end method

.method private static handleFileDeleteOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "handleFileDeleteOperationFailed:"

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p0, v0, v1

    .line 12
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 15
    instance-of v0, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 21
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 28
    const/16 v0, 0x2af9

    .line 30
    if-ne p0, v0, :cond_26

    .line 32
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DELETE_FILE_NULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 34
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_26
    const/16 v0, 0x2718

    .line 41
    if-ne p0, v0, :cond_31

    .line 43
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 45
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_31
    const/16 v0, 0x271f

    .line 52
    if-ne p0, v0, :cond_3c

    .line 54
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 56
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3c
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 63
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method private static handleFileMoveOrCopyOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "handleFileMoveOrCopyOperationFailed:"

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p0, v0, v1

    .line 12
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 15
    instance-of v0, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 21
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 28
    const/16 v0, 0x2716

    .line 30
    if-ne p0, v0, :cond_26

    .line 32
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 34
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_26
    const/16 v0, 0x2afc

    .line 41
    if-ne p0, v0, :cond_31

    .line 43
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARENT_FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 45
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_31
    const/16 v0, 0x2afb

    .line 52
    if-ne p0, v0, :cond_3c

    .line 54
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 56
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3c
    const/16 v0, 0x2718

    .line 63
    if-ne p0, v0, :cond_47

    .line 65
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 67
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_47
    const/16 v0, 0x2afa

    .line 74
    if-ne p0, v0, :cond_52

    .line 76
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 78
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_52
    const/16 v0, 0x2b02

    .line 85
    if-ne p0, v0, :cond_5d

    .line 87
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->ERROR_SUB_PATH_MOVE_COPY:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 89
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_5d
    const/16 v0, 0x271f

    .line 96
    if-ne p0, v0, :cond_68

    .line 98
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 100
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_68
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 107
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method

.method private static handleFileRenameOperationFailed(Lcom/micloud/midrive/server/exception/OperationFailedException;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "handleFileRenameOperationFailed:"

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p0, v0, v1

    .line 12
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 15
    instance-of v0, p0, Lcom/micloud/midrive/server/exception/MiDriveUnavailableException;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 21
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 28
    const/16 v0, 0x2712

    .line 30
    if-ne p0, v0, :cond_26

    .line 32
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 34
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_26
    const/16 v0, 0x2afd

    .line 41
    if-ne p0, v0, :cond_31

    .line 43
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 45
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_31
    const/16 v0, 0x2718

    .line 52
    if-ne p0, v0, :cond_3c

    .line 54
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 56
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3c
    const/16 v0, 0x2afa

    .line 63
    if-ne p0, v0, :cond_47

    .line 65
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 67
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_47
    const/16 v0, 0x271f

    .line 74
    if-ne p0, v0, :cond_52

    .line 76
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 78
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_52
    const/16 v0, 0x2b09

    .line 85
    if-ne p0, v0, :cond_5d

    .line 87
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 89
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_5d
    sget-object p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 96
    invoke-static {p0}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->buildFailedResponse(Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method private static handleOperationQuery(Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/operation/OperationInfo;)V
    .registers 16

    .line 1
    iget-wide v0, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->currentTime:J

    .line 3
    :cond_2
    :goto_2
    iget-wide v2, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->expireTime:J

    .line 5
    cmp-long v2, v0, v2

    .line 7
    if-gtz v2, :cond_4f

    .line 9
    iget-object v2, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->taskId:Ljava/lang/String;

    .line 11
    invoke-static {p0, v2}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getTaskStatus(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;)Lcom/micloud/midrive/task/query/TaskQueryInfo;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v2, v3, v4

    .line 21
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 24
    iget-object v3, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    .line 26
    const-string v4, "FAILED"

    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_3e

    .line 34
    iget-object v3, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    .line 36
    const-string v4, "SUCCESS"

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2c

    .line 44
    return-void

    .line 45
    :cond_2c
    iget-object v3, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->status:Ljava/lang/String;

    .line 47
    const-string v4, "RUNNING"

    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 55
    iget-wide v0, p1, Lcom/micloud/midrive/task/operation/OperationInfo;->interval:J

    .line 57
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 60
    iget-wide v0, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->currentTime:J

    .line 62
    goto :goto_2

    .line 63
    :cond_3e
    new-instance p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 65
    iget-object p1, v2, Lcom/micloud/midrive/task/query/TaskQueryInfo;->errorInfo:Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;

    .line 67
    iget v3, p1, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errCode:I

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    iget-object v7, p1, Lcom/micloud/midrive/task/query/TaskQueryInfo$ErrorInfo;->errMessage:Ljava/lang/String;

    .line 73
    const-string v4, "query_task"

    .line 75
    move-object v2, p0

    .line 76
    invoke-direct/range {v2 .. v7}, Lcom/micloud/midrive/server/exception/OperationFailedException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    throw p0

    .line 80
    :cond_4f
    new-instance p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 82
    const/4 v9, -0x1

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v12, 0x0

    .line 85
    const-string v10, "query_task"

    .line 87
    const-string v13, "query time out"

    .line 89
    move-object v8, p0

    .line 90
    invoke-direct/range {v8 .. v13}, Lcom/micloud/midrive/server/exception/OperationFailedException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
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

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$fileDelete$6(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 3
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fileDelete$7(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$fileDownload$0()V
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->notifyRequiredNetworkChangedIfExist()V

    .line 10
    return-void
.end method

.method private static synthetic lambda$fileMoveOrCopy$2(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 3
    iget-object p0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fileMoveOrCopy$3(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$fileRename$4(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$fileRename$5(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static synthetic lambda$fileUploadChangeFreeNetworkOnly$1()V
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->notifyRequiredNetworkChangedIfExist()V

    .line 10
    return-void
.end method

.method private static synthetic lambda$startTransferTask$9(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p0, p1, v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->notifyNewTaskAddedOrStartSessionIfNotExist(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 12
    return-void
.end method

.method private static removeTransferTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 3
    if-ne p2, v0, :cond_7

    .line 5
    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 10
    :goto_9
    invoke-static {p2}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p2, p0, p1, v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 18
    return-void
.end method

.method private static startTransferTask(Landroid/content/Context;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Z)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {p1, v0, p3, v1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->addToOngoing(Ljava/util/List;ZZ)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_21

    .line 20
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->getMainHandler()Landroid/os/Handler;

    .line 23
    move-result-object p1

    .line 24
    new-instance p3, Landroidx/appcompat/app/s;

    .line 26
    const/16 v0, 0x8

    .line 28
    invoke-direct {p3, v0, p2, p0}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_21
    return-void
.end method
