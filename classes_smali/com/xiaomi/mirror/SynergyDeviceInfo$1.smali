.class public Lcom/xiaomi/mirror/SynergyDeviceInfo$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/SynergyDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/mirror/SynergyDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mirror/SynergyDeviceInfo;
    .registers 3

    new-instance v0, Lcom/xiaomi/mirror/SynergyDeviceInfo;

    invoke-direct {v0, p1}, Lcom/xiaomi/mirror/SynergyDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/mirror/SynergyDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mirror/SynergyDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/mirror/SynergyDeviceInfo;
    .registers 2

    new-array p1, p1, [Lcom/xiaomi/mirror/SynergyDeviceInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/mirror/SynergyDeviceInfo$1;->newArray(I)[Lcom/xiaomi/mirror/SynergyDeviceInfo;

    move-result-object p1

    return-object p1
.end method
