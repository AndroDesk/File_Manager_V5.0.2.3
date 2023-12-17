.class public Lcom/xiaomi/opensdk/exception/RetriableException;
.super Ljava/lang/Exception;
.source "RetriableException.java"


# static fields
.field public static final NETWORK_DEFAULT_RETRY_TIME:I = 0x493e0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ERRORCODE_NOT_DEFINE:I

.field private final mDescription:Ljava/lang/String;

.field private mErrorCode:I

.field private final mRetrytime:J

.field private mStep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->ERRORCODE_NOT_DEFINE:I

    .line 3
    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->ERRORCODE_NOT_DEFINE:I

    .line 8
    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    .line 10
    iput p4, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;J)V
    .registers 5

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->ERRORCODE_NOT_DEFINE:I

    .line 13
    iput p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    .line 14
    iput-object p2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    .line 15
    iput-wide p3, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    return-void
.end method

.method public static isRetriableException(Ljava/lang/Throwable;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/net/ConnectException;

    .line 3
    if-nez v0, :cond_1b

    .line 5
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 7
    if-nez v0, :cond_1b

    .line 9
    instance-of v0, p0, Ljava/net/SocketException;

    .line 11
    if-nez v0, :cond_1b

    .line 13
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 15
    if-nez v0, :cond_1b

    .line 17
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 19
    if-nez v0, :cond_1b

    .line 21
    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    .line 23
    if-eqz p0, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    .line 29
    return p0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    .line 3
    return v0
.end method

.method public getRetryTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    .line 3
    return-wide v0
.end method

.method public getStep()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setStep(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    .line 11
    if-eqz v1, :cond_1b

    .line 13
    const-string v1, ", "

    .line 15
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    :cond_1b
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    .line 30
    if-eqz v1, :cond_40

    .line 32
    const-string v1, ": "

    .line 34
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", retry after "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-wide v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    .line 50
    const-wide/16 v3, 0x3e8

    .line 52
    div-long/2addr v1, v3

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " seconds"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    :cond_40
    return-object v0
.end method
