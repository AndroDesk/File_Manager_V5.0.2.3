.class public Lcom/android/fileexplorer/util/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# static fields
.field private static final HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field private static final TAG:Ljava/lang/String; = "DisplayUtil"

.field private static final USE_GESTURE_VERSION_THREE:Ljava/lang/String; = "use_gesture_version_three"

.field private static sIsRTL:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->refreshRTL()V

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(F)I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    mul-float/2addr v0, p0

    .line 16
    const/high16 p0, 0x3f000000  # 0.5f

    .line 18
    add-float/2addr v0, p0

    .line 19
    float-to-int p0, v0

    .line 20
    return p0
.end method

.method public static forceDpiToDefaultDisplay(Landroid/content/Context;)V
    .registers 9

    .line 1
    const-string v0, "display"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 9
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v1, :cond_54

    .line 17
    aget-object v3, v0, v2

    .line 19
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_51

    .line 25
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 27
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    move-result-object v5

    .line 41
    iget v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 43
    iget v7, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 45
    iput v7, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 47
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v4, "force dpi from "

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v4, " to "

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    const-string v4, "DisplayUtil"

    .line 79
    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_51
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_e

    .line 85
    :cond_54
    return-void
.end method

.method public static getDefaultIconSize(Landroid/content/Context;)I
    .registers 1

    .line 1
    sget-boolean p0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-eqz p0, :cond_7

    .line 5
    const/16 p0, 0xa2

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/16 p0, 0xf0

    .line 10
    :goto_9
    return p0
.end method

