.class public Lmiuix/autodensity/DensityConfigManager;
.super Ljava/lang/Object;
.source "DensityConfigManager.java"


# static fields
.field private static final STANDARD_DPI:F = 440.0f

.field private static final STANDARD_PPI:F = 386.0f

.field private static final STANDARD_SCALE:F = 1.1398964f

.field private static sInstance:Lmiuix/autodensity/DensityConfigManager;


# instance fields
.field private mAutoDensityEnable:Z

.field private mOriginConfig:Lmiuix/autodensity/DensityConfig;

.field private mScreenSize:Landroid/graphics/Point;

.field private mTargetConfig:Lmiuix/autodensity/DensityConfig;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Point;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    .line 14
    return-void
.end method

.method private calcPadScale(Landroid/content/Context;)F
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getMaxSizeInch(Landroid/content/Context;)F

    .line 4
    move-result p1

    .line 5
    const v0, 0x4114cccd  # 9.3f

    .line 8
    div-float/2addr p1, v0

    .line 9
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 11
    const-string v1, "dagu"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    const v1, 0x3f87ae14  # 1.06f

    .line 20
    const/high16 v2, 0x3f800000  # 1.0f

    .line 22
    if-eqz v0, :cond_1d

    .line 24
    mul-float/2addr p1, v1

    .line 25
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1d
    mul-float/2addr p1, v1

    .line 31
    const v0, 0x3f933333  # 1.15f

    .line 34
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 37
    move-result p1

    .line 38
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method private calcPhoneScale(Landroid/content/Context;)F
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getMinSizeInch(Landroid/content/Context;)F

    .line 4
    move-result p1

    .line 5
    const v0, 0x402ccccd  # 2.7f

    .line 8
    cmpg-float v0, p1, v0

    .line 10
    if-gez v0, :cond_10

    .line 12
    const v0, 0x40333333  # 2.8f

    .line 15
    div-float/2addr p1, v0

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    const/high16 p1, 0x3f800000  # 1.0f

    .line 19
    :goto_12
    return p1
.end method

.method private getAccessibilityDelta(Landroid/content/Context;)F
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/autodensity/DensityConfigManager;->getAccessibilityDefaultDisplayDpi(I)I

    .line 5
    move-result v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "default dpi: "

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 26
    const/high16 v1, 0x3f800000  # 1.0f

    .line 28
    const/4 v2, -0x1

    .line 29
    if-eq v0, v2, :cond_60

    .line 31
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object p1

    .line 35
    const-string v2, "display_density_forced"

    .line 37
    invoke-static {p1, v2}, Lmiuix/provider/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 40
    move-result p1
    :try_end_28
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1e .. :try_end_28} :catch_29

    .line 41
    goto :goto_3f

    .line 42
    :catch_29
    move-exception p1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v3, "Exception: "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 63
    move p1, v0

    .line 64
    :goto_3f
    int-to-float v2, p1

    .line 65
    mul-float/2addr v2, v1

    .line 66
    int-to-float v0, v0

    .line 67
    div-float v1, v2, v0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v2, "accessibility dpi: "

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string p1, ", delta: "

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 97
    :cond_60
    return v1
.end method

.method private getDebugScale()F
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/autodensity/RootUtil;->isDeviceRooted()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->getAutoDensityScaleInDebugMode()F

    .line 10
    move-result v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method private getDefaultDisplayDensity(I)I
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    .line 8
    move-result p1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 9
    return p1

    .line 10
    :catchall_9
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method private getDeviceScale(Landroid/content/Context;)F
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/autodensity/SkuScale;->hasSkuScale()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-static {p1}, Lmiuix/autodensity/SkuScale;->getSkuScale(Landroid/content/Context;)F

    .line 10
    move-result p1

    .line 11
    goto :goto_2e

    .line 12
    :cond_b
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 14
    if-eqz v0, :cond_21

    .line 16
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 18
    const-string v1, "cetus"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    const/high16 p1, 0x3f800000  # 1.0f

    .line 28
    goto :goto_2e

    .line 29
    :cond_1c
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPhoneScale(Landroid/content/Context;)F

    .line 32
    move-result p1

    .line 33
    goto :goto_2e

    .line 34
    :cond_21
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 36
    if-eqz v0, :cond_2a

    .line 38
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPadScale(Landroid/content/Context;)F

    .line 41
    move-result p1

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPhoneScale(Landroid/content/Context;)F

    .line 46
    move-result p1

    .line 47
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v1, "getDeviceScale "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 67
    return p1
.end method

.method public static getInstance()Lmiuix/autodensity/DensityConfigManager;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/autodensity/DensityConfigManager;

    .line 7
    invoke-direct {v0}, Lmiuix/autodensity/DensityConfigManager;-><init>()V

    .line 10
    sput-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    .line 12
    :cond_b
    sget-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    .line 14
    return-object v0
.end method

.method private getMaxSizeInch(Landroid/content/Context;)F
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p1

    .line 9
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 11
    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 16
    move-result v0

    .line 17
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 19
    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 21
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 27
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 29
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 31
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 38
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 40
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 42
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result v2

    .line 46
    int-to-float v2, v2

    .line 47
    div-float/2addr v1, v0

    .line 48
    div-float/2addr v2, p1

    .line 49
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method private getMinSizeInch(Landroid/content/Context;)F
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p1

    .line 9
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 11
    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 16
    move-result v0

    .line 17
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 19
    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 21
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 27
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 29
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 31
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 38
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 40
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 42
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result v2

    .line 46
    int-to-float v2, v2

    .line 47
    div-float/2addr v1, v0

    .line 48
    div-float/2addr v2, p1

    .line 49
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method private getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 3

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/WindowManager;

    .line 9
    return-object p1
.end method

