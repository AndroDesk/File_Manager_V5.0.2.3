.class public Lcom/micloud/midrive/utils/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# static fields
.field private static final INFO_LIST:Ljava/lang/String; = "info_list"

.field private static final TAG:Ljava/lang/String; = "TaskUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TaskUtils class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addTaskToCollectionIfNotNull(Ljava/util/Collection;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;",
            "Lcom/micloud/midrive/task/BaseTask;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public static cancelTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;

    return-void
.end method

.method public static cancelTasks(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V

    goto :goto_4

    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "task == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    return-void
.end method

.method public static convertSessionJobInfoToTaskItem(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getTaskProgressInfoMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/micloud/midrive/infos/TaskProgressInfo;

    iget-boolean v3, v3, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    if-nez v3, :cond_1d

    :cond_2d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/micloud/midrive/infos/SessionJobInfo;

    iget-object v4, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    if-nez v1, :cond_43

    const/4 v5, 0x0

    goto :goto_4d

    :cond_43
    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/micloud/midrive/infos/TaskProgressInfo;

    :goto_4d
    iget-wide v6, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    iget-object v8, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    sget-object v9, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-ne v8, v9, :cond_59

    if-eqz v5, :cond_59

    iget-wide v6, v5, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    :cond_59
    move-wide/from16 v20, v6

    new-instance v6, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    new-instance v10, Lcom/micloud/midrive/ui/bean/DriveFileType;

    invoke-direct {v10}, Lcom/micloud/midrive/ui/bean/DriveFileType;-><init>()V

    iget-object v3, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-eqz v5, :cond_6c

    iget-boolean v7, v5, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    if-eqz v7, :cond_6c

    const/4 v7, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v7, 0x0

    :goto_6d
    invoke-static {v3, v5, v7}, Lcom/micloud/midrive/utils/TaskUtils;->getTransferStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TaskProgressInfo;Z)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    move-result-object v11

    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    move-result-wide v13

    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getFileId()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    move-result-wide v18

    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object v23

    move-object v8, v6

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v23}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/ui/bean/DriveFileType;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_9b
    return-object v0
.end method

.method public static convertSessionJobInfoToTransferFileInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferFileInfo;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getTaskProgressInfoMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/micloud/midrive/infos/TaskProgressInfo;

    iget-boolean v3, v3, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    if-nez v3, :cond_19

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x1

    :cond_2b
    :goto_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/micloud/midrive/infos/SessionJobInfo;

    iget-object v5, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    if-nez v0, :cond_46

    const/4 v6, 0x0

    goto :goto_50

    :cond_46
    invoke-interface {v5}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/micloud/midrive/infos/TaskProgressInfo;

    :goto_50
    iget-wide v7, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    iget-object v9, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    sget-object v10, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-ne v9, v10, :cond_5c

    if-eqz v6, :cond_5c

    iget-wide v7, v6, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    :cond_5c
    move-wide v14, v7

    new-instance v7, Lcom/micloud/midrive/ui/bean/TransferFileInfo;

    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getFileId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    move-result-wide v12

    iget-object v4, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-static {v4, v6, v1}, Lcom/micloud/midrive/utils/TaskUtils;->getTransferStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TaskProgressInfo;Z)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    move-result-object v17

    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object v18

    move-object v9, v7

    move-object/from16 v16, p0

    invoke-direct/range {v9 .. v18}, Lcom/micloud/midrive/ui/bean/TransferFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;Lcom/micloud/midrive/infos/ErrInfo;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_7f
    return-object v2
.end method

.method public static fileItemsConvertToFileUploadInfos(Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/micloud/midrive/model/FileItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/model/FileItem;

    new-instance v15, Lcom/micloud/midrive/infos/FileUploadInfo;

    invoke-virtual {v2}, Lcom/micloud/midrive/model/FileItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/micloud/midrive/model/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/micloud/midrive/model/FileItem;->size:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v15

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v14}, Lcom/micloud/midrive/infos/FileUploadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/micloud/midrive/infos/FileItemInfo;Lcom/micloud/midrive/infos/ErrInfo;)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_36
    return-object v0
.end method

.method public static getErrorCause(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Ljava/lang/Throwable;
    .registers 2

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "stopInfo == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileUploadInfoFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FileUploadInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "TaskUtils"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "info_list"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_2b

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/micloud/midrive/infos/FileUploadInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_28} :catch_32
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_28} :catch_2c

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :cond_2b
    return-object v1

    :catch_2c
    const-string p0, "json format error."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_32
    const-string p0, "intent don\'t have bundle data."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-object v1
.end method

.method public static getFirstStopInfo(Ljava/util/List;)Lcom/micloud/midrive/task/BaseTask$StopInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;)",
            "Lcom/micloud/midrive/task/BaseTask$StopInfo;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTransferStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TaskProgressInfo;Z)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
    .registers 4

    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-ne p0, v0, :cond_18

    if-eqz p1, :cond_10

    iget-boolean p0, p1, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    if-eqz p0, :cond_d

    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING_NETWORK:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0

    :cond_d
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->RUNNING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0

    :cond_10
    if-eqz p2, :cond_15

    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING_NETWORK:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0

    :cond_15
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0

    :cond_18
    sget-object p1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-ne p0, p1, :cond_1f

    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->PAUSE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0

    :cond_1f
    sget-object p1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-ne p0, p1, :cond_26

    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0

    :cond_26
    sget-object p1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-ne p0, p1, :cond_2d

    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->DONE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    return-object p0

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error session job info status:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isTaskDoneOrNull(Lcom/micloud/midrive/task/BaseTask;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTasksDone(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->isTaskDoneOrNull(Lcom/micloud/midrive/task/BaseTask;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "task == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public static isTasksSuccess(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "task == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public static isTransferTaskFreeNetworkOnly(Lcom/micloud/midrive/task/TransferBaseTask;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/task/RunOnNetworkTask;->getNetwork()Lcom/micloud/midrive/server/transport/Network;

    move-result-object p0

    instance-of v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    invoke-virtual {p0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->isFreeNetworkOnly()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static removeStatusChangeListenerFromTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    :cond_6
    return-void
.end method

.method public static removeStatusChangeListenerFromTasks(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/micloud/midrive/task/BaseTask;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    goto :goto_4

    :cond_15
    return-void
.end method
