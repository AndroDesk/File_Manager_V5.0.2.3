.class public abstract Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;
.super Landroid/os/Binder;
.source "IRemoteFileSyncLogger.java"

# interfaces
.implements Lmiui/cloud/sync/IRemoteFileSyncLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/IRemoteFileSyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.cloud.sync.IRemoteFileSyncLogger"

.field public static final TRANSACTION_release:I = 0x2

.field public static final TRANSACTION_syncLog:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/cloud/sync/IRemoteFileSyncLogger;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v1, :cond_30

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_16

    .line 9
    const v2, 0x5f4e5446

    .line 12
    if-eq p1, v2, :cond_12

    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v1

    .line 23
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_28

    .line 32
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/os/ResultReceiver;

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    :goto_29
    invoke-interface {p0, p1}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->release(Landroid/os/ResultReceiver;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    return v1

    .line 49
    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p0, p1, p2}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v1
.end method
