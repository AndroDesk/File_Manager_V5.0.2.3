.class Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;
.super Ljava/lang/Object;
.source "SyncFileOperateHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMoveOrCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$deleteOriginFile:Z

.field public final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$parentId:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$deleteOriginFile:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getOperateRecords(Ljava/util/List;)Ljava/lang/String;
    .registers 3
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
    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$parentId:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->access$000(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getOperateType()Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$deleteOriginFile:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->MOVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->NEW_COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 10
    :goto_9
    return-object v0
.end method
