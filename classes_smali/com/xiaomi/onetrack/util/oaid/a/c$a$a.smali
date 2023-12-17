.class public Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.zui.deviceidservice.IDeviceidInterface"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_22
    move-exception v2

    goto :goto_30

    :catch_24
    move-exception v2

    .line 9
    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    return-object v0

    .line 12
    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    throw v2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_8
    const-string v1, "com.zui.deviceidservice.IDeviceidInterface"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_22
    move-exception v1

    goto :goto_30

    :catch_24
    move-exception v1

    .line 23
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    const/4 p1, 0x0

    return-object p1

    .line 26
    :goto_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 28
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.zui.deviceidservice.IDeviceidInterface"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_22
    move-exception v2

    goto :goto_30

    :catch_24
    move-exception v2

    .line 9
    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    return-object v0

    .line 12
    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    throw v2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_8
    const-string v1, "com.zui.deviceidservice.IDeviceidInterface"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_22
    move-exception v1

    goto :goto_30

    :catch_24
    move-exception v1

    .line 23
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    const/4 p1, 0x0

    return-object p1

    .line 26
    :goto_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 28
    throw v1
.end method

.method public c()Z
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_9
    const-string v3, "com.zui.deviceidservice.IDeviceidInterface"

    .line 12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;->a:Landroid/os/IBinder;

    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1e

    .line 30
    const/4 v2, 0x1

    .line 31
    :cond_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_25

    .line 37
    goto :goto_2b

    .line 38
    :catchall_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    :goto_2b
    return v2
.end method
