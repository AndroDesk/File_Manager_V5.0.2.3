.class public Lcom/fileexplorer/advert/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final IS_RUSSIA_AND_RUSSIAN:Z

.field private static final TOTAL_RAM:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/fileexplorer/advert/util/Utils;->getTotalPhysicalRam()I

    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/fileexplorer/advert/util/Utils;->TOTAL_RAM:I

    .line 7
    invoke-static {}, Lcom/fileexplorer/advert/util/Utils;->isRussiaAndRussian()Z

    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/fileexplorer/advert/util/Utils;->IS_RUSSIA_AND_RUSSIAN:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getTotalPhysicalRam()I
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "miui.util.HardwareInfo"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getTotalPhysicalMemory"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/Object;

    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Long;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, 0x400

    .line 35
    div-long/2addr v0, v2

    .line 36
    div-long/2addr v0, v2

    .line 37
    div-long/2addr v0, v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    .line 38
    long-to-int v0, v0

    .line 39
    return v0

    .line 40
    :catch_27
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Utils"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, -0x1

    .line 51
    return v0
.end method

.method public static isMainThread()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public static final isMiuiLiteVersion()Z
    .registers 2

    .line 1
    sget v0, Lcom/fileexplorer/advert/util/Utils;->TOTAL_RAM:I

    .line 3
    if-lez v0, :cond_9

    .line 5
    const/4 v1, 0x3

    .line 6
    if-gt v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method private static isRussiaAndRussian()Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/fileexplorer/advert/AdvertApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v2, :cond_3d

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_24

    .line 36
    goto :goto_3d

    .line 37
    :cond_24
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    const-string v4, "ru"

    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3d

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3d

    .line 61
    const/4 v3, 0x1

    .line 62
    :cond_3d
    :goto_3d
    return v3
.end method
