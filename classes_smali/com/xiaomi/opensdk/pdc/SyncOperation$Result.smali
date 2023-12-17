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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mIsSuccess:Z

    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput p4, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorCode:I

    iput-wide p5, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mRetryTime:J

    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryTime()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mRetryTime:J

    return-wide v0
.end method

.method public isRetriable()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mErrorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->mIsSuccess:Z

    return v0
.end method
