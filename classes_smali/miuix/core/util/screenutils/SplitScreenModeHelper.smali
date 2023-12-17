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
.field public static final SCREEN_SPLIT_MODE_HALF:I = 0x1002

.field public static final SCREEN_SPLIT_MODE_ONE_THIRD:I = 0x1001

.field public static final SCREEN_SPLIT_MODE_TWO_THIRD:I = 0x1003

.field public static final SUB_MODE_1_2:I = 0x2

.field public static final SUB_MODE_1_3:I = 0x1

.field public static final SUB_MODE_2_3:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectSplitScreenInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/graphics/Point;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isScreenLandscape(Landroid/graphics/Point;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_12

    .line 8
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 10
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 12
    int-to-float v0, v0

    .line 13
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 15
    :goto_e
    int-to-float p1, p1

    .line 16
    add-float/2addr p1, v1

    .line 17
    div-float/2addr v0, p1

    .line 18
    goto :goto_2a

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 21
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 23
    int-to-float v2, v2

    .line 24
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 26
    int-to-float v3, v3

    .line 27
    add-float/2addr v3, v1

    .line 28
    div-float/2addr v2, v3

    .line 29
    const v3, 0x3f733333  # 0.95f

    .line 32
    cmpl-float v3, v2, v3

    .line 34
    if-ltz v3, :cond_29

    .line 36
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 38
    int-to-float v0, v0

    .line 39
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 41
    goto :goto_e

    .line 42
    :cond_29
    move v0, v2

    .line 43
    :goto_2a
    const p1, 0x3ecccccd  # 0.4f

    .line 46
    invoke-static {v0, v1, p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_38

    .line 52
    const/16 p1, 0x1001

    .line 54
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 56
    goto :goto_57

    .line 57
    :cond_38
    const v1, 0x3f19999a  # 0.6f

    .line 60
    invoke-static {v0, p1, v1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_46

    .line 66
    const/16 p1, 0x1002

    .line 68
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 70
    goto :goto_57

    .line 71
    :cond_46
    const p1, 0x3f4ccccd  # 0.8f

    .line 74
    invoke-static {v0, v1, p1}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_54

    .line 80
    const/16 p1, 0x1003

    .line 82
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 88
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

    .line 1
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 3
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 5
    if-le v0, p0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    return p0
.end method
