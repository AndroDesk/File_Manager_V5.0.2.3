.class public abstract Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;
.super Landroid/os/Binder;
.source "IOnKeyBagCallFinishedListener.java"

# interfaces
.implements Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

.field public static final TRANSACTION_onDecryptFinished:I = 0x3

.field public static final TRANSACTION_onEncryptFinished:I = 0x2

.field public static final TRANSACTION_onIsSupportedFinished:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    .line 4
    if-eq p1, v0, :cond_37

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_28

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq p1, v2, :cond_19

    .line 12
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_15

    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return v0

    .line 26
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    move-result p1

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;->onDecryptFinished(I[B)V

    .line 40
    return v0

    .line 41
    :cond_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 47
    move-result p1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;->onEncryptFinished(I[B)V

    .line 55
    return v0

    .line 56
    :cond_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    move-result p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_46

    .line 69
    move p2, v0

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    const/4 p2, 0x0

    .line 72
    :goto_47
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;->onIsSupportedFinished(IZ)V

    .line 75
    return v0
.end method
