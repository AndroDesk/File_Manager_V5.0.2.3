.class public Lmiuix/device/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/device/DeviceUtils$CpuStats;,
        Lmiuix/device/DeviceUtils$CpuInfo;
    }
.end annotation


# static fields
.field public static final ARCHITECTURE:Ljava/lang/String; = "CPU architecture"

.field public static final ARM_V8:I = 0x8

.field public static final BIG_CORE_FREQ:I = 0x1e8480

.field public static final CORE_COUNT:I = 0x8

.field public static final CpuMaxInfoFormat:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

.field public static final D800:I = 0x49

.field public static final DEVICE_HIGHEND:I = 0x2

.field public static final DEVICE_MIDDLE:I = 0x1

.field public static final DEVICE_PRIMARY:I = 0x0

.field public static final DEVICE_UNKNOWN:I = -0x1

.field public static DEV_STANDARD_VERSION:I = 0x0

.field public static final HEX:Ljava/lang/String; = "0x"

.field private static HIGH:I = 0x0

.field public static final HIGH_FREQ:I = 0x2932e0

.field public static final IMPLEMENTOR:Ljava/lang/String; = "CPU implementer"

.field private static LOW:I = 0x0

.field private static MIDDLE:I = 0x0

.field public static final MIDDLE_FREQ:I = 0x231860

.field public static final MIUI_FLAG_VERSION_NULL:I = -0x1

.field public static final MIUI_FLAG_VERSION_V1:I = 0x1

.field public static final MIUI_FLAG_VERSION_V2:I = 0x2

.field public static MIUI_LITE_ROM:Ljava/lang/Boolean; = null

.field public static MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean; = null

.field public static MIUI_LITE_VERSION:I = 0x0

.field public static MIUI_MIDDLE_VERSION:I = 0x0

.field public static final MTK_DIMENSITY:I = 0x44

.field public static final MT_PATTERN:Ljava/util/regex/Pattern;

.field public static final OLED_SCREEN_PROPERTY:Ljava/lang/String; = "oled"

.field private static PAD_THRESHOLD:F = 0.0f

.field public static final PART:Ljava/lang/String; = "CPU part"

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.performance.DeviceLevelUtils"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/MiuiBooster.jar"

.field private static final PERFORMANCE_JAR_EXT:Ljava/lang/String; = "/system_ext/framework/MiuiBooster.jar"

.field public static final PROCESSOR:Ljava/lang/String; = "processor"

.field public static final QUALCOMM:Ljava/lang/String; = "Qualcomm"

.field public static final SEPARATOR:Ljava/lang/String; = ": "

.field public static final SM_PATTERN:Ljava/util/regex/Pattern;

.field public static final SNAPDRAGON1:Ljava/lang/String; = "msm"

.field public static final SNAPDRAGON2:Ljava/lang/String; = "sdm"

.field public static final SNAPDRAGON3:Ljava/lang/String; = "sm"

.field private static final STOCK_DEVICE:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "DeviceUtils"

.field public static TYPE_CPU:I

.field public static TYPE_GPU:I

.field public static TYPE_RAM:I

.field private static UNKNOWN:I

.field private static application:Landroid/app/Application;

.field private static applicationContext:Landroid/content/Context;

.field private static initDeviceLevelInfo:Z

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static mCpuLevel:I

.field private static mGetDeviceLevel:Ljava/lang/reflect/Method;

.field private static mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

.field private static mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

.field private static mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

.field public static mGpuLevel:I

.field private static mIsSupportPrune:Ljava/lang/reflect/Method;

.field private static mLastVersion:I

.field public static mLevel:I

.field private static mPerf:Ljava/lang/Object;

.field public static mRamLevel:I

.field public static mTotalRam:I

.field private static sIsPrimaryScreenOled:Ljava/lang/Boolean;

.field private static sIsSecondaryScreenOled:Ljava/lang/Boolean;

.field private static sIsTablet:Ljava/lang/Boolean;

.field private static sMultiDisplayType:I

.field private static sPerfClass:Ljava/lang/Class;

.field private static sPerfClassLoader:Ldalvik/system/PathClassLoader;

