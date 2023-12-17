.class public Lmiui/cloud/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final MARKET_NAME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "ro.product.marketname"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiui/cloud/util/DeviceUtils;->getAndroidSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lmiui/cloud/util/DeviceUtils;->MARKET_NAME:Ljava/lang/String;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getAndroidSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "error: "

    .line 3
    const-class v1, Ljava/lang/String;

    .line 5
    const-string v2, "android.os.SystemProperties"

    .line 7
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "getAndroidSystemProperties"

    .line 13
    if-nez v2, :cond_14

    .line 15
    const-string p0, "class SystemProperties not found"

    .line 17
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-object p1

    .line 21
    :cond_14
    const/4 v4, 0x2

    .line 22
    new-array v5, v4, [Ljava/lang/Class;

    .line 24
    const/4 v6, 0x0

    .line 25
    aput-object v1, v5, v6

    .line 27
    const/4 v7, 0x1

    .line 28
    aput-object v1, v5, v7

    .line 30
    const-string v1, "get"

    .line 32
    invoke-static {v2, v1, v5}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_2b

    .line 38
    const-string p0, "no method get"

    .line 40
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-object p1

    .line 44
    :cond_2b
    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    :try_start_2e
    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    aput-object p0, v4, v6

    .line 51
    aput-object p1, v4, v7

    .line 53
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_3a} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_3a} :catch_3b

    .line 59
    return-object p0

    .line 60
    :catch_3b
    move-exception p0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object p1

    .line 80
    :catch_4f
    move-exception p0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object p1
.end method

.method private static getPhoneModel()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lmiui/cloud/util/DeviceUtils;->MARKET_NAME:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12
    return-object v0
.end method

.method public static isMatchesModel(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    invoke-static {}, Lmiui/cloud/util/DeviceUtils;->getPhoneModel()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static isRedmiDigitSeries()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiui/cloud/util/DeviceUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/util/DeviceUtils;->isRedmiDigitSeries(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRedmiDigitSeries(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "(?i)^Redmi[\\s]*[0-9]+[^X]*$"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
