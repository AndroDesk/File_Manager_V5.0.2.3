.class Lmiuix/device/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    const-string v0, "ScreenUtils"

    .line 14
    const-string v1, "This context is not associated with a display. You should use createDisplayContext() to create a display context to work with windows."

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_12
    invoke-static {p0}, Lmiuix/device/ScreenUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lmiuix/device/ScreenUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 4

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1f

    .line 4
    invoke-static {p0}, Lmiuix/device/ScreenUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    goto :goto_26

    .line 7
    :cond_1f
    invoke-static {p0}, Lmiuix/device/ScreenUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_26
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
    invoke-static {p0}, Lmiuix/device/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

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
