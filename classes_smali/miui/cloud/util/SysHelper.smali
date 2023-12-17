.class public Lmiui/cloud/util/SysHelper;
.super Ljava/lang/Object;
.source "SysHelper.java"


# static fields
.field private static final IMEI_LENGTH:I = 0xf

.field private static final MEID_LENGTH:I = 0xe

.field private static final PHONE_DEVID_MIN_LENGTH:I = 0xe

.field private static final TAG:Ljava/lang/String; = "SysHelper"


# direct methods
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

    .line 1
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

    .line 2
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

    .line 3
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

    .line 4
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

    .line 5
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    new-array p1, p2, [Ljava/lang/Object;

    aput-object p0, p1, v0

    aput-object v3, p1, v1

    .line 6
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWarnIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.action.WARN_INVALID_DEVICE_ID"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x10000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    const-string v1, "com.xiaomi.xmsf"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "device_id"

    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method

.method public static hasModemCapability()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    const-string v1, "ro.radio.noril"

    .line 8
    invoke-static {v1, v0}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public static hasSmsCapability(Landroid/content/Context;)Z
    .registers 2

    .line 1
    const-string v0, "phone"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 9
    if-eqz p0, :cond_12

    .line 11
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public static hasTelephonyFeature(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

.method public static hasVoiceCapability(Landroid/content/Context;)Z
    .registers 5

    .line 1
    const-string v0, "phone"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 17
    new-array v2, v0, [Ljava/lang/Class;

    .line 19
    const-string v3, "isVoiceCapable"

    .line 21
    invoke-static {v1, v3, v2}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v1, :cond_25

    .line 28
    new-array p0, v2, [Ljava/lang/Object;

    .line 30
    const-string v1, "invoke isVoiceCapable Method not found!"

    .line 32
    aput-object v1, p0, v0

    .line 34
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 37
    return v0

    .line 38
    :cond_25
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 41
    :try_start_28
    new-array v3, v0, [Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Boolean;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result p0
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_34} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_34} :catch_35

    .line 53
    return p0

    .line 54
    :catch_35
    new-array p0, v2, [Ljava/lang/Object;

    .line 56
    const-string v1, "Impossible: invoke isVoiceCapable error for TelephonyManager, your runtime Android SDK is lower than 22?"

    .line 58
    aput-object v1, p0, v0

    .line 60
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 63
    return v0

    .line 64
    :catch_3f
    new-array p0, v2, [Ljava/lang/Object;

    .line 66
    const-string v1, "invoke isVoiceCapable IllegalAccessException "

    .line 68
    aput-object v1, p0, v0

    .line 70
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 73
    return v0
.end method

.method private static isEmptyDeviceId(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_19

    .line 7
    const-string v0, "0"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_19

    .line 15
    const-string v0, "null"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 p0, 0x1

    .line 27
    :goto_1a
    return p0
.end method

.method public static isSecondUser()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public static maskHead(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    div-int p1, v0, p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v0, :cond_20

    .line 15
    sub-int v3, v0, v2

    .line 17
    add-int/lit8 v3, v3, -0x1

    .line 19
    if-ge v3, p1, :cond_19

    .line 21
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    move-result v3

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v3, p2

    .line 27
    :goto_1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_c

    .line 33
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static maskMiddle(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    div-int p1, v0, p1

    .line 3
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

    .line 4
    :cond_19
    :goto_19
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 5
    :goto_1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 6
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskMiddle(Ljava/lang/CharSequence;IIC)Ljava/lang/String;
    .registers 8

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 8
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

    .line 9
    :cond_17
    :goto_17
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 10
    :goto_1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 11
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskTail(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 8
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

    .line 1
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2
    div-int/lit8 v1, v1, 0x5

    add-int/2addr v1, p1

    if-le v1, p2, :cond_15

    goto :goto_16

    :cond_15
    move p2, v1

    .line 3
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 4
    array-length p1, p0

    sub-int/2addr p1, v0

    :goto_1c
    if-ltz p1, :cond_29

    array-length v0, p0

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_29

    const/16 v0, 0x3f

    .line 5
    aput-char v0, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1c

    .line 6
    :cond_29
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 7
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxMaskLength must be a non-negative integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean p1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    .line 3
    if-eqz p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    new-instance v0, Lmiui/cloud/util/SysHelper$1;

    .line 21
    invoke-direct {v0, p0}, Lmiui/cloud/util/SysHelper$1;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    const/4 p0, 0x2

    .line 28
    new-array p0, p0, [Ljava/lang/Object;

    .line 30
    const/4 p1, 0x0

    .line 31
    const-string v0, "SysHelper"

    .line 33
    aput-object v0, p0, p1

    .line 35
    const/4 p1, 0x1

    .line 36
    const-string v0, "Can\'t get a valid device ID"

    .line 38
    aput-object v0, p0, p1

    .line 40
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static showInvalidImeiIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->validateIMEI(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {p0, p1}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    .line 13
    const-string p1, "device id is invalid"

    .line 15
    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
.end method

.method public static showInvalidMacIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->validateMAC(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {p0, p1}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    .line 13
    const-string p1, "device id is invalid"

    .line 15
    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
.end method

.method public static validateIMEI(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lmiui/cloud/util/SysHelper;->isEmptyDeviceId(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result p0

    .line 13
    const/16 v0, 0xe

    .line 15
    if-ge p0, v0, :cond_11

    .line 17
    return v1

    .line 18
    :cond_11
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private static validateImeiChecksum(J)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xf

    .line 4
    move v2, v0

    .line 5
    :goto_4
    const/4 v3, 0x1

    .line 6
    if-lt v1, v3, :cond_1f

    .line 8
    const-wide/16 v3, 0xa

    .line 10
    rem-long v5, p0, v3

    .line 12
    long-to-int v5, v5

    .line 13
    rem-int/lit8 v6, v1, 0x2

    .line 15
    if-nez v6, :cond_1a

    .line 17
    mul-int/lit8 v5, v5, 0x2

    .line 19
    div-int/lit8 v6, v5, 0xa

    .line 21
    rem-int/lit8 v5, v5, 0xa

    .line 23
    add-int/2addr v5, v6

    .line 24
    add-int/2addr v5, v2

    .line 25
    move v2, v5

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    add-int/2addr v2, v5

    .line 28
    :goto_1b
    div-long/2addr p0, v3

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 31
    goto :goto_4

    .line 32
    :cond_1f
    rem-int/lit8 v2, v2, 0xa

    .line 34
    if-nez v2, :cond_24

    .line 36
    move v0, v3

    .line 37
    :cond_24
    return v0
.end method

.method public static validateMAC(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/cloud/util/SysHelper;->isEmptyDeviceId(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method
