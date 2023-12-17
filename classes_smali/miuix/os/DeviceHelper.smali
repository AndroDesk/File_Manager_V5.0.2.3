.class public Lmiuix/os/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectType(Landroid/content/Context;)I
    .registers 1

    sget-boolean p0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    sget-boolean p0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static isExternalScreen(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-eqz v0, :cond_c

    invoke-static {p0}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isInternalScreen(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-eqz v0, :cond_c

    invoke-static {p0}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isWideScreen(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenShortEdge(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000  # 600.0f

    mul-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
