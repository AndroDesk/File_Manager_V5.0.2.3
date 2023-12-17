.class public Lmiuix/core/util/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/core/content/a;->e(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_12

    .line 7
    :try_start_6
    invoke-static {p0}, Landroidx/core/content/a;->d(Landroid/content/Context;)Landroid/view/Display;

    .line 10
    move-result-object p0
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_a} :catch_b

    .line 11
    return-object p0

    .line 12
    :catch_b
    const-string v0, "WindowUtils"

    .line 14
    const-string v1, "This context is not associated with a display. You should use createDisplayContext() to create a display context to work with windows."

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_12
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getScreenAndWindowSize(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 2
    invoke-static {v0, p0, p1, p2}, Lmiuix/core/util/WindowUtils;->getScreenAndWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getScreenAndWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_30

    .line 4
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 7
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p3, Landroid/graphics/Point;->y:I

    goto/16 :goto_a5

    :cond_30
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_81

    .line 10
    :goto_34
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_44

    .line 11
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3d

    goto :goto_44

    .line 12
    :cond_3d
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_34

    .line 13
    :cond_44
    :goto_44
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 16
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_71

    .line 17
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p3, Landroid/graphics/Point;->y:I

    goto :goto_a5

    .line 20
    :cond_71
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 21
    iget p0, p2, Landroid/graphics/Point;->x:I

    iput p0, p3, Landroid/graphics/Point;->x:I

    .line 22
    iget p0, p2, Landroid/graphics/Point;->y:I

    iput p0, p3, Landroid/graphics/Point;->y:I

    goto :goto_a5

    .line 23
    :cond_81
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_96

    .line 24
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 25
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_a5

    .line 26
    :cond_96
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 27
    iget p0, p2, Landroid/graphics/Point;->x:I

    iput p0, p3, Landroid/graphics/Point;->x:I

    .line 28
    iget p0, p2, Landroid/graphics/Point;->y:I

    iput p0, p3, Landroid/graphics/Point;->y:I

    :goto_a5
    return-void
.end method

.method public static getScreenAndWindowSizeDp(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    invoke-static {p0, p1, p2}, Lmiuix/core/util/WindowUtils;->getScreenAndWindowSize(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 14
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 16
    int-to-float p0, p0

    .line 17
    div-float/2addr p0, v0

    .line 18
    float-to-int p0, p0

    .line 19
    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 21
    iget p0, p1, Landroid/graphics/Point;->y:I

    .line 23
    int-to-float p0, p0

    .line 24
    div-float/2addr p0, v0

    .line 25
    float-to-int p0, p0

    .line 26
    iput p0, p1, Landroid/graphics/Point;->y:I

    .line 28
    iget p0, p2, Landroid/graphics/Point;->x:I

    .line 30
    int-to-float p0, p0

    .line 31
    div-float/2addr p0, v0

    .line 32
    float-to-int p0, p0

    .line 33
    iput p0, p2, Landroid/graphics/Point;->x:I

    .line 35
    iget p0, p2, Landroid/graphics/Point;->y:I

    .line 37
    int-to-float p0, p0

    .line 38
    div-float/2addr p0, v0

    .line 39
    float-to-int p0, p0

    .line 40
    iput p0, p2, Landroid/graphics/Point;->y:I

    .line 42
    return-void
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 3

    .line 3
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getScreenSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 5

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1b

    .line 5
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_22

    .line 8
    :cond_1b
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_22
    return-void
.end method

.method public static getScreenSizeDp(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 14
    move-result-object p0

    .line 15
    iget v1, p0, Landroid/graphics/Point;->x:I

    .line 17
    int-to-float v1, v1

    .line 18
    div-float/2addr v1, v0

    .line 19
    float-to-int v1, v1

    .line 20
    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 22
    iget v1, p0, Landroid/graphics/Point;->y:I

    .line 24
    int-to-float v1, v1

    .line 25
    div-float/2addr v1, v0

    .line 26
    float-to-int v0, v1

    .line 27
    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 29
    return-object p0
.end method

.method public static getWindowAppContentSizeFromConfiguration(Landroid/content/Context;Landroid/graphics/Point;)V
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
    invoke-static {p0, p1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/res/Configuration;Landroid/graphics/Point;)V

    .line 12
    return-void
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 7
    return p0
.end method

.method public static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    return-object p0
.end method

.method public static getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 24
    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getWindowSize(Landroid/view/View;)Landroid/graphics/Point;
    .registers 5

    .line 25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_30

    .line 28
    const-class p0, Landroid/view/WindowManager;

    .line 29
    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 31
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_40

    .line 32
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    :goto_40
    return-object v0
.end method

.method public static getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getWindowSize(Landroid/content/res/Configuration;ILandroid/graphics/Point;)V
    .registers 6

    .line 5
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v0

    const/high16 v2, 0x43200000  # 160.0f

    div-float/2addr v1, v2

    int-to-float p1, p1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p1, v1

    .line 6
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 7
    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getWindowSize(Landroid/content/res/Configuration;Landroid/graphics/Point;)V
    .registers 4

    .line 2
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    .line 3
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 4
    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getWindowSize(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 5

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1b

    .line 9
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_66

    :cond_1b
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_51

    .line 12
    :goto_1f
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2f

    .line 13
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_28

    goto :goto_2f

    .line 14
    :cond_28
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1f

    .line 15
    :cond_2f
    :goto_2f
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_3c

    .line 16
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_44

    .line 17
    :cond_3c
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 18
    :goto_44
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_66

    .line 20
    :cond_51
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 21
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_66

    .line 22
    :cond_5f
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_66
    return-void
.end method

.method public static getWindowSizeDp(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 3
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 4
    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method public static getWindowSizeDp(Landroid/view/View;)Landroid/graphics/Point;
    .registers 3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 6
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p0

    .line 7
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 8
    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method public static getWindowSizeDpFromConfiguration(Landroid/content/Context;Landroid/graphics/Point;)V
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
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 11
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 13
    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 15
    iput p0, p1, Landroid/graphics/Point;->y:I

    .line 17
    return-void
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 7
    return p0
.end method

.method public static getWindowsBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/core/util/WindowUtils;->getCurrentWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static isFreeformMode(Landroid/content/res/Configuration;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .registers 6

    .line 1
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 3
    int-to-float v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    add-float/2addr v0, v1

    .line 6
    iget v2, p1, Landroid/graphics/Point;->x:I

    .line 8
    int-to-float v2, v2

    .line 9
    div-float/2addr v0, v2

    .line 10
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 12
    int-to-float p2, p2

    .line 13
    add-float/2addr p2, v1

    .line 14
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 16
    int-to-float p1, p1

    .line 17
    div-float/2addr p2, p1

    .line 18
    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "mWindowingMode=freeform"

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2a

    .line 30
    const p0, 0x3f666666  # 0.9f

    .line 33
    cmpg-float p1, v0, p0

    .line 35
    if-lez p1, :cond_28

    .line 37
    cmpg-float p0, p2, p0

    .line 39
    if-gtz p0, :cond_2a

    .line 41
    :cond_28
    const/4 p0, 0x1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 p0, 0x0

    .line 44
    :goto_2b
    return p0
.end method
