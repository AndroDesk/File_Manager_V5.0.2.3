.class final Lcom/xiaomi/stat/d/e$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 2
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_f
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_29

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_29
    move-exception v2

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public a(Z)Z
    .registers 7

    .line 12
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 13
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_e
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_18

    move p1, v3

    goto :goto_19

    :cond_18
    move p1, v1

    .line 16
    :goto_19
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p1, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {p1, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 19
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_33

    if-eqz p1, :cond_2c

    move v1, v3

    .line 20
    :cond_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_33
    move-exception p1

    .line 22
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$b;->a:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method