.method public static getDisplayMetricsInSmallWindow(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 11

    .line 1
    const-string v0, "window"

    .line 3
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 5
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    :try_start_7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/view/WindowManager;

    .line 18
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "android.view.DisplayInfo"

    .line 28
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    move-result-object v4

    .line 32
    const-string v5, "getDisplayInfo"

    .line 34
    const/4 v6, 0x1

    .line 35
    new-array v7, v6, [Ljava/lang/Class;

    .line 37
    const/4 v8, 0x0

    .line 38
    aput-object v4, v7, v8

    .line 40
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 48
    new-array v5, v6, [Ljava/lang/Object;

    .line 50
    aput-object v4, v5, v8

    .line 52
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object v2

    .line 59
    const-string v3, "android.content.res.CompatibilityInfo"

    .line 61
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    move-result-object v3

    .line 65
    const-string v5, "DEFAULT_COMPATIBILITY_INFO"

    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    const/4 v7, 0x3

    .line 75
    new-array v9, v7, [Ljava/lang/Class;

    .line 77
    aput-object v2, v9, v8

    .line 79
    aput-object v3, v9, v6

    .line 81
    const-class v2, Landroid/content/res/Configuration;

    .line 83
    const/4 v3, 0x2

    .line 84
    aput-object v2, v9, v3

    .line 86
    const-string v2, "getLogicalMetrics"

    .line 88
    new-array v7, v7, [Ljava/lang/Object;

    .line 90
    aput-object v1, v7, v8

    .line 92
    const/4 v8, 0x0

    .line 93
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 97
    aput-object v5, v7, v6

    .line 99
    aput-object v8, v7, v3

    .line 101
    invoke-static {v4, v2, v9, v7}, Lcom/android/fileexplorer/util/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_67} :catch_68

    .line 104
    return-object v1

    .line 105
    :catch_68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Landroid/view/WindowManager;

    .line 111
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    return-object v1
.end method

.method public static getNavigationBarHeightFromProp(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "navigation_bar_height"

    .line 7
    const-string v1, "dimen"

    .line 9
    const-string v2, "android"

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_15

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "getNavigationBarHeightFromProp = "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "DisplayUtils"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return p0
.end method

.method public static getRealHeight(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isSmallWindowMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getDisplayMetricsInSmallWindow(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 13
    return p0

    .line 14
    :cond_d
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 16
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    const-string v1, "window"

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/view/WindowManager;

    .line 27
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 36
    return p0
.end method

.method public static getRealScreenWidth(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "getRealScreenWidth: density = "

    .line 11
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "DisplayUtil"

    .line 26
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    return p0
.end method

.method public static getRealWidth(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isSmallWindowMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/util/DisplayUtil;->getDisplayMetricsInSmallWindow(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    return p0

    .line 14
    :cond_d
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 16
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    const-string v1, "window"

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/view/WindowManager;

    .line 27
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 36
    return p0
.end method

.method public static getScreenHeight()I
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    return v0
.end method

.method public static getScreenSizeDp(Landroid/content/Context;)[I
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getScreenSizeDp(Landroid/content/Context;)[I

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getScreenWidth()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getScreenWidth: density = "

    .line 15
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v1

    .line 19
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "DisplayUtil"

    .line 30
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    return v0
.end method

.method public static getSpecialScreenHeight()I
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "notch_height"

    .line 25
    const-string v3, "dimen"

    .line 27
    const-string v4, "android"

    .line 29
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    move-result v1

    .line 33
    const-string v2, "ro.miui.notch"

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v2, v3}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne v2, v3, :cond_39

    .line 43
    if-lez v1, :cond_39

    .line 45
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result v1

    .line 57
    add-int/2addr v0, v1

    .line 58
    :cond_39
    return v0
.end method

.method public static getTouchSlop()F
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getTopActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    return v0
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

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 11
    and-int/lit8 p0, p0, 0x30

    .line 13
    const/16 v0, 0x20

    .line 15
    if-ne p0, v0, :cond_12

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

.method public static isRTL()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/DisplayUtil;->sIsRTL:Z

    return v0
.end method

.method public static isRTL(Landroid/view/View;)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isSmallWindowMode()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->isSmallWindowMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSmallWindowMode(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "SmallWindowUtils"

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "windowConfiguration"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getWindowingMode"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowMode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_49} :catch_4d

    const/4 v0, 0x5

    if-ne p0, v0, :cond_62

    return v3

    :catch_4d
    move-exception p0

    const-string v2, "error in isSmallWindowMode "

    .line 9
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return v1
.end method

.method public static isSupportGestureLine(Landroid/content/Context;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.provider.MiuiSettings$Global"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getBoolean"

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Landroid/content/ContentResolver;

    .line 15
    aput-object v5, v4, v0

    .line 17
    const-class v5, Ljava/lang/String;

    .line 19
    const/4 v6, 0x1

    .line 20
    aput-object v5, v4, v6

    .line 22
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    const/4 v2, 0x0

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object p0

    .line 36
    aput-object p0, v3, v0

    .line 38
    const-string p0, "use_gesture_version_three"

    .line 40
    aput-object p0, v3, v6

    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    .line 52
    return p0

    .line 53
    :catch_34
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    return v0
.end method

.method public static px2dp(F)I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    div-float/2addr p0, v0

    .line 16
    const/high16 v0, 0x3f000000  # 0.5f

    .line 18
    add-float/2addr p0, v0

    .line 19
    float-to-int p0, p0

    .line 20
    return p0
.end method

.method public static refreshRTL()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lk0/f;->a:I

    .line 7
    invoke-static {v0}, Lk0/f$a;->a(Ljava/util/Locale;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    sput-boolean v1, Lcom/android/fileexplorer/util/DisplayUtil;->sIsRTL:Z

    .line 18
    return-void
.end method

.method public static toggleChangeNaviBg(Landroid/app/Activity;I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 11
    const/high16 v1, -0x80000000

    .line 13
    and-int/2addr v1, v0

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_13

    .line 18
    move v1, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v3

    .line 21
    :goto_14
    const/high16 v4, 0x8000000

    .line 23
    and-int/2addr v0, v4

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v2, v3

    .line 28
    :goto_1b
    if-eqz v1, :cond_26

    .line 30
    if-nez v2, :cond_26

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 39
    :cond_26
    return-void
.end method

.method public static toggleChangeStatusBg(Landroid/app/Activity;I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 11
    const/high16 v1, -0x80000000

    .line 13
    and-int/2addr v1, v0

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_13

    .line 18
    move v1, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v3

    .line 21
    :goto_14
    const/high16 v4, 0x4000000

    .line 23
    and-int/2addr v0, v4

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v2, v3

    .line 28
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v3, "toggleChangeStatusBg isDrawSystemBarBgEnable:"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, ";isTranslucentStatus:"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    const-string v3, "DisplayUtil"

    .line 55
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz v1, :cond_44

    .line 60
    if-nez v2, :cond_44

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 69
    :cond_44
    return-void
.end method

.method public static toggleLayoutFullscreen(Landroid/app/Activity;Z)V
    .registers 3

    .line 1
    const/high16 v0, 0x4000000

    .line 3
    if-nez p1, :cond_c

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 20
    :goto_13
    return-void
.end method

.method public static toggleLayoutHideNavigation(Landroid/app/Activity;Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 12
    move-result v0

    .line 13
    and-int/lit16 v0, v0, 0x200

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_13

    .line 18
    move v0, v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    const/high16 v2, 0x8000000

    .line 23
    if-eqz v0, :cond_20

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 40
    :goto_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    const/16 v2, 0x1e

    .line 44
    if-lt v0, v2, :cond_4f

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_40

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 59
    move-result-object p0

    .line 60
    xor-int/2addr p1, v1

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 64
    goto :goto_4f

    .line 65
    :cond_40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 76
    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method

.method public static toggleNavigationBarVisibility(Landroid/app/Activity;Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_30

    .line 7
    if-eqz p1, :cond_1c

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V

    .line 28
    goto :goto_59

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 44
    move-result p1

    .line 45
    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 48
    goto :goto_59

    .line 49
    :cond_30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 60
    move-result v0

    .line 61
    if-eqz p1, :cond_4c

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 70
    move-result-object p0

    .line 71
    and-int/lit8 p1, v0, -0x3

    .line 73
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 76
    goto :goto_59

    .line 77
    :cond_4c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 84
    move-result-object p0

    .line 85
    or-int/lit8 p1, v0, 0x2

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 90
    :goto_59
    return-void
.end method

.method public static toggleStatusBarVisibility(Landroid/app/Activity;ZLandroid/os/CancellationSignal;)V
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_3d

    .line 7
    if-eqz p1, :cond_1c

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 24
    move-result p1

    .line 25
    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V

    .line 28
    goto :goto_66

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 44
    move-result v1

    .line 45
    const-wide/16 v2, 0xc8

    .line 47
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 49
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 52
    new-instance v6, Lcom/android/fileexplorer/util/DisplayUtil$1;

    .line 54
    invoke-direct {v6}, Lcom/android/fileexplorer/util/DisplayUtil$1;-><init>()V

    .line 57
    move-object v5, p2

    .line 58
    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    .line 61
    goto :goto_66

    .line 62
    :cond_3d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 73
    move-result p2

    .line 74
    if-eqz p1, :cond_59

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 83
    move-result-object p0

    .line 84
    and-int/lit8 p1, p2, -0x5

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 89
    goto :goto_66

    .line 90
    :cond_59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 97
    move-result-object p0

    .line 98
    or-int/lit8 p1, p2, 0x4

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 103
    :goto_66
    return-void
.end method

.method public static toggleSupportChangeSystemBarBg(Landroid/app/Activity;Z)V
    .registers 3

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    if-eqz p1, :cond_c

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 20
    :goto_13
    return-void
.end method
