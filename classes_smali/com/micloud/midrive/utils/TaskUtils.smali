.class public Lcom/micloud/midrive/utils/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# static fields
.field private static final INFO_LIST:Ljava/lang/String; = "info_list"

.field private static final TAG:Ljava/lang/String; = "TaskUtils"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "TaskUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
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

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_5
    return-void
.end method

.method public static cancelTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 1

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->cancel()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 7
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

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1e

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    .line 17
    if-eqz v0, :cond_16

    .line 19
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->cancelTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V

    .line 22
    goto :goto_4

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    .line 25
    const-string v0, "task == null"

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 31
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getTaskProgressInfoMap()Ljava/util/Map;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_2d

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_2d

    .line 22
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 30
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2d

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 42
    iget-boolean v3, v3, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    .line 44
    if-nez v3, :cond_1d

    .line 46
    :cond_2d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v2

    .line 50
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_9b

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 62
    iget-object v4, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 64
    if-nez v1, :cond_43

    .line 66
    const/4 v5, 0x0

    .line 67
    goto :goto_4d

    .line 68
    :cond_43
    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 78
    :goto_4d
    iget-wide v6, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 80
    iget-object v8, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 82
    sget-object v9, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 84
    if-ne v8, v9, :cond_59

    .line 86
    if-eqz v5, :cond_59

    .line 88
    iget-wide v6, v5, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    .line 90
    :cond_59
    move-wide/from16 v20, v6

    .line 92
    new-instance v6, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    .line 94
    new-instance v10, Lcom/micloud/midrive/ui/bean/DriveFileType;

    .line 96
    invoke-direct {v10}, Lcom/micloud/midrive/ui/bean/DriveFileType;-><init>()V

    .line 99
    iget-object v3, v3, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 101
    if-eqz v5, :cond_6c

    .line 103
    iget-boolean v7, v5, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    .line 105
    if-eqz v7, :cond_6c

    .line 107
    const/4 v7, 0x1

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    const/4 v7, 0x0

    .line 110
    :goto_6d
    invoke-static {v3, v5, v7}, Lcom/micloud/midrive/utils/TaskUtils;->getTransferStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TaskProgressInfo;Z)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 113
    move-result-object v11

    .line 114
    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 117
    move-result-object v12

    .line 118
    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getTime()J

    .line 121
    move-result-wide v13

    .line 122
    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getPath()Ljava/lang/String;

    .line 125
    move-result-object v15

    .line 126
    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getFileId()Ljava/lang/String;

    .line 129
    move-result-object v16

    .line 130
    invoke-interface {v4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 133
    move-result-object v17

    .line 134
    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    .line 137
    move-result-wide v18

    .line 138
    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getThumbnailUrl()Ljava/lang/String;

    .line 141
    move-result-object v22

    .line 142
    invoke-interface {v4}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 145
    move-result-object v23

    .line 146
    move-object v8, v6

    .line 147
    move-object/from16 v9, p0

    .line 149
    invoke-direct/range {v8 .. v23}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/ui/bean/DriveFileType;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;)V

    .line 152
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_31

    .line 156
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

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/micloud/midrive/session/helper/SessionHelper;->getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/micloud/midrive/session/helper/ISessionHelper;->getTaskProgressInfoMap()Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2b

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_2b

    .line 18
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2a

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 38
    iget-boolean v3, v3, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    .line 40
    if-nez v3, :cond_19

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v1, 0x1

    .line 44
    :cond_2b
    :goto_2b
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v3

    .line 53
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_7f

    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 65
    iget-object v5, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 67
    if-nez v0, :cond_46

    .line 69
    const/4 v6, 0x0

    .line 70
    goto :goto_50

    .line 71
    :cond_46
    invoke-interface {v5}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 81
    :goto_50
    iget-wide v7, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 83
    iget-object v9, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 85
    sget-object v10, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 87
    if-ne v9, v10, :cond_5c

    .line 89
    if-eqz v6, :cond_5c

    .line 91
    iget-wide v7, v6, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    .line 93
    :cond_5c
    move-wide v14, v7

    .line 94
    new-instance v7, Lcom/micloud/midrive/ui/bean/TransferFileInfo;

    .line 96
    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getFileId()Ljava/lang/String;

    .line 99
    move-result-object v10

    .line 100
    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getName()Ljava/lang/String;

    .line 103
    move-result-object v11

    .line 104
    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    .line 107
    move-result-wide v12

    .line 108
    iget-object v4, v4, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 110
    invoke-static {v4, v6, v1}, Lcom/micloud/midrive/utils/TaskUtils;->getTransferStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TaskProgressInfo;Z)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 113
    move-result-object v17

    .line 114
    invoke-interface {v5}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 117
    move-result-object v18

    .line 118
    move-object v9, v7

    .line 119
    move-object/from16 v16, p0

    .line 121
    invoke-direct/range {v9 .. v18}, Lcom/micloud/midrive/ui/bean/TransferFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;Lcom/micloud/midrive/infos/ErrInfo;)V

    .line 124
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_34

    .line 128
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p0, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_36

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/micloud/midrive/model/FileItem;

    .line 25
    new-instance v15, Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 27
    invoke-virtual {v2}, Lcom/micloud/midrive/model/FileItem;->getTitle()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v2}, Lcom/micloud/midrive/model/FileItem;->getFilePath()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    move-result-wide v8

    .line 40
    iget-wide v10, v2, Lcom/micloud/midrive/model/FileItem;->size:J

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    move-object v3, v15

    .line 46
    move-object/from16 v6, p1

    .line 48
    invoke-direct/range {v3 .. v14}, Lcom/micloud/midrive/infos/FileUploadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/micloud/midrive/infos/FileItemInfo;Lcom/micloud/midrive/infos/ErrInfo;)V

    .line 51
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_c

    .line 55
    :cond_36
    return-object v0
