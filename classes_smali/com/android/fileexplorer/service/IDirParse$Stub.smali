.class public abstract Lcom/android/fileexplorer/service/IDirParse$Stub;
.super Landroid/os/Binder;
.source "IDirParse.java"

# interfaces
.implements Lcom/android/fileexplorer/service/IDirParse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/IDirParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/IDirParse$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_queryDirInfo:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/service/IDirParse$Stub;->TRANSACTION_queryDirInfo:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.fileexplorer.service.IDirParse"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IDirParse;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.fileexplorer.service.IDirParse"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/fileexplorer/service/IDirParse;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/fileexplorer/service/IDirParse;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/fileexplorer/service/IDirParse$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/service/IDirParse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.fileexplorer.service.IDirParse"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2c

    if-eq p1, v0, :cond_19

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/service/IQueryCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IQueryCallBack;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/fileexplorer/service/IDirParse;->queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_2c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
