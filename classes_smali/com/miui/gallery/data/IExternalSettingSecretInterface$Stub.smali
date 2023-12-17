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
.field public static final TRANSACTION_onFinishSettingSecret:I = 0x2

.field public static final TRANSACTION_preSettingSecret:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.miui.gallery.data.IExternalSettingSecretInterface"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/gallery/data/IExternalSettingSecretInterface;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.miui.gallery.data.IExternalSettingSecretInterface"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.miui.gallery.data.IExternalSettingSecretInterface"

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
    if-eq p1, v2, :cond_36

    .line 19
    if-eq p1, v0, :cond_2b

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p0, p1, p2}, Lcom/miui/gallery/data/IExternalSettingSecretInterface;->onFinishSettingSecret([Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    goto :goto_35

    .line 44
    :cond_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p0, p1}, Lcom/miui/gallery/data/IExternalSettingSecretInterface;->preSettingSecret([Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    :goto_35
    return v0

    .line 55
    :cond_36
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v0
.end method
