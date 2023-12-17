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
.field public static final TRANSACTION_onCacheScanFinish:I

.field public static final TRANSACTION_onFindCacheItem:I

.field public static final TRANSACTION_onScanItem:I

.field public static final TRANSACTION_onStartScan:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;->TRANSACTION_onCacheScanFinish:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;->TRANSACTION_onFindCacheItem:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;->TRANSACTION_onScanItem:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub;->TRANSACTION_onStartScan:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cleanmaster.sdk.ISystemCacheCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ISystemCacheCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.cleanmaster.sdk.ISystemCacheCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/cleanmaster/sdk/ISystemCacheCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/cleanmaster/sdk/ISystemCacheCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/ISystemCacheCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.cleanmaster.sdk.ISystemCacheCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5a

    if-eq p1, v0, :cond_4f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_29

    const/4 v1, 0x4

    if-eq p1, v1, :cond_22

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_22
    invoke-interface {p0}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onCacheScanFinish()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_59

    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-interface {p0, p1, p4, v1, v2}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onFindCacheItem(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_59

    :cond_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onScanItem(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    :cond_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/ISystemCacheCallback;->onStartScan(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_59
    return v0

    :cond_5a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
