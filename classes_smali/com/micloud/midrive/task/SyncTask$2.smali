.class Lcom/micloud/midrive/task/SyncTask$2;
.super Ljava/lang/Object;
.source "SyncTask.java"

# interfaces
.implements Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/SyncTask;->syncUpFileDelete(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/SyncTask;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/SyncTask;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/SyncTask$2;->this$0:Lcom/micloud/midrive/task/SyncTask;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    invoke-static {p1}, Lcom/micloud/midrive/task/SyncTask;->access$500(Ljava/util/List;)Ljava/lang/String;

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
