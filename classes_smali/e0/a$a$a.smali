.class public final Le0/a$a$a;
.super Ljava/lang/Object;
.source "IUnusedAppRestrictionsBackportCallback.java"

# interfaces
.implements Le0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/a$a;
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
    iput-object p1, p0, Le0/a$a$a;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Le0/a$a$a;->a:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public final onIsPermissionRevocationEnabledForAppResult(ZZ)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    sget-object v1, Le0/a;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz p1, :cond_e

    .line 14
    move v1, v2

    .line 15
    :cond_e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-object p1, p0, Le0/a$a$a;->a:Landroid/os/IBinder;

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-interface {p1, v2, v0, p2, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    throw p1
.end method
