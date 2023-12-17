.class public Lcom/android/fileexplorer/view/CircleNumberView;
.super Landroid/view/View;
.source "CircleNumberView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/CircleNumberView$SavedState;,
        Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;,
        Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_LENGTH:J = 0x5dcL

.field private static final DEFAULT_CLICK_ANIMATION_LENGTH:J = 0x1f4L

.field private static final DEFAULT_HEART_COLOR_CLICKED:I

.field private static final DEFAULT_HEART_COLOR_NORMAL:I

.field private static final DEFAULT_SKIN_DEPTH:I

.field private static final DEFAULT_SKIN_END_COLOR:I

.field private static final DEFAULT_SKIN_INVALID_COLOR:I

.field private static final DEFAULT_SKIN_START_COLOR:I

.field private static final DEFAULT_TEXT_COLOR:I

.field private static final TAG:Ljava/lang/String; = "CircleNumberView"

.field private static final localLOG:Z


# instance fields
.field private alwaysKeepInHeart:Z

.field private downInHeartFirst:Z

.field private mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

.field private mBounds:Landroid/graphics/RectF;

.field private mHeartClickAnimator:Landroid/animation/ValueAnimator;

.field private mHeartClickedColor:I

.field private mHeartColor:I

.field private final mHeartPaint:Landroid/graphics/Paint;

.field private mOnHeartClickListener:Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;

.field private mOnPercentAnimationEndListener:Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

.field private mPercent:F

.field private final mPercentFormat:Ljava/text/DecimalFormat;

.field private mSizeText:Ljava/lang/String;

.field private mSizeTextColor:I

.field private final mSizeTextPaint:Landroid/text/TextPaint;

.field private mSkinDepth:I

.field private mSkinEndColor:I

.field private final mSkinPaint:Landroid/graphics/Paint;

.field private mSkinRawDepth:I

.field private mSkinStartColor:I

.field private mTextColor:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTotal:J

.field private mTouchPercent:F

