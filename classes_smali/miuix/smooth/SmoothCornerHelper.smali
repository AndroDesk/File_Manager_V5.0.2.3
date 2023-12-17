.class public Lmiuix/smooth/SmoothCornerHelper;
.super Ljava/lang/Object;
.source "SmoothCornerHelper.java"


# static fields
.field public static FORCE_USE_SMOOTH:Ljava/lang/Boolean;

.field public static IS_SUPPORT_SMOOTH_CORNER:Z

.field private static sEnableAppSmoothCorner:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "persist.sys.support_view_smoothcorner"

    .line 3
    const-string v1, "false"

    .line 5
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    .line 15
    if-nez v0, :cond_17

    .line 17
    const-string v0, "SmoothCornerHelper"

    .line 19
    const-string v1, "this device is not support system smooth corner"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {p0}, Lmiuix/smooth/SmoothCornerHelper;->isEnableAppSmoothCorner(Landroid/content/Context;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public static isEnableAppSmoothCorner(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_3b

    .line 5
    :try_start_4
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 10
    move-result-object p0

    .line 11
    const-string v1, "getGlobalSmoothCornerEnabled"

    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    sput-object p0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    .line 26
    if-nez p0, :cond_3b

    .line 28
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    sput-object p0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    .line 32
    goto :goto_3b

    .line 33
    :catch_20
    move-exception p0

    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    sput-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v1, "isEnableAppSmoothCorner fail "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    const-string v0, "SmoothCornerHelper"

    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3b
    :goto_3b
    sget-object p0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public static setDrawableSmoothCornerEnable(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setDrawableSmoothCornerEnableByReflect(Landroid/graphics/drawable/Drawable;Z)V

    .line 20
    return-void
.end method

.method private static setDrawableSmoothCornerEnableByReflect(Landroid/graphics/drawable/Drawable;Z)V
    .registers 8

    .line 1
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 3
    const-string v1, "setSmoothCornerEnabled"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v2, v5

    .line 21
    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 24
    goto :goto_2f

    .line 25
    :catch_18
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v0, "setDrawableSmoothCornerEnable fail "

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    const-string p1, "SmoothCornerHelper"

    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2f
    return-void
.end method

.method public static setDrawableSmoothCornerForceEnable(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setDrawableSmoothCornerEnableByReflect(Landroid/graphics/drawable/Drawable;Z)V

    .line 9
    return-void
.end method

.method public static setViewSmoothCornerEnable(Landroid/view/View;Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmiuix/smooth/SmoothCornerHelper;->isEnableAppSmoothCorner(Landroid/content/Context;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnableByReflect(Landroid/view/View;Z)V

    .line 20
    return-void
.end method

.method private static setViewSmoothCornerEnableByReflect(Landroid/view/View;Z)V
    .registers 8

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 3
    const-string v1, "setSmoothCornerEnabled"

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v2, v5

    .line 21
    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 24
    goto :goto_2f

    .line 25
    :catch_18
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v0, "setViewSmoothCornerEnable fail "

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    const-string p1, "SmoothCornerHelper"

    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2f
    return-void
.end method

.method public static setViewSmoothCornerForceEnable(Landroid/view/View;Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnableByReflect(Landroid/view/View;Z)V

    .line 9
    return-void
.end method
