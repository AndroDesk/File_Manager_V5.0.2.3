.class public Lcom/micloud/midrive/utils/CheckErrUtils;
.super Ljava/lang/Object;
.source "CheckErrUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CheckErrUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getErrInfo(Lcom/micloud/midrive/task/BaseTask$TaskException;)Lcom/micloud/midrive/infos/ErrInfo;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    if-eqz v0, :cond_12

    new-instance v0, Lcom/micloud/midrive/infos/ErrInfo;

    check-cast p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    iget p0, p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;->errorCode:I

    invoke-direct {v0, p0}, Lcom/micloud/midrive/infos/ErrInfo;-><init>(I)V

    return-object v0

    :cond_12
    instance-of v0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    if-eqz v0, :cond_20

    new-instance v0, Lcom/micloud/midrive/infos/ErrInfo;

    check-cast p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    invoke-direct {v0, p0}, Lcom/micloud/midrive/infos/ErrInfo;-><init>(I)V

    return-object v0

    :cond_20
    instance-of v0, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    if-eqz v0, :cond_36

    new-instance v0, Lcom/micloud/midrive/infos/ErrInfo;

    check-cast p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    invoke-direct {v0, p0}, Lcom/micloud/midrive/infos/ErrInfo;-><init>(I)V

    return-object v0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method
