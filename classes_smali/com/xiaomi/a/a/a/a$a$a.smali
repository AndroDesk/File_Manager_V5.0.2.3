.class Lcom/xiaomi/a/a/a/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/a/a/a/a$a;
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
    iput-object p1, p0, Lcom/xiaomi/a/a/a/a$a$a;->a:Landroid/os/IBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "com.xiaomi.xmsf.push.service.IHttpService"

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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
    const-string v2, "com.xiaomi.xmsf.push.service.IHttpService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 20
    iget-object p1, p0, Lcom/xiaomi/a/a/a/a$a$a;->a:Landroid/os/IBinder;

    .line 22
    const/4 p2, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    move-result-object p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return-object p1

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/a/a/a/a$a$a;->a:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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
    const-string v2, "com.xiaomi.xmsf.push.service.IHttpService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 20
    iget-object p1, p0, Lcom/xiaomi/a/a/a/a$a$a;->a:Landroid/os/IBinder;

    .line 22
    const/4 p2, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    move-result-object p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return-object p1

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw p1
.end method
