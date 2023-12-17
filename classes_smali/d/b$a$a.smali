.class public final Ld/b$a$a;
.super Ljava/lang/Object;
.source "OfficeLiteService.java"

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ld/b$a$a;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Le/a$a;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "cn.wps.moffice.service.work.snapshot.OfficeLiteService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p2, :cond_1b

    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-interface {p2, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    :goto_1e
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object p2, p0, Ld/b$a$a;->a:Landroid/os/IBinder;

    .line 42
    invoke-interface {p2, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_31

    .line 48
    sget p1, Ld/b$a;->a:I

    .line 50
    :cond_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_3b

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    return-void

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw p1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/b$a$a;->a:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method
