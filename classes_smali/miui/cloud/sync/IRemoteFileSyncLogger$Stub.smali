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

.field public static final TRANSACTION_release:I

.field public static final TRANSACTION_syncLog:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;->TRANSACTION_release:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;->TRANSACTION_syncLog:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/cloud/sync/IRemoteFileSyncLogger;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lmiui/cloud/sync/IRemoteFileSyncLogger;

    if-eqz v1, :cond_13

    check-cast v0, Lmiui/cloud/sync/IRemoteFileSyncLogger;

    return-object v0

    :cond_13
    new-instance v0, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;

    invoke-direct {v0, p0}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const-string v0, "miui.cloud.sync.IRemoteFileSyncLogger"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_30

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_28

    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-interface {p0, p1}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->release(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
