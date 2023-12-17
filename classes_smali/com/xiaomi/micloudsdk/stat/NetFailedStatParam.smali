.class public Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
.super Ljava/lang/Object;
.source "NetFailedStatParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final exceptionName:Ljava/lang/String;

.field public final requestStartTime:J

.field public final resultType:I

.field public final retryCount:I

.field public final timeCost:J

.field public final url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->url:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->requestStartTime:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->timeCost:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->resultType:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->retryCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->url:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->requestStartTime:J

    .line 4
    iput-wide p4, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->timeCost:J

    .line 5
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p6}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->getResultType(Ljava/lang/Throwable;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->resultType:I

    .line 7
    iput p7, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->retryCount:I

    return-void
.end method

.method private getResultType(Ljava/lang/Throwable;)I
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 3
    if-nez v0, :cond_b

    .line 5
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    .line 7
    if-eqz p1, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x2

    .line 13
    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "NetFailedStatParam{url=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->url:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", requestStartTime="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->requestStartTime:J

    .line 18
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", timeCost="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v3, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->timeCost:J

    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", exceptionName=\'"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 38
    const-string v3, ", resultType="

    .line 40
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 43
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->resultType:I

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", retryCount="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->retryCount:I

    .line 55
    const/16 v2, 0x7d

    .line 57
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->url:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->requestStartTime:J

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->timeCost:J

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->exceptionName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->resultType:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;->retryCount:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void
.end method