.method private updateDeviceScale(Landroid/content/Context;)F
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/autodensity/DensityConfigManager;->getDebugScale()F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, v0, v1

    .line 8
    if-gez v1, :cond_14

    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    .line 13
    const-string v2, "AutoDensity"

    .line 15
    const-string v3, "disable auto density in debug mode"

    .line 17
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    const/4 v2, 0x1

    .line 22
    iput-boolean v2, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    .line 24
    :goto_17
    if-gtz v1, :cond_1d

    .line 26
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getDeviceScale(Landroid/content/Context;)F

    .line 29
    move-result v0

    .line 30
    :cond_1d
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getAccessibilityDelta(Landroid/content/Context;)F

    .line 33
    move-result p1

    .line 34
    mul-float/2addr v0, p1

    .line 35
    return v0
.end method

.method private updatePPIOfDevice(Landroid/content/Context;)I
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "physical size: "

    .line 11
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", display xdpi: "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", ydpi: "

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 47
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 49
    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 54
    move-result v0

    .line 55
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 59
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 62
    move-result p1

    .line 63
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 65
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 67
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 69
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 72
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 76
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 78
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 80
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 83
    move-result v2

    .line 84
    int-to-float v2, v2

    .line 85
    div-float v0, v1, v0

    .line 87
    div-float p1, v2, p1

    .line 89
    float-to-double v3, v0

    .line 90
    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    .line 92
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 95
    move-result-wide v3

    .line 96
    float-to-double v7, p1

    .line 97
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 100
    move-result-wide v7

    .line 101
    add-double/2addr v7, v3

    .line 102
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 105
    move-result-wide v3

    .line 106
    float-to-double v7, v1

    .line 107
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 110
    move-result-wide v7

    .line 111
    float-to-double v1, v2

    .line 112
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 115
    move-result-wide v1

    .line 116
    add-double/2addr v1, v7

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 120
    move-result-wide v1

    .line 121
    div-double/2addr v1, v3

    .line 122
    double-to-int v1, v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v5, "Screen inches : "

    .line 130
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, ", ppi:"

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v3, ",physicalX:"

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 152
    const-string v3, ",physicalY:"

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 160
    const-string v3, ",min size inches: "

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 168
    move-result p1

    .line 169
    const v0, 0x40333333  # 2.8f

    .line 172
    div-float/2addr p1, v0

    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 176
    const-string p1, ", real point:"

    .line 178
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object p1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 193
    return v1
.end method

.method private updatePhysicalSize(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "display"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getAccessibilityDefaultDisplayDpi(I)I
    .registers 7

    .line 1
    :try_start_0
    const-string v0, "persist.sys.miui_resolution"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_3c

    .line 14
    new-instance v1, Landroid/graphics/Point;

    .line 16
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 19
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 27
    const-string v4, ","

    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    aget-object v0, v0, v3

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 43
    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    .line 46
    move-result p1

    .line 47
    mul-int/2addr p1, v0

    .line 48
    int-to-float p1, p1

    .line 49
    const/high16 v0, 0x3f800000  # 1.0f

    .line 51
    mul-float/2addr p1, v0

    .line 52
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 54
    int-to-float v0, v0

    .line 55
    div-float/2addr p1, v0

    .line 56
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_3c
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getDefaultDisplayDensity(I)I

    .line 64
    move-result p1
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    .line 65
    return p1

    .line 66
    :catchall_41
    const/4 p1, -0x1

    .line 67
    return p1
.end method

.method public getOriginConfig()Lmiuix/autodensity/DensityConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    .line 3
    return-object v0
.end method

.method public getTargetConfig()Lmiuix/autodensity/DensityConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    .line 3
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/autodensity/DensityConfig;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lmiuix/autodensity/DensityConfig;-><init>(Landroid/content/res/Configuration;)V

    .line 14
    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, p1, v0}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 27
    return-void
.end method

.method public isAutoDensityEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    .line 3
    return v0
.end method

.method public updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/autodensity/DensityConfig;

    .line 3
    invoke-direct {v0, p2}, Lmiuix/autodensity/DensityConfig;-><init>(Landroid/content/res/Configuration;)V

    .line 6
    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    .line 8
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->updateOriginConfig(Lmiuix/view/DisplayConfig;)V

    .line 11
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updatePhysicalSize(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updatePPIOfDevice(Landroid/content/Context;)I

    .line 17
    move-result v0

    .line 18
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updateDeviceScale(Landroid/content/Context;)F

    .line 21
    move-result p1

    .line 22
    int-to-float v0, v0

    .line 23
    const v1, 0x3f91e820

    .line 26
    mul-float/2addr v0, v1

    .line 27
    mul-float/2addr v0, p1

    .line 28
    float-to-int p1, v0

    .line 29
    int-to-float v0, p1

    .line 30
    const/high16 v1, 0x3f800000  # 1.0f

    .line 32
    mul-float/2addr v0, v1

    .line 33
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 35
    int-to-float p2, p2

    .line 36
    div-float/2addr v0, p2

    .line 37
    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    .line 39
    iput p1, p2, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 41
    iput p1, p2, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 43
    iget-object p1, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    .line 45
    iget v1, p1, Lmiuix/view/DisplayConfig;->density:F

    .line 47
    mul-float/2addr v1, v0

    .line 48
    iput v1, p2, Lmiuix/view/DisplayConfig;->density:F

    .line 50
    iget v1, p1, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 52
    mul-float/2addr v1, v0

    .line 53
    iput v1, p2, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 55
    iget p1, p1, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 57
    mul-float/2addr p1, v0

    .line 58
    iput p1, p2, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 60
    const-string p1, "Config changed. Raw config("

    .line 62
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string p2, ") TargetConfig("

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string p2, ")"

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 93
    return-void
.end method
