.class Lmiui/telephony/CloudTelephonyManager$4;
.super Ljava/lang/Object;
.source "CloudTelephonyManager.java"

# interfaces
.implements Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValid(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p2}, Lmiui/cloud/util/SysHelper;->validateMAC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBusywaitRetryIntervalMillisRecommandation(Landroid/content/Context;)J
    .registers 4

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public getBusywaitTimeoutMillisRecommandation(Landroid/content/Context;)J
    .registers 4

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public tryGetId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lb4/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb4/a;->c:Lb4/a;

    if-nez v1, :cond_e

    new-instance v1, Lb4/a;

    invoke-direct {v1, p1}, Lb4/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb4/a;->c:Lb4/a;

    :cond_e
    sget-object p1, Lb4/a;->c:Lb4/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    monitor-exit v0

    iget-object v0, p1, Lb4/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p1, Lb4/a;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :cond_25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    iput-object v0, p1, Lb4/a;->b:Ljava/lang/String;

    :cond_2d
    return-object v0

    :catchall_2e
    move-exception p1

    monitor-exit v0

    throw p1
.end method
