.class public Lcom/micloud/midrive/server/transport/RetryControl;
.super Ljava/lang/Object;
.source "RetryControl.java"


# static fields
.field private static final MAX_RETRY_LIMIT:I


# instance fields
.field private mDone:Z

.field private mDoneOrRetryCalled:Z

.field private mRetryCountDown:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/server/transport/RetryControl;->MAX_RETRY_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDone:Z

    return-void
.end method


# virtual methods
.method public done()V
    .registers 3

    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDone:Z

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*done* or *retry* has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRetryCountDown()I
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    return v0
.end method

.method public loopForRetry()Z
    .registers 3

    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    iget-boolean v1, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDone:Z

    if-eqz v1, :cond_c

    return v0

    :cond_c
    iget v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    return v1

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "either *done* or *retry* must be called at the end of a loop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    iget-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    if-nez v0, :cond_41

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mDoneOrRetryCalled:Z

    iget v1, p0, Lcom/micloud/midrive/server/transport/RetryControl;->mRetryCountDown:I

    if-lez v1, :cond_40

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p2, p3}, Lcom/micloud/midrive/server/transport/RetryDelayConfig;->getDelay(J)J

    move-result-wide p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need retry after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms, because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    return-void

    :cond_3a
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_40
    throw p1

    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "*done* or *retry* has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
