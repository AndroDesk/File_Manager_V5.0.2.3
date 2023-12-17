.class public Lcom/micloud/midrive/server/transport/RetryControl;
.super Ljava/lang/Object;
.source "RetryControl.java"


# static fields
.field private static final MAX_RETRY_LIMIT:I = 0x3


# instance fields
.field private mDone:Z

.field private mDoneOrRetryCalled:Z

.field private mRetryCountDown:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDone:Z

    .line 13
    return-void
.end method


# virtual methods
.method public done()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    .line 3
    if-nez v0, :cond_a

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    .line 8
    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDone:Z

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v1, "*done* or *retry* has been called"

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0
.end method

.method public getRetryCountDown()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    .line 3
    return v0
.end method

.method public loopForRetry()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    .line 8
    iget-boolean v1, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDone:Z

    .line 10
    if-eqz v1, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    iget v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    .line 15
    const/4 v1, 0x1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    .line 19
    return v1

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    const-string v1, "either *done* or *retry* must be called at the end of a loop"

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public retry(Ljava/lang/Exception;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TypeRetryReason:",
            "Ljava/lang/Exception;",
            ">(TTypeRetryReason;J)V^",
            "Ljava/lang/InterruptedException;",
            "^TTypeRetryReason;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    .line 3
    if-nez v0, :cond_41

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    .line 8
    iget v1, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    .line 10
    if-lez v1, :cond_40

    .line 12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_3a

    .line 18
    invoke-static {p2, p3}, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->getDelay(J)J

    .line 21
    move-result-wide p2

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    const/4 v1, 0x0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v3, "Need retry after "

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    const-string v3, " ms, because "

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    aput-object p1, v0, v1

    .line 52
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 55
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    .line 58
    return-void

    .line 59
    :cond_3a
    new-instance p1, Ljava/lang/InterruptedException;

    .line 61
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 64
    throw p1

    .line 65
    :cond_40
    throw p1

    .line 66
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    const-string p2, "*done* or *retry* has been called"

    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1
.end method
