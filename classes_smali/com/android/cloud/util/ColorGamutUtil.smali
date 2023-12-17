.class public Lcom/android/cloud/util/ColorGamutUtil;
.super Ljava/lang/Object;
.source "ColorGamutUtil.java"


# static fields
.field public static final CAMERA_COLOR_MODE:Ljava/lang/String; = "persist.vendor.EnableP3ColorSpace"

.field public static final NATURE_MODE:I

.field public static final SCREEN_COLOR_SPACE_MODE:Ljava/lang/String; = "color_space_mode"

.field public static final SCREEN_OPTIMIZE_ADAPT:I

.field public static final SCREEN_OPTIMIZE_ENHANCE:I

.field public static final SCREEN_OPTIMIZE_EXPERT:I

.field public static final SCREEN_OPTIMIZE_MODE:Ljava/lang/String; = "screen_optimize_mode"

.field public static final SCREEN_OPTIMIZE_MODE_DEFAULT:Ljava/lang/String; = "default_display_color_mode"

.field public static final SCREEN_OPTIMIZE_STANDARD:I

.field private static final TAG:Ljava/lang/String; = "ColorGamutUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/util/ColorGamutUtil;->NATURE_MODE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/util/ColorGamutUtil;->SCREEN_OPTIMIZE_ADAPT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/util/ColorGamutUtil;->SCREEN_OPTIMIZE_ENHANCE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/util/ColorGamutUtil;->SCREEN_OPTIMIZE_EXPERT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/util/ColorGamutUtil;->SCREEN_OPTIMIZE_STANDARD:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeWCG(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->isWCGEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeWCG isWCGEnabled == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/x;->a(Landroid/view/Window;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/x;->q(Landroid/view/Window;)V

    goto :goto_4b

    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeWCG isWCGEnabled == false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/x;->a(Landroid/view/Window;)I

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/x;->D(Landroid/view/Window;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public static getColorMode(Landroid/content/Context;)I
    .registers 3

    const-string v0, "default_display_color_mode"

    invoke-static {v0}, Lcom/android/cloud/util/ColorGamutUtil;->getDefaultValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_optimize_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getColorSpace(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "color_space_mode"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getDefaultValue(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "miui.util.FeatureParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInteger"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2f} :catch_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2f} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2f} :catch_30

    return p0

    :catch_30
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43

    :catch_35
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43

    :catch_3f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_43
    return v0
.end method

.method public static isCameraSupportWideColor()Z
    .registers 3

    const-string v0, "persist.vendor.EnableP3ColorSpace"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public static isSupportColorGamut(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    invoke-static {p0}, Landroidx/appcompat/widget/x;->z(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private static isWCGEnabled(Landroid/app/Activity;)Z
    .registers 4

    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->getColorMode(Landroid/content/Context;)I

    move-result v0

    const-string v1, "isWCGEnabled: colorMode = "

    const-string v2, "ColorGamutUtil"

    invoke-static {v1, v0, v2}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_49

    const/4 v2, 0x4

    if-ne v0, v2, :cond_19

    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->getColorSpace(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_19

    goto :goto_49

    :cond_19
    invoke-static {}, Lcom/android/cloud/util/ColorGamutUtil;->isCameraSupportWideColor()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    invoke-static {p0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isWindowModeMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isSmallWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_3b

    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isWCGEnabled: true, other color mode, camera support"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, " isWCGEnabled: false，other color mode, window is multiWindow or smallWindowMode."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return v2

    :cond_49
    :goto_49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isWCGEnabled: true, colorMode support"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
