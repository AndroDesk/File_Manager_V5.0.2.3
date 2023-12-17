.class Lcom/micloud/midrive/session/TransferSession$TransferResultInner;
.super Lcom/micloud/midrive/session/BaseSession$Result;
.source "TransferSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/TransferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferResultInner"
.end annotation


# instance fields
.field public final needRetry:Z


# direct methods
.method private constructor <init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession$Result;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)V

    .line 4
    iput-boolean p3, p0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;->needRetry:Z

    .line 6
    return-void
.end method

.method public static buildCancelResult(Z)Lcom/micloud/midrive/session/TransferSession$TransferResultInner;
    .registers 4

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    .line 3
    sget-object v1, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_CANCELED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, p0}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V

    .line 9
    return-object v0
.end method

.method public static buildFailureResult(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)Lcom/micloud/midrive/session/TransferSession$TransferResultInner;
    .registers 4

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    .line 3
    sget-object v1, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_FAILED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 5
    invoke-direct {v0, v1, p0, p1}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V

    .line 8
    return-object v0
.end method

.method public static buildSuccessResult()Lcom/micloud/midrive/session/TransferSession$TransferResultInner;
    .registers 4

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    .line 3
    sget-object v1, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "TransferResultInner{needRetry="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;->needRetry:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x7d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-super {p0}, Lcom/micloud/midrive/session/BaseSession$Result;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
