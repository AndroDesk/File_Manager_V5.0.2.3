.class Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnKeyBagCallFinishedListener.java"

# interfaces
.implements Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;
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
    iput-object p1, p0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    return-object v0
.end method

.method public onDecryptFinished(I[B)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    const-string v1, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 16
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p2, 0x3

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p1
.end method

.method public onEncryptFinished(I[B)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    const-string v1, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 16
    iget-object p1, p0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p2, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p1
.end method

.method public onIsSupportedFinished(IZ)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    const-string v1, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    const/4 p1, 0x1

    .line 14
    if-eqz p2, :cond_11

    .line 16
    move p2, p1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p2, 0x0

    .line 19
    :goto_12
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p2, p0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {p2, p1, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    throw p1
.end method
