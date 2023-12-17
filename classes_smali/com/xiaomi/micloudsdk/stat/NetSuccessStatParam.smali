.class public Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;
.super Ljava/lang/Object;
.source "NetSuccessStatParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netFlow:J

.field public final requestStartTime:J

.field public final responseCode:I

.field public final resultType:I

.field public final retryCount:I

.field public final timeCost:J

.field public final url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam$1;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam$1;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->resultType:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJII)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    .line 4
    iput-wide p4, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    .line 5
    iput-wide p6, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    .line 6
    iput p8, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    .line 7
    iput p9, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->resultType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "NetSuccessStatParam{url=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", requestStartTime="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", timeCost="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", netFlow="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", resultType="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->resultType:I

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", responseCode="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", retryCount="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    .line 68
    const/16 v2, 0x7d

    .line 70
    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->resultType:I

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method
