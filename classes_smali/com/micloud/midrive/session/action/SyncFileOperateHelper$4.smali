.class Lcom/micloud/midrive/session/action/SyncFileOperateHelper$4;
.super Ljava/lang/Object;
.source "SyncFileOperateHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDelete(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperateRecords(Ljava/util/List;)Ljava/lang/String;
    .registers 2
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
    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->access$100(Ljava/util/List;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getOperateType()Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;->DELETE:Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;

    .line 3
    return-object v0
.end method
