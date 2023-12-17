.class public Lmiui/cloud/CloudRequestUtils;
.super Ljava/lang/Object;
.source "CloudRequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudRequestUtils"

.field public static final URL_CALL_LOG_BASE:Ljava/lang/String;

.field public static final URL_CONTACT_BASE:Ljava/lang/String;

.field public static final URL_DEV_BASE:Ljava/lang/String;

.field public static final URL_DEV_SETTING:Ljava/lang/String; = "/api/user/device/setting"

.field public static final URL_FIND_DEVICE_BASE:Ljava/lang/String;

.field public static final URL_GALLERY_BASE:Ljava/lang/String;

.field public static final URL_MICARD_BASE:Ljava/lang/String;

.field public static final URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

.field public static final URL_MMS_BASE:Ljava/lang/String;

.field public static final URL_MUSIC_BASE:Ljava/lang/String;

.field public static final URL_NOTE_BASE:Ljava/lang/String;

.field public static final URL_RICH_MEDIA_BASE:Ljava/lang/String;

.field public static final URL_WIFI_BASE:Ljava/lang/String;

.field public static final URL_WIFI_SHARE_BASE:Ljava/lang/String;

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const-string v1, "http://api.micloud.preview.n.xiaomi.net"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v1, "http://fileapi.micloud.xiaomi.net"

    .line 10
    :goto_9
    sput-object v1, Lmiui/cloud/CloudRequestUtils;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    .line 12
    const-string v1, "http://micloud.preview.n.xiaomi.net"

    .line 14
    if-eqz v0, :cond_11

    .line 16
    move-object v2, v1

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const-string v2, "http://contactapi.micloud.xiaomi.net"

    .line 20
    :goto_13
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_CONTACT_BASE:Ljava/lang/String;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    const-string v2, "http://micardapi.micloud.preview.n.xiaomi.net"

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const-string v2, "http://micardapi.micloud.xiaomi.net"

    .line 29
    :goto_1c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_MICARD_BASE:Ljava/lang/String;

    .line 31
    if-eqz v0, :cond_22

    .line 33
    move-object v2, v1

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    const-string v2, "http://smsapi.micloud.xiaomi.net"

    .line 37
    :goto_24
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_MMS_BASE:Ljava/lang/String;

    .line 39
    if-eqz v0, :cond_2a

    .line 41
    move-object v2, v1

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    const-string v2, "https://galleryapi.micloud.xiaomi.net"

    .line 45
    :goto_2c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_GALLERY_BASE:Ljava/lang/String;

    .line 47
    if-eqz v0, :cond_32

    .line 49
    move-object v2, v1

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    const-string v2, "http://findapi.micloud.xiaomi.net"

    .line 53
    :goto_34
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_FIND_DEVICE_BASE:Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_3a

    .line 57
    move-object v2, v1

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    const-string v2, "http://wifiapi.micloud.xiaomi.net"

    .line 61
    :goto_3c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_WIFI_BASE:Ljava/lang/String;

    .line 63
    if-eqz v0, :cond_42

    .line 65
    move-object v2, v1

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    const-string v2, "http://noteapi.micloud.xiaomi.net"

    .line 69
    :goto_44
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_NOTE_BASE:Ljava/lang/String;

    .line 71
    if-eqz v0, :cond_4a

    .line 73
    move-object v2, v1

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    const-string v2, "http://musicapi.micloud.xiaomi.net"

    .line 77
    :goto_4c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_MUSIC_BASE:Ljava/lang/String;

    .line 79
    if-eqz v0, :cond_52

    .line 81
    move-object v2, v1

    .line 82
    goto :goto_54

    .line 83
    :cond_52
    const-string v2, "http://phonecallapi.micloud.xiaomi.net"

    .line 85
    :goto_54
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_CALL_LOG_BASE:Ljava/lang/String;

    .line 87
    if-eqz v0, :cond_59

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    const-string v1, "https://wifisharingapi.micloud.xiaomi.net"

    .line 92
    :goto_5b
    sput-object v1, Lmiui/cloud/CloudRequestUtils;->URL_WIFI_SHARE_BASE:Ljava/lang/String;

    .line 94
    if-eqz v0, :cond_62

    .line 96
    const-string v1, "http://api.device.preview.n.xiaomi.net"

    .line 98
    goto :goto_64

    .line 99
    :cond_62
    const-string v1, "http://api.device.xiaomi.net"

    .line 101
    :goto_64
    sput-object v1, Lmiui/cloud/CloudRequestUtils;->URL_DEV_BASE:Ljava/lang/String;

    .line 103
    if-eqz v0, :cond_6b

    .line 105
    const-string v0, "http://statusapi.micloud.preview.n.xiaomi.net"

    .line 107
    goto :goto_6d

    .line 108
    :cond_6b
    const-string v0, "http://statusapi.micloud.xiaomi.net"

    .line 110
    :goto_6d
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "iw"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    const-string p0, "he"

    .line 15
    return-object p0

    .line 16
    :cond_f
    const-string v0, "in"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    const-string p0, "id"

    .line 26
    return-object p0

    .line 27
    :cond_1a
    const-string v0, "ji"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_24

    .line 35
    const-string p0, "yi"

    .line 37
    :cond_24
    return-object p0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object p0

    .line 11
    if-eq v0, p0, :cond_d

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "calling this from your main thread can lead to deadlock"

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public static getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getResourceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/cloud/CloudRequestUtils;->getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lmiui/cloud/CloudRequestUtils;->sUserAgent:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_c0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "/"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "ro.product.mod_device"

    .line 34
    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2f

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_32
    const-string v1, "; MIUI/"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " E/"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "ro.miui.ui.version.name"

    .line 68
    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " B/"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    .line 82
    const-string v2, "null"

    .line 84
    if-eqz v1, :cond_5b

    .line 86
    const-string v1, "A"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    goto :goto_72

    .line 92
    :cond_5b
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    .line 94
    if-eqz v1, :cond_65

    .line 96
    const-string v1, "D"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    goto :goto_72

    .line 102
    :cond_65
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 104
    if-eqz v1, :cond_6f

    .line 106
    const-string v1, "S"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    goto :goto_72

    .line 112
    :cond_6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_72
    const-string v1, " L/"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_9b

    .line 130
    invoke-static {v3}, Lmiui/cloud/CloudRequestUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_a0

    .line 143
    const-string v3, "-"

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    goto :goto_a0

    .line 156
    :cond_9b
    const-string v1, "EN"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_a0
    :goto_a0
    const-string v1, " LO/"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_b7

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_ba

    .line 184
    :cond_b7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :goto_ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->sUserAgent:Ljava/lang/String;

    .line 193
    :cond_c0
    sget-object v0, Lmiui/cloud/CloudRequestUtils;->sUserAgent:Ljava/lang/String;

    .line 195
    return-object v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_16

    .line 15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_16

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    :goto_17
    return p0
.end method

.method public static waitUntilNetworkConnected(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lmiui/cloud/CloudRequestUtils;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 8
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;Lmiui/cloud/CloudRequestUtils$1;)V

    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    :try_start_13
    invoke-virtual {v1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->await()V
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_16} :catch_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 23
    :catch_16
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    goto :goto_1f

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 31
    throw v0

    .line 32
    :goto_1f
    return-void
.end method
