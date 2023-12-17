.class public Lmiuix/core/util/MiuiBlurUtils;
.super Ljava/lang/Object;
.source "MiuiBlurUtils.java"


# static fields
.field private static ENABLE_MIUI_BLUR:Ljava/lang/Boolean; = null

.field public static METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method; = null

.field public static METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method; = null

.field public static METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method; = null

.field public static METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method; = null

.field public static METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method; = null

.field private static SUPPORT_MIUI_BLUR:Ljava/lang/Boolean; = null

.field private static isForceEnable:Z = true


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_1a

    .line 7
    sget-boolean v0, Lmiuix/core/util/MiuiBlurUtils;->isForceEnable:Z

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_1a

    .line 12
    :cond_b
    const-string v0, "persist.sys.background_blur_supported"

    .line 14
    const-string v1, "false"

    .line 16
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    :goto_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 31
    :goto_1e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBackgroundBlenderColor(Landroid/view/View;II)Z
    .registers 10

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    :try_start_15
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v0, :cond_2d

    .line 28
    const-class v0, Landroid/view/View;

    .line 30
    const-string v4, "addMiBackgroundBlendColor"

    .line 32
    new-array v5, v2, [Ljava/lang/Class;

    .line 34
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    aput-object v6, v5, v1

    .line 38
    aput-object v6, v5, v3

    .line 40
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 46
    :cond_2d
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 48
    new-array v2, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 54
    aput-object p1, v2, v1

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    aput-object p1, v2, v3

    .line 62
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41

    .line 65
    return v3

    .line 66
    :catch_41
    const/4 p0, 0x0

    .line 67
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 69
    return v1
.end method

.method public static clearBackgroundBlenderColor(Landroid/view/View;)Z
    .registers 5

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 13
    if-nez v0, :cond_1a

    .line 15
    const-class v0, Landroid/view/View;

    .line 17
    const-string v2, "clearMiBackgroundBlendColor"

    .line 19
    new-array v3, v1, [Ljava/lang/Class;

    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 27
    :cond_1a
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 29
    new-array v2, v1, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_23

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :catch_23
    const/4 p0, 0x0

    .line 37
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 39
    return v1
.end method

.method public static clearBackgroundBlur(Landroid/view/View;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlurMode(Landroid/view/View;I)Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_c

    .line 8
    invoke-static {p0, v0}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_c
    return v0
.end method

.method public static declared-synchronized clearEffectEnable()V
    .registers 2

    .line 1
    const-class v0, Lmiuix/core/util/MiuiBlurUtils;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    sput-object v1, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method public static declared-synchronized isEffectEnable(Landroid/content/Context;)Z
    .registers 4

    .line 1
    const-class v0, Lmiuix/core/util/MiuiBlurUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_32

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_e

    .line 13
    monitor-exit v0

    .line 14
    return v2

    .line 15
    :cond_e
    if-nez p0, :cond_12

    .line 17
    monitor-exit v0

    .line 18
    return v2

    .line 19
    :cond_12
    :try_start_12
    sget-object v1, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;

    .line 21
    if-nez v1, :cond_2a

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object p0

    .line 27
    const-string v1, "background_blur_enable"

    .line 29
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    move-result p0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne p0, v1, :cond_24

    .line 36
    move v2, v1

    .line 37
    :cond_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p0

    .line 41
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;

    .line 43
    :cond_2a
    sget-object p0, Lmiuix/core/util/MiuiBlurUtils;->ENABLE_MIUI_BLUR:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result p0
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_32

    .line 49
    monitor-exit v0

    .line 50
    return p0

    .line 51
    :catchall_32
    move-exception p0

    .line 52
    monitor-exit v0

    .line 53
    throw p0
.end method

.method public static isEnable()Z
    .registers 1

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static setBackgroundBlur(Landroid/view/View;I)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    move-result p0

    return p0
.end method

.method public static setBackgroundBlur(Landroid/view/View;IZ)Z
    .registers 9

    .line 2
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 4
    :cond_15
    :try_start_15
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_2a

    .line 5
    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurMode"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 6
    :cond_2a
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3e

    .line 7
    const-class v0, Landroid/view/View;

    const-string v3, "setMiBackgroundBlurRadius"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 8
    :cond_3e
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_58} :catch_60

    if-eqz p2, :cond_5b

    const/4 v2, 0x2

    .line 10
    :cond_5b
    invoke-static {p0, v2}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    move-result p0

    return p0

    :catch_60
    const/4 p0, 0x0

    .line 11
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 12
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    return v1
.end method

.method public static setBackgroundBlurMode(Landroid/view/View;I)Z
    .registers 8

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1f

    .line 16
    const-class v0, Landroid/view/View;

    .line 18
    const-string v3, "setMiBackgroundBlurMode"

    .line 20
    new-array v4, v2, [Ljava/lang/Class;

    .line 22
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    aput-object v5, v4, v1

    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 32
    :cond_1f
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 34
    new-array v3, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p1

    .line 40
    aput-object p1, v3, v1

    .line 42
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_2d

    .line 45
    return v2

    .line 46
    :catch_2d
    const/4 p0, 0x0

    .line 47
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 49
    return v1
.end method

.method public static setBackgroundBlurRadius(Landroid/view/View;I)Z
    .registers 8

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1f

    .line 16
    const-class v0, Landroid/view/View;

    .line 18
    const-string v3, "setMiBackgroundBlurRadius"

    .line 20
    new-array v4, v2, [Ljava/lang/Class;

    .line 22
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    aput-object v5, v4, v1

    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 32
    :cond_1f
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 34
    new-array v3, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p1

    .line 40
    aput-object p1, v3, v1

    .line 42
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_2d

    .line 45
    return v2

    .line 46
    :catch_2d
    const/4 p0, 0x0

    .line 47
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 49
    return v1
.end method

.method public static setViewBlurMode(Landroid/view/View;I)Z
    .registers 8

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1f

    .line 16
    const-class v0, Landroid/view/View;

    .line 18
    const-string v3, "setMiViewBlurMode"

    .line 20
    new-array v4, v2, [Ljava/lang/Class;

    .line 22
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    aput-object v5, v4, v1

    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 32
    :cond_1f
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 34
    new-array v3, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p1

    .line 40
    aput-object p1, v3, v1

    .line 42
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_2d

    .line 45
    return v2

    .line 46
    :catch_2d
    const/4 p0, 0x0

    .line 47
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_VIEW_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 49
    return v1
.end method
