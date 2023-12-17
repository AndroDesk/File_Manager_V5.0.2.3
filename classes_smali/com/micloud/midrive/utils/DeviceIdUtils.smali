.class public Lcom/micloud/midrive/utils/DeviceIdUtils;
.super Ljava/lang/Object;
.source "DeviceIdUtils.java"


# static fields
.field private static volatile mCachedDeviceId:Ljava/lang/String;


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

.method private static getCloudId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "content://com.xiaomi.cloud.cloudidprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "getCloudId"

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_29

    const-string v0, "result_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getCloudId error: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :cond_29
    return-object v1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    if-nez v0, :cond_16

    const-class v0, Lcom/micloud/midrive/utils/DeviceIdUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    if-nez v1, :cond_11

    invoke-static {p0}, Lcom/micloud/midrive/utils/DeviceIdUtils;->innerGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    :goto_16
    sget-object p0, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method private static getImei()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static innerGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->isEnforced(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "getDeviceId: try to get imei"

    aput-object v4, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/utils/DeviceIdUtils;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "getDeviceId: imei is "

    aput-object v1, p0, v2

    aput-object v0, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-object v0

    :cond_28
    invoke-static {}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->useOAID()Z

    move-result v0

    if-eqz v0, :cond_4d

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "getDeviceId: restrict imei, try to get oaid"

    aput-object v4, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/micloud/midrive/utils/DeviceIdUtils;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "getDeviceId: oaid is "

    aput-object v1, p0, v2

    aput-object v0, p0, v3

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-object v0

    :cond_4d
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "getDeviceId: fail to get oaid, try to get cloudId"

    aput-object v4, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/micloud/midrive/utils/DeviceIdUtils;->getCloudId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getDeviceId: CloudId is "

    aput-object v1, v0, v2

    aput-object p0, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    return-object p0

    :cond_6c
    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "getDeviceId: fail to get cloudId"

    aput-object v0, p0, v2

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v0, "cannot get device id"

    invoke-direct {p0, v0}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
