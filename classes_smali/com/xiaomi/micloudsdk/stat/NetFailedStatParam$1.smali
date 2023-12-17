.class Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;
.super Ljava/lang/Object;
.source "NetFailedStatParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
    .registers 3

    new-instance v0, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;
    .registers 2

    new-array p1, p1, [Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam$1;->newArray(I)[Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    move-result-object p1

    return-object p1
.end method
