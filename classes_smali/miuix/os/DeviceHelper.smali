.class public Lmiuix/os/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectType(Landroid/content/Context;)I
    .registers 1

    .line 1
    sget-boolean p0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 3
    if-eqz p0, :cond_6

    .line 5
    const/4 p0, 0x3

    .line 6
    return p0

    .line 7
    :cond_6
    sget-boolean p0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 9
    if-eqz p0, :cond_c

    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_c
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public static isExternalScreen(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-static {p0}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method

.method public static isInternalScreen(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-static {p0}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method

.method public static isWideScreen(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenShortEdge(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 16
    const/high16 v1, 0x44160000  # 600.0f

    .line 18
    mul-float/2addr p0, v1

    .line 19
    cmpl-float p0, v0, p0

    .line 21
    if-lez p0, :cond_18

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
    :goto_19
    return p0
.end method
