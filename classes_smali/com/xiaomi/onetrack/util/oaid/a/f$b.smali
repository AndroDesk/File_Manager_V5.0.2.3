.class public abstract Lcom/xiaomi/onetrack/util/oaid/a/f$b;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/f;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    const-string v1, "com.samsung.android.deviceidservice.IDeviceIdService"

    .line 7
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/a/f$a;

    .line 16
    invoke-direct {v0, p1}, Lcom/xiaomi/onetrack/util/oaid/a/f$a;-><init>(Landroid/os/IBinder;)V

    .line 19
    return-object v0
.end method