.field private static sScreenRealSize:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .registers 42

    .line 1
    const-string v1, "DeviceUtils"

    .line 3
    const-string v0, "Inc ([A-Z]+)([\\d]+)"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 11
    const-string v0, "MT([\\d]{2})([\\d]+)"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 22
    const/4 v2, -0x2

    .line 23
    sput v2, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 25
    sput v2, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 27
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 29
    const/4 v2, -0x1

    .line 30
    sput v2, Lmiuix/device/DeviceUtils;->sMultiDisplayType:I

    .line 32
    sput-object v0, Lmiuix/device/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    .line 34
    sput-object v0, Lmiuix/device/DeviceUtils;->sIsPrimaryScreenOled:Ljava/lang/Boolean;

    .line 36
    sput-object v0, Lmiuix/device/DeviceUtils;->sIsSecondaryScreenOled:Ljava/lang/Boolean;

    .line 38
    sput v2, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 40
    sput v2, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 42
    sput v2, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 44
    sput v2, Lmiuix/device/DeviceUtils;->mRamLevel:I

    .line 46
    const v2, 0x7fffffff

    .line 49
    sput v2, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 51
    const-string v3, "cactus"

    .line 53
    const-string v4, "cereus"

    .line 55
    const-string v5, "pine"

    .line 57
    const-string v6, "olive"

    .line 59
    const-string v7, "ginkgo"

    .line 61
    const-string v8, "olivelite"

    .line 63
    const-string v9, "olivewood"

    .line 65
    const-string v10, "willow"

    .line 67
    const-string v11, "wayne"

    .line 69
    const-string v12, "dandelion"

    .line 71
    const-string v13, "angelica"

    .line 73
    const-string v14, "angelicain"

    .line 75
    const-string v15, "whyred"

    .line 77
    const-string v16, "tulip"

    .line 79
    const-string v17, "onc"

    .line 81
    const-string v18, "onclite"

    .line 83
    const-string v19, "lavender"

    .line 85
    const-string v20, "lotus"

    .line 87
    const-string v21, "laurus"

    .line 89
    const-string v22, "merlinnfc"

    .line 91
    const-string v23, "merlin"

    .line 93
    const-string v24, "lancelot"

    .line 95
    const-string v25, "citrus"

    .line 97
    const-string v26, "pomelo"

    .line 99
    const-string v27, "lemon"

    .line 101
    const-string v28, "shiva"

    .line 103
    const-string v29, "lime"

    .line 105
    const-string v30, "cannon"

    .line 107
    const-string v31, "curtana"

    .line 109
    const-string v32, "durandal"

    .line 111
    const-string v33, "excalibur"

    .line 113
    const-string v34, "joyeuse"

    .line 115
    const-string v35, "gram"

    .line 117
    const-string v36, "sunny"

    .line 119
    const-string v37, "mojito"

    .line 121
    const-string v38, "rainbow"

    .line 123
    const-string v39, "cattail"

    .line 125
    const-string v40, "angelican"

    .line 127
    const-string v41, "camellia"

    .line 129
    filled-new-array/range {v3 .. v41}, [Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    sput-object v2, Lmiuix/device/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

    .line 135
    sput-object v0, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 137
    sput-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 139
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 141
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 143
    sput-object v0, Lmiuix/device/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 145
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 147
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    .line 149
    const/4 v0, 0x1

    .line 150
    sput v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 152
    sput v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 154
    const/4 v2, 0x0

    .line 155
    sput-boolean v2, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 157
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 159
    const/4 v3, 0x2

    .line 160
    sput v3, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 162
    const/4 v3, 0x3

    .line 163
    sput v3, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 165
    :try_start_a4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a6} :catch_ee

    .line 167
    const/16 v4, 0x21

    .line 169
    const-string v5, "com.miui.performance.DeviceLevelUtils"

    .line 171
    if-le v3, v4, :cond_c0

    .line 173
    :try_start_ac
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 175
    const-string v4, "/system_ext/framework/MiuiBooster.jar"

    .line 177
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 180
    move-result-object v6

    .line 181
    invoke-direct {v3, v4, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 184
    sput-object v3, Lmiuix/device/DeviceUtils;->sPerfClassLoader:Ldalvik/system/PathClassLoader;

    .line 186
    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 189
    move-result-object v3

    .line 190
    sput-object v3, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 192
    goto :goto_d3

    .line 193
    :cond_c0
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 195
    const-string v4, "/system/framework/MiuiBooster.jar"

    .line 197
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 200
    move-result-object v6

    .line 201
    invoke-direct {v3, v4, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 204
    sput-object v3, Lmiuix/device/DeviceUtils;->sPerfClassLoader:Ldalvik/system/PathClassLoader;

    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 209
    move-result-object v3

    .line 210
    sput-object v3, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 212
    :goto_d3
    sget-object v3, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 214
    new-array v0, v0, [Ljava/lang/Class;

    .line 216
    const-class v4, Landroid/content/Context;

    .line 218
    aput-object v4, v0, v2

    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 223
    move-result-object v0

    .line 224
    sput-object v0, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 226
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 228
    const-string v3, "getMiuiLiteVersion"

    .line 230
    new-array v4, v2, [Ljava/lang/Class;

    .line 232
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 235
    move-result-object v0

    .line 236
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ed} :catch_ee

    .line 238
    goto :goto_103

    .line 239
    :catch_ee
    move-exception v0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    const-string v4, "static init(): Load Class Exception:"

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_103
    :try_start_103
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 262
    const-string v3, "getMiuiMiddleVersion"

    .line 264
    new-array v2, v2, [Ljava/lang/Class;

    .line 266
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 269
    move-result-object v0

    .line 270
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_10f} :catch_110

    .line 272
    goto :goto_125

    .line 273
    :catch_110
    move-exception v0

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    const-string v3, "static init(): Load MiuiMiddle Class Exception:"

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object v0

    .line 291
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_125
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 296
    if-nez v0, :cond_12e

    .line 298
    const-string v0, "static init(): MiuiBooster is not in this rom"

    .line 300
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_12e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCpuInfo(Ljava/lang/String;)Lmiuix/device/DeviceUtils$CpuInfo;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/device/DeviceUtils$CpuInfo;

    .line 3
    invoke-direct {v0}, Lmiuix/device/DeviceUtils$CpuInfo;-><init>()V

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    move-result p0

    .line 10
    iput p0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->id:I

    .line 12
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p0

    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object p0, v2, v3

    .line 24
    const-string p0, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    .line 26
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_29

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    move-result p0

    .line 40
    iput p0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    .line 42
    :cond_29
    return-object v0
.end method

.method private static decideLevel(Lmiuix/device/DeviceUtils$CpuStats;)V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const v4, 0x231860

    .line 15
    if-lt v0, v1, :cond_23

    .line 17
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    .line 19
    const v1, 0x2932e0

    .line 22
    if-le v0, v1, :cond_1b

    .line 24
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    if-le v0, v4, :cond_20

    .line 30
    iput v2, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 32
    goto :goto_2c

    .line 33
    :cond_20
    iput v3, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    .line 38
    if-le v0, v4, :cond_2a

    .line 40
    iput v2, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iput v3, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 45
    :goto_2c
    return-void
.end method

.method private static doCpuStats(Lmiuix/device/DeviceUtils$CpuStats;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/device/DeviceUtils$CpuStats;",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_34

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/device/DeviceUtils$CpuInfo;

    .line 17
    iget v1, v0, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    .line 19
    const/16 v2, 0x8

    .line 21
    if-ge v1, v2, :cond_19

    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 26
    :cond_19
    iget v0, v0, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    .line 28
    iget v1, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    .line 30
    if-le v0, v1, :cond_21

    .line 32
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->maxFreq:I

    .line 34
    :cond_21
    const v1, 0x1e8480

    .line 37
    if-lt v0, v1, :cond_2d

    .line 39
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 45
    goto :goto_4

    .line 46
    :cond_2d
    iget v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->smallCoreCount:I

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    iput v0, p0, Lmiuix/device/DeviceUtils$CpuStats;->smallCoreCount:I

    .line 52
    goto :goto_4

    .line 53
    :cond_34
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->decideLevel(Lmiuix/device/DeviceUtils$CpuStats;)V

    .line 56
    return-void
.end method

.method private static getAppContext()Landroid/content/Context;
    .registers 6

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "DeviceUtils"

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_3c

    .line 9
    :try_start_8
    const-string v0, "android.app.ActivityThread"

    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    const-string v4, "currentApplication"

    .line 17
    new-array v5, v1, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/Application;

    .line 29
    sput-object v0, Lmiuix/device/DeviceUtils;->application:Landroid/app/Application;

    .line 31
    if-eqz v0, :cond_3c

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_27

    .line 39
    goto :goto_3c

    .line 40
    :catch_27
    move-exception v0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v5, "android.app.ActivityThread Exception:"

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3c
    :goto_3c
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 63
    if-nez v0, :cond_74

    .line 65
    :try_start_40
    const-string v0, "android.app.AppGlobals"

    .line 67
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    move-result-object v0

    .line 71
    const-string v4, "getInitialApplication"

    .line 73
    new-array v1, v1, [Ljava/lang/Class;

    .line 75
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/app/Application;

    .line 85
    sput-object v0, Lmiuix/device/DeviceUtils;->application:Landroid/app/Application;

    .line 87
    if-eqz v0, :cond_74

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5e} :catch_5f

    .line 95
    goto :goto_74

    .line 96
    :catch_5f
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v3, "android.app.AppGlobals Exception:"

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_74
    :goto_74
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 119
    return-object v0
.end method

.method private static getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_25
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    .line 7
    :try_start_6
    new-instance p0, Ljava/io/BufferedReader;

    .line 9
    new-instance v2, Ljava/io/InputStreamReader;

    .line 11
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 14
    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 17
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_26
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    .line 24
    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1a

    .line 27
    :catch_1a
    return-object v2

    .line 28
    :catchall_1b
    move-exception p0

    .line 29
    move-object v0, v1

    .line 30
    goto :goto_1f

    .line 31
    :catchall_1e
    move-exception p0

    .line 32
    :goto_1f
    if-eqz v0, :cond_24

    .line 34
    :try_start_21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    .line 37
    :catch_24
    :cond_24
    throw p0

    .line 38
    :catch_25
    move-object v1, v0

    .line 39
    :catch_26
    if-eqz v1, :cond_2b

    .line 41
    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2b

    .line 44
    :catch_2b
    :cond_2b
    return-object v0
.end method

.method private static getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/device/DeviceUtils$CpuInfo;)V
    .registers 4

    .line 1
    const-string v0, "CPU implementer"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->implementor:I

    .line 15
    goto :goto_2c

    .line 16
    :cond_f
    const-string v0, "CPU architecture"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1e

    .line 24
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 27
    move-result p0

    .line 28
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    .line 30
    goto :goto_2c

    .line 31
    :cond_1e
    const-string v0, "CPU part"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2c

    .line 39
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 42
    move-result p0

    .line 43
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->part:I

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public static getCpuInfoList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_5
    new-instance v1, Ljava/util/Scanner;

    .line 8
    new-instance v2, Ljava/io/File;

    .line 10
    const-string v3, "/proc/cpuinfo"

    .line 12
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 18
    const/4 v2, 0x0

    .line 19
    :cond_12
    :goto_12
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_33

    .line 25
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    const-string v4, ": "

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    array-length v4, v3

    .line 36
    const/4 v5, 0x1

    .line 37
    if-le v4, v5, :cond_12

    .line 39
    invoke-static {v3, v0, v2}, Lmiuix/device/DeviceUtils;->parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;

    .line 42
    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_12

    .line 44
    :catch_2b
    move-exception v1

    .line 45
    const-string v2, "DeviceUtils"

    .line 47
    const-string v3, "getChipSetFromCpuInfo failed"

    .line 49
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_33
    return-object v0
.end method

.method private static getCpuLevel()I
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->getHardwareInfo()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-lez v1, :cond_1d

    .line 12
    const-string v1, "Qualcomm"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_18

    .line 20
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getQualcommCpuLevel(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getMtkCpuLevel(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, v2

    .line 31
    :goto_1e
    if-ne v0, v2, :cond_26

    .line 33
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuStats()Lmiuix/device/DeviceUtils$CpuStats;

    .line 36
    move-result-object v0

    .line 37
    iget v0, v0, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 39
    :cond_26
    return v0
.end method

.method public static getCpuStats()Lmiuix/device/DeviceUtils$CpuStats;
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuInfoList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/device/DeviceUtils$CpuStats;

    .line 7
    invoke-direct {v1}, Lmiuix/device/DeviceUtils$CpuStats;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x8

    .line 16
    if-ge v2, v3, :cond_14

    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, v1, Lmiuix/device/DeviceUtils$CpuStats;->level:I

    .line 21
    :cond_14
    invoke-static {v1, v0}, Lmiuix/device/DeviceUtils;->doCpuStats(Lmiuix/device/DeviceUtils$CpuStats;Ljava/util/List;)V

    .line 24
    return-object v1
.end method

.method public static getDeviceLevel()I
    .registers 1

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getDeviceLevel(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevel(I)I
    .registers 3

    .line 2
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    const/4 v1, -0x1

    if-ne v0, p0, :cond_a

    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    if-eq v0, v1, :cond_a

    return v0

    .line 3
    :cond_a
    sput p0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 4
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->getDeviceLevel2(I)I

    move-result p0

    sput p0, Lmiuix/device/DeviceUtils;->mLevel:I

    if-eq p0, v1, :cond_15

    return p0

    .line 5
    :cond_15
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel1()I

    move-result p0

    return p0
.end method

.method public static getDeviceLevel(II)I
    .registers 4

    .line 6
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_e

    .line 7
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 8
    :cond_e
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    if-ne p1, v0, :cond_1b

    .line 9
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 10
    :cond_1b
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p1, v0, :cond_28

    .line 11
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/device/DeviceUtils;->mRamLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 12
    :cond_28
    invoke-static {p0, p1}, Lmiuix/device/DeviceUtils;->getDeviceLevel2(II)I

    move-result v0

    if-eq v0, v1, :cond_33

    .line 13
    invoke-static {p0, v0, p1}, Lmiuix/device/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0

    .line 14
    :cond_33
    invoke-static {p1}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 15
    invoke-static {p0, v0, p1}, Lmiuix/device/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel1()I
    .registers 5

    .line 5
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 6
    :cond_6
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 7
    sput v1, Lmiuix/device/DeviceUtils;->mLevel:I

    goto :goto_35

    .line 8
    :cond_10
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 9
    sget v2, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    invoke-static {v2}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    move-result v2

    .line 10
    sget v3, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v4, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    invoke-static {v3, v4}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v0, v4, v1

    const/4 v0, 0x1

    aput v2, v4, v0

    const/4 v0, 0x2

    aput v3, v4, v0

    .line 11
    invoke-static {v4}, Lmiuix/device/DeviceUtils;->getMinLevel([I)I

    move-result v0

    sput v0, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 12
    :goto_35
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    return v0
.end method

.method private static getDeviceLevel1(I)I
    .registers 2

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    if-ne p0, v0, :cond_16

    .line 2
    invoke-static {}, Lmiuix/device/DeviceUtils;->getTotalRam()I

    move-result p0

    const/4 v0, 0x6

    if-le p0, v0, :cond_d

    const/4 p0, 0x2

    return p0

    :cond_d
    const/4 v0, 0x4

    if-le p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    if-lez p0, :cond_1f

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_16
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    if-ne p0, v0, :cond_1f

    .line 4
    invoke-static {}, Lmiuix/device/DeviceUtils;->getCpuLevel()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private static getDeviceLevel2(I)I
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    :try_start_8
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 3
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_39

    .line 5
    :cond_25
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "perf is null!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception p0

    const-string v0, "getDeviceLevel failed , e:"

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DeviceUtils"

    .line 7
    invoke-static {p0, v0, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 8
    :goto_39
    invoke-static {v1}, Lmiuix/device/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel2(II)I
    .registers 7

    .line 16
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 17
    :cond_8
    :try_start_8
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 18
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_40

    .line 20
    :cond_2c
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "perf is null!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_34

    :catch_34
    move-exception p0

    const-string p1, "getDeviceLevel failed , e:"

    .line 21
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "DeviceUtils"

    .line 22
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    :goto_40
    invoke-static {v1}, Lmiuix/device/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getHardwareInfo()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    const-string v2, "/proc/cpuinfo"

    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_31

    .line 19
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_c

    .line 29
    const-string v2, ": "

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    array-length v2, v1

    .line 36
    const/4 v3, 0x1

    .line 37
    if-le v2, v3, :cond_c

    .line 39
    aget-object v0, v1, v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 41
    return-object v0

    .line 42
    :catch_29
    move-exception v0

    .line 43
    const-string v1, "DeviceUtils"

    .line 45
    const-string v2, "getChipSetFromCpuInfo failed"

    .line 47
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_31
    const-string v0, ""

    .line 52
    return-object v0
.end method

.method private static varargs getMinLevel([I)I
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-nez v0, :cond_5

    .line 5
    return v1

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    aget v2, p0, v0

    .line 9
    array-length v3, p0

    .line 10
    :goto_9
    if-ge v0, v3, :cond_15

    .line 12
    aget v4, p0, v0

    .line 14
    if-le v4, v1, :cond_12

    .line 16
    if-ge v4, v2, :cond_12

    .line 18
    move v2, v4

    .line 19
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_9

    .line 22
    :cond_15
    return v2
.end method

.method public static getMiuiLiteVersion()I
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_a

    .line 8
    sput v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 10
    return v1

    .line 11
    :cond_a
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 13
    const/4 v2, -0x2

    .line 14
    if-ne v0, v2, :cond_46

    .line 16
    const/4 v0, -0x1

    .line 17
    :try_start_10
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_27

    .line 23
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersionMethod()Ljava/lang/reflect/Method;

    .line 26
    move-result-object v3

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result v0

    .line 39
    goto :goto_3b

    .line 40
    :cond_27
    new-instance v1, Ljava/lang/Exception;

    .line 42
    const-string v2, "perf is null!"

    .line 44
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    throw v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_2f

    .line 48
    :catch_2f
    move-exception v1

    .line 49
    const-string v2, "getMiuiLiteVersion failed , e:"

    .line 51
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v2

    .line 55
    const-string v3, "DeviceUtils"

    .line 57
    invoke-static {v1, v2, v3}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    :goto_3b
    const/4 v1, 0x2

    .line 61
    if-lt v0, v1, :cond_41

    .line 63
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    const/4 v0, 0x1

    .line 67
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 69
    :goto_44
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 71
    :cond_46
    return v0
.end method

.method private static getMiuiLiteVersionMethod()Ljava/lang/reflect/Method;
    .registers 3

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 3
    if-nez v0, :cond_13

    .line 5
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerfClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Ljava/lang/Class;

    .line 12
    const-string v2, "getMiuiLiteVersion"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 20
    :cond_13
    sget-object v0, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 22
    return-object v0
.end method

.method public static getMiuiMiddleVersion()I
    .registers 4

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_2f

    .line 6
    const/4 v0, -0x1

    .line 7
    :try_start_6
    sget-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    .line 9
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1e

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v1

    .line 28
    sput v1, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 30
    goto :goto_2f

    .line 31
    :cond_1e
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    .line 33
    goto :goto_2f

    .line 34
    :catch_21
    move-exception v1

    .line 35
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 37
    const-string v0, "getMiuiMiddleVersion failed , e:"

    .line 39
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v0

    .line 43
    const-string v2, "DeviceUtils"

    .line 45
    invoke-static {v1, v0, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    :cond_2f
    :goto_2f
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 50
    return v0
.end method

.method private static getMtkCpuLevel(Ljava/lang/String;)I
    .registers 4

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2d

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_2d

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_2d

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    move-result p0

    .line 35
    const/16 v2, 0x44

    .line 37
    if-ne v1, v2, :cond_2b

    .line 39
    const/16 v1, 0x49

    .line 41
    if-lt p0, v1, :cond_2b

    .line 43
    return v0

    .line 44
    :cond_2b
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :cond_2d
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method private static getPerf()Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_3d

    .line 5
    :try_start_4
    invoke-static {}, Lmiuix/device/DeviceUtils;->getAppContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1b

    .line 11
    sget-object v1, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 13
    if-eqz v1, :cond_1b

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 27
    goto :goto_3d

    .line 28
    :cond_1b
    new-instance v0, Ljava/lang/Exception;

    .line 30
    const-string v1, "getAppContext fail"

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_23

    .line 36
    :catch_23
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v2, "getPerf DeviceUtils(): newInstance Exception:"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    const-string v2, "DeviceUtils"

    .line 56
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    :cond_3d
    :goto_3d
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 64
    return-object v0
.end method

.method private static getPerfClass()Ljava/lang/Class;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public static getProductDevice()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getQualcommCpuLevel(Ljava/lang/String;)I
    .registers 7

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_58

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_58

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_58

    .line 27
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const-string v3, "sm"

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x7

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v3, :cond_3b

    .line 43
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    move-result p0

    .line 51
    const/16 v1, 0x8

    .line 53
    if-lt p0, v1, :cond_37

    .line 55
    return v2

    .line 56
    :cond_37
    if-lt p0, v4, :cond_3a

    .line 58
    return v0

    .line 59
    :cond_3a
    return v5

    .line 60
    :cond_3b
    const-string v2, "sdm"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4f

    .line 68
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    move-result p0

    .line 76
    if-lt p0, v4, :cond_4e

    .line 78
    return v0

    .line 79
    :cond_4e
    return v5

    .line 80
    :cond_4f
    const-string p0, "msm"

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_58

    .line 88
    return v5

    .line 89
    :cond_58
    const/4 p0, -0x1

    .line 90
    return p0
.end method

.method private static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static getTotalRam()I
    .registers 5

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 3
    const v1, 0x7fffffff

    .line 6
    if-ne v0, v1, :cond_38

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_8
    const-string v1, "miui.util.HardwareInfo"

    .line 11
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "getTotalPhysicalMemory"

    .line 17
    new-array v3, v0, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v3, v0, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Long;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 35
    move-result-wide v1

    .line 36
    const-wide/16 v3, 0x400

    .line 38
    div-long/2addr v1, v3

    .line 39
    div-long/2addr v1, v3

    .line 40
    div-long/2addr v1, v3

    .line 41
    long-to-int v1, v1

    .line 42
    sput v1, Lmiuix/device/DeviceUtils;->mTotalRam:I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2c

    .line 44
    goto :goto_38

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    const-string v2, "DeviceUtils"

    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sput v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 57
    :cond_38
    :goto_38
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 59
    return v0
.end method

.method private static initDeviceLevelInfo()Z
    .registers 6

    .line 1
    const-string v0, "getDeviceLevel"

    .line 3
    sget-boolean v1, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 5
    if-eqz v1, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    :try_start_7
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerfClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_10

    .line 14
    sget-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Class;

    .line 20
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v3, v2, v4

    .line 25
    const/4 v5, 0x1

    .line 26
    aput-object v3, v2, v5

    .line 28
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 34
    new-array v2, v5, [Ljava/lang/Class;

    .line 36
    aput-object v3, v2, v4

    .line 38
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 44
    const-string v0, "DEVICE_LEVEL_FOR_RAM"

    .line 46
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result v0

    .line 56
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 58
    const-string v0, "DEVICE_LEVEL_FOR_CPU"

    .line 60
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result v0

    .line 70
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 72
    const-string v0, "DEVICE_LEVEL_FOR_GPU"

    .line 74
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v0

    .line 84
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 86
    const-string v0, "LOW_DEVICE"

    .line 88
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Integer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result v0

    .line 98
    sput v0, Lmiuix/device/DeviceUtils;->LOW:I

    .line 100
    const-string v0, "MIDDLE_DEVICE"

    .line 102
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/Integer;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v0

    .line 112
    sput v0, Lmiuix/device/DeviceUtils;->MIDDLE:I

    .line 114
    const-string v0, "HIGH_DEVICE"

    .line 116
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Integer;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 125
    move-result v0

    .line 126
    sput v0, Lmiuix/device/DeviceUtils;->HIGH:I

    .line 128
    const-string v0, "DEVICE_LEVEL_UNKNOWN"

    .line 130
    invoke-static {v1, v0, v3}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Integer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    move-result v0

    .line 140
    sput v0, Lmiuix/device/DeviceUtils;->UNKNOWN:I

    .line 142
    sput-boolean v5, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8f} :catch_90

    .line 144
    goto :goto_a7

    .line 145
    :catch_90
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string v2, "initDeviceLevelInfo Fail: Exception:"

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    const-string v1, "DeviceUtils"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_a7
    sget-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 170
    return v0
.end method

.method public static initPerf(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-string v0, "DeviceUtils"

    .line 3
    sget-object v1, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 5
    if-nez v1, :cond_3c

    .line 7
    :try_start_6
    sput-object p0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 9
    if-eqz p0, :cond_33

    .line 11
    sget-object v1, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 13
    if-eqz v1, :cond_33

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object p0, v2, v3

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    sput-object p0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 27
    goto :goto_33

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v2, "initPerf DeviceUtils(): newInstance Exception:"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :cond_33
    :goto_33
    sget-object p0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 54
    if-nez p0, :cond_3c

    .line 56
    const-string p0, "initPerf fail mPerf is still null"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3c
    return-void
.end method

.method public static isExternalScreen(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isFoldDevice()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->isWideScreen(Landroid/content/Context;)Z

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static isFoldDevice()Z
    .registers 3

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->sMultiDisplayType:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_e

    .line 7
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 9
    invoke-static {v0, v1}, Lmiuix/device/LiteSystemProperties;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    sput v0, Lmiuix/device/DeviceUtils;->sMultiDisplayType:I

    .line 15
    :cond_e
    sget v0, Lmiuix/device/DeviceUtils;->sMultiDisplayType:I

    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v0, v2, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    :goto_15
    return v1
.end method

.method public static isInternalScreen(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isFoldDevice()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {p0}, Lmiuix/device/DeviceUtils;->isWideScreen(Landroid/content/Context;)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static isLiteV1Stock()Z
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->getProductDevice()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_21

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_e

    .line 14
    goto :goto_21

    .line 15
    :cond_e
    sget-object v2, Lmiuix/device/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

    .line 17
    array-length v3, v2

    .line 18
    move v4, v1

    .line 19
    :goto_12
    if-ge v4, v3, :cond_21

    .line 21
    aget-object v5, v2, v4

    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1e

    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 33
    goto :goto_12

    .line 34
    :cond_21
    :goto_21
    return v1
.end method

.method public static isLiteV1StockPlus()Z
    .registers 2

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_18

    .line 5
    const-string v0, "ro.config.low_ram.support_miuilite_plus"

    .line 7
    const-string v1, "false"

    .line 9
    invoke-static {v0, v1}, Lmiuix/device/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "true"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 25
    :cond_18
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public static isMiuiLiteRom()Z
    .registers 4

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_2c

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_5
    const-string v1, "miui.os.Build"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "IS_MIUI_LITE_VERSION"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    .line 34
    goto :goto_2c

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    const-string v2, "DeviceUtils"

    .line 38
    const-string v3, "isMiuiLiteRom failed"

    .line 40
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 45
    :cond_2c
    :goto_2c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    sget-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public static isMiuiLiteV1()Z
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-ge v0, v2, :cond_10

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_10
    return v1
.end method

.method public static isMiuiLiteV2()Z
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-lt v0, v2, :cond_10

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_10
    return v1
.end method

.method public static isMiuiMiddle()Z
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiMiddleVersion()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    return v1
.end method

.method public static isOled()Z
    .registers 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->isOled(Z)Z

    move-result v0

    return v0
.end method

.method public static isOled(Z)Z
    .registers 2

    if-eqz p0, :cond_19

    .line 2
    sget-object p0, Lmiuix/device/DeviceUtils;->sIsPrimaryScreenOled:Ljava/lang/Boolean;

    if-nez p0, :cond_10

    .line 3
    invoke-static {}, Lmiuix/device/DeviceUtils;->isScreenOled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmiuix/device/DeviceUtils;->sIsPrimaryScreenOled:Ljava/lang/Boolean;

    .line 4
    :cond_10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lmiuix/device/DeviceUtils;->sIsPrimaryScreenOled:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5
    :cond_19
    sget-object p0, Lmiuix/device/DeviceUtils;->sIsSecondaryScreenOled:Ljava/lang/Boolean;

    if-nez p0, :cond_27

    .line 6
    invoke-static {}, Lmiuix/device/DeviceUtils;->isScreenOled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lmiuix/device/DeviceUtils;->sIsSecondaryScreenOled:Ljava/lang/Boolean;

    .line 7
    :cond_27
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lmiuix/device/DeviceUtils;->sIsSecondaryScreenOled:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isScreenOled()Z
    .registers 5

    .line 1
    const-string v0, "oled"

    .line 3
    const-string v1, "lcd"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    const-string v3, "ro.vendor.display.type"

    .line 8
    invoke-static {v3, v1}, Lmiuix/device/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    const-string v4, "ro.display.type"

    .line 14
    invoke-static {v4, v1}, Lmiuix/device/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1d

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1f

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    :cond_1d
    const/4 v2, 0x1

    .line 31
    :cond_1e
    return v2

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v3, "getProductDevice failed , e:"

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "DeviceUtils"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v2
.end method

.method public static isSupportPrune()Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_26

    .line 8
    sget-object v2, Lmiuix/device/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 10
    if-nez v2, :cond_45

    .line 12
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerfClass()Ljava/lang/Class;

    .line 15
    move-result-object v2

    .line 16
    const-string v3, "isSupportPrune"

    .line 18
    new-array v4, v0, [Ljava/lang/Class;

    .line 20
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v2

    .line 24
    sput-object v2, Lmiuix/device/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 26
    new-array v3, v0, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result v0

    .line 38
    goto :goto_45

    .line 39
    :cond_26
    new-instance v1, Ljava/lang/Exception;

    .line 41
    const-string v2, "perf is null!"

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    throw v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2e

    .line 47
    :catch_2e
    move-exception v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v3, "isSupportPrune failed , e:"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const-string v2, "DeviceUtils"

    .line 67
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_45
    :goto_45
    return v0
.end method

.method public static isTablet()Z
    .registers 2

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lmiuix/device/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiuix/device/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    .line 5
    :cond_18
    sget-object v0, Lmiuix/device/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 2

    .line 6
    sget-object v0, Lmiuix/device/DeviceUtils;->sScreenRealSize:Landroid/graphics/Point;

    if-eqz v0, :cond_a

    invoke-static {}, Lmiuix/device/DeviceUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7
    :cond_a
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiuix/device/DeviceUtils;->sScreenRealSize:Landroid/graphics/Point;

    .line 8
    invoke-static {p0, v0}, Lmiuix/device/ScreenUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    const/high16 v0, 0x44160000  # 600.0f

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    sput p0, Lmiuix/device/DeviceUtils;->PAD_THRESHOLD:F

    .line 10
    :cond_23
    sget-object p0, Lmiuix/device/DeviceUtils;->sScreenRealSize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    sget v0, Lmiuix/device/DeviceUtils;->PAD_THRESHOLD:F

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method public static isWideScreen(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->sScreenRealSize:Landroid/graphics/Point;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-static {}, Lmiuix/device/DeviceUtils;->isFoldDevice()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_23

    .line 11
    :cond_a
    new-instance v0, Landroid/graphics/Point;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 16
    sput-object v0, Lmiuix/device/DeviceUtils;->sScreenRealSize:Landroid/graphics/Point;

    .line 18
    invoke-static {p0, v0}, Lmiuix/device/ScreenUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 21
    const/high16 v0, 0x44160000  # 600.0f

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    move-result-object p0

    .line 31
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 33
    mul-float/2addr p0, v0

    .line 34
    sput p0, Lmiuix/device/DeviceUtils;->PAD_THRESHOLD:F

    .line 36
    :cond_23
    sget-object p0, Lmiuix/device/DeviceUtils;->sScreenRealSize:Landroid/graphics/Point;

    .line 38
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 40
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 42
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result p0

    .line 46
    int-to-float p0, p0

    .line 47
    sget v0, Lmiuix/device/DeviceUtils;->PAD_THRESHOLD:F

    .line 49
    cmpl-float p0, p0, v0

    .line 51
    if-ltz p0, :cond_36

    .line 53
    const/4 p0, 0x1

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    const/4 p0, 0x0

    .line 56
    :goto_37
    return p0
.end method

.method private static parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ">;",
            "Lmiuix/device/DeviceUtils$CpuInfo;",
            ")",
            "Lmiuix/device/DeviceUtils$CpuInfo;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-object v0, p0, v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v2, p0, v1

    .line 11
    const-string v3, "processor"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_20

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_20

    .line 25
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->createCpuInfo(Ljava/lang/String;)Lmiuix/device/DeviceUtils$CpuInfo;

    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    if-eqz p2, :cond_27

    .line 35
    aget-object p0, p0, v1

    .line 37
    invoke-static {p0, v0, p2}, Lmiuix/device/DeviceUtils;->getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/device/DeviceUtils$CpuInfo;)V

    .line 40
    :cond_27
    :goto_27
    return-object p2
.end method

.method private static setDeviceLevel(III)I
    .registers 3

    .line 1
    sput p0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 3
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 5
    if-ne p2, p0, :cond_9

    .line 7
    sput p1, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 9
    return p1

    .line 10
    :cond_9
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 12
    if-ne p2, p0, :cond_10

    .line 14
    sput p1, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 16
    return p1

    .line 17
    :cond_10
    sget p0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 19
    if-ne p2, p0, :cond_17

    .line 21
    sput p1, Lmiuix/device/DeviceUtils;->mRamLevel:I

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p0, -0x1

    .line 25
    return p0
.end method

.method private static toInt(Ljava/lang/String;)I
    .registers 2

    .line 1
    const-string v0, "0x"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_14

    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    const/16 v0, 0x10

    .line 16
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method private static transDeviceLevel(I)I
    .registers 2

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->LOW:I

    .line 3
    if-ne p0, v0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_6
    sget v0, Lmiuix/device/DeviceUtils;->MIDDLE:I

    .line 9
    if-ne p0, v0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_c
    sget v0, Lmiuix/device/DeviceUtils;->HIGH:I

    .line 15
    if-ne p0, v0, :cond_12

    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_12
    const/4 p0, -0x1

    .line 20
    return p0
.end method
