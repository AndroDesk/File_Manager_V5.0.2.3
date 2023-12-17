.class public Lmiui/cloud/util/SysHelper;
.super Ljava/lang/Object;
.source "SysHelper.java"


# static fields
.field private static final IMEI_LENGTH:I

.field private static final MEID_LENGTH:I

.field private static final PHONE_DEVID_MIN_LENGTH:I

.field private static final TAG:Ljava/lang/String; = "SysHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/util/SysHelper;->IMEI_LENGTH:I

    const v0, 0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/util/SysHelper;->MEID_LENGTH:I

    const v0, 0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/util/SysHelper;->PHONE_DEVID_MIN_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuantityStringWithUnit(J)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7

    long-to-float p0, p1

    const p1, 0x4ccccccd  # 1.07374184E8f

    cmpl-float p1, p0, p1

    const-string p2, "%1$.2f"

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x44800000  # 1024.0f

    const-string v3, "MB"

    if-lez p1, :cond_22

    div-float/2addr p0, v2

    div-float/2addr p0, v2

    div-float/2addr p0, v2

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "GB"

    goto :goto_42

    :cond_22
    const p1, 0x47cccccd

    cmpl-float p1, p0, p1

    if-lez p1, :cond_38

    div-float/2addr p0, v2

    div-float/2addr p0, v2

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_42

    :cond_38
    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_40

    const-string p0, "0.1"

    goto :goto_42

    :cond_40
    const-string p0, "0"

    :goto_42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 p2, 0x2

    const-string v2, "%s%s"

    if-ne p1, v1, :cond_5a

    new-array p1, p2, [Ljava/lang/Object;

    aput-object v3, p1, v0

    aput-object p0, p1, v1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    new-array p1, p2, [Ljava/lang/Object;

    aput-object p0, p1, v0

    aput-object v3, p1, v1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWarnIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.WARN_INVALID_DEVICE_ID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static hasModemCapability()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.radio.noril"

    invoke-static {v1, v0}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static hasSmsCapability(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static hasTelephonyFeature(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasVoiceCapability(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "isVoiceCapable"

    invoke-static {v1, v3, v2}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_25

    new-array p0, v2, [Ljava/lang/Object;

    const-string v1, "invoke isVoiceCapable Method not found!"

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return v0

    :cond_25
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_28
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_34} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_34} :catch_35

    return p0

    :catch_35
    new-array p0, v2, [Ljava/lang/Object;

    const-string v1, "Impossible: invoke isVoiceCapable error for TelephonyManager, your runtime Android SDK is lower than 22?"

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return v0

    :catch_3f
    new-array p0, v2, [Ljava/lang/Object;

    const-string v1, "invoke isVoiceCapable IllegalAccessException "

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return v0
.end method

.method private static isEmptyDeviceId(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static isSecondUser()Z
    .registers 1

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static maskHead(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .registers 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    div-int p1, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_20

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p1, :cond_19

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_1a

    :cond_19
    move v3, p2

    :goto_1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskMiddle(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .registers 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    div-int p1, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_23

    if-lt v2, p1, :cond_19

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p1, :cond_17

    goto :goto_19

    :cond_17
    move v3, p2

    goto :goto_1d

    :cond_19
    :goto_19
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :goto_1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskMiddle(Ljava/lang/CharSequence;IIC)Ljava/lang/String;
    .registers 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_21

    if-lt v2, p1, :cond_17

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p2, :cond_15

    goto :goto_17

    :cond_15
    move v3, p3

    goto :goto_1b

    :cond_17
    :goto_17
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :goto_1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskTail(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lmiui/cloud/util/SysHelper;->maskTail(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskTail(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    if-ltz p2, :cond_2f

    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    move p1, v0

    :cond_6
    if-nez p0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p1

    if-le v1, p2, :cond_15

    goto :goto_16

    :cond_15
    move p2, v1

    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length p1, p0

    sub-int/2addr p1, v0

    :goto_1c
    if-ltz p1, :cond_29

    array-length v0, p0

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_29

    const/16 v0, 0x3f

    aput-char v0, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1c

    :cond_29
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxMaskLength must be a non-negative integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-boolean p1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lmiui/cloud/util/SysHelper$1;

    invoke-direct {v0, p0}, Lmiui/cloud/util/SysHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "SysHelper"

    aput-object v0, p0, p1

    const/4 p1, 0x1

    const-string v0, "Can\'t get a valid device ID"

    aput-object v0, p0, p1

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return-void
.end method

.method public static showInvalidImeiIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->validateIMEI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0, p1}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "device id is invalid"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showInvalidMacIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->validateMAC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0, p1}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "device id is invalid"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateIMEI(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lmiui/cloud/util/SysHelper;->isEmptyDeviceId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xe

    if-ge p0, v0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method private static validateImeiChecksum(J)Z
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0xf

    move v2, v0

    :goto_4
    const/4 v3, 0x1

    if-lt v1, v3, :cond_1f

    const-wide/16 v3, 0xa

    rem-long v5, p0, v3

    long-to-int v5, v5

    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_1a

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v5, 0xa

    rem-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    move v2, v5

    goto :goto_1b

    :cond_1a
    add-int/2addr v2, v5

    :goto_1b
    div-long/2addr p0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_1f
    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_24

    move v0, v3

    :cond_24
    return v0
.end method

.method public static validateMAC(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lmiui/cloud/util/SysHelper;->isEmptyDeviceId(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
