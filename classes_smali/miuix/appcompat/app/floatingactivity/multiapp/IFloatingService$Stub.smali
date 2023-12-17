.class public abstract Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub;
.super Landroid/os/Binder;
.source "IFloatingService.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

.field public static final TRANSACTION_callServiceMethod:I = 0x2

.field public static final TRANSACTION_registerServiceNotify:I = 0x3

.field public static final TRANSACTION_unregisterServiceNotify:I = 0x4

.field public static final TRANSACTION_updateActivity:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    check-cast p0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    .line 17
    return-object p0

    .line 18
    :cond_11
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;

    .line 20
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    if-nez p3, :cond_8

    .line 3
    const/4 p3, 0x0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x1

    .line 11
    const-string v2, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 13
    if-eq p1, v0, :cond_67

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_4d

    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_37

    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_25

    .line 24
    const v0, 0x5f4e5446

    .line 27
    if-eq p1, v0, :cond_21

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_21
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return v1

    .line 38
    :cond_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    move-result p2

    .line 49
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->upDateRemoteActivityInfo(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v1

    .line 56
    :cond_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;->asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v1

    .line 78
    :cond_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;->asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->registerServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)I

    .line 96
    move-result p1

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v1

    .line 104
    :cond_67
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    move-result p1

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 118
    move-result-object p4

    .line 119
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 122
    move-result-object p2

    .line 123
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;->callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v1
.end method
