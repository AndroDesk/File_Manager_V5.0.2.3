.class public Lcom/micloud/midrive/utils/CheckErrUtils;
.super Ljava/lang/Object;
.source "CheckErrUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "CheckErrUtils"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static getErrInfo(Lcom/micloud/midrive/task/BaseTask$TaskException;)Lcom/micloud/midrive/infos/ErrInfo;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    .line 7
    if-eqz v0, :cond_12

    .line 9
    new-instance v0, Lcom/micloud/midrive/infos/ErrInfo;

    .line 11
    check-cast p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    .line 13
    iget p0, p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;->errorCode:I

    .line 15
    invoke-direct {v0, p0}, Lcom/micloud/midrive/infos/ErrInfo;-><init>(I)V

    .line 18
    return-object v0

    .line 19
    :cond_12
    instance-of v0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 21
    if-eqz v0, :cond_20

    .line 23
    new-instance v0, Lcom/micloud/midrive/infos/ErrInfo;

    .line 25
    check-cast p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 27
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 29
    invoke-direct {v0, p0}, Lcom/micloud/midrive/infos/ErrInfo;-><init>(I)V

    .line 32
    return-object v0

    .line 33
    :cond_20
    instance-of v0, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 35
    if-eqz v0, :cond_36

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    move-result-object p0

    .line 41
    instance-of v0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 43
    if-eqz v0, :cond_36

    .line 45
    new-instance v0, Lcom/micloud/midrive/infos/ErrInfo;

    .line 47
    check-cast p0, Lcom/micloud/midrive/server/exception/OperationFailedException;

    .line 49
    iget p0, p0, Lcom/micloud/midrive/server/exception/OperationFailedException;->code:I

    .line 51
    invoke-direct {v0, p0}, Lcom/micloud/midrive/infos/ErrInfo;-><init>(I)V

    .line 54
    return-object v0

    .line 55
    :cond_36
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method
