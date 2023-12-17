.class public Lmiuix/core/util/MiuixUIUtils;
.super Ljava/lang/Object;
.source "MiuixUIUtils.java"


# static fields
.field private static final HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field private static final TAG:Ljava/lang/String; = "MiuixUtils"

.field private static final USE_GESTURE_VERSION_THREE:Ljava/lang/String; = "use_gesture_version_three"

.field private static mTmpValue:Landroid/util/TypedValue;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    sput-object v0, Lmiuix/core/util/MiuixUIUtils;->mTmpValue:Landroid/util/TypedValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .registers 5

    .line 1
    const-string v0, "qemu.hw.mainkeys"

    .line 3
    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "1"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_10

    .line 16
    goto :goto_2e

    .line 17
    :cond_10
    const-string v1, "0"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_2e

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p0

    .line 31
    const-string v0, "config_showNavigationBar"

    .line 33
    const-string v1, "bool"

    .line 35
    const-string v3, "android"

    .line 37
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move-result v0

    .line 41
    if-lez v0, :cond_2e

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 46
    move-result v2

    .line 47
    :cond_2e
    :goto_2e
    return v2
.end method

.method private static checkMultiWindow(Landroid/app/Activity;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static dp2px(FF)I
    .registers 2

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 11
    int-to-float p0, p0

    .line 12
    const/high16 v0, 0x43200000  # 160.0f

    .line 14
    div-float/2addr p0, v0

    .line 15
    invoke-static {p0, p1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static getDefDimen(Landroid/content/Context;I)I
    .registers 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 14
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 16
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 19
    move-result p0

    .line 20
    float-to-int p0, p0

    .line 21
    return p0
.end method

.method public static getNaviBarIntercationMode(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "config_navBarInteractionMode"

    .line 7
    const-string v1, "integer"

    .line 9
    const-string v2, "android"

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_15

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_10

    .line 8
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    move p0, v1

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    :goto_10
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getRealNavigationBarHeight(Landroid/content/Context;)I

    .line 20
    move-result p0

    .line 21
    :goto_14
    if-gez p0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v1, p0

    .line 25
    :goto_18
    return v1
.end method

.method private static getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6
    const-string v1, "window"

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 14
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    move-result-object v1

    .line 18
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v2

    .line 22
    const-string v3, "mDisplayInfo"

    .line 24
    invoke-static {v2, v3}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-result-object v2

    .line 36
    const-string v3, "logicalWidth"

    .line 38
    invoke-static {v2, v3}, Lmiuix/reflect/Reflects;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 41
    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v2

    .line 52
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-result-object v2

    .line 58
    const-string v3, "logicalHeight"

    .line 60
    invoke-static {v2, v3}, Lmiuix/reflect/Reflects;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v1

    .line 74
    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_4c

    .line 76
    goto :goto_68

    .line 77
    :catch_4c
    move-exception v1

    .line 78
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 80
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 94
    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 96
    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 98
    const-string p0, "MiuixUtils"

    .line 100
    const-string v2, "catch error! failed to get physical size"

    .line 102
    invoke-static {p0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_68
    return-object v0
.end method

.method public static getRealNavigationBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 1
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "navigation_bar_height"

    .line 15
    const-string v2, "dimen"

    .line 17
    const-string v3, "android"

    .line 19
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1c

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result v1

    .line 29
    :cond_1c
    return v1
.end method

.method public static getScreenSizeDp(Landroid/content/Context;)[I
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v5, 0x1e

    .line 20
    if-lt v2, v5, :cond_3c

    .line 22
    const-class v2, Landroid/view/WindowManager;

    .line 24
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/view/WindowManager;

    .line 30
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    div-float/2addr v2, v1

    .line 44
    float-to-int v2, v2

    .line 45
    aput v2, v0, v4

    .line 47
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 54
    move-result p0

    .line 55
    int-to-float p0, p0

    .line 56
    div-float/2addr p0, v1

    .line 57
    float-to-int p0, p0

    .line 58
    aput p0, v0, v3

    .line 60
    goto :goto_79

    .line 61
    :cond_3c
    const/16 v5, 0x18

    .line 63
    if-le v2, v5, :cond_63

    .line 65
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 67
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    const-string v5, "window"

    .line 72
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroid/view/WindowManager;

    .line 78
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    int-to-float p0, p0

    .line 88
    div-float/2addr p0, v1

    .line 89
    float-to-int p0, p0

    .line 90
    aput p0, v0, v4

    .line 92
    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    int-to-float p0, p0

    .line 95
    div-float/2addr p0, v1

    .line 96
    float-to-int p0, p0

    .line 97
    aput p0, v0, v3

    .line 99
    goto :goto_79

    .line 100
    :cond_63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 107
    move-result-object p0

    .line 108
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    int-to-float v2, v2

    .line 111
    div-float/2addr v2, v1

    .line 112
    float-to-int v2, v2

    .line 113
    aput v2, v0, v4

    .line 115
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    int-to-float p0, p0

    .line 118
    div-float/2addr p0, v1

    .line 119
    float-to-int p0, p0

    .line 120
    aput p0, v0, v3

    .line 122
    :goto_79
    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "status_bar_height"

    .line 7
    const-string v2, "dimen"

    .line 9
    const-string v3, "android"

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_19

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result p0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    :goto_1a
    return p0
.end method

.method public static isEnableGestureLine(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "hide_gesture_line"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public static isFreeformMode(Landroid/content/Context;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager;

    .line 9
    new-instance v1, Landroid/graphics/Point;

    .line 11
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 14
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 21
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 24
    move-result-object v0

    .line 25
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 27
    int-to-float v2, v2

    .line 28
    const/4 v3, 0x0

    .line 29
    add-float/2addr v2, v3

    .line 30
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 32
    int-to-float v4, v4

    .line 33
    div-float/2addr v2, v4

    .line 34
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 36
    int-to-float v1, v1

    .line 37
    add-float/2addr v1, v3

    .line 38
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 40
    int-to-float v0, v0

    .line 41
    div-float/2addr v1, v0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    const-string v0, "mWindowingMode=freeform"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_4a

    .line 62
    const p0, 0x3f666666  # 0.9f

    .line 65
    cmpg-float v0, v2, p0

    .line 67
    if-lez v0, :cond_48

    .line 69
    cmpg-float p0, v1, p0

    .line 71
    if-gtz p0, :cond_4a

    .line 73
    :cond_48
    const/4 p0, 0x1

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    const/4 p0, 0x0

    .line 76
    :goto_4b
    return p0
.end method

.method public static isFullScreenGestureMode(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getNaviBarIntercationMode(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p0, v0, :cond_9

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return p0
.end method

.method public static isInMultiWindowMode(Landroid/content/Context;)Z
    .registers 2

    .line 1
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    instance-of v0, p0, Landroid/app/Activity;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    check-cast p0, Landroid/app/Activity;

    .line 11
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->checkMultiWindow(Landroid/app/Activity;)Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    check-cast p0, Landroid/content/ContextWrapper;

    .line 18
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_16
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static isLayoutHideNavigation(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 4
    move-result p0

    .line 5
    and-int/lit16 p0, p0, 0x200

    .line 7
    if-eqz p0, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    :goto_b
    return p0
.end method

.method public static isNavigationBarFullScreen(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "force_fsg_nav_bar"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public static isShowNavigationHandle(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isEnableGestureLine(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isSupportGestureLine(Landroid/content/Context;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_14

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    :goto_15
    return p0
.end method

.method public static isSupportGestureLine(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "use_gesture_version_three"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public static px2dp(FF)I
    .registers 2

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 11
    int-to-float p0, p0

    .line 12
    const/high16 v0, 0x43200000  # 160.0f

    .line 14
    div-float/2addr p0, v0

    .line 15
    invoke-static {p0, p1}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 18
    move-result p0

    .line 19
    return p0
.end method
