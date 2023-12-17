.class public abstract Lcom/xiaomi/mirror/ICallRelayService$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/xiaomi/mirror/ICallRelayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/ICallRelayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/ICallRelayService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_registerCallRelayListener:I = 0x2

.field public static final TRANSACTION_release:I = 0x4

.field public static final TRANSACTION_sendRelayMessage:I = 0x1

.field public static final TRANSACTION_setCallState:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.mirror.ICallRelayService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/ICallRelayService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.mirror.ICallRelayService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/xiaomi/mirror/ICallRelayService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/xiaomi/mirror/ICallRelayService;

    return-object v0

    :cond_13
    new-instance v0, Lcom/xiaomi/mirror/ICallRelayService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/ICallRelayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x1

    const-string v1, "com.xiaomi.mirror.ICallRelayService"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_42

    if-eq p1, v0, :cond_3a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_26

    const/4 v1, 0x4

    if-eq p1, v1, :cond_22

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_22
    invoke-interface {p0}, Lcom/xiaomi/mirror/ICallRelayService;->release()V

    goto :goto_41

    :cond_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mirror/ICallRelayService;->setCallState(I)V

    goto :goto_41

    :cond_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mirror/ICallRelayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/ICallRelayListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mirror/ICallRelayService;->registerCallRelayListener(Lcom/xiaomi/mirror/ICallRelayListener;)V

    goto :goto_41

    :cond_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mirror/ICallRelayService;->sendRelayMessage(Ljava/lang/String;)V

    :goto_41
    return v0

    :cond_42
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
