.class public abstract Le0/b$a;
.super Landroid/os/Binder;
.source "IUnusedAppRestrictionsBackportService.java"

# interfaces
.implements Le0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/b$a$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_isPermissionRevocationEnabledForApp:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    sget-object v0, Le0/b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Le0/b;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    sget-object v0, Le0/b;->e:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Le0/b;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Le0/b;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Le0/b$a$a;

    .line 22
    invoke-direct {v0, p0}, Le0/b$a$a;-><init>(Landroid/os/IBinder;)V

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
    sget-object v0, Le0/b;->e:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_d

    .line 6
    const v2, 0xffffff

    .line 9
    if-gt p1, v2, :cond_d

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_d
    const v2, 0x5f4e5446

    .line 17
    if-eq p1, v2, :cond_25

    .line 19
    if-eq p1, v1, :cond_19

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Le0/a$a;->asInterface(Landroid/os/IBinder;)Le0/a;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p0, p1}, Le0/b;->isPermissionRevocationEnabledForApp(Le0/a;)V

    .line 37
    return v1

    .line 38
    :cond_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return v1
.end method
