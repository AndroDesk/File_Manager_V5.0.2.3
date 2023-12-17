.class public Lcom/micloud/midrive/task/exception/UploadCheckParamException;
.super Lcom/micloud/midrive/task/exception/TransferException;
.source "UploadCheckParamException.java"


# instance fields
.field public errorCode:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/task/exception/TransferException;-><init>()V

    .line 2
    iput p1, p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0, p2}, Lcom/micloud/midrive/task/exception/TransferException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;->errorCode:I

    .line 5
    iput-object p2, p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;->message:Ljava/lang/String;

    return-void
.end method
