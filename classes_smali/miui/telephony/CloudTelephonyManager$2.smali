.class Lmiui/telephony/CloudTelephonyManager$2;
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
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 7
    return p1
.end method

.method public getBusywaitRetryIntervalMillisRecommandation(Landroid/content/Context;)J
    .registers 4

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public getBusywaitTimeoutMillisRecommandation(Landroid/content/Context;)J
    .registers 4

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public tryGetId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->useOAID()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1b

    .line 7
    const-string v0, "getDeviceId: restrict_imie, try get oaid"

    .line 9
    invoke-static {v0}, Lmiui/telephony/CloudTelephonyManager;->access$100(Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1b

    .line 22
    const-string p1, "getDeviceId: restrict_imei, use oaid"

    .line 24
    invoke-static {p1}, Lmiui/telephony/CloudTelephonyManager;->access$100(Ljava/lang/String;)V

    .line 27
    return-object v0

    .line 28
    :cond_1b
    const-string v0, "content://com.xiaomi.cloud.cloudidprovider"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "getCloudId"

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3a

    .line 47
    const-string p1, "getDeviceId: restrict_imie, use cloudId"

    .line 49
    invoke-static {p1}, Lmiui/telephony/CloudTelephonyManager;->access$100(Ljava/lang/String;)V

    .line 52
    const-string p1, "result_id"

    .line 54
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_3a
    const-string v0, "getDeviceId: restrict_imie, use androidId"

    .line 61
    invoke-static {v0}, Lmiui/telephony/CloudTelephonyManager;->access$100(Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method
