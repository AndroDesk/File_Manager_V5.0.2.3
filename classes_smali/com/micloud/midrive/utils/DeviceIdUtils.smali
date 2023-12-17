.class public Lcom/micloud/midrive/utils/DeviceIdUtils;
.super Ljava/lang/Object;
.source "DeviceIdUtils.java"


# static fields
.field private static volatile mCachedDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCloudId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "content://com.xiaomi.cloud.cloudidprovider"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 12
    const-string v2, "getCloudId"

    .line 14
    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_29

    .line 20
    const-string v0, "result_id"

    .line 22
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_19} :catch_1a

    .line 26
    return-object p0

    .line 27
    :catch_1a
    move-exception p0

    .line 28
    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, "getCloudId error: "

    .line 34
    aput-object v3, v0, v2

    .line 36
    const/4 v2, 0x1

    .line 37
    aput-object p0, v0, v2

    .line 39
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 42
    :cond_29
    return-object v1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_16

    .line 5
    const-class v0, Lcom/micloud/midrive/utils/DeviceIdUtils;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    .line 10
    if-nez v1, :cond_11

    .line 12
    invoke-static {p0}, Lcom/micloud/midrive/utils/DeviceIdUtils;->innerGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    sput-object p0, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    .line 18
    :cond_11
    monitor-exit v0

    .line 19
    goto :goto_16

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    .line 22
    throw p0

    .line 23
    :cond_16
    :goto_16
    sget-object p0, Lcom/micloud/midrive/utils/DeviceIdUtils;->mCachedDeviceId:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method private static getImei()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static innerGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->isEnforced(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_28

    .line 10
    new-array v0, v3, [Ljava/lang/Object;

    .line 12
    const-string v4, "getDeviceId: try to get imei"

    .line 14
    aput-object v4, v0, v2

    .line 16
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/micloud/midrive/utils/DeviceIdUtils;->getImei()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_28

    .line 29
    new-array p0, v1, [Ljava/lang/Object;

    .line 31
    const-string v1, "getDeviceId: imei is "

    .line 33
    aput-object v1, p0, v2

    .line 35
    aput-object v0, p0, v3

    .line 37
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 40
    return-object v0

    .line 41
    :cond_28
    invoke-static {}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->useOAID()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4d

    .line 47
    new-array v0, v3, [Ljava/lang/Object;

    .line 49
    const-string v4, "getDeviceId: restrict imei, try to get oaid"

    .line 51
    aput-object v4, v0, v2

    .line 53
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 56
    invoke-static {p0}, Lcom/micloud/midrive/utils/DeviceIdUtils;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_4d

    .line 66
    new-array p0, v1, [Ljava/lang/Object;

    .line 68
    const-string v1, "getDeviceId: oaid is "

    .line 70
    aput-object v1, p0, v2

    .line 72
    aput-object v0, p0, v3

    .line 74
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 77
    return-object v0

    .line 78
    :cond_4d
    new-array v0, v3, [Ljava/lang/Object;

    .line 80
    const-string v4, "getDeviceId: fail to get oaid, try to get cloudId"

    .line 82
    aput-object v4, v0, v2

    .line 84
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 87
    invoke-static {p0}, Lcom/micloud/midrive/utils/DeviceIdUtils;->getCloudId(Landroid/content/Context;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_6c

    .line 97
    new-array v0, v1, [Ljava/lang/Object;

    .line 99
    const-string v1, "getDeviceId: CloudId is "

    .line 101
    aput-object v1, v0, v2

    .line 103
    aput-object p0, v0, v3

    .line 105
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 108
    return-object p0

    .line 109
    :cond_6c
    new-array p0, v3, [Ljava/lang/Object;

    .line 111
    const-string v0, "getDeviceId: fail to get cloudId"

    .line 113
    aput-object v0, p0, v2

    .line 115
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 118
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    .line 120
    const-string v0, "cannot get device id"

    .line 122
    invoke-direct {p0, v0}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p0
.end method
