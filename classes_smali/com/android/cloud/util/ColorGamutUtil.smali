.class public Lcom/android/cloud/util/ColorGamutUtil;
.super Ljava/lang/Object;
.source "ColorGamutUtil.java"


# static fields
.field public static final CAMERA_COLOR_MODE:Ljava/lang/String; = "persist.vendor.EnableP3ColorSpace"

.field public static final NATURE_MODE:I = 0x1

.field public static final SCREEN_COLOR_SPACE_MODE:Ljava/lang/String; = "color_space_mode"

.field public static final SCREEN_OPTIMIZE_ADAPT:I = 0x1

.field public static final SCREEN_OPTIMIZE_ENHANCE:I = 0x2

.field public static final SCREEN_OPTIMIZE_EXPERT:I = 0x4

.field public static final SCREEN_OPTIMIZE_MODE:Ljava/lang/String; = "screen_optimize_mode"

.field public static final SCREEN_OPTIMIZE_MODE_DEFAULT:Ljava/lang/String; = "default_display_color_mode"

.field public static final SCREEN_OPTIMIZE_STANDARD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ColorGamutUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWCG(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->isWCGEnabled(Landroid/app/Activity;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2d

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "changeWCG isWCGEnabled == true"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroidx/appcompat/widget/x;->a(Landroid/view/Window;)I

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-eq v0, v1, :cond_4b

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Landroidx/appcompat/widget/x;->q(Landroid/view/Window;)V

    .line 45
    goto :goto_4b

    .line 46
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const-string v1, "changeWCG isWCGEnabled == false"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroidx/appcompat/widget/x;->a(Landroid/view/Window;)I

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4b

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Landroidx/appcompat/widget/x;->D(Landroid/view/Window;)V

    .line 76
    :cond_4b
    :goto_4b
    return-void
.end method

.method public static getColorMode(Landroid/content/Context;)I
    .registers 3

    .line 1
    const-string v0, "default_display_color_mode"

    .line 3
    invoke-static {v0}, Lcom/android/cloud/util/ColorGamutUtil;->getDefaultValue(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 11
    const-string v1, "screen_optimize_mode"

    .line 13
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static getColorSpace(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "color_space_mode"

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private static getDefaultValue(Ljava/lang/String;)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "miui.util.FeatureParser"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getInteger"

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/String;

    .line 15
    aput-object v5, v4, v0

    .line 17
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 19
    const/4 v6, 0x1

    .line 20
    aput-object v5, v4, v6

    .line 22
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    aput-object p0, v3, v0

    .line 31
    const/4 p0, -0x1

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p0

    .line 36
    aput-object p0, v3, v6

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/Integer;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p0
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2f} :catch_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2f} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2f} :catch_30

    .line 48
    return p0

    .line 49
    :catch_30
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    goto :goto_43

    .line 54
    :catch_35
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    goto :goto_43

    .line 59
    :catch_3a
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    goto :goto_43

    .line 64
    :catch_3f
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :goto_43
    return v0
.end method

.method public static isCameraSupportWideColor()Z
    .registers 3

    .line 1
    const-string v0, "persist.vendor.EnableP3ColorSpace"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_b

    .line 11
    move v1, v2

    .line 12
    :cond_b
    return v1
.end method

.method public static isSupportColorGamut(Landroid/content/Context;)Z
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
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v1, 0x1a

    .line 13
    if-lt v0, v1, :cond_13

    .line 15
    invoke-static {p0}, Landroidx/appcompat/widget/x;->z(Landroid/content/res/Configuration;)Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method private static isWCGEnabled(Landroid/app/Activity;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->getColorMode(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 5
    const-string v1, "isWCGEnabled: colorMode = "

    .line 7
    const-string v2, "ColorGamutUtil"

    .line 9
    invoke-static {v1, v0, v2}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v0, v2, :cond_49

    .line 16
    const/4 v2, 0x4

    .line 17
    if-ne v0, v2, :cond_19

    .line 19
    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->getColorSpace(Landroid/content/Context;)I

    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_19

    .line 25
    goto :goto_49

    .line 26
    :cond_19
    invoke-static {}, Lcom/android/cloud/util/ColorGamutUtil;->isCameraSupportWideColor()Z

    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_48

    .line 33
    invoke-static {p0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isWindowModeMultiWindow(Landroid/content/Context;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3b

    .line 39
    invoke-static {p0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isSmallWindowMode(Landroid/content/Context;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2d

    .line 45
    goto :goto_3b

    .line 46
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    const-string v0, "isWCGEnabled: true, other color mode, camera support"

    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v1

    .line 60
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    const-string v0, " isWCGEnabled: false，other color mode, window is multiWindow or smallWindowMode."

    .line 70
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_48
    return v2

    .line 74
    :cond_49
    :goto_49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    const-string v0, "isWCGEnabled: true, colorMode support"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1
.end method
