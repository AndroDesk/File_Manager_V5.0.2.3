.class Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/oaid/helpers/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/k;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/k;

    iget-object p1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SamsungDeviceIDHelper"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method