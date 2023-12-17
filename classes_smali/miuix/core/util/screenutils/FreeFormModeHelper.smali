.class public Lmiuix/core/util/screenutils/FreeFormModeHelper;
.super Ljava/lang/Object;
.source "FreeFormModeHelper.java"


# static fields
.field public static final EXCLUDE_FREE_FORM:I = 0x2000

.field public static final FREE_FORM_ASPECT_RATIO_16_9:I = 0x2001

.field public static final FREE_FORM_ASPECT_RATIO_3_4:I = 0x2002

.field public static final FREE_FORM_ASPECT_RATIO_4_3:I = 0x2003

.field public static final FREE_FORM_ASPECT_RATIO_OTHER:I = 0x2004

.field public static final SUB_MODE_16_9:I = 0x1

.field public static final SUB_MODE_3_4:I = 0x2

.field public static final SUB_MODE_4_3:I = 0x3

.field public static final SUB_MODE_NONE:I = 0x0

.field public static final SUB_MODE_OTHER:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireFreeFormWindowRatioInternal(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 11
    invoke-static {p1, p2, v0}, Lmiuix/core/util/WindowUtils;->isFreeformMode(Landroid/content/res/Configuration;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_17

    .line 17
    iget p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 19
    and-int/lit16 p1, p1, -0x2001

    .line 21
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 23
    return-object p0

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    iget-object p2, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 27
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 29
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 31
    if-eqz v0, :cond_26

    .line 33
    int-to-float p1, p2

    .line 34
    const/high16 p2, 0x3f800000  # 1.0f

    .line 36
    mul-float/2addr p1, p2

    .line 37
    int-to-float p2, v0

    .line 38
    div-float/2addr p1, p2

    .line 39
    :cond_26
    invoke-static {p0, p1}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->freeFormModeRatioToCodeInternal(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/core/util/WindowBaseInfo;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static detectFreeFormInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->acquireFreeFormWindowRatioInternal(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static freeFormModeRatioToCodeInternal(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 4
    if-gtz v0, :cond_9

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 9
    goto :goto_46

    .line 10
    :cond_9
    const v0, 0x3f3d70a4  # 0.74f

    .line 13
    cmpl-float v0, p1, v0

    .line 15
    if-ltz v0, :cond_1c

    .line 17
    const v0, 0x3f428f5c  # 0.76f

    .line 20
    cmpg-float v0, p1, v0

    .line 22
    if-gez v0, :cond_1c

    .line 24
    const/16 p1, 0x2003

    .line 26
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 28
    goto :goto_46

    .line 29
    :cond_1c
    const v0, 0x3fa8f5c3  # 1.32f

    .line 32
    cmpl-float v0, p1, v0

    .line 34
    if-ltz v0, :cond_2f

    .line 36
    const v0, 0x3fab851f  # 1.34f

    .line 39
    cmpg-float v0, p1, v0

    .line 41
    if-gez v0, :cond_2f

    .line 43
    const/16 p1, 0x2002

    .line 45
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 47
    goto :goto_46

    .line 48
    :cond_2f
    const v0, 0x3fe147ae  # 1.76f

    .line 51
    cmpl-float v0, p1, v0

    .line 53
    if-ltz v0, :cond_42

    .line 55
    const v0, 0x3fe51eb8  # 1.79f

    .line 58
    cmpg-float p1, p1, v0

    .line 60
    if-gez p1, :cond_42

    .line 62
    const/16 p1, 0x2001

    .line 64
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 66
    goto :goto_46

    .line 67
    :cond_42
    const/16 p1, 0x2004

    .line 69
    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 71
    :goto_46
    return-object p0
.end method
