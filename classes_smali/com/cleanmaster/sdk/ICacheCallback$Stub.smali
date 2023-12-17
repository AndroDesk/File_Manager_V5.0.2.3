.class public abstract Lcom/cleanmaster/sdk/ICacheCallback$Stub;
.super Landroid/os/Binder;
.source "ICacheCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ICacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ICacheCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ICacheCallback$Stub$Proxy;
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

    sput v0, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->TRANSACTION_onCacheScanFinish:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->TRANSACTION_onFindCacheItem:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->TRANSACTION_onScanItem:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/cleanmaster/sdk/ICacheCallback$Stub;->TRANSACTION_onStartScan:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cleanmaster.sdk.ICacheCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICacheCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.cleanmaster.sdk.ICacheCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/cleanmaster/sdk/ICacheCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/cleanmaster/sdk/ICacheCallback;

    return-object v0

    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/ICacheCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/ICacheCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    const/4 v0, 0x1

    const-string v1, "com.cleanmaster.sdk.ICacheCallback"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6d

    if-eq p1, v0, :cond_62

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_29

    const/4 v1, 0x4

    if-eq p1, v1, :cond_22

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_22
    invoke-interface {p0}, Lcom/cleanmaster/sdk/ICacheCallback;->onCacheScanFinish()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6c

    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3d

    move v5, v0

    goto :goto_3f

    :cond_3d
    const/4 p1, 0x0

    move v5, p1

    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/cleanmaster/sdk/ICacheCallback;->onFindCacheItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6c

    :cond_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/ICacheCallback;->onScanItem(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    :cond_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/ICacheCallback;->onStartScan(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_6c
    return v0

    :cond_6d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
