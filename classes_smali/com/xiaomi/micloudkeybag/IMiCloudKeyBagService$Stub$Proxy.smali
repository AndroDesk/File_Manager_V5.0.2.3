.class Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiCloudKeyBagService.java"

# interfaces
.implements Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public decrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
    .registers 10

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_18

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    :goto_1b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 31
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    if-eqz p5, :cond_28

    .line 36
    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 39
    move-result-object p1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    :goto_29
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 45
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 47
    const/4 p2, 0x6

    .line 48
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    return-void

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 68
    throw p1
.end method

.method public encrypt(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
    .registers 10

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_18

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    :goto_1b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 31
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    if-eqz p5, :cond_28

    .line 36
    invoke-interface {p5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 39
    move-result-object p1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    :goto_29
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 45
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 47
    const/4 p2, 0x5

    .line 48
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    return-void

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 68
    throw p1
.end method

.method public getInstalledKeyInfo(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_18

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    :goto_1b
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_33

    .line 43
    sget-object p1, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3b

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    const/4 p1, 0x0

    .line 53
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    return-object p1

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    return-object v0
.end method

.method public getServiceVersion()I
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 27
    move-result v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    return v2

    .line 35
    :catchall_22
    move-exception v2

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw v2
.end method

.method public isLastSupported(Landroid/accounts/Account;)Z
    .registers 7

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz p1, :cond_18

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    :goto_1b
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-interface {p1, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 40
    move-result p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_33

    .line 41
    if-eqz p1, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v2, v3

    .line 45
    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    return v2

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    throw p1
.end method

.method public isSupported(Landroid/accounts/Account;Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
    .registers 7

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_18

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    goto :goto_1b

    .line 25
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    :goto_1b
    if-eqz p2, :cond_22

    .line 30
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 33
    move-result-object p1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 39
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 41
    const/4 p2, 0x3

    .line 42
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_36

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    return-void

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    throw p1
.end method

.method public showDownloadNotification()V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/4 v3, 0x7

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1e

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception v2

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 38
    throw v2
.end method

.method public showUpdateNotification()V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.micloudkeybag.IMiCloudKeyBagService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/16 v3, 0x8

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception v2

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    throw v2
.end method
