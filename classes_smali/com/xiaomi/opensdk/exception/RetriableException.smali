.class public Lcom/xiaomi/opensdk/exception/RetriableException;
.super Ljava/lang/Exception;
.source "RetriableException.java"


# static fields
.field public static final NETWORK_DEFAULT_RETRY_TIME:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ERRORCODE_NOT_DEFINE:I

.field private final mDescription:Ljava/lang/String;

.field private mErrorCode:I

.field private final mRetrytime:J

.field private mStep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xdbe76

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/opensdk/exception/RetriableException;->NETWORK_DEFAULT_RETRY_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->ERRORCODE_NOT_DEFINE:I

    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->ERRORCODE_NOT_DEFINE:I

    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    iput p4, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->ERRORCODE_NOT_DEFINE:I

    iput p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    iput-object p2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    return-void
.end method

.method public static isRetriableException(Ljava/lang/Throwable;)Z
    .registers 2

    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1b

    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    return v0
.end method

.method public getRetryTime()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    return-wide v0
.end method

.method public getStep()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    return-object v0
.end method

.method public setStep(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const-string v1, ", "

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mStep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_40

    const-string v1, ": "

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retry after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_40
    return-object v0
.end method
