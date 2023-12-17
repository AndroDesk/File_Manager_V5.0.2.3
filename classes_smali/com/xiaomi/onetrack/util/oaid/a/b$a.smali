.class public final Lcom/xiaomi/onetrack/util/oaid/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
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
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    .line 16
    const/4 v3, 0x1

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
    goto :goto_27

    .line 29
    :catchall_1c
    move-exception v2

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-object v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public b()Z
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
    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/oaid/a/b$a;->a:Landroid/os/IBinder;

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 27
    move-result v3
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1f

    .line 28
    if-nez v3, :cond_25

    .line 30
    move v2, v4

    .line 31
    goto :goto_25

    .line 32
    :catchall_1f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    :cond_25
    :goto_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    return v2
.end method
