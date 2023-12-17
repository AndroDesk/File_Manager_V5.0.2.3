.class public abstract Lmiui/app/IFreeformCallback$Stub;
.super Landroid/os/Binder;
.source "IFreeformCallback.java"

# interfaces
.implements Lmiui/app/IFreeformCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/IFreeformCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/IFreeformCallback;
    .registers 2

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 3
    const-string v0, "Stub!"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method

.method public static getDefaultImpl()Lmiui/app/IFreeformCallback;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    const-string v1, "Stub!"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public static setDefaultImpl(Lmiui/app/IFreeformCallback;)Z
    .registers 2

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 3
    const-string v0, "Stub!"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    const-string v1, "Stub!"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "Stub!"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
