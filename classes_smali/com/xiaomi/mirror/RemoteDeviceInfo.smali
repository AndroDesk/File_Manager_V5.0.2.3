.class public Lcom/xiaomi/mirror/RemoteDeviceInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCOUNT_STATUS_NOT_VERIFIED:I = -0x1

.field public static final ACCOUNT_STATUS_VERIFIED_FAILED:I = 0x2

.field public static final ACCOUNT_STATUS_VERIFIED_SUCCEED:I = 0x1

.field public static final ACCOUNT_STATUS_VERIFIED_UNKNOWN:I = 0x0

.field public static final CONNECT_TYPE_ADVANCED:I = 0x2

.field public static final CONNECT_TYPE_ADVANCED_USER_AWARE:I = 0x6

.field public static final CONNECT_TYPE_BASIC:I = 0x1

.field public static final CONNECT_TYPE_NONE:I = 0x0

.field public static final CONNECT_TYPE_USER_AWARE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ACCOUNT_STATUS:Ljava/lang/String; = "account_status"

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final KEY_BT_MAC:Ljava/lang/String; = "bt_mac"

.field public static final KEY_CAPABILITIES:Ljava/lang/String; = "capabilities"

.field public static final KEY_CONNECT_TYPE:Ljava/lang/String; = "connect_type"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IS_LYRA:Ljava/lang/String; = "is_lyra"

.field public static final KEY_IS_SHOW_MIRROR:Ljava/lang/String; = "is_show_mirror"

.field public static final KEY_IS_SUPPORT_SEND_APP:Ljava/lang/String; = "is_support_send_app"

.field public static final KEY_LAST_CONNECT_TIMESTAMP:Ljava/lang/String; = "last_connect_timestamp"

.field public static final KEY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final KEY_PLATFORM:Ljava/lang/String; = "platform"

.field public static final KEY_SN:Ljava/lang/String; = "sn"

.field public static final MANUFACTURER_OTHER:Ljava/lang/String; = "other"

.field public static final MANUFACTURER_XIAOMI:Ljava/lang/String; = "xiaomi"

.field public static final PLATFORM_ANDROID_PAD:Ljava/lang/String; = "AndroidPad"

.field public static final PLATFORM_ANDROID_PAD_CAR:Ljava/lang/String; = "AndroidPadCar"

.field public static final PLATFORM_ANDROID_PHONE:Ljava/lang/String; = "AndroidPhone"

.field public static final PLATFORM_WINDOWS:Ljava/lang/String; = "Windows"


# instance fields
.field public mBundle:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/mirror/RemoteDeviceInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/mirror/RemoteDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "platform"

    const-string v2, "AndroidPhone"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "connect_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-class v0, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountStatus()I
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "account_status"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()J
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBtMac()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "bt_mac"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getCapabilities()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "capabilities"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getConnectType()I
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "connect_type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectTimestamp()J
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "last_connect_timestamp"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMutableBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "sn"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLyra()Z
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "is_lyra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowMirror()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "is_show_mirror"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportSendApp()Z
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "is_support_send_app"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "RemoteDeviceInfo{mBundle="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
