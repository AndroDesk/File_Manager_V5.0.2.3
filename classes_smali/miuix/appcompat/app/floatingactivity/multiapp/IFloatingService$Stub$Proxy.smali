.class Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFloatingService.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
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
    const-string v2, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p2, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    return-object p1

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    return-object v0
.end method

.method public registerServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)I
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
    const-string v2, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    if-nez p1, :cond_11

    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 21
    move-result-object p1

    .line 22
    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 25
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/4 p2, 0x3

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 38
    move-result p1

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 48
    return p1

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p1
.end method

.method public unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V
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
    const-string v2, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    if-nez p1, :cond_11

    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 21
    move-result-object p1

    .line 22
    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 25
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    const/4 p2, 0x4

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p1
.end method

.method public upDateRemoteActivityInfo(Ljava/lang/String;I)V
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
    const-string v2, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p2, 0x5

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    return-void

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p1
.end method
