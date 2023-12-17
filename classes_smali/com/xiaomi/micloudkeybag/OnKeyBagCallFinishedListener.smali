.class public abstract Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;
.super Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;
.source "OnKeyBagCallFinishedListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;"
    }
.end annotation


# static fields
.field private static final REMOTE_CALL_TIMEOUT_DELAY:I = 0xea60


# instance fields
.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    return-void
.end method

.method private checkResultCode()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResultCode:I

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;

    .line 8
    iget v1, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResultCode:I

    .line 10
    invoke-direct {v0, v1}, Lcom/xiaomi/micloudkeybag/OperateFailedException;-><init>(I)V

    .line 13
    throw v0
.end method

.method private waitForResult()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    const-wide/32 v2, 0xea60

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance v0, Landroid/os/RemoteException;

    .line 17
    const-string v1, "remote call timeout"

    .line 19
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->waitForResult()V

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->checkResultCode()V

    .line 7
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResult:Ljava/lang/Object;

    .line 9
    return-object v0
.end method

.method public onDecryptFinished(I[B)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "Not implemented!"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public onEncryptFinished(I[B)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "Not implemented!"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public onIsSupportedFinished(IZ)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "Not implemented!"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setResult(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResultCode:I

    .line 3
    iput-object p2, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResult:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    return-void
.end method
