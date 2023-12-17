.class public Lmiuix/animation/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/DeviceUtils$CpuStats;,
        Lmiuix/animation/utils/DeviceUtils$CpuInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

.field public static final MTK_DIMENSITY:I = 0x44

.field public static final MT_PATTERN:Ljava/util/regex/Pattern;

.field public static final PART:Ljava/lang/String; = "CPU part"

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.performance.DeviceLevelUtils"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/MiuiBooster.jar"

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

.field public static mGpuLevel:I

.field private static mIsSupportPrune:Ljava/lang/reflect/Method;

.field private static mLastVersion:I

.field public static mLevel:I

.field private static mPerf:Ljava/lang/Object;

.field public static mRamLevel:I

.field public static mTotalRam:I

.field private static perfClass:Ljava/lang/Class;

.field private static perfClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method public static constructor <clinit>()V
    .registers 42

    .line 1
    const-string v0, "getDeviceLevel"

    .line 3
    const-string v1, "DeviceUtils"

    .line 5
    const-string v2, "Inc ([A-Z]+)([\\d]+)"

    .line 7
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    move-result-object v2

    .line 11
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 13
    const-string v2, "MT([\\d]{2})([\\d]+)"

    .line 15
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    move-result-object v2

    .line 19
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    .line 21
    const/4 v2, -0x1

    .line 22
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    .line 24
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mCpuLevel:I

    .line 26
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mGpuLevel:I

    .line 28
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mRamLevel:I

    .line 30
    const v2, 0x7fffffff

    .line 33
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

    .line 35
    const/4 v2, 0x0

    .line 36
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 38
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 40
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 42
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 44
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 46
    const/4 v3, 0x1

    .line 47
    sput v3, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 49
    sput v3, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    .line 51
    sput v3, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    .line 53
    const/4 v4, 0x2

    .line 54
    sput v4, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    .line 56
    const/4 v5, 0x3

    .line 57
    sput v5, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    .line 59
    const/4 v5, 0x0

    .line 60
    :try_start_3b
    new-instance v6, Ldalvik/system/PathClassLoader;

    .line 62
    const-string v7, "/system/framework/MiuiBooster.jar"

    .line 64
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 67
    move-result-object v8

    .line 68
    invoke-direct {v6, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 71
    sput-object v6, Lmiuix/animation/utils/DeviceUtils;->perfClassLoader:Ldalvik/system/PathClassLoader;

    .line 73
    const-string v7, "com.miui.performance.DeviceLevelUtils"

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    move-result-object v6

    .line 79
    sput-object v6, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 81
    new-array v7, v3, [Ljava/lang/Class;

    .line 83
    const-class v8, Landroid/content/Context;

    .line 85
    aput-object v8, v7, v5

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 90
    move-result-object v6

    .line 91
    sput-object v6, Lmiuix/animation/utils/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 93
    new-array v4, v4, [Ljava/lang/Class;

    .line 95
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 97
    aput-object v6, v4, v5

    .line 99
    aput-object v6, v4, v3

    .line 101
    sget-object v7, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 103
    invoke-virtual {v7, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    move-result-object v4

    .line 107
    sput-object v4, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 109
    new-array v4, v3, [Ljava/lang/Class;

    .line 111
    aput-object v6, v4, v5

    .line 113
    sget-object v7, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 115
    invoke-virtual {v7, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 121
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 123
    const-string v4, "isSupportPrune"

    .line 125
    new-array v7, v5, [Ljava/lang/Class;

    .line 127
    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 133
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 135
    const-string v4, "DEVICE_LEVEL_FOR_RAM"

    .line 137
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Integer;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 146
    move-result v0

    .line 147
    sput v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    .line 149
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 151
    const-string v4, "DEVICE_LEVEL_FOR_CPU"

    .line 153
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/lang/Integer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 162
    move-result v0

    .line 163
    sput v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    .line 165
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 167
    const-string v4, "DEVICE_LEVEL_FOR_GPU"

    .line 169
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Integer;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 178
    move-result v0

    .line 179
    sput v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    .line 181
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 183
    const-string v4, "LOW_DEVICE"

    .line 185
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Ljava/lang/Integer;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 194
    move-result v0

    .line 195
    sput v0, Lmiuix/animation/utils/DeviceUtils;->LOW:I

    .line 197
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 199
    const-string v4, "MIDDLE_DEVICE"

    .line 201
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/Integer;

    .line 207
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 210
    move-result v0

    .line 211
    sput v0, Lmiuix/animation/utils/DeviceUtils;->MIDDLE:I

    .line 213
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 215
    const-string v4, "HIGH_DEVICE"

    .line 217
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Ljava/lang/Integer;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 226
    move-result v0

    .line 227
    sput v0, Lmiuix/animation/utils/DeviceUtils;->HIGH:I

    .line 229
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 231
    const-string v4, "DEVICE_LEVEL_UNKNOWN"

    .line 233
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/lang/Integer;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 242
    move-result v0

    .line 243
    sput v0, Lmiuix/animation/utils/DeviceUtils;->UNKNOWN:I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_f4} :catch_f5

    .line 245
    goto :goto_10a

    .line 246
    :catch_f5
    move-exception v0

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    const-string v6, "DeviceLevel(): Load Class Exception:"

    .line 254
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v0

    .line 264
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_10a
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 269
    if-nez v0, :cond_142

    .line 271
    :try_start_10e
    const-string v0, "android.app.ActivityThread"

    .line 273
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 276
    move-result-object v0

    .line 277
    const-string v4, "currentApplication"

    .line 279
    new-array v6, v5, [Ljava/lang/Class;

    .line 281
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Landroid/app/Application;

    .line 291
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->application:Landroid/app/Application;

    .line 293
    if-eqz v0, :cond_142

    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 298
    move-result-object v0

    .line 299
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_12c} :catch_12d

    .line 301
    goto :goto_142

    .line 302
    :catch_12d
    move-exception v0

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const-string v6, "android.app.ActivityThread Exception:"

    .line 310
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object v0

    .line 320
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_142
    :goto_142
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 325
    if-nez v0, :cond_17a

    .line 327
    :try_start_146
    const-string v0, "android.app.AppGlobals"

    .line 329
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 332
    move-result-object v0

    .line 333
    const-string v4, "getInitialApplication"

    .line 335
    new-array v6, v5, [Ljava/lang/Class;

    .line 337
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Landroid/app/Application;

    .line 347
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->application:Landroid/app/Application;

    .line 349
    if-eqz v0, :cond_17a

    .line 351
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 354
    move-result-object v0

    .line 355
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_164} :catch_165

    .line 357
    goto :goto_17a

    .line 358
    :catch_165
    move-exception v0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 361
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    const-string v4, "android.app.AppGlobals Exception:"

    .line 366
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    move-result-object v0

    .line 376
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_17a
    :goto_17a
    :try_start_17a
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 381
    if-eqz v0, :cond_1a3

    .line 383
    new-array v2, v3, [Ljava/lang/Object;

    .line 385
    sget-object v3, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 387
    aput-object v3, v2, v5

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-result-object v0

    .line 393
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_18a} :catch_18b

    .line 395
    goto :goto_1a3

    .line 396
    :catch_18b
    move-exception v0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 399
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    const-string v3, "DeviceLevelUtils(): newInstance Exception:"

    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v2

    .line 414
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 420
    :cond_1a3
    :goto_1a3
    const-string v3, "cactus"

    .line 422
    const-string v4, "cereus"

    .line 424
    const-string v5, "pine"

    .line 426
    const-string v6, "olive"

    .line 428
    const-string v7, "ginkgo"

    .line 430
    const-string v8, "olivelite"

    .line 432
    const-string v9, "olivewood"

    .line 434
    const-string v10, "willow"

    .line 436
    const-string v11, "wayne"

    .line 438
    const-string v12, "dandelion"

    .line 440
    const-string v13, "angelica"

    .line 442
    const-string v14, "angelicain"

    .line 444
    const-string v15, "whyred"

    .line 446
    const-string v16, "tulip"

    .line 448
    const-string v17, "onc"

    .line 450
    const-string v18, "onclite"

    .line 452
    const-string v19, "lavender"

    .line 454
    const-string v20, "lotus"

    .line 456
    const-string v21, "laurus"

    .line 458
    const-string v22, "merlinnfc"

    .line 460
    const-string v23, "merlin"

    .line 462
    const-string v24, "lancelot"

    .line 464
    const-string v25, "citrus"

    .line 466
    const-string v26, "pomelo"

    .line 468
    const-string v27, "lemon"

    .line 470
    const-string v28, "shiva"

    .line 472
    const-string v29, "lime"

    .line 474
    const-string v30, "cannon"

    .line 476
    const-string v31, "curtana"

    .line 478
    const-string v32, "durandal"

    .line 480
    const-string v33, "excalibur"

    .line 482
    const-string v34, "joyeuse"

    .line 484
    const-string v35, "gram"

    .line 486
    const-string v36, "sunny"

    .line 488
    const-string v37, "mojito"

    .line 490
    const-string v38, "rainbow"

    .line 492
    const-string v39, "cattail"

    .line 494
    const-string v40, "angelican"

    .line 496
    const-string v41, "camellia"

    .line 498
    filled-new-array/range {v3 .. v41}, [Ljava/lang/String;

    .line 501
    move-result-object v0

    .line 502
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

    .line 504
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCpuInfo(Ljava/lang/String;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/utils/DeviceUtils$CpuInfo;-><init>()V

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    move-result p0

    .line 10
    iput p0, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->id:I

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
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_29

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    move-result p0

    .line 40
    iput p0, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->maxFreq:I

    .line 42
    :cond_29
    return-object v0
.end method

.method private static decideLevel(Lmiuix/animation/utils/DeviceUtils$CpuStats;)V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->bigCoreCount:I

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
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 19
    const v1, 0x2932e0

    .line 22
    if-le v0, v1, :cond_1b

    .line 24
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    if-le v0, v4, :cond_20

    .line 30
    iput v2, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 32
    goto :goto_2c

    .line 33
    :cond_20
    iput v3, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 38
    if-le v0, v4, :cond_2a

    .line 40
    iput v2, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iput v3, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 45
    :goto_2c
    return-void
.end method

.method private static doCpuStats(Lmiuix/animation/utils/DeviceUtils$CpuStats;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/utils/DeviceUtils$CpuStats;",
            "Ljava/util/List<",
            "Lmiuix/animation/utils/DeviceUtils$CpuInfo;",
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
    check-cast v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;

    .line 17
    iget v1, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->architecture:I

    .line 19
    const/16 v2, 0x8

    .line 21
    if-ge v1, v2, :cond_19

    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 26
    :cond_19
    iget v0, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->maxFreq:I

    .line 28
    iget v1, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 30
    if-le v0, v1, :cond_21

    .line 32
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 34
    :cond_21
    const v1, 0x1e8480

    .line 37
    if-lt v0, v1, :cond_2d

    .line 39
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 45
    goto :goto_4

    .line 46
    :cond_2d
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->smallCoreCount:I

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->smallCoreCount:I

    .line 52
    goto :goto_4

    .line 53
    :cond_34
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->decideLevel(Lmiuix/animation/utils/DeviceUtils$CpuStats;)V

    .line 56
    return-void
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

.method private static getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)V
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
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    iput p0, p2, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->implementor:I

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
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 27
    move-result p0

    .line 28
    iput p0, p2, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->architecture:I

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
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 42
    move-result p0

    .line 43
    iput p0, p2, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->part:I

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
            "Lmiuix/animation/utils/DeviceUtils$CpuInfo;",
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
    invoke-static {v3, v0, v2}, Lmiuix/animation/utils/DeviceUtils;->parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;

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
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getHardwareInfo()Ljava/lang/String;

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
    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getQualcommCpuLevel(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getMtkCpuLevel(Ljava/lang/String;)I

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
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getCpuStats()Lmiuix/animation/utils/DeviceUtils$CpuStats;

    .line 36
    move-result-object v0

    .line 37
    iget v0, v0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 39
    :cond_26
    return v0
.end method

.method public static getCpuStats()Lmiuix/animation/utils/DeviceUtils$CpuStats;
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getCpuInfoList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/animation/utils/DeviceUtils$CpuStats;

    .line 7
    invoke-direct {v1}, Lmiuix/animation/utils/DeviceUtils$CpuStats;-><init>()V

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
    iput v2, v1, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 21
    :cond_14
    invoke-static {v1, v0}, Lmiuix/animation/utils/DeviceUtils;->doCpuStats(Lmiuix/animation/utils/DeviceUtils$CpuStats;Ljava/util/List;)V

    .line 24
    return-object v1
.end method

.method public static getDeviceLevel()I
    .registers 1

    .line 1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevel(I)I
    .registers 3

    .line 2
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    const/4 v1, -0x1

    if-ne v0, p0, :cond_a

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    if-eq v0, v1, :cond_a

    return v0

    .line 3
    :cond_a
    sput p0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    .line 4
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel2(I)I

    move-result p0

    sput p0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    if-eq p0, v1, :cond_15

    return p0

    .line 5
    :cond_15
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1()I

    move-result p0

    return p0
.end method

.method public static getDeviceLevel(II)I
    .registers 4

    .line 6
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_e

    .line 7
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mCpuLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 8
    :cond_e
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    if-ne p1, v0, :cond_1b

    .line 9
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mGpuLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 10
    :cond_1b
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    if-ne p1, v0, :cond_28

    .line 11
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_28

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mRamLevel:I

    if-eq v0, v1, :cond_28

    return v0

    .line 12
    :cond_28
    invoke-static {p0, p1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel2(II)I

    move-result v0

    if-eq v0, v1, :cond_33

    .line 13
    invoke-static {p0, v0, p1}, Lmiuix/animation/utils/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0

    .line 14
    :cond_33
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 15
    invoke-static {p0, v0, p1}, Lmiuix/animation/utils/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel1()I
    .registers 5

    .line 5
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 6
    :cond_6
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->isMiuiLite()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 7
    sput v1, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    goto :goto_35

    .line 8
    :cond_10
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 9
    sget v2, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    invoke-static {v2}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1(I)I

    move-result v2

    .line 10
    sget v3, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v4, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    invoke-static {v3, v4}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v0, v4, v1

    const/4 v0, 0x1

    aput v2, v4, v0

    const/4 v0, 0x2

    aput v3, v4, v0

    .line 11
    invoke-static {v4}, Lmiuix/animation/utils/DeviceUtils;->getMinLevel([I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    .line 12
    :goto_35
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    return v0
.end method

.method private static getDeviceLevel1(I)I
    .registers 2

    .line 1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    if-ne p0, v0, :cond_16

    .line 2
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getTotalRam()I

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
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    if-ne p0, v0, :cond_1f

    .line 4
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getCpuLevel()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private static getDeviceLevel2(I)I
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    sget-object v1, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_26

    :catch_19
    move-exception p0

    const-string v0, "getDeviceLevel failed , e:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceUtils"

    .line 4
    invoke-static {p0, v0, v1}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 5
    :goto_26
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel2(II)I
    .registers 6

    .line 13
    :try_start_0
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    sget-object v1, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2d

    :catch_20
    move-exception p0

    const-string p1, "getDeviceLevel failed , e:"

    .line 15
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "DeviceUtils"

    .line 16
    invoke-static {p0, p1, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 17
    :goto_2d
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->transDeviceLevel(I)I

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

.method private static getMtkCpuLevel(Ljava/lang/String;)I
    .registers 4

    .line 1
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

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

.method public static getProductDevice()Ljava/lang/String;
    .registers 7

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    const/4 v2, 0x2

    .line 6
    :try_start_5
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v0, v3, v4

    .line 11
    const/4 v5, 0x1

    .line 12
    aput-object v0, v3, v5

    .line 14
    const-string v0, "android.os.SystemProperties"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    move-result-object v0

    .line 20
    const-string v6, "get"

    .line 22
    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v0

    .line 26
    const/4 v3, 0x0

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    const-string v6, "ro.product.device"

    .line 31
    aput-object v6, v2, v4

    .line 33
    aput-object v1, v2, v5

    .line 35
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_29

    .line 41
    return-object v0

    .line 42
    :catch_29
    move-exception v0

    .line 43
    const-string v2, "getProductDevice failed , e:"

    .line 45
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v2

    .line 49
    const-string v3, "DeviceUtils"

    .line 51
    invoke-static {v0, v2, v3}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    return-object v1
.end method

.method public static getQualcommCpuLevel(Ljava/lang/String;)I
    .registers 7

    .line 1
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

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
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

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
    sput v1, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I
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
    sput v0, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

    .line 57
    :cond_38
    :goto_38
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

    .line 59
    return v0
.end method

.method private static isMiuiLite()Z
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "miui.os.Build"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "IS_MIUI_LITE_VERSION"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v0
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    .line 24
    return v0

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    const-string v1, "DeviceUtils"

    .line 28
    const-string v2, "getDeviceLevel failed"

    .line 30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public static isStockDevice()Z
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getProductDevice()Ljava/lang/String;

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
    sget-object v2, Lmiuix/animation/utils/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

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

.method public static isSupportPrune()Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lmiuix/animation/utils/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 4
    sget-object v2, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 6
    new-array v3, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    .line 18
    goto :goto_1e

    .line 19
    :catch_12
    move-exception v1

    .line 20
    const-string v2, "isSupportPrune failed , e:"

    .line 22
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v2

    .line 26
    const-string v3, "DeviceUtils"

    .line 28
    invoke-static {v1, v2, v3}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    :goto_1e
    return v0
.end method

.method private static parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiuix/animation/utils/DeviceUtils$CpuInfo;",
            ">;",
            "Lmiuix/animation/utils/DeviceUtils$CpuInfo;",
            ")",
            "Lmiuix/animation/utils/DeviceUtils$CpuInfo;"
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
    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->createCpuInfo(Ljava/lang/String;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;

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
    invoke-static {p0, v0, p2}, Lmiuix/animation/utils/DeviceUtils;->getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)V

    .line 40
    :cond_27
    :goto_27
    return-object p2
.end method

.method private static setDeviceLevel(III)I
    .registers 3

    .line 1
    sput p0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    .line 3
    sget p0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    .line 5
    if-ne p2, p0, :cond_9

    .line 7
    sput p1, Lmiuix/animation/utils/DeviceUtils;->mCpuLevel:I

    .line 9
    return p1

    .line 10
    :cond_9
    sget p0, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    .line 12
    if-ne p2, p0, :cond_10

    .line 14
    sput p1, Lmiuix/animation/utils/DeviceUtils;->mGpuLevel:I

    .line 16
    return p1

    .line 17
    :cond_10
    sget p0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    .line 19
    if-ne p2, p0, :cond_17

    .line 21
    sput p1, Lmiuix/animation/utils/DeviceUtils;->mRamLevel:I

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
    sget v0, Lmiuix/animation/utils/DeviceUtils;->LOW:I

    .line 3
    if-ne p0, v0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_6
    sget v0, Lmiuix/animation/utils/DeviceUtils;->MIDDLE:I

    .line 9
    if-ne p0, v0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_c
    sget v0, Lmiuix/animation/utils/DeviceUtils;->HIGH:I

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
