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

    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getSLOT_KEY()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/CloudTelephonyManager;->SLOT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 2

    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    return-object p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    const-string v0, "blockingGetDeviceId is called by "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    sget-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    if-nez p3, :cond_2c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2c

    return-object v0

    :cond_2c
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    move-result-object p3

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_37

    move-wide p1, v2

    :cond_37
    invoke-interface {p3, p0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->getBusywaitRetryIntervalMillisRecommandation(Landroid/content/Context;)J

    move-result-wide v2

    const/4 v0, 0x0

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

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_50
    move-exception p1

    const-string p2, "blockingGetDeviceId, InterruptedException while busy-waiting"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    invoke-interface {p3, p0, v0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->checkValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    sput-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    return-object v0

    :cond_5f
    invoke-static {p0, v0}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "can\'t get a valid device id"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->getBusywaitTimeoutMillisRecommandation(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockingGetSimId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blockingGetTypedSimId(Landroid/content/Context;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 4

    const-wide/16 v0, -0x1

    :try_start_2
    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Never reach here. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blockingGetTypedSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiui/telephony/CloudTelephonyManager;->waitAndGetSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "failed to get sim id"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
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

.method public static getAvailableSimCount()I
    .registers 1

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    return v0
.end method

.method public static getDefaultSlotId()I
    .registers 1

    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0
.end method

.method private static getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;
    .registers 3

    sget-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfigurationTestInjection:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    const-class v0, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    if-eqz v1, :cond_13

    monitor-exit v0

    return-object v1

    :cond_13
    invoke-static {p0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->isEnforced(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string p0, "getDeviceId: use restrict_imie"

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    new-instance p0, Lmiui/telephony/CloudTelephonyManager$2;

    invoke-direct {p0}, Lmiui/telephony/CloudTelephonyManager$2;-><init>()V

    sput-object p0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    monitor-exit v0

    return-object p0

    :cond_27
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->hasTelephonyFeature(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const-string p0, "getDeviceId: use no_restrict_imei"

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    new-instance p0, Lmiui/telephony/CloudTelephonyManager$3;

    invoke-direct {p0}, Lmiui/telephony/CloudTelephonyManager$3;-><init>()V

    sput-object p0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    monitor-exit v0

    return-object p0

    :cond_3b
    const-string p0, "getDeviceId: use macAddress"

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    new-instance p0, Lmiui/telephony/CloudTelephonyManager$4;

    invoke-direct {p0}, Lmiui/telephony/CloudTelephonyManager$4;-><init>()V

    sput-object p0, Lmiui/telephony/CloudTelephonyManager;->sDeviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    monitor-exit v0

    return-object p0

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_d .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public static getDeviceIdQuietly(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->tryGetId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceId(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getLine1Number(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getLine1NumberForSlot(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMultiSimCount()I
    .registers 1

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getSimId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 5

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudTelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_CDMA()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_31

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5a

    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    invoke-direct {p1, v2, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_31
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_GSM()I

    move-result v1

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5a

    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_48
    if-nez v0, :cond_5a

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5a

    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    invoke-direct {p1, v2, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSimIdByPhoneTypeForSubId(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 5

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneTypeForSubscription(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudTelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_CDMA()I

    move-result v1

    if-ne v0, v1, :cond_31

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_48

    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_31
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_GSM()I

    move-result v1

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_48

    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSimIdBySlotId(Landroid/content/Context;I)J
    .registers 2

    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public static getSimIdForSubId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneTypeForSubId(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSimOperator(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimOperatorName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSlotIdBySimId(Landroid/content/Context;J)I
    .registers 3

    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result p0

    return p0
.end method

.method private static hasTelephonyFeature(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMultiSimSupported()Z
    .registers 1

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSimInserted(Landroid/content/Context;I)Z
    .registers 2

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result p0

    return p0
.end method

.method private static logDeviceId(Ljava/lang/String;)V
    .registers 4

    const-string v0, "getDeviceId: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_15
    const-string p0, "wrongId"

    :goto_17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->logDeviceIdInfo(Ljava/lang/String;)V

    return-void
.end method

.method private static logDeviceIdInfo(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CloudTelephonyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static waitAndGetSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 10

    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    invoke-static {}, Lmiui/cloud/util/SysHelper;->hasModemCapability()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    new-instance v2, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;-><init>()V

    new-instance v3, Lmiui/telephony/CloudTelephonyManager$5;

    invoke-direct {v3, v2, v0, p1}, Lmiui/telephony/CloudTelephonyManager$5;-><init>(Lmiui/telephony/CloudTelephonyManager$AsyncFuture;Lmiui/cloud/telephony/TelephonyManager;I)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getTelephonyIntents_ACTION_SIM_STATE_CHANGED()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lmiui/telephony/CloudTelephonyManager;->getSimIdByPhoneType(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {v2, p1}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    :cond_2d
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-gez p1, :cond_3d

    :try_start_33
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_39} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_4b
    .catchall {:try_start_33 .. :try_end_39} :catchall_49

    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object p1

    :cond_3d
    :try_start_3d
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_45} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_45} :catch_4b
    .catchall {:try_start_3d .. :try_end_45} :catchall_49

    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object p1

    :catchall_49
    move-exception p1

    goto :goto_69

    :catch_4b
    move-exception p1

    :try_start_4c
    instance-of p2, p1, Ljava/util/concurrent/TimeoutException;

    if-nez p2, :cond_5b

    const-string p2, "CloudTelephonyManager"

    const-string p3, "exception when get sim id"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_49

    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v1

    :cond_5b
    :try_start_5b
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    throw p1

    :catch_5e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_49

    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v1

    :goto_69
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw p1

    :cond_6d
    return-object v1
.end method
