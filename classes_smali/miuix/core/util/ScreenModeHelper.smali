.class public Lmiuix/core/util/ScreenModeHelper;
.super Ljava/lang/Object;
.source "ScreenModeHelper.java"


# static fields
.field public static final BIG_SCREEN_THRESHOLD:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FILTER_SUB_WINDOW_MODE:I

.field private static final FILTER_WINDOW_MODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92fce

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/ScreenModeHelper;->BIG_SCREEN_THRESHOLD:I

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/ScreenModeHelper;->FILTER_SUB_WINDOW_MODE:I

    const v0, 0x9dd96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/ScreenModeHelper;->FILTER_WINDOW_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V
    .registers 3

    invoke-static {p1, p0, p2}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->detectFreeFormInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;

    iget p0, p1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p0}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {p1, p2}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->detectSplitScreenInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V

    :cond_e
    return-void
.end method

.method public static getSubWindowMode(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static getWindowMode(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0xf000

    and-int/2addr p0, v0

    return p0
.end method

.method public static isInFreeFormMode(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isInSplitScreenMode(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
