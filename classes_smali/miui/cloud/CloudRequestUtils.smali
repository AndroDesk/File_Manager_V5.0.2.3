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

    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_7

    const-string v1, "http://api.micloud.preview.n.xiaomi.net"

    goto :goto_9

    :cond_7
    const-string v1, "http://fileapi.micloud.xiaomi.net"

    :goto_9
    sput-object v1, Lmiui/cloud/CloudRequestUtils;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    const-string v1, "http://micloud.preview.n.xiaomi.net"

    if-eqz v0, :cond_11

    move-object v2, v1

    goto :goto_13

    :cond_11
    const-string v2, "http://contactapi.micloud.xiaomi.net"

    :goto_13
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_CONTACT_BASE:Ljava/lang/String;

    if-eqz v0, :cond_1a

    const-string v2, "http://micardapi.micloud.preview.n.xiaomi.net"

    goto :goto_1c

    :cond_1a
    const-string v2, "http://micardapi.micloud.xiaomi.net"

    :goto_1c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_MICARD_BASE:Ljava/lang/String;

    if-eqz v0, :cond_22

    move-object v2, v1

    goto :goto_24

    :cond_22
    const-string v2, "http://smsapi.micloud.xiaomi.net"

    :goto_24
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_MMS_BASE:Ljava/lang/String;

    if-eqz v0, :cond_2a

    move-object v2, v1

    goto :goto_2c

    :cond_2a
    const-string v2, "https://galleryapi.micloud.xiaomi.net"

    :goto_2c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_GALLERY_BASE:Ljava/lang/String;

    if-eqz v0, :cond_32

    move-object v2, v1

    goto :goto_34

    :cond_32
    const-string v2, "http://findapi.micloud.xiaomi.net"

    :goto_34
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_FIND_DEVICE_BASE:Ljava/lang/String;

    if-eqz v0, :cond_3a

    move-object v2, v1

    goto :goto_3c

    :cond_3a
    const-string v2, "http://wifiapi.micloud.xiaomi.net"

    :goto_3c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_WIFI_BASE:Ljava/lang/String;

    if-eqz v0, :cond_42

    move-object v2, v1

    goto :goto_44

    :cond_42
    const-string v2, "http://noteapi.micloud.xiaomi.net"

    :goto_44
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_NOTE_BASE:Ljava/lang/String;

    if-eqz v0, :cond_4a

    move-object v2, v1

    goto :goto_4c

    :cond_4a
    const-string v2, "http://musicapi.micloud.xiaomi.net"

    :goto_4c
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_MUSIC_BASE:Ljava/lang/String;

    if-eqz v0, :cond_52

    move-object v2, v1

    goto :goto_54

    :cond_52
    const-string v2, "http://phonecallapi.micloud.xiaomi.net"

    :goto_54
    sput-object v2, Lmiui/cloud/CloudRequestUtils;->URL_CALL_LOG_BASE:Ljava/lang/String;

    if-eqz v0, :cond_59

    goto :goto_5b

    :cond_59
    const-string v1, "https://wifisharingapi.micloud.xiaomi.net"

    :goto_5b
    sput-object v1, Lmiui/cloud/CloudRequestUtils;->URL_WIFI_SHARE_BASE:Ljava/lang/String;

    if-eqz v0, :cond_62

    const-string v1, "http://api.device.preview.n.xiaomi.net"

    goto :goto_64

    :cond_62
    const-string v1, "http://api.device.xiaomi.net"

    :goto_64
    sput-object v1, Lmiui/cloud/CloudRequestUtils;->URL_DEV_BASE:Ljava/lang/String;

    if-eqz v0, :cond_6b

    const-string v0, "http://statusapi.micloud.preview.n.xiaomi.net"

    goto :goto_6d

    :cond_6b
    const-string v0, "http://statusapi.micloud.xiaomi.net"

    :goto_6d
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "he"

    return-object p0

    :cond_f
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "id"

    return-object p0

    :cond_1a
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "yi"

    :cond_24
    return-object p0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public static getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lmiui/cloud/CloudRequestUtils;->getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/cloud/CloudRequestUtils;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_c0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.product.mod_device"

    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const-string v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " E/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " B/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    const-string v2, "null"

    if-eqz v1, :cond_5b

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_5b
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_65

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_65
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_6f

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_72
    const-string v1, " L/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9b

    invoke-static {v3}, Lmiui/cloud/CloudRequestUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    :cond_9b
    const-string v1, "EN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a0
    :goto_a0
    const-string v1, " LO/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b7

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ba

    :cond_b7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cloud/CloudRequestUtils;->sUserAgent:Ljava/lang/String;

    :cond_c0
    sget-object v0, Lmiui/cloud/CloudRequestUtils;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static waitUntilNetworkConnected(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lmiui/cloud/CloudRequestUtils;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;Lmiui/cloud/CloudRequestUtils$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_13
    invoke-virtual {v1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->await()V
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_16} :catch_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    :catch_16
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1f

    :catchall_1a
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0

    :goto_1f
    return-void
.end method
