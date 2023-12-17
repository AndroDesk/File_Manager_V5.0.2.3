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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/BaseSession$Result;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)V

    iput-boolean p3, p0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;->needRetry:Z

    return-void
.end method

.method public static buildCancelResult(Z)Lcom/micloud/midrive/session/TransferSession$TransferResultInner;
    .registers 4

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    sget-object v1, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_CANCELED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V

    return-object v0
.end method

.method public static buildFailureResult(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)Lcom/micloud/midrive/session/TransferSession$TransferResultInner;
    .registers 4

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    sget-object v1, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_FAILED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    invoke-direct {v0, v1, p0, p1}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V

    return-object v0
.end method

.method public static buildSuccessResult()Lcom/micloud/midrive/session/TransferSession$TransferResultInner;
    .registers 4

    new-instance v0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;

    sget-object v1, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;-><init>(Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;Z)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TransferResultInner{needRetry="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/micloud/midrive/session/TransferSession$TransferResultInner;->needRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/micloud/midrive/session/BaseSession$Result;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
