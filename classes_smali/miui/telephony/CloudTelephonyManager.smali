.class public Lmiui/telephony/CloudTelephonyManager;
.super Ljava/lang/Object;
.source "CloudTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/CloudTelephonyManager$TypedSimId;,
        Lmiui/telephony/CloudTelephonyManager$AsyncFuture;,
        Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;
    }
.end annotation


# static fields
.field public static final SLOT_ID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CloudTelephonyManager"

.field private static volatile sDeviceIdCache:Ljava/lang/String;

.field private static volatile sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

.field public static volatile sDeviceIdConfigurationTestInjection:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getSLOT_KEY()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lmiui/telephony/CloudTelephonyManager;->SLOT_ID:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceId(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 9

    .line 5
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    const-string v0, "blockingGetDeviceId is called by "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudTelephonyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    if-nez p3, :cond_2c

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2c

    return-object v0

    .line 10
    :cond_2c
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    move-result-object p3

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_37

    move-wide p1, v2

    .line 11
    :cond_37
    invoke-interface {p3, p0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->getBusywaitRetryIntervalMillisRecommandation(Landroid/content/Context;)J

    move-result-wide v2

    const/4 v0, 0x0

    .line 12
    :try_start_3c
    new-instance v4, Lmiui/telephony/CloudTelephonyManager$1;

    invoke-direct {v4, p3, p0}, Lmiui/telephony/CloudTelephonyManager$1;-><init>(Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;Landroid/content/Context;)V

    invoke-static {v4, p1, p2, v2, v3}, Lmicloud/compat/v18/utils/BusyWaitUtil;->a(Lmicloud/compat/v18/utils/BusyWaitUtil$a;JJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_47} :catch_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3c .. :try_end_47} :catch_49

    move-object v0, p1

    goto :goto_56

    :catch_49
    move-exception p1

    const-string p2, "blockingGetDeviceId, busy-wait timeout"

    .line 13
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_50
    move-exception p1

    const-string p2, "blockingGetDeviceId, InterruptedException while busy-waiting"

    .line 14
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_56
    invoke-interface {p3, p0, v0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->checkValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 16
    sput-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    return-object v0

    .line 17
    :cond_5f
    invoke-static {p0, v0}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "can\'t get a valid device id"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    .line 2
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->getBusywaitTimeoutMillisRecommandation(Landroid/content/Context;)J

    move-result-wide v0

    .line 3
    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockingGetSimId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static blockingGetTypedSimId(Landroid/content/Context;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 4

    const-wide/16 v0, -0x1

    .line 1
    :try_start_2
    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 2
    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Never reach here. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blockingGetTypedSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 4

    .line 3
    invoke-static {p0, p1, p2, p3}, Lmiui/telephony/CloudTelephonyManager;->waitAndGetSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 4
    :cond_7
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "failed to get sim id"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
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

.method public static getAvailableSimCount()I
    .registers 1

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardCount()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getDefaultSlotId()I
    .registers 1

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiui/cloud/telephony/SubscriptionManager;->getDefaultSlotId()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;
    .registers 3

    .line 1
    sget-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfigurationTestInjection:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    const-class v0, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    sget-object v1, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 16
    if-eqz v1, :cond_13

    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :cond_13
    invoke-static {p0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->isEnforced(Landroid/content/Context;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_27

    .line 26
    const-string p0, "getDeviceId: use restrict_imie"

    .line 28
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    .line 31
    new-instance p0, Lmiui/telephony/CloudTelephonyManager$2;

    .line 33
    invoke-direct {p0}, Lmiui/telephony/CloudTelephonyManager$2;-><init>()V

    .line 36
    sput-object p0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :cond_27
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->hasTelephonyFeature(Landroid/content/Context;)Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_3b

    .line 46
    const-string p0, "getDeviceId: use no_restrict_imei"

    .line 48
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    .line 51
    new-instance p0, Lmiui/telephony/CloudTelephonyManager$3;

    .line 53
    invoke-direct {p0}, Lmiui/telephony/CloudTelephonyManager$3;-><init>()V

    .line 56
    sput-object p0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 58
    monitor-exit v0

    .line 59
    return-object p0

    .line 60
    :cond_3b
    const-string p0, "getDeviceId: use macAddress"

    .line 62
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    .line 65
    new-instance p0, Lmiui/telephony/CloudTelephonyManager$4;

    .line 67
    invoke-direct {p0}, Lmiui/telephony/CloudTelephonyManager$4;-><init>()V

    .line 70
    sput-object p0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 72
    monitor-exit v0

    .line 73
    return-object p0

    .line 74
    :catchall_49
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_d .. :try_end_4b} :catchall_49

    .line 76
    throw p0
.end method

.method public static getDeviceIdQuietly(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->tryGetId(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceId(Ljava/lang/String;)V

    .line 12
    return-object p0
.end method

.method public static getLine1Number(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getLine1NumberForSlot(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getMultiSimCount()I
    .registers 1

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneCount()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getSimId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_f

    .line 11
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method private static getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "phone type: "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "CloudTelephonyManager"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_CDMA()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v0, v1, :cond_31

    .line 34
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_5a

    .line 44
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 46
    invoke-direct {p1, v2, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 49
    return-object p1

    .line 50
    :cond_31
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_GSM()I

    .line 53
    move-result v1

    .line 54
    if-ne v0, v1, :cond_48

    .line 56
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_5a

    .line 66
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 68
    const/4 v0, 0x2

    .line 69
    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 72
    return-object p1

    .line 73
    :cond_48
    if-nez v0, :cond_5a

    .line 75
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_5a

    .line 85
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 87
    invoke-direct {p1, v2, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 90
    return-object p1

    .line 91
    :cond_5a
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method private static getSimIdByPhoneTypeForSubId(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneTypeForSubscription(I)I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "device type: "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "CloudTelephonyManager"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_CDMA()I

    .line 30
    move-result v1

    .line 31
    if-ne v0, v1, :cond_31

    .line 33
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_48

    .line 43
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 49
    return-object p1

    .line 50
    :cond_31
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_GSM()I

    .line 53
    move-result v1

    .line 54
    if-ne v0, v1, :cond_48

    .line 56
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_48

    .line 66
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 68
    const/4 v0, 0x2

    .line 69
    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 72
    return-object p1

    .line 73
    :cond_48
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public static getSimIdBySlotId(Landroid/content/Context;I)J
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    .line 8
    move-result p0

    .line 9
    int-to-long p0, p0

    .line 10
    return-wide p0
.end method

.method public static getSimIdForSubId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneTypeForSubId(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_f

    .line 11
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static getSimOperator(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getSimOperatorName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getSlotIdBySimId(Landroid/content/Context;J)I
    .registers 3

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    .line 4
    move-result-object p0

    .line 5
    long-to-int p1, p1

    .line 6
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static hasTelephonyFeature(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.hardware.telephony"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static isMultiSimSupported()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->isMultiSimEnabled()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isSimInserted(Landroid/content/Context;I)Z
    .registers 2

    .line 1
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->hasIccCard(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static logDeviceId(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "getDeviceId: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    if-eqz p0, :cond_15

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    if-lt v1, v2, :cond_15

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const-string p0, "wrongId"

    .line 24
    :goto_17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static logDeviceIdInfo(Ljava/lang/String;)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "CloudTelephonyManager"

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p0, v0, v1

    .line 12
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 15
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method private static waitAndGetSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 10

    .line 1
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lmiui/cloud/util/SysHelper;->hasModemCapability()Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_6d

    .line 11
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    .line 17
    invoke-direct {v2}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;-><init>()V

    .line 20
    new-instance v3, Lmiui/telephony/CloudTelephonyManager$5;

    .line 22
    invoke-direct {v3, v2, v0, p1}, Lmiui/telephony/CloudTelephonyManager$5;-><init>(Lmiui/telephony/CloudTelephonyManager$AsyncFuture;Lmiui/cloud/telephony/TelephonyManager;I)V

    .line 25
    new-instance v4, Landroid/content/IntentFilter;

    .line 27
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getTelephonyIntents_ACTION_SIM_STATE_CHANGED()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    invoke-static {v0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2d

    .line 43
    invoke-virtual {v2, p1}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 46
    :cond_2d
    const-wide/16 v4, 0x0

    .line 48
    cmp-long p1, p2, v4

    .line 50
    if-gez p1, :cond_3d

    .line 52
    :try_start_33
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_39} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_4b
    .catchall {:try_start_33 .. :try_end_39} :catchall_49

    .line 58
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-object p1

    .line 62
    :cond_3d
    :try_start_3d
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-virtual {v2, p2, p3, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_45} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_45} :catch_4b
    .catchall {:try_start_3d .. :try_end_45} :catchall_49

    .line 70
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-object p1

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    goto :goto_69

    .line 76
    :catch_4b
    move-exception p1

    .line 77
    :try_start_4c
    instance-of p2, p1, Ljava/util/concurrent/TimeoutException;

    .line 79
    if-nez p2, :cond_5b

    .line 81
    const-string p2, "CloudTelephonyManager"

    .line 83
    const-string p3, "exception when get sim id"

    .line 85
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_49

    .line 88
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-object v1

    .line 92
    :cond_5b
    :try_start_5b
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    .line 94
    throw p1

    .line 95
    :catch_5e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_49

    .line 102
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-object v1

    .line 106
    :goto_69
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    throw p1

    .line 110
    :cond_6d
    return-object v1
.end method
