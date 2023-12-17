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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$parentId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$deleteOriginFile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$parentId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->access$000(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOperateType()Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/session/action/SyncFileOperateHelper$1;->val$deleteOriginFile:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->MOVE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->NEW_COPY:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    :goto_9
    return-object v0
.end method