.end method

.method public static getErrorCause(Lcom/micloud/midrive/task/BaseTask$StopInfo;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    if-eqz p0, :cond_d

    .line 3
    iget-object p0, p0, Lcom/micloud/midrive/task/BaseTask$StopInfo;->error:Lcom/micloud/midrive/task/BaseTask$TaskException;

    .line 5
    if-eqz p0, :cond_b

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "stopInfo == null"

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
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

    .line 1
    const-string v0, "TaskUtils"

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    move-result-object p0

    .line 12
    const-string v2, "info_list"

    .line 14
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    new-instance v2, Lorg/json/JSONArray;

    .line 20
    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 27
    move-result v3

    .line 28
    if-ge p0, v3, :cond_2b

    .line 30
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/micloud/midrive/infos/FileUploadInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_28} :catch_32
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_28} :catch_2c

    .line 41
    add-int/lit8 p0, p0, 0x1

    .line 43
    goto :goto_17

    .line 44
    :cond_2b
    return-object v1

    .line 45
    :catch_2c
    const-string p0, "json format error."

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_37

    .line 51
    :catch_32
    const-string p0, "intent don\'t have bundle data."

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
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

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1b

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    .line 17
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method private static getTransferStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TaskProgressInfo;Z)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 3
    if-ne p0, v0, :cond_18

    .line 5
    if-eqz p1, :cond_10

    .line 7
    iget-boolean p0, p1, Lcom/micloud/midrive/infos/TaskProgressInfo;->isWaitNetwork:Z

    .line 9
    if-eqz p0, :cond_d

    .line 11
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING_NETWORK:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 13
    return-object p0

    .line 14
    :cond_d
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->RUNNING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 16
    return-object p0

    .line 17
    :cond_10
    if-eqz p2, :cond_15

    .line 19
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING_NETWORK:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 21
    return-object p0

    .line 22
    :cond_15
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->WAITING:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 24
    return-object p0

    .line 25
    :cond_18
    sget-object p1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 27
    if-ne p0, p1, :cond_1f

    .line 29
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->PAUSE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 31
    return-object p0

    .line 32
    :cond_1f
    sget-object p1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 34
    if-ne p0, p1, :cond_26

    .line 36
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 38
    return-object p0

    .line 39
    :cond_26
    sget-object p1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 41
    if-ne p0, p1, :cond_2d

    .line 43
    sget-object p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->DONE:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 45
    return-object p0

    .line 46
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v0, "Error session job info status:"

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1
.end method

.method public static isTaskDoneOrNull(Lcom/micloud/midrive/task/BaseTask;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    sget-object v0, Lcom/micloud/midrive/task/BaseTask$TaskState;->STATE_DONE:Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 7
    invoke-virtual {p0}, Lcom/micloud/midrive/task/BaseTask;->getCurrentState()Lcom/micloud/midrive/task/BaseTask$TaskState;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
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

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_22

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-static {v0}, Lcom/micloud/midrive/utils/TaskUtils;->isTaskDoneOrNull(Lcom/micloud/midrive/task/BaseTask;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_4

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 29
    const-string v0, "task == null"

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    :cond_22
    const/4 p0, 0x1

    .line 36
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

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_22

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->isSuccessed()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_4

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 29
    const-string v0, "task == null"

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    :cond_22
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public static isTransferTaskFreeNetworkOnly(Lcom/micloud/midrive/task/TransferBaseTask;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/task/RunOnNetworkTask;->getNetwork()Lcom/micloud/midrive/server/transport/Network;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    check-cast p0, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;

    .line 11
    invoke-virtual {p0}, Lcom/micloud/midrive/server/transport/ConnectionAwareNetwork;->isFreeNetworkOnly()Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static removeStatusChangeListenerFromTaskIfNotNull(Lcom/micloud/midrive/task/BaseTask;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_6

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    .line 7
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

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/micloud/midrive/task/BaseTask;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/BaseTask;->setStatusListener(Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;)V

    .line 21
    goto :goto_4

    .line 22
    :cond_15
    return-void
.end method
