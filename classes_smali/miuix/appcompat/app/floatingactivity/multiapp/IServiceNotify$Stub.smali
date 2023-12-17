.class public abstract Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;
.super Landroid/os/Binder;
.source "IServiceNotify.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miuix.appcompat.app.floatingactivity.multiapp.IServiceNotify"

.field public static final TRANSACTION_notifyFromService:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IServiceNotify"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IServiceNotify"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 25
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
    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IServiceNotify"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v1, :cond_13

    .line 6
    const v2, 0x5f4e5446

    .line 9
    if-eq p1, v2, :cond_f

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    return v1

    .line 20
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 26
    move-result p1

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;->notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    return v1
.end method
