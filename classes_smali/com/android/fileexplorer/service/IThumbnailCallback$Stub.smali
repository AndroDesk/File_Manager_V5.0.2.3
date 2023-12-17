.class public abstract Lcom/android/fileexplorer/service/IThumbnailCallback$Stub;
.super Landroid/os/Binder;
.source "IThumbnailCallback.java"

# interfaces
.implements Lcom/android/fileexplorer/service/IThumbnailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/IThumbnailCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/IThumbnailCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onReady:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.android.fileexplorer.service.IThumbnailCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IThumbnailCallback;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.android.fileexplorer.service.IThumbnailCallback"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/android/fileexplorer/service/IThumbnailCallback;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/android/fileexplorer/service/IThumbnailCallback;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/android/fileexplorer/service/IThumbnailCallback$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/IThumbnailCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.android.fileexplorer.service.IThumbnailCallback"

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
    if-eq p1, v2, :cond_24

    .line 19
    if-eq p1, v0, :cond_19

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/service/IThumbnailCallback;->onReady(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    return v0

    .line 37
    :cond_24
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return v0
.end method
