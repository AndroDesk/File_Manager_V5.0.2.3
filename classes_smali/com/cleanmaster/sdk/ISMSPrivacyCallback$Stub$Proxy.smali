.class Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISMSPrivacyCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ISMSPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub;
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
    iput-object p1, p0, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.cleanmaster.sdk.ISMSPrivacyCallback"

    return-object v0
.end method

.method public onFindPrimePrivacyData(ILjava/lang/String;I)V
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
    const-string v2, "com.cleanmaster.sdk.ISMSPrivacyCallback"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object p1, p0, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 25
    const/4 p2, 0x4

    .line 26
    const/4 p3, 0x0

    .line 27
    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_27

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    throw p1
.end method

.method public onFindPrivacyItem(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 11

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
    const-string v2, "com.cleanmaster.sdk.ISMSPrivacyCallback"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 37
    const/4 p2, 0x3

    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    return-void

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

.method public onPrivacyDataScanFinish()V
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
    const-string v2, "com.cleanmaster.sdk.ISMSPrivacyCallback"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    const/4 v3, 0x5

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

.method public onScanItem(Ljava/lang/String;I)Z
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
    const-string v2, "com.cleanmaster.sdk.ISMSPrivacyCallback"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object p1, p0, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p2, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 33
    move-result p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2b

    .line 34
    if-eqz p1, :cond_24

    .line 36
    const/4 v2, 0x1

    .line 37
    :cond_24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    return v2

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p1
.end method

.method public onStartScan(I)V
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
    const-string v2, "com.cleanmaster.sdk.ISMSPrivacyCallback"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p1, p0, Lcom/cleanmaster/sdk/ISMSPrivacyCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    throw p1
.end method
