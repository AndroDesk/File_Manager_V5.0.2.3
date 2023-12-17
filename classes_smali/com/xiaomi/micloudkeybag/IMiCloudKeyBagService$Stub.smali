.class public abstract Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;
.super Landroid/os/Binder;
.source "IMiCloudKeyBagService.java"

# interfaces
.implements Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

.field public static final TRANSACTION_decrypt:I

.field public static final TRANSACTION_encrypt:I

.field public static final TRANSACTION_getInstalledKeyInfo:I

.field public static final TRANSACTION_getServiceVersion:I

.field public static final TRANSACTION_isLastSupported:I

.field public static final TRANSACTION_isSupported:I

.field public static final TRANSACTION_showDownloadNotification:I

.field public static final TRANSACTION_showUpdateNotification:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_decrypt:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_encrypt:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_getInstalledKeyInfo:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_getServiceVersion:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_isLastSupported:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_isSupported:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_showDownloadNotification:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->TRANSACTION_showUpdateNotification:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    return-object v0

    :cond_13
    new-instance v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    if-eq p1, v0, :cond_ee

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_f2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_11  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->showUpdateNotification()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->showDownloadNotification()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_25  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_37

    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/accounts/Account;

    :cond_37
    move-object v3, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    move-result-object v7

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->decrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_50  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_62

    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/accounts/Account;

    :cond_62
    move-object v3, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    move-result-object v7

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->encrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7b  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8d

    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/accounts/Account;

    :cond_8d
    invoke-interface {p0, v0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9d

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a1

    :cond_9d
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a1
    return v1

    :pswitch_a2  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b4

    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/accounts/Account;

    :cond_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isSupported(Landroid/accounts/Account;Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c3  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d5

    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/accounts/Account;

    :cond_d5
    invoke-interface {p0, v0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isLastSupported(Landroid/accounts/Account;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_e0  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getServiceVersion()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_ee
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_e0  #00000001
        :pswitch_c3  #00000002
        :pswitch_a2  #00000003
        :pswitch_7b  #00000004
        :pswitch_50  #00000005
        :pswitch_25  #00000006
        :pswitch_1b  #00000007
        :pswitch_11  #00000008
    .end packed-switch
.end method
