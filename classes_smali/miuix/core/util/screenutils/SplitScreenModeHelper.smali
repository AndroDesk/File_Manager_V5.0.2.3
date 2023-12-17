.class public Lmiuix/core/util/screenutils/SplitScreenModeHelper;
.super Ljava/lang/Object;
.source "SplitScreenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/screenutils/SplitScreenModeHelper$SplitScreenMode;
    }
.end annotation


# static fields
.field public static final SCREEN_SPLIT_MODE_HALF:I

.field public static final SCREEN_SPLIT_MODE_ONE_THIRD:I

.field public static final SCREEN_SPLIT_MODE_TWO_THIRD:I

.field public static final SUB_MODE_1_2:I

.field public static final SUB_MODE_1_3:I

.field public static final SUB_MODE_2_3:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x93d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->SCREEN_SPLIT_MODE_HALF:I

    const v0, 0x93d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->SCREEN_SPLIT_MODE_ONE_THIRD:I

    const v0, 0x93d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->SCREEN_SPLIT_MODE_TWO_THIRD:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->SUB_MODE_1_2:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->SUB_MODE_1_3:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->SUB_MODE_2_3:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectSplitScreenInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V
    .registers 6

    invoke-static {p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isScreenLandscape(Landroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->x:I

    :goto_e
    int-to-float p1, p1

    add-float/2addr p1, v1

    div-float/2addr v0, p1

    goto :goto_2a

    :cond_12
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    div-float/2addr v2, v3

    const v3, 0x3f733333  # 0.95f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_29

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_e

    :cond_29
    move v0, v2

    :goto_2a
    const p1, 0x3ecccccd  # 0.4f

    invoke-static {v0, v1, p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 p1, 0x1001

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_57

    :cond_38
    const v1, 0x3f19999a  # 0.6f

    invoke-static {v0, p1, v1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result p1

    if-eqz p1, :cond_46

    const/16 p1, 0x1002

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_57

    :cond_46
    const p1, 0x3f4ccccd  # 0.8f

    invoke-static {v0, v1, p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result p1

    if-eqz p1, :cond_54

    const/16 p1, 0x1003

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_57

    :cond_54
    const/4 p1, 0x0

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    :goto_57
    return-void
.end method

.method private static isInRegion(FFF)Z
    .registers 3

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_a

    cmpg-float p0, p0, p2

    if-gez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isScreenLandscape(Landroid/graphics/Point;)Z
    .registers 2

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-le v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
