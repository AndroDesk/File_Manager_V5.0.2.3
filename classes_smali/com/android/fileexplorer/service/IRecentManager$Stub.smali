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
.field public static final TRANSACTION_getThumbnail:I

.field public static final TRANSACTION_init:I

.field public static final TRANSACTION_refresh:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/service/IRecentManager$Stub;->TRANSACTION_getThumbnail:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/service/IRecentManager$Stub;->TRANSACTION_init:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/service/IRecentManager$Stub;->TRANSACTION_refresh:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.fileexplorer.service.IRecentManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IRecentManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.fileexplorer.service.IRecentManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/fileexplorer/service/IRecentManager;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/fileexplorer/service/IRecentManager;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/fileexplorer/service/IRecentManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/IRecentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.fileexplorer.service.IRecentManager"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_46

    if-eq p1, v0, :cond_3a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_36

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/android/fileexplorer/service/IRecentManager;->getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1, v0}, Lcom/android/fileexplorer/service/IRecentManager$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_45

    :cond_36
    invoke-interface {p0}, Lcom/android/fileexplorer/service/IRecentManager;->refresh()V

    goto :goto_45

    :cond_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/service/IInitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IInitCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/fileexplorer/service/IRecentManager;->init(Lcom/android/fileexplorer/service/IInitCallback;)V

    :goto_45
    return v0

    :cond_46
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
