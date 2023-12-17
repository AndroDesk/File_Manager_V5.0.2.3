.class Lmiui/telephony/CloudTelephonyManager$3;
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
    invoke-static {p2}, Lmiui/cloud/util/SysHelper;->validateIMEI(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getBusywaitRetryIntervalMillisRecommandation(Landroid/content/Context;)J
    .registers 4

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public getBusywaitTimeoutMillisRecommandation(Landroid/content/Context;)J
    .registers 4

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public tryGetId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lmiui/cloud/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
