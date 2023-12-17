.class public abstract Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Stub;
.super Landroid/os/Binder;
.source "ICmSdkUpdateCallback.java"

# interfaces
.implements Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_FinishUpdateCheck:I = 0x1

.field public static final TRANSACTION_FinishUpdateData:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.cleanmaster.sdk.ICmSdkUpdateCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.cleanmaster.sdk.ICmSdkUpdateCallback"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.cleanmaster.sdk.ICmSdkUpdateCallback"

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
    if-eq p1, v2, :cond_3a

    .line 19
    if-eq p1, v0, :cond_27

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_1c

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    move-result p1

    .line 33
    invoke-interface {p0, p1}, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;->FinishUpdateData(I)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    goto :goto_39

    .line 40
    :cond_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 43
    move-result p1

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p0, p1, v1, v2, p2}, Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;->FinishUpdateCheck(IJLjava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    :goto_39
    return v0

    .line 59
    :cond_3a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v0
.end method
