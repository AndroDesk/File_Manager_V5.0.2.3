.class public Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/g$a;
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
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
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
    const-string v3, "com.bun.lib.MsaIdInterface"

    .line 12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_30

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_26

    .line 36
    const/4 v0, 0x1

    .line 37
    move v2, v0

    .line 38
    goto :goto_30

    .line 39
    :catchall_26
    move-exception v3

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    :cond_30
    :goto_30
    return v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
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
    :try_start_8
    const-string v2, "com.bun.lib.MsaIdInterface"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    .line 28
    goto :goto_23

    .line 29
    :catchall_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    return-object v2
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
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
    :try_start_8
    const-string v2, "com.bun.lib.MsaIdInterface"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;->a:Landroid/os/IBinder;

    .line 16
    const/4 v3, 0x6

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    .line 24
    goto :goto_1e

    .line 25
    :catchall_18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    :goto_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    return-void
.end method
