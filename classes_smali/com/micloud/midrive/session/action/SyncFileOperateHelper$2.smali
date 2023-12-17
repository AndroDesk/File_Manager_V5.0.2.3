.class Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;
.super Lcom/micloud/midrive/helper/LocalWriteActionWithResult;
.source "SyncFileOperateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$currentTimestamp:J

.field public final synthetic val$deleteOriginFile:Z

.field public final synthetic val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

.field public final synthetic val$newName:Ljava/lang/String;

.field public final synthetic val$newPath:Ljava/lang/String;

.field public final synthetic val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

.field public final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/micloud/midrive/stat/FileOperationResultStat;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$deleteOriginFile:Z

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 7
    iput-object p4, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$parentId:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newName:Ljava/lang/String;

    .line 13
    iput-wide p7, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$currentTimestamp:J

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$deleteOriginFile:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_8b

    .line 7
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 9
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBStart()V

    .line 12
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 15
    move-result-object v0

    .line 16
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 18
    iget-object v4, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 20
    iget-object v5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    .line 22
    iget-object v6, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$parentId:Ljava/lang/String;

    .line 24
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 26
    iget-wide v7, v3, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 28
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v0, v4, v5, v6, v3}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 35
    move-result-object v0

    .line 36
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 38
    invoke-virtual {v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordOperateDBEnd()V

    .line 41
    const/4 v3, 0x2

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    const-string v4, "fileMoveOrCopy txMove file: "

    .line 46
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    aput-object v4, v3, v1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v5, "DBOperationResponse: "

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    aput-object v4, v3, v2

    .line 80
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 83
    iget-boolean v3, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 85
    iput-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 87
    invoke-virtual {v0}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    iput-object v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->queriedTransferId:Ljava/lang/String;

    .line 93
    iget-boolean v0, v0, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 95
    if-eqz v0, :cond_14f

    .line 97
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 99
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 101
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    .line 107
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    move-result v0

    .line 111
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 113
    new-array v0, v2, [Ljava/lang/Object;

    .line 115
    const-string v2, "fileMoveOrCopy disk move result: "

    .line 117
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object v2

    .line 121
    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    aput-object v2, v0, v1

    .line 132
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    .line 138
    goto/16 :goto_14f

    .line 140
    :cond_8b
    new-instance v0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 142
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 144
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 146
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 149
    move-result-object v4

    .line 150
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 152
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 154
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 157
    move-result-object v5

    .line 158
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 160
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 162
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 165
    move-result-object v6

    .line 166
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 168
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 170
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 173
    move-result-wide v7

    .line 174
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 176
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 178
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 181
    move-result-wide v9

    .line 182
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 184
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 186
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 189
    move-result-object v11

    .line 190
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 192
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 194
    iget-wide v12, v3, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 196
    move-object v3, v0

    .line 197
    invoke-direct/range {v3 .. v13}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    .line 200
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$parentId:Ljava/lang/String;

    .line 202
    invoke-virtual {v0, v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setParentId(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setPath(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newName:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setName(Ljava/lang/String;)V

    .line 215
    iget-wide v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$currentTimestamp:J

    .line 217
    invoke-virtual {v0, v3, v4}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setModifyTime(J)V

    .line 220
    new-array v3, v2, [Ljava/lang/Object;

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    const-string v5, "fileMoveOrCopy new localFileInfo: "

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v4

    .line 239
    aput-object v4, v3, v1

    .line 241
    invoke-static {v3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 244
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 246
    invoke-virtual {v3}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBStart()V

    .line 249
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 252
    move-result-object v3

    .line 253
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 260
    move-result-object v4

    .line 261
    invoke-interface {v3, v4, v0}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 264
    move-result v0

    .line 265
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 267
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$operationResultStat:Lcom/micloud/midrive/stat/FileOperationResultStat;

    .line 269
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/FileOperationResultStat;->recordInsertDBEnd()V

    .line 272
    new-array v0, v2, [Ljava/lang/Object;

    .line 274
    const-string v3, "fileMoveOrCopy insertLocalFileInfo result: "

    .line 276
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move-result-object v3

    .line 280
    iget-boolean v4, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v3

    .line 289
    aput-object v3, v0, v1

    .line 291
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 294
    iget-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 296
    if-eqz v0, :cond_14f

    .line 298
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$info:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 300
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 302
    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    iget-object v3, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$2;->val$newPath:Ljava/lang/String;

    .line 308
    invoke-static {v0, v3}, Lcom/micloud/midrive/utils/DiskFileOperator;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    move-result v0

    .line 312
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 314
    new-array v0, v2, [Ljava/lang/Object;

    .line 316
    const-string v2, "fileMoveOrCopy disk copy result: "

    .line 318
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    move-result-object v2

    .line 322
    iget-boolean v3, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object v2

    .line 331
    aput-object v2, v0, v1

    .line 333
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 336
    :cond_14f
    :goto_14f
    return-void
.end method
