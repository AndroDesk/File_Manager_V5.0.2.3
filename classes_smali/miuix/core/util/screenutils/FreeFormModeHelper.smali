.class public Lmiuix/core/util/screenutils/FreeFormModeHelper;
.super Ljava/lang/Object;
.source "FreeFormModeHelper.java"


# static fields
.field public static final EXCLUDE_FREE_FORM:I

.field public static final FREE_FORM_ASPECT_RATIO_16_9:I

.field public static final FREE_FORM_ASPECT_RATIO_3_4:I

.field public static final FREE_FORM_ASPECT_RATIO_4_3:I

.field public static final FREE_FORM_ASPECT_RATIO_OTHER:I

.field public static final SUB_MODE_16_9:I

.field public static final SUB_MODE_3_4:I

.field public static final SUB_MODE_4_3:I

.field public static final SUB_MODE_NONE:I

.field public static final SUB_MODE_OTHER:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->EXCLUDE_FREE_FORM:I

    const v0, 0x90d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->FREE_FORM_ASPECT_RATIO_16_9:I

    const v0, 0x90d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->FREE_FORM_ASPECT_RATIO_3_4:I

    const v0, 0x90d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->FREE_FORM_ASPECT_RATIO_4_3:I

    const v0, 0x90d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->FREE_FORM_ASPECT_RATIO_OTHER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->SUB_MODE_16_9:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->SUB_MODE_3_4:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->SUB_MODE_4_3:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->SUB_MODE_NONE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/screenutils/FreeFormModeHelper;->SUB_MODE_OTHER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireFreeFormWindowRatioInternal(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    invoke-static {p1, p2, v0}, Lmiuix/core/util/WindowUtils;->isFreeformMode(Landroid/content/res/Configuration;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_17

    iget p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    return-object p0

    :cond_17
    const/4 p1, 0x0

    iget-object p2, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_26

    int-to-float p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    :cond_26
    invoke-static {p0, p1}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->freeFormModeRatioToCodeInternal(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static detectFreeFormInfo(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    invoke-static {p0, p1, p2}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->acquireFreeFormWindowRatioInternal(Lmiuix/core/util/WindowBaseInfo;Landroid/content/Context;Landroid/graphics/Point;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object p0

    return-object p0
.end method

.method private static freeFormModeRatioToCodeInternal(Lmiuix/core/util/WindowBaseInfo;F)Lmiuix/core/util/WindowBaseInfo;
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_9

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_46

    :cond_9
    const v0, 0x3f3d70a4  # 0.74f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1c

    const v0, 0x3f428f5c  # 0.76f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1c

    const/16 p1, 0x2003

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_46

    :cond_1c
    const v0, 0x3fa8f5c3  # 1.32f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2f

    const v0, 0x3fab851f  # 1.34f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2f

    const/16 p1, 0x2002

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_46

    :cond_2f
    const v0, 0x3fe147ae  # 1.76f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_42

    const v0, 0x3fe51eb8  # 1.79f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_42

    const/16 p1, 0x2001

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    goto :goto_46

    :cond_42
    const/16 p1, 0x2004

    iput p1, p0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    :goto_46
    return-object p0
.end method
