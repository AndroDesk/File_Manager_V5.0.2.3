.class public abstract Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;
.super Landroid/os/Binder;
.source "IExternalSettingSecretInterface.java"

# interfaces
.implements Lcom/miui/gallery/data/IExternalSettingSecretInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/IExternalSettingSecretInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onFinishSettingSecret:I

.field public static final TRANSACTION_preSettingSecret:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;->TRANSACTION_onFinishSettingSecret:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;->TRANSACTION_preSettingSecret:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.gallery.data.IExternalSettingSecretInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/gallery/data/IExternalSettingSecretInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.miui.gallery.data.IExternalSettingSecretInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    return-object v0

    :cond_13
    new-instance v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.miui.gallery.data.IExternalSettingSecretInterface"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_36

    if-eq p1, v0, :cond_2b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/gallery/data/IExternalSettingSecretInterface;->onFinishSettingSecret([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_35

    :cond_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/gallery/data/IExternalSettingSecretInterface;->preSettingSecret([Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_35
    return v0

    :cond_36
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
