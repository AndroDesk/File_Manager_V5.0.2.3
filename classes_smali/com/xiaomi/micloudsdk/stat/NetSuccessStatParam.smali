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

    new-instance v0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam$1;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam$1;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->resultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    iput-wide p4, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    iput-wide p6, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    iput p8, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    iput p9, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    const/4 p1, 0x0

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

    const-string v0, "NetSuccessStatParam{url=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", requestStartTime="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", netFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->resultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lf0/e;->d(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->requestStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->timeCost:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->netFlow:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->resultType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->responseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;->retryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method