.field private mUsed:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0xc56484

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleNumberView;->DEFAULT_HEART_COLOR_CLICKED:I

    const v0, -0xc1e55f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleNumberView;->DEFAULT_HEART_COLOR_NORMAL:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleNumberView;->DEFAULT_SKIN_DEPTH:I

    const v0, -0xf62d6a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleNumberView;->DEFAULT_SKIN_END_COLOR:I

    const v0, -0x183c88

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleNumberView;->DEFAULT_SKIN_INVALID_COLOR:I

    const v0, -0x9d26a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleNumberView;->DEFAULT_SKIN_START_COLOR:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/CircleNumberView;->DEFAULT_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/CircleNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercentFormat:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    invoke-direct {p0, p0}, Lcom/android/fileexplorer/view/CircleNumberView;->setLayerToSW(Landroid/view/View;)V

    const/4 v2, 0x1

    new-array v3, v2, [F

    aput v0, v3, v1

    const-string v4, "BreathHeartPercent"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v3, v2, [F

    aput v0, v3, v1

    const-string v4, "Percent"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/fileexplorer/view/CircleNumberView$1;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/view/CircleNumberView$1;-><init>(Lcom/android/fileexplorer/view/CircleNumberView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/android/fileexplorer/R$styleable;->CircleNumberView:[I

    invoke-virtual {p1, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    :try_start_48
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextColor:I

    const/4 p2, 0x4

    const v3, -0xc8c8c9

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    const/4 p2, 0x3

    const v3, -0xcc4916

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    const/4 p2, 0x2

    const/16 v3, 0x5dc

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {p0, v3, v4}, Lcom/android/fileexplorer/view/CircleNumberView;->setAnimationDuration(J)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_7c

    move v1, v2

    :cond_7c
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    xor-int/2addr v1, v4

    const v4, -0xff0100

    const/high16 v5, -0x10000

    if-eqz v1, :cond_96

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    goto :goto_ad

    :cond_96
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    goto :goto_ad

    :cond_a5
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    :goto_ad
    const/4 p2, 0x6

    const/16 v1, 0x14

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    const/high16 v1, 0x42c80000  # 100.0f

    invoke-static {p2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gtz p2, :cond_112

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2
    :try_end_cb
    .catchall {:try_start_48 .. :try_end_cb} :catchall_11a

    if-ltz p2, :cond_112

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_111

    const p1, 0x428551ec  # 66.66f

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/CircleNumberView;->setPercent(F)V

    :cond_111
    return-void

    :cond_112
    :try_start_112
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "百分比值必须在0到100之间"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/CircleNumberView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/CircleNumberView;->setLayerToSW(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/CircleNumberView;)Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnPercentAnimationEndListener:Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    return-object p0
.end method

.method private getCurrentColor(IIF)I
    .registers 11

    const/high16 v0, 0x42c80000  # 100.0f

    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_9

    move p3, v0

    :cond_9
    const/4 v1, 0x0

    invoke-static {p3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_11

    move p3, v1

    :cond_11
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v4, p2, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p2, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 p2, p2, 0xff

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, p3

    div-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x18

    sub-int/2addr v5, v2

    int-to-float v4, v5

    mul-float/2addr v4, p3

    div-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sub-int/2addr v6, v3

    int-to-float v2, v6

    mul-float/2addr v2, p3

    div-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v3, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p3, p2

    div-float/2addr p3, v0

    float-to-int p2, p3

    add-int/2addr p1, p2

    or-int/2addr p1, v1

    return p1
.end method

.method private measureHeight(II)I
    .registers 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-gez p1, :cond_1d

    const/4 p1, 0x0

    :cond_1d
    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_23

    int-to-float p1, p2

    goto :goto_49

    :cond_23
    if-ne v1, v2, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, p1

    int-to-float p1, v2

    goto :goto_40

    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->getSuggestedMinimumHeight()I

    move-result p1

    add-int/2addr p1, v1

    int-to-float p1, p1

    :goto_40
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_49

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_49
    :goto_49
    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private measureWidth(II)I
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    if-gez p2, :cond_1d

    const/4 p2, 0x0

    :cond_1d
    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_23

    int-to-float p1, p1

    goto :goto_4b

    :cond_23
    if-ne v1, v2, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, p2

    int-to-float p2, v2

    goto :goto_40

    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->getSuggestedMinimumWidth()I

    move-result p2

    add-int/2addr p2, v1

    int-to-float p2, p2

    :goto_40
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4a

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_4b

    :cond_4a
    move p1, p2

    :goto_4b
    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private pointInLemonHeart(FF)Ljava/lang/Boolean;
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    goto :goto_1c

    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float p1, v0, p1

    :goto_1c
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr p2, v0

    goto :goto_38

    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float p2, v0, p2

    :goto_38
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_65

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_65
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private setLayerToHW(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method private setLayerToSW(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method private setRawTextSize(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_11
    return-void
.end method

.method private startTouchDownAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x42c80000  # 100.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    long-to-float v1, v1

    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    mul-float/2addr v2, v1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startTouchUpAnimation(Z)V
    .registers 10

    const/high16 v0, 0x43fa0000  # 500.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x42c80000  # 100.0f

    if-eqz p1, :cond_30

    iget p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_30

    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x3

    new-array v6, v6, [F

    iget v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    aput v7, v6, v3

    aput v5, v6, v2

    aput v1, v6, v4

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x447a0000  # 1000.0f

    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_47

    :cond_30
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v4, [F

    iget v6, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    aput v6, v4, v3

    aput v1, v4, v2

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    mul-float/2addr v1, v0

    div-float/2addr v1, v5

    float-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_47
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopChangingPercent()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_d
    return-void
.end method


# virtual methods
.method public animatToPercent(F)V
    .registers 7

    const/high16 v0, 0x42c80000  # 100.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3b

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_3b

    invoke-direct {p0, p0}, Lcom/android/fileexplorer/view/CircleNumberView;->setLayerToHW(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->stopChangingPercent()V

    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    aput p1, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_35

    :cond_29
    iget-object v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v3

    aput p1, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_35
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "百分比值必须在0到100之间"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPercent()F
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public hasOnHeartClickListener()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnHeartClickListener:Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasOnPercentAnimationEndListener()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnPercentAnimationEndListener:Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, v1, v0

    iget v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v3, v2, v3

    iget v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v1

    int-to-float v3, v2

    int-to-float v0, v0

    iget-object v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_177

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    const/high16 v4, 0x42c80000  # 100.0f

    div-float v4, v0, v4

    const/high16 v5, 0x43b40000  # 360.0f

    mul-float/2addr v4, v5

    iget-object v6, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    iget v8, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    invoke-direct {p0, v7, v8, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->getCurrentColor(IIF)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    const/high16 v8, -0x3d4c0000  # -90.0f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v9, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    const v6, -0x111112

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000  # -90.0f

    add-float v9, v4, v0

    sub-float v10, v5, v4

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    const/4 v4, 0x1

    const/high16 v5, 0x40000000  # 2.0f

    const/4 v6, 0x0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercentFormat:Ljava/text/DecimalFormat;

    iget v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    float-to-double v7, v7

    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-ne v7, v4, :cond_9d

    const-string v7, "%%%s"

    goto :goto_9f

    :cond_9d
    const-string v7, "%s%%"

    :goto_9f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v8, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/CircleNumberView;->setRawTextSize(F)V

    iget-object v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v0, v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-float v7, v7

    div-float/2addr v4, v5

    sub-float v4, v1, v4

    const/high16 v8, 0x41200000  # 10.0f

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    div-int/lit8 v0, v2, 0x6

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_ed
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    div-int/lit8 v0, v2, 0xa

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget-object v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_177

    :cond_11a
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercentFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    float-to-double v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41400000  # 12.0f

    invoke-static {v2}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/CircleNumberView;->setRawTextSize(F)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v0, v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    const-string v10, "%"

    invoke-virtual {v9, v10, v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    iget v6, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v6, v6

    add-float v7, v2, v4

    div-float/2addr v7, v5

    sub-float v7, v1, v7

    const/high16 v9, 0x40800000  # 4.0f

    div-float v9, v8, v9

    add-float/2addr v9, v3

    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v7, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    sub-float/2addr v8, v6

    div-float/2addr v8, v5

    add-float/2addr v8, v9

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v10, v1, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_177
    :goto_177
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/CircleNumberView;->measureWidth(II)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/CircleNumberView;->measureHeight(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    check-cast p1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$200(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setTextColor(I)V

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$300(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$400(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->setSkinColor(II)V

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$500(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setHeartColor(I)V

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$600(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setHeartClickedColor(I)V

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$700(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setSkinDepth(I)V

    iget-wide v0, p1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    iget-wide v2, p1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/fileexplorer/view/CircleNumberView;->setSize(JJ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    iput v0, v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    iget-wide v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    iput-wide v2, v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    iget-wide v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    iput-wide v2, v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$202(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$302(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$402(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$502(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$602(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$702(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, p3, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    sub-int p4, p1, p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    int-to-double v0, p4

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p4, v0

    iput p4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p4, Landroid/graphics/RectF;

    sub-int v0, p3, p2

    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    int-to-float v0, v2

    sub-int v2, p1, p2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    add-int/2addr p3, p2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr p3, v3

    int-to-float p3, p3

    add-int/2addr p1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-direct {p4, v0, v2, p3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    if-eq v0, v1, :cond_76

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_60

    if-eq v2, v4, :cond_41

    const/4 v5, 0x2

    if-eq v2, v5, :cond_29

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1f

    goto :goto_76

    :cond_1f
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    if-eqz v0, :cond_76

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchUpAnimation(Z)V

    return v4

    :cond_29
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    if-eqz v2, :cond_76

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    if-eqz p1, :cond_40

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->pointInLemonHeart(FF)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_40

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchUpAnimation(Z)V

    :cond_40
    return v4

    :cond_41
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    if-eqz v2, :cond_76

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    if-eqz p1, :cond_5d

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->pointInLemonHeart(FF)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchUpAnimation(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnHeartClickListener:Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;

    if-eqz p1, :cond_5d

    invoke-interface {p1, p0}, Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;->onHeartClick(Lcom/android/fileexplorer/view/CircleNumberView;)V

    :cond_5d
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    return v4

    :cond_60
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->pointInLemonHeart(FF)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_72

    iput-boolean v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    iput-boolean v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchDownAnimation()V

    return v4

    :cond_72
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    :cond_76
    :goto_76
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnimationDuration(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_7
    return-void
.end method

.method public setHeartClickedColor(I)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    if-eq p1, v0, :cond_6

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    :cond_6
    return-void
.end method

.method public setHeartColor(I)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    if-eq p1, v0, :cond_e

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method

.method public setOnHeartClickListener(Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnHeartClickListener:Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;

    return-void
.end method

.method public setOnPercentAnimationEndListener(Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnPercentAnimationEndListener:Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    return-void
.end method

.method public setPercent(F)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x42c80000  # 100.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_17

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_2f

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error percent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CircleNumberView"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    :cond_2f
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_34
    return-void
.end method

.method public setSize(JJ)V
    .registers 9

    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    cmp-long v0, p3, v0

    if-eqz v0, :cond_68

    :cond_c
    long-to-float v0, p1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v0, v1

    long-to-float v2, p3

    div-float/2addr v0, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_27

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_25

    goto :goto_27

    :cond_25
    move v1, v0

    goto :goto_3d

    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error percent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CircleNumberView"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    iput v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    iput-wide p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    iput-wide p3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_68
    return-void
.end method

.method public setSkinColor(II)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    if-eq p2, v0, :cond_f

    :cond_8
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_f
    return-void
.end method

.method public setSkinDepth(I)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    if-eq p1, v0, :cond_19

    const/16 v0, 0x32

    if-gt p1, v0, :cond_11

    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_19

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "宽度比重必须在1到50之间"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_19
    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_12

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12
    return-void
.end method
