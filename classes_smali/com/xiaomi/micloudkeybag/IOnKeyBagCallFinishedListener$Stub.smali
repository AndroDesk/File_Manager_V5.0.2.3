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

.field public static final TRANSACTION_onDecryptFinished:I

.field public static final TRANSACTION_onEncryptFinished:I

.field public static final TRANSACTION_onIsSupportedFinished:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->TRANSACTION_onDecryptFinished:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->TRANSACTION_onEncryptFinished:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;->TRANSACTION_onIsSupportedFinished:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;

    return-object v0

    :cond_13
    new-instance v0, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.xiaomi.micloudkeybag.IOnKeyBagCallFinishedListener"

    if-eq p1, v0, :cond_37

    const/4 v2, 0x2

    if-eq p1, v2, :cond_28

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;->onDecryptFinished(I[B)V

    return v0

    :cond_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;->onEncryptFinished(I[B)V

    return v0

    :cond_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_46

    move p2, v0

    goto :goto_47

    :cond_46
    const/4 p2, 0x0

    :goto_47
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;->onIsSupportedFinished(IZ)V

    return v0
.end method
