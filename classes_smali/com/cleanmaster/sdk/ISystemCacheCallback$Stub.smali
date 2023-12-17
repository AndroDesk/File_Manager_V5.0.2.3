.class public abstract Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;
.super Landroid/os/Binder;
.source "ISystemCacheCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ISystemCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ISystemCacheCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onCacheScanFinish:I = 0x4

.field public static final TRANSACTION_onFindCacheItem:I = 0x3

.field public static final TRANSACTION_onScanItem:I = 0x2

.field public static final TRANSACTION_onStartScan:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.cleanmaster.sdk.ISystemCacheCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISystemCacheCallback;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.cleanmaster.sdk.ISystemCacheCallback"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/cleanmaster/sdk/ISystemCacheCallback;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/cleanmaster/sdk/ISystemCacheCallback;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.cleanmaster.sdk.ISystemCacheCallback"

    .line 4
    if-lt p1, v0, :cond_d

    .line 6
    const v2, 0xffffff

    .line 9
    if-gt p1, v2, :cond_d

    .line 11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_d
    const v2, 0x5f4e5446

    .line 17
    if-eq p1, v2, :cond_5a

    .line 19
    if-eq p1, v0, :cond_4f

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_3c

    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq p1, v1, :cond_29

    .line 27
    const/4 v1, 0x4

    .line 28
    if-eq p1, v1, :cond_22

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_22
    invoke-interface {p0}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onCacheScanFinish()V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    goto :goto_59

    .line 42
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    move-result-object p4

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 53
    move-result-wide v1

    .line 54
    invoke-interface {p0, p1, p4, v1, v2}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onFindCacheItem(Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    goto :goto_59

    .line 61
    :cond_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 68
    move-result p2

    .line 69
    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onScanItem(Ljava/lang/String;I)Z

    .line 72
    move-result p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    goto :goto_59

    .line 80
    :cond_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 83
    move-result p1

    .line 84
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onStartScan(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    :goto_59
    return v0

    .line 91
    :cond_5a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v0
.end method
