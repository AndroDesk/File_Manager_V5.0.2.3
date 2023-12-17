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
.field private static final REMOTE_CALL_TIMEOUT_DELAY:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x9c7f6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->REMOTE_CALL_TIMEOUT_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private checkResultCode()V
    .registers 3

    iget v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResultCode:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/xiaomi/micloudkeybag/OperateFailedException;

    iget v1, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResultCode:I

    invoke-direct {v0, v1}, Lcom/xiaomi/micloudkeybag/OperateFailedException;-><init>(I)V

    throw v0
.end method

.method private waitForResult()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "remote call timeout"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

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

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->waitForResult()V

    invoke-direct {p0}, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->checkResultCode()V

    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public onDecryptFinished(I[B)V
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onEncryptFinished(I[B)V
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onIsSupportedFinished(IZ)V
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResult(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iput p1, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResultCode:I

    iput-object p2, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mResult:Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/OnKeyBagCallFinishedListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
