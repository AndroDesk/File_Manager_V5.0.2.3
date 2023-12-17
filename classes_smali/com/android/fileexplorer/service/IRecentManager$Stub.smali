.class public abstract Lcom/android/fileexplorer/service/IRecentManager$Stub;
.super Landroid/os/Binder;
.source "IRecentManager.java"

# interfaces
.implements Lcom/android/fileexplorer/service/IRecentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/IRecentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/IRecentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getThumbnail:I = 0x3

.field public static final TRANSACTION_init:I = 0x1

.field public static final TRANSACTION_refresh:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.android.fileexplorer.service.IRecentManager"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IRecentManager;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.android.fileexplorer.service.IRecentManager"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/android/fileexplorer/service/IRecentManager;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/android/fileexplorer/service/IRecentManager;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/android/fileexplorer/service/IRecentManager$Stub$Proxy;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/IRecentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.android.fileexplorer.service.IRecentManager"

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
    if-eq p1, v2, :cond_46

    .line 19
    if-eq p1, v0, :cond_3a

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_36

    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq p1, v1, :cond_1f

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 39
    move-result p4

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 43
    move-result p2

    .line 44
    invoke-interface {p0, p1, p4, p2}, Lcom/android/fileexplorer/service/IRecentManager;->getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-static {p3, p1, v0}, Lcom/android/fileexplorer/service/IRecentManager$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 54
    goto :goto_45

    .line 55
    :cond_36
    invoke-interface {p0}, Lcom/android/fileexplorer/service/IRecentManager;->refresh()V

    .line 58
    goto :goto_45

    .line 59
    :cond_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/android/fileexplorer/service/IInitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IInitCallback;

    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Lcom/android/fileexplorer/service/IRecentManager;->init(Lcom/android/fileexplorer/service/IInitCallback;)V

    .line 70
    :goto_45
    return v0

    .line 71
    :cond_46
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v0
.end method
