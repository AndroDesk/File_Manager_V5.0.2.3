.class public abstract Lcom/cleanmaster/sdk/ICallPrivacyCallback$Stub;
.super Landroid/os/Binder;
.source "ICallPrivacyCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ICallPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ICallPrivacyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ICallPrivacyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onFindPrimePrivacyData:I = 0x4

.field public static final TRANSACTION_onFindPrivacyItem:I = 0x3

.field public static final TRANSACTION_onPrivacyDataScanFinish:I = 0x5

.field public static final TRANSACTION_onScanItem:I = 0x2

.field public static final TRANSACTION_onStartScan:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.cleanmaster.sdk.ICallPrivacyCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICallPrivacyCallback;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.cleanmaster.sdk.ICallPrivacyCallback"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/cleanmaster/sdk/ICallPrivacyCallback;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/cleanmaster/sdk/ICallPrivacyCallback;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/ICallPrivacyCallback$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/ICallPrivacyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.cleanmaster.sdk.ICallPrivacyCallback"

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
    if-eq p1, v2, :cond_7d

    .line 19
    if-eq p1, v0, :cond_72

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_5f

    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq p1, v1, :cond_3f

    .line 27
    const/4 v1, 0x4

    .line 28
    if-eq p1, v1, :cond_2c

    .line 30
    const/4 v1, 0x5

    .line 31
    if-eq p1, v1, :cond_25

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_25
    invoke-interface {p0}, Lcom/cleanmaster/sdk/ICallPrivacyCallback;->onPrivacyDataScanFinish()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    goto :goto_7c

    .line 45
    :cond_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    move-result p1

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    move-result-object p4

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 56
    move-result p2

    .line 57
    invoke-interface {p0, p1, p4, p2}, Lcom/cleanmaster/sdk/ICallPrivacyCallback;->onFindPrimePrivacyData(ILjava/lang/String;I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    goto :goto_7c

    .line 64
    :cond_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 67
    move-result v2

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 79
    move-result v5

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 87
    move-result-object v7

    .line 88
    move-object v1, p0

    .line 89
    invoke-interface/range {v1 .. v7}, Lcom/cleanmaster/sdk/ICallPrivacyCallback;->onFindPrivacyItem(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    goto :goto_7c

    .line 96
    :cond_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 103
    move-result p2

    .line 104
    invoke-interface {p0, p1, p2}, Lcom/cleanmaster/sdk/ICallPrivacyCallback;->onScanItem(Ljava/lang/String;I)Z

    .line 107
    move-result p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    goto :goto_7c

    .line 115
    :cond_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 118
    move-result p1

    .line 119
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/ICallPrivacyCallback;->onStartScan(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    :goto_7c
    return v0

    .line 126
    :cond_7d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v0
.end method
