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

.field private static final DEFAULT_HEART_COLOR_CLICKED:I = -0xcc4916

.field private static final DEFAULT_HEART_COLOR_NORMAL:I = -0xc8c8c9

.field private static final DEFAULT_SKIN_DEPTH:I = 0x14

.field private static final DEFAULT_SKIN_END_COLOR:I = -0xff0100

.field private static final DEFAULT_SKIN_INVALID_COLOR:I = -0x111112

.field private static final DEFAULT_SKIN_START_COLOR:I = -0x10000

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CircleNumberView"

.field private static final localLOG:Z = false


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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/CircleNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercentFormat:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 6
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    .line 7
    invoke-direct {p0, p0}, Lcom/android/fileexplorer/view/CircleNumberView;->setLayerToSW(Landroid/view/View;)V

    const/4 v2, 0x1

    new-array v3, v2, [F

    aput v0, v3, v1

    const-string v4, "BreathHeartPercent"

    .line 8
    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    .line 9
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v3, v2, [F

    aput v0, v3, v1

    const-string v4, "Percent"

    .line 10
    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    .line 11
    new-instance v4, Lcom/android/fileexplorer/view/CircleNumberView$1;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/view/CircleNumberView$1;-><init>(Lcom/android/fileexplorer/view/CircleNumberView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/android/fileexplorer/R$styleable;->CircleNumberView:[I

    invoke-virtual {p1, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 13
    :try_start_48
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    .line 14
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextColor:I

    const/4 p2, 0x4

    const v3, -0xc8c8c9

    .line 15
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    const/4 p2, 0x3

    const v3, -0xcc4916

    .line 16
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    const/4 p2, 0x2

    const/16 v3, 0x5dc

    .line 17
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {p0, v3, v4}, Lcom/android/fileexplorer/view/CircleNumberView;->setAnimationDuration(J)V

    const/16 p2, 0x8

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_7c

    move v1, v2

    :cond_7c
    const/4 v3, 0x7

    .line 19
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    xor-int/2addr v1, v4

    const v4, -0xff0100

    const/high16 v5, -0x10000

    if-eqz v1, :cond_96

    .line 20
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    .line 21
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    goto :goto_ad

    .line 22
    :cond_96
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 23
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    goto :goto_ad

    .line 24
    :cond_a5
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    :goto_ad
    const/4 p2, 0x6

    const/16 v1, 0x14

    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    const/4 p2, 0x5

    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    const/high16 v1, 0x42c80000  # 100.0f

    .line 27
    invoke-static {p2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gtz p2, :cond_112

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 28
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2
    :try_end_cb
    .catchall {:try_start_48 .. :try_end_cb} :catchall_11a

    if-ltz p2, :cond_112

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 31
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    .line 33
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartPaint:Landroid/graphics/Paint;

    .line 35
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    .line 38
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_111

    const p1, 0x428551ec  # 66.66f

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/CircleNumberView;->setPercent(F)V

    :cond_111
    return-void

    .line 41
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

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    throw p2
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/CircleNumberView;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/CircleNumberView;->setLayerToSW(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/CircleNumberView;)Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnPercentAnimationEndListener:Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    .line 3
    return-object p0
.end method

.method private getCurrentColor(IIF)I
    .registers 11

    .line 1
    const/high16 v0, 0x42c80000  # 100.0f

    .line 3
    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_9

    .line 9
    move p3, v0

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    invoke-static {p3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 14
    move-result v2

    .line 15
    if-gez v2, :cond_11

    .line 17
    move p3, v1

    .line 18
    :cond_11
    shr-int/lit8 v1, p1, 0x18

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 22
    shr-int/lit8 v2, p1, 0x10

    .line 24
    and-int/lit16 v2, v2, 0xff

    .line 26
    shr-int/lit8 v3, p1, 0x8

    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 32
    shr-int/lit8 v4, p2, 0x18

    .line 34
    and-int/lit16 v4, v4, 0xff

    .line 36
    shr-int/lit8 v5, p2, 0x10

    .line 38
    and-int/lit16 v5, v5, 0xff

    .line 40
    shr-int/lit8 v6, p2, 0x8

    .line 42
    and-int/lit16 v6, v6, 0xff

    .line 44
    and-int/lit16 p2, p2, 0xff

    .line 46
    sub-int/2addr v4, v1

    .line 47
    int-to-float v4, v4

    .line 48
    mul-float/2addr v4, p3

    .line 49
    div-float/2addr v4, v0

    .line 50
    float-to-int v4, v4

    .line 51
    add-int/2addr v1, v4

    .line 52
    shl-int/lit8 v1, v1, 0x18

    .line 54
    sub-int/2addr v5, v2

    .line 55
    int-to-float v4, v5

    .line 56
    mul-float/2addr v4, p3

    .line 57
    div-float/2addr v4, v0

    .line 58
    float-to-int v4, v4

    .line 59
    add-int/2addr v2, v4

    .line 60
    shl-int/lit8 v2, v2, 0x10

    .line 62
    or-int/2addr v1, v2

    .line 63
    sub-int/2addr v6, v3

    .line 64
    int-to-float v2, v6

    .line 65
    mul-float/2addr v2, p3

    .line 66
    div-float/2addr v2, v0

    .line 67
    float-to-int v2, v2

    .line 68
    add-int/2addr v3, v2

    .line 69
    shl-int/lit8 v2, v3, 0x8

    .line 71
    or-int/2addr v1, v2

    .line 72
    sub-int/2addr p2, p1

    .line 73
    int-to-float p2, p2

    .line 74
    mul-float/2addr p3, p2

    .line 75
    div-float/2addr p3, v0

    .line 76
    float-to-int p2, p3

    .line 77
    add-int/2addr p1, p2

    .line 78
    or-int/2addr p1, v1

    .line 79
    return p1
.end method

.method private measureHeight(II)I
    .registers 6

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p2

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v1

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    move-result v2

    .line 21
    sub-int/2addr p1, v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr p1, v2

    .line 27
    if-gez p1, :cond_1d

    .line 29
    const/4 p1, 0x0

    .line 30
    :cond_1d
    const/high16 v2, 0x40000000  # 2.0f

    .line 32
    if-ne v0, v2, :cond_23

    .line 34
    int-to-float p1, p2

    .line 35
    goto :goto_49

    .line 36
    :cond_23
    if-ne v1, v2, :cond_31

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result v2

    .line 46
    add-int/2addr v2, v1

    .line 47
    add-int/2addr v2, p1

    .line 48
    int-to-float p1, v2

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 57
    move-result v1

    .line 58
    add-int/2addr v1, p1

    .line 59
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->getSuggestedMinimumHeight()I

    .line 62
    move-result p1

    .line 63
    add-int/2addr p1, v1

    .line 64
    int-to-float p1, p1

    .line 65
    :goto_40
    const/high16 v1, -0x80000000

    .line 67
    if-ne v0, v1, :cond_49

    .line 69
    int-to-float p2, p2

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 73
    move-result p1

    .line 74
    :cond_49
    :goto_49
    float-to-double p1, p1

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 78
    move-result-wide p1

    .line 79
    double-to-int p1, p1

    .line 80
    return p1
.end method

.method private measureWidth(II)I
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    move-result v2

    .line 21
    sub-int/2addr p2, v2

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr p2, v2

    .line 27
    if-gez p2, :cond_1d

    .line 29
    const/4 p2, 0x0

    .line 30
    :cond_1d
    const/high16 v2, 0x40000000  # 2.0f

    .line 32
    if-ne v0, v2, :cond_23

    .line 34
    int-to-float p1, p1

    .line 35
    goto :goto_4b

    .line 36
    :cond_23
    if-ne v1, v2, :cond_31

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 45
    move-result v2

    .line 46
    add-int/2addr v2, v1

    .line 47
    add-int/2addr v2, p2

    .line 48
    int-to-float p2, v2

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 53
    move-result p2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 57
    move-result v1

    .line 58
    add-int/2addr v1, p2

    .line 59
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->getSuggestedMinimumWidth()I

    .line 62
    move-result p2

    .line 63
    add-int/2addr p2, v1

    .line 64
    int-to-float p2, p2

    .line 65
    :goto_40
    const/high16 v1, -0x80000000

    .line 67
    if-ne v0, v1, :cond_4a

    .line 69
    int-to-float p1, p1

    .line 70
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 73
    move-result p1

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move p1, p2

    .line 76
    :goto_4b
    float-to-double p1, p1

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 80
    move-result-wide p1

    .line 81
    double-to-int p1, p1

    .line 82
    return p1
.end method

.method private pointInLemonHeart(FF)Ljava/lang/Boolean;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_14

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 18
    move-result v0

    .line 19
    sub-float/2addr p1, v0

    .line 20
    goto :goto_1c

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 23
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 26
    move-result v0

    .line 27
    sub-float p1, v0, p1

    .line 29
    :goto_1c
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 31
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 34
    move-result v0

    .line 35
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_30

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 43
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 46
    move-result v0

    .line 47
    sub-float/2addr p2, v0

    .line 48
    goto :goto_38

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 51
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 54
    move-result v0

    .line 55
    sub-float p2, v0, p2

    .line 57
    :goto_38
    mul-float/2addr p1, p1

    .line 58
    mul-float/2addr p2, p2

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 61
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 64
    move-result v0

    .line 65
    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    .line 67
    int-to-float v1, v1

    .line 68
    sub-float/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 71
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 74
    move-result v1

    .line 75
    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    .line 77
    int-to-float v2, v2

    .line 78
    sub-float/2addr v1, v2

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 82
    move-result v0

    .line 83
    const/high16 v1, 0x40000000  # 2.0f

    .line 85
    div-float/2addr v0, v1

    .line 86
    add-float/2addr p1, p2

    .line 87
    float-to-double p1, p1

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 91
    move-result-wide p1

    .line 92
    double-to-float p1, p1

    .line 93
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 96
    move-result p1

    .line 97
    if-gez p1, :cond_65

    .line 99
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 101
    return-object p1

    .line 102
    :cond_65
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    return-object p1
.end method

.method private setLayerToHW(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_b

    .line 7
    const/4 p1, 0x2

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 12
    :cond_b
    return-void
.end method

.method private setLayerToSW(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_b

    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 12
    :cond_b
    return-void
.end method

.method private setRawTextSize(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    :cond_11
    return-void
.end method

.method private startTouchDownAnimation()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 6
    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    .line 8
    const/4 v3, 0x0

    .line 9
    aput v2, v1, v3

    .line 11
    const/4 v2, 0x1

    .line 12
    const/high16 v3, 0x42c80000  # 100.0f

    .line 14
    aput v3, v1, v2

    .line 16
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 21
    const-wide/16 v1, 0x12c

    .line 23
    long-to-float v1, v1

    .line 24
    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    .line 26
    mul-float/2addr v2, v1

    .line 27
    div-float/2addr v2, v3

    .line 28
    sub-float/2addr v1, v2

    .line 29
    float-to-long v1, v1

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 35
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 38
    return-void
.end method

.method private startTouchUpAnimation(Z)V
    .registers 10

    .line 1
    const/high16 v0, 0x43fa0000  # 500.0f

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    const/high16 v5, 0x42c80000  # 100.0f

    .line 9
    if-eqz p1, :cond_30

    .line 11
    iget p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    .line 13
    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    .line 16
    move-result p1

    .line 17
    if-gez p1, :cond_30

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 21
    const/4 v6, 0x3

    .line 22
    new-array v6, v6, [F

    .line 24
    iget v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    .line 26
    aput v7, v6, v3

    .line 28
    aput v5, v6, v2

    .line 30
    aput v1, v6, v4

    .line 32
    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 37
    const/high16 v1, 0x447a0000  # 1000.0f

    .line 39
    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    .line 41
    mul-float/2addr v2, v0

    .line 42
    div-float/2addr v2, v5

    .line 43
    sub-float/2addr v1, v2

    .line 44
    float-to-long v0, v1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    goto :goto_47

    .line 49
    :cond_30
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 51
    new-array v4, v4, [F

    .line 53
    iget v6, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    .line 55
    aput v6, v4, v3

    .line 57
    aput v1, v4, v2

    .line 59
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 62
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 64
    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTouchPercent:F

    .line 66
    mul-float/2addr v1, v0

    .line 67
    div-float/2addr v1, v5

    .line 68
    float-to-long v0, v1

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    :goto_47
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickAnimator:Landroid/animation/ValueAnimator;

    .line 74
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    return-void
.end method

.method private stopChangingPercent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public animatToPercent(F)V
    .registers 7

    .line 1
    const/high16 v0, 0x42c80000  # 100.0f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_3b

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 13
    move-result v1

    .line 14
    if-ltz v1, :cond_3b

    .line 16
    invoke-direct {p0, p0}, Lcom/android/fileexplorer/view/CircleNumberView;->setLayerToHW(Landroid/view/View;)V

    .line 19
    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->stopChangingPercent()V

    .line 22
    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 24
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_29

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    .line 34
    new-array v1, v2, [F

    .line 36
    aput p1, v1, v3

    .line 38
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 41
    goto :goto_35

    .line 42
    :cond_29
    iget-object v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    .line 44
    const/4 v4, 0x2

    .line 45
    new-array v4, v4, [F

    .line 47
    aput v0, v4, v3

    .line 49
    aput p1, v4, v2

    .line 51
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 54
    :goto_35
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    .line 56
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 59
    return-void

    .line 60
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    const-string v0, "百分比值必须在0到100之间"

    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method public getPercent()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnHeartClickListener:Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public hasOnPercentAnimationEndListener()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnPercentAnimationEndListener:Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v1

    .line 12
    add-int/2addr v1, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    move-result v0

    .line 33
    sub-int/2addr v2, v0

    .line 34
    div-int/lit8 v2, v2, 0x2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 39
    move-result v0

    .line 40
    sub-int v0, v1, v0

    .line 42
    iget v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    .line 44
    sub-int/2addr v0, v3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    move-result v3

    .line 49
    sub-int v3, v2, v3

    .line 51
    iget v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    .line 53
    sub-int/2addr v3, v4

    .line 54
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 57
    move-result v0

    .line 58
    int-to-float v1, v1

    .line 59
    int-to-float v3, v2

    .line 60
    int-to-float v0, v0

    .line 61
    iget-object v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartPaint:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    .line 72
    move-result v0

    .line 73
    if-ltz v0, :cond_177

    .line 75
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 77
    const/high16 v4, 0x42c80000  # 100.0f

    .line 79
    div-float v4, v0, v4

    .line 81
    const/high16 v5, 0x43b40000  # 360.0f

    .line 83
    mul-float/2addr v4, v5

    .line 84
    iget-object v6, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    .line 86
    iget v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    .line 88
    iget v8, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    .line 90
    invoke-direct {p0, v7, v8, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->getCurrentColor(IIF)I

    .line 93
    move-result v0

    .line 94
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 99
    const/high16 v8, -0x3d4c0000  # -90.0f

    .line 101
    const/4 v10, 0x0

    .line 102
    iget-object v11, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    .line 104
    move-object v6, p1

    .line 105
    move v9, v4

    .line 106
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    .line 111
    const v6, -0x111112

    .line 114
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v8, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 119
    const/high16 v0, -0x3d4c0000  # -90.0f

    .line 121
    add-float v9, v4, v0

    .line 123
    sub-float v10, v5, v4

    .line 125
    const/4 v11, 0x0

    .line 126
    iget-object v12, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    .line 128
    move-object v7, p1

    .line 129
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    .line 134
    const/4 v4, 0x1

    .line 135
    const/high16 v5, 0x40000000  # 2.0f

    .line 137
    const/4 v6, 0x0

    .line 138
    if-eqz v0, :cond_11a

    .line 140
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercentFormat:Ljava/text/DecimalFormat;

    .line 142
    iget v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 144
    float-to-double v7, v7

    .line 145
    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 152
    move-result v7

    .line 153
    if-ne v7, v4, :cond_9d

    .line 155
    const-string v7, "%%%s"

    .line 157
    goto :goto_9f

    .line 158
    :cond_9d
    const-string v7, "%s%%"

    .line 160
    :goto_9f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 163
    move-result-object v8

    .line 164
    new-array v4, v4, [Ljava/lang/Object;

    .line 166
    aput-object v0, v4, v6

    .line 168
    invoke-static {v8, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    mul-int/lit8 v4, v2, 0x3

    .line 174
    div-int/lit8 v4, v4, 0x7

    .line 176
    int-to-float v4, v4

    .line 177
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/CircleNumberView;->setRawTextSize(F)V

    .line 180
    iget-object v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 185
    move-result v7

    .line 186
    invoke-virtual {v4, v0, v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 189
    move-result v4

    .line 190
    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 192
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 195
    move-result-object v7

    .line 196
    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 198
    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 200
    sub-float/2addr v8, v7

    .line 201
    float-to-double v7, v8

    .line 202
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 205
    move-result-wide v7

    .line 206
    double-to-int v7, v7

    .line 207
    int-to-float v7, v7

    .line 208
    div-float/2addr v4, v5

    .line 209
    sub-float v4, v1, v4

    .line 211
    const/high16 v8, 0x41200000  # 10.0f

    .line 213
    div-float/2addr v7, v8

    .line 214
    sub-float/2addr v3, v7

    .line 215
    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 217
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    div-int/lit8 v0, v2, 0x6

    .line 222
    int-to-float v0, v0

    .line 223
    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    .line 225
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 228
    move-result v3

    .line 229
    cmpl-float v3, v0, v3

    .line 231
    if-eqz v3, :cond_ed

    .line 233
    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    .line 235
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 238
    :cond_ed
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    .line 240
    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    .line 242
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 245
    move-result v4

    .line 246
    invoke-virtual {v0, v3, v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 249
    move-result v0

    .line 250
    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    .line 252
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 255
    move-result-object v3

    .line 256
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 258
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 260
    sub-float/2addr v4, v3

    .line 261
    float-to-double v3, v4

    .line 262
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 265
    move-result-wide v3

    .line 266
    double-to-int v3, v3

    .line 267
    int-to-float v3, v3

    .line 268
    iget-object v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    .line 270
    div-float/2addr v0, v5

    .line 271
    sub-float/2addr v1, v0

    .line 272
    div-int/lit8 v0, v2, 0xa

    .line 274
    add-int/2addr v0, v2

    .line 275
    int-to-float v0, v0

    .line 276
    add-float/2addr v0, v3

    .line 277
    iget-object v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeTextPaint:Landroid/text/TextPaint;

    .line 279
    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    goto :goto_177

    .line 283
    :cond_11a
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercentFormat:Ljava/text/DecimalFormat;

    .line 285
    iget v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 287
    float-to-double v7, v2

    .line 288
    invoke-virtual {v0, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 291
    move-result-object v0

    .line 292
    const/high16 v2, 0x41400000  # 12.0f

    .line 294
    invoke-static {v2}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    .line 297
    move-result v2

    .line 298
    int-to-float v2, v2

    .line 299
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/view/CircleNumberView;->setRawTextSize(F)V

    .line 302
    iget-object v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 304
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 307
    move-result v7

    .line 308
    invoke-virtual {v2, v0, v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 311
    move-result v2

    .line 312
    iget-object v7, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 314
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 317
    move-result-object v7

    .line 318
    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 320
    iget v9, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 322
    sub-float/2addr v8, v9

    .line 323
    float-to-double v8, v8

    .line 324
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 327
    move-result-wide v8

    .line 328
    double-to-int v8, v8

    .line 329
    int-to-float v8, v8

    .line 330
    iget-object v9, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 332
    const-string v10, "%"

    .line 334
    invoke-virtual {v9, v10, v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 337
    move-result v4

    .line 338
    iget v6, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 340
    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 342
    sub-float/2addr v6, v7

    .line 343
    float-to-double v6, v6

    .line 344
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 347
    move-result-wide v6

    .line 348
    double-to-int v6, v6

    .line 349
    int-to-float v6, v6

    .line 350
    add-float v7, v2, v4

    .line 352
    div-float/2addr v7, v5

    .line 353
    sub-float v7, v1, v7

    .line 355
    const/high16 v9, 0x40800000  # 4.0f

    .line 357
    div-float v9, v8, v9

    .line 359
    add-float/2addr v9, v3

    .line 360
    iget-object v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 362
    invoke-virtual {p1, v0, v7, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 365
    sub-float/2addr v4, v2

    .line 366
    div-float/2addr v4, v5

    .line 367
    sub-float/2addr v1, v4

    .line 368
    sub-float/2addr v8, v6

    .line 369
    div-float/2addr v8, v5

    .line 370
    add-float/2addr v8, v9

    .line 371
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 373
    invoke-virtual {p1, v10, v1, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 376
    :cond_177
    :goto_177
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/CircleNumberView;->measureWidth(II)I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/CircleNumberView;->measureHeight(II)I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$200(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setTextColor(I)V

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$300(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    .line 20
    move-result v0

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$400(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->setSkinColor(II)V

    .line 28
    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$500(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setHeartColor(I)V

    .line 35
    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$600(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setHeartClickedColor(I)V

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$700(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/CircleNumberView;->setSkinDepth(I)V

    .line 49
    iget-wide v0, p1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    .line 51
    iget-wide v2, p1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    .line 53
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/fileexplorer/view/CircleNumberView;->setSize(JJ)V

    .line 56
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;

    .line 7
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 12
    iput v0, v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    .line 14
    iget-wide v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    .line 16
    iput-wide v2, v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    .line 18
    iget-wide v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    .line 20
    iput-wide v2, v1, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    .line 22
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    .line 24
    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$202(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    .line 27
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    .line 29
    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$302(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    .line 32
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    .line 34
    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$402(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    .line 37
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    .line 39
    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$502(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    .line 42
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    .line 44
    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$602(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    .line 47
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    .line 49
    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->access$702(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I

    .line 52
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result p3

    .line 5
    add-int/2addr p3, p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 9
    move-result p1

    .line 10
    sub-int/2addr p3, p1

    .line 11
    div-int/lit8 p3, p3, 0x2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    move-result p1

    .line 17
    add-int/2addr p1, p2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    move-result p2

    .line 22
    sub-int/2addr p1, p2

    .line 23
    div-int/lit8 p1, p1, 0x2

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    move-result p2

    .line 29
    sub-int p2, p3, p2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    move-result p4

    .line 35
    sub-int p4, p1, p4

    .line 37
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    .line 40
    move-result p2

    .line 41
    iget p4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    .line 43
    int-to-double v0, p4

    .line 44
    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    .line 46
    div-double/2addr v0, v2

    .line 47
    int-to-double v2, p2

    .line 48
    mul-double/2addr v0, v2

    .line 49
    double-to-int p4, v0

    .line 50
    iput p4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    .line 52
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinPaint:Landroid/graphics/Paint;

    .line 54
    int-to-float p4, p4

    .line 55
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance p4, Landroid/graphics/RectF;

    .line 60
    sub-int v0, p3, p2

    .line 62
    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinRawDepth:I

    .line 64
    div-int/lit8 v2, v1, 0x2

    .line 66
    add-int/2addr v2, v0

    .line 67
    int-to-float v0, v2

    .line 68
    sub-int v2, p1, p2

    .line 70
    div-int/lit8 v3, v1, 0x2

    .line 72
    add-int/2addr v3, v2

    .line 73
    int-to-float v2, v3

    .line 74
    add-int/2addr p3, p2

    .line 75
    div-int/lit8 v3, v1, 0x2

    .line 77
    sub-int/2addr p3, v3

    .line 78
    int-to-float p3, p3

    .line 79
    add-int/2addr p1, p2

    .line 80
    div-int/lit8 v1, v1, 0x2

    .line 82
    sub-int/2addr p1, v1

    .line 83
    int-to-float p1, p1

    .line 84
    invoke-direct {p4, v0, v2, p3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    iput-object p4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mBounds:Landroid/graphics/RectF;

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    .line 5
    if-eq v0, v1, :cond_76

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v2, :cond_60

    .line 23
    if-eq v2, v4, :cond_41

    .line 25
    const/4 v5, 0x2

    .line 26
    if-eq v2, v5, :cond_29

    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq v2, v0, :cond_1f

    .line 31
    goto :goto_76

    .line 32
    :cond_1f
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    .line 34
    if-eqz v0, :cond_76

    .line 36
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 38
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchUpAnimation(Z)V

    .line 41
    return v4

    .line 42
    :cond_29
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    .line 44
    if-eqz v2, :cond_76

    .line 46
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 48
    if-eqz p1, :cond_40

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->pointInLemonHeart(FF)Ljava/lang/Boolean;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_40

    .line 60
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 62
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchUpAnimation(Z)V

    .line 65
    :cond_40
    return v4

    .line 66
    :cond_41
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    .line 68
    if-eqz v2, :cond_76

    .line 70
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 72
    if-eqz p1, :cond_5d

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->pointInLemonHeart(FF)Ljava/lang/Boolean;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5d

    .line 84
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchUpAnimation(Z)V

    .line 87
    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnHeartClickListener:Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;

    .line 89
    if-eqz p1, :cond_5d

    .line 91
    invoke-interface {p1, p0}, Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;->onHeartClick(Lcom/android/fileexplorer/view/CircleNumberView;)V

    .line 94
    :cond_5d
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 96
    return v4

    .line 97
    :cond_60
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/CircleNumberView;->pointInLemonHeart(FF)Ljava/lang/Boolean;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_72

    .line 107
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 109
    iput-boolean v4, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    .line 111
    invoke-direct {p0}, Lcom/android/fileexplorer/view/CircleNumberView;->startTouchDownAnimation()V

    .line 114
    return v4

    .line 115
    :cond_72
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->alwaysKeepInHeart:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->downInHeartFirst:Z

    .line 119
    :cond_76
    :goto_76
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    move-result p1

    .line 123
    return p1
.end method

.method public setAnimationDuration(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mArrivePercentAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    :cond_7
    return-void
.end method

.method public setHeartClickedColor(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    .line 3
    if-eq p1, v0, :cond_6

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartClickedColor:I

    .line 7
    :cond_6
    return-void
.end method

.method public setHeartColor(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    .line 3
    if-eq p1, v0, :cond_e

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartColor:I

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mHeartPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    :cond_e
    return-void
.end method

.method public setOnHeartClickListener(Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnHeartClickListener:Lcom/android/fileexplorer/view/CircleNumberView$OnHeartClickListener;

    .line 3
    return-void
.end method

.method public setOnPercentAnimationEndListener(Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mOnPercentAnimationEndListener:Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    .line 3
    return-void
.end method

.method public setPercent(F)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_34

    .line 9
    const/high16 v0, 0x42c80000  # 100.0f

    .line 11
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 14
    move-result v1

    .line 15
    if-gtz v1, :cond_17

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    .line 21
    move-result v1

    .line 22
    if-gez v1, :cond_2f

    .line 24
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v2, "error percent : "

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "CircleNumberView"

    .line 43
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 48
    :cond_2f
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 53
    :cond_34
    return-void
.end method

.method public setSize(JJ)V
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    .line 9
    cmp-long v0, p3, v0

    .line 11
    if-eqz v0, :cond_68

    .line 13
    :cond_c
    long-to-float v0, p1

    .line 14
    const/high16 v1, 0x42c80000  # 100.0f

    .line 16
    mul-float/2addr v0, v1

    .line 17
    long-to-float v2, p3

    .line 18
    div-float/2addr v0, v2

    .line 19
    const/high16 v2, 0x3f000000  # 0.5f

    .line 21
    add-float/2addr v0, v2

    .line 22
    float-to-int v0, v0

    .line 23
    int-to-float v0, v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 27
    move-result v2

    .line 28
    if-gtz v2, :cond_27

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 34
    move-result v2

    .line 35
    if-gez v2, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    move v1, v0

    .line 39
    goto :goto_3d

    .line 40
    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v3, "error percent : "

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v2, "CircleNumberView"

    .line 59
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_3d
    iput v1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mPercent:F

    .line 64
    iput-wide p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    .line 66
    iput-wide p3, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    iget-wide p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mUsed:J

    .line 75
    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string p2, "/"

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-wide p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTotal:J

    .line 89
    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSizeText:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 105
    :cond_68
    return-void
.end method

.method public setSkinColor(II)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    .line 7
    if-eq p2, v0, :cond_f

    .line 9
    :cond_8
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinStartColor:I

    .line 11
    iput p2, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinEndColor:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    :cond_f
    return-void
.end method

.method public setSkinDepth(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    .line 3
    if-eq p1, v0, :cond_19

    .line 5
    const/16 v0, 0x32

    .line 7
    if-gt p1, v0, :cond_11

    .line 9
    const/4 v0, 0x1

    .line 10
    if-lt p1, v0, :cond_11

    .line 12
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mSkinDepth:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "宽度比重必须在1到50之间"

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_12

    .line 9
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextColor:I

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView;->mTextPaint:Landroid/text/TextPaint;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    :cond_12
    return-void
.end method
