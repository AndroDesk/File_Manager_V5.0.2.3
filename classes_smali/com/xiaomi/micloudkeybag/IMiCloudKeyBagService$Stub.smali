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

.field public static final TRANSACTION_decrypt:I = 0x6

.field public static final TRANSACTION_encrypt:I = 0x5

.field public static final TRANSACTION_getInstalledKeyInfo:I = 0x4

.field public static final TRANSACTION_getServiceVersion:I = 0x1

.field public static final TRANSACTION_isLastSupported:I = 0x2

.field public static final TRANSACTION_isSupported:I = 0x3

.field public static final TRANSACTION_showDownloadNotification:I = 0x7

.field public static final TRANSACTION_showUpdateNotification:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    .line 1
    const v0, 0x5f4e5446

    .line 4
    const/4 v1, 0x1

    .line 5
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 7
    if-eq p1, v0, :cond_ee

    .line 9
    const/4 v0, 0x0

    .line 10
    packed-switch p1, :pswitch_data_f2

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :pswitch_11  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->showUpdateNotification()V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    return v1

    .line 28
    :pswitch_1b  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->showDownloadNotification()V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    return v1

    .line 38
    :pswitch_25  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_37

    .line 47
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    move-object v0, p1

    .line 54
    check-cast v0, Landroid/accounts/Account;

    .line 56
    :cond_37
    move-object v3, v0

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 64
    move-result-wide v5

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    .line 72
    move-result-object v7

    .line 73
    move-object v2, p0

    .line 74
    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->decrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v1

    .line 81
    :pswitch_50  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_62

    .line 90
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 92
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    move-object v0, p1

    .line 97
    check-cast v0, Landroid/accounts/Account;

    .line 99
    :cond_62
    move-object v3, v0

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 107
    move-result-wide v5

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    .line 115
    move-result-object v7

    .line 116
    move-object v2, p0

    .line 117
    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->encrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v1

    .line 124
    :pswitch_7b  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_8d

    .line 133
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 135
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 139
    move-object v0, p1

    .line 140
    check-cast v0, Landroid/accounts/Account;

    .line 142
    :cond_8d
    invoke-interface {p0, v0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz p1, :cond_9d

    .line 151
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 157
    goto :goto_a1

    .line 158
    :cond_9d
    const/4 p1, 0x0

    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    :goto_a1
    return v1

    .line 163
    :pswitch_a2  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_b4

    .line 172
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 177
    move-result-object p1

    .line 178
    move-object v0, p1

    .line 179
    check-cast v0, Landroid/accounts/Account;

    .line 181
    :cond_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    .line 188
    move-result-object p1

    .line 189
    invoke-interface {p0, v0, p1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isSupported(Landroid/accounts/Account;Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    return v1

    .line 196
    :pswitch_c3  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_d5

    .line 205
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 210
    move-result-object p1

    .line 211
    move-object v0, p1

    .line 212
    check-cast v0, Landroid/accounts/Account;

    .line 214
    :cond_d5
    invoke-interface {p0, v0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->isLastSupported(Landroid/accounts/Account;)Z

    .line 217
    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return v1

    .line 225
    :pswitch_e0  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-interface {p0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->getServiceVersion()I

    .line 231
    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    return v1

    .line 239
    :cond_ee
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    return v1

    .line 243
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
