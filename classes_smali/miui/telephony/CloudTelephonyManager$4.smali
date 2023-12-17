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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValid(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p2}, Lmiui/cloud/util/SysHelper;->validateMAC(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
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

    .line 1
    const-class v0, Lb4/a;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lb4/a;->c:Lb4/a;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lb4/a;

    .line 10
    invoke-direct {v1, p1}, Lb4/a;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lb4/a;->c:Lb4/a;

    .line 15
    :cond_e
    sget-object p1, Lb4/a;->c:Lb4/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    .line 17
    monitor-exit v0

    .line 18
    iget-object v0, p1, Lb4/a;->b:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2d

    .line 26
    iget-object v1, p1, Lb4/a;->a:Landroid/net/wifi/WifiManager;

    .line 28
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_25

    .line 34
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    :cond_25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2d

    .line 44
    iput-object v0, p1, Lb4/a;->b:Ljava/lang/String;

    .line 46
    :cond_2d
    return-object v0

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    monitor-exit v0

    .line 49
    throw p1
.end method
