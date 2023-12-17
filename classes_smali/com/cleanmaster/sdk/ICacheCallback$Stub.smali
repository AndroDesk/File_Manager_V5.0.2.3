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
    const-string v0, "com.cleanmaster.sdk.ICacheCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICacheCallback;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.cleanmaster.sdk.ICacheCallback"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/cleanmaster/sdk/ICacheCallback;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/cleanmaster/sdk/ICacheCallback;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/ICacheCallback$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/ICacheCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.cleanmaster.sdk.ICacheCallback"

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
    if-eq p1, v2, :cond_6d

    .line 19
    if-eq p1, v0, :cond_62

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_4f

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
    invoke-interface {p0}, Lcom/cleanmaster/sdk/ICacheCallback;->onCacheScanFinish()V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    goto :goto_6c

    .line 42
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3d

    .line 60
    move v5, v0

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    const/4 p1, 0x0

    .line 63
    move v5, p1

    .line 64
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 71
    move-result-object v7

    .line 72
    move-object v1, p0

    .line 73
    invoke-interface/range {v1 .. v7}, Lcom/cleanmaster/sdk/ICacheCallback;->onFindCacheItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    goto :goto_6c

    .line 80
    :cond_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result p2

    .line 88
    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/ICacheCallback;->onScanItem(Ljava/lang/String;I)Z

    .line 91
    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    goto :goto_6c

    .line 99
    :cond_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 102
    move-result p1

    .line 103
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/ICacheCallback;->onStartScan(I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    :goto_6c
    return v0

    .line 110
    :cond_6d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v0
.end method
