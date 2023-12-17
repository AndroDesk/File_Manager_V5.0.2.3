.class public Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/SyncOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mErrorCode:I

.field private mErrorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field private mIsSuccess:Z

.field private mResult:Ljava/lang/String;

.field private mRetryTime:J


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mIsSuccess:Z

    .line 6
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mDescription:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 10
    iput p4, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorCode:I

    .line 12
    iput-wide p5, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mRetryTime:J

    .line 14
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_20

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mDescription:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " [reason : "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    .line 26
    const-string v2, "]"

    .line 28
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mDescription:Ljava/lang/String;

    .line 35
    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorCode:I

    .line 3
    return v0
.end method

.method public getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 3
    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRetryTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mRetryTime:J

    .line 3
    return-wide v0
.end method

.method public isRetriable()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 3
    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mIsSuccess:Z

    .line 3
    return v0
.end method
