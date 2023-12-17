.class public Lmiuix/popupwidget/internal/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/internal/widget/GuidePopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x7

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x5

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_LEFT_MODE:I = 0x4

.field public static final ARROW_TOP_MODE:I = 0x1

.field public static final ARROW_TOP_RIGHT_MODE:I = 0x6


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnchorHeight:I

.field private mAnchorLocationX:I

.field private mAnchorLocationY:I

.field private mAnchorWidth:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mArrowMode:I

.field private mColorBackground:I

.field private mContext:Landroid/content/Context;

.field private mDefaultOffset:I

.field private mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

.field private mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsDismissing:Z

.field private mIsMirrored:Z

.field private mLineLength:F

.field private mMinBorder:I

.field private mMirroredTextGroup:Landroid/widget/LinearLayout;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mStartPointRadius:F

.field private mTextCircleRadius:F

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextGroup:Landroid/widget/LinearLayout;

.field private mTextSize:I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mUseDefaultOffset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/popupwidget/R$attr;->guidePopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 7
    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 8
    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 10
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    .line 11
    sget-object v2, Lmiuix/popupwidget/R$styleable;->GuidePopupView:[I

    sget v3, Lmiuix/popupwidget/R$style;->Widget_GuidePopupView_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_startPointRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    .line 13
    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_lineLength:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    .line 14
    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_textCircleRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 15
    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_android_colorBackground:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mColorBackground:I

    .line 16
    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_paintColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 17
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_android_textSize:I

    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextSize:I

    .line 19
    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    const/high16 p3, 0x40200000  # 2.5f

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMinBorder:I

    return-void
.end method

.method public static synthetic access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lmiuix/popupwidget/internal/widget/GuidePopupView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsDismissing:Z

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Lmiuix/popupwidget/widget/GuidePopupWindow;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 3
    return-object p0
.end method

.method private adjustArrowMode()V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    new-array v3, v2, [I

    .line 12
    iget v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 14
    const/4 v5, 0x0

    .line 15
    aput v4, v3, v5

    .line 17
    sub-int v6, v1, v4

    .line 19
    iget v7, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 21
    sub-int/2addr v6, v7

    .line 22
    const/4 v8, 0x1

    .line 23
    aput v6, v3, v8

    .line 25
    iget v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 27
    const/4 v9, 0x2

    .line 28
    aput v6, v3, v9

    .line 30
    sub-int v10, v0, v6

    .line 32
    iget v11, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 34
    sub-int/2addr v10, v11

    .line 35
    const/4 v12, 0x3

    .line 36
    aput v10, v3, v12

    .line 38
    div-int/2addr v11, v9

    .line 39
    add-int/2addr v11, v6

    .line 40
    div-int/2addr v7, v9

    .line 41
    add-int/2addr v7, v4

    .line 42
    const/high16 v4, -0x80000000

    .line 44
    move v6, v5

    .line 45
    :goto_2c
    if-ge v5, v2, :cond_3c

    .line 47
    aget v10, v3, v5

    .line 49
    iget v13, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMinBorder:I

    .line 51
    if-lt v10, v13, :cond_35

    .line 53
    goto :goto_3d

    .line 54
    :cond_35
    if-le v10, v4, :cond_39

    .line 56
    move v6, v5

    .line 57
    move v4, v10

    .line 58
    :cond_39
    add-int/lit8 v5, v5, 0x1

    .line 60
    goto :goto_2c

    .line 61
    :cond_3c
    move v5, v6

    .line 62
    :goto_3d
    const/4 v3, 0x5

    .line 63
    const/4 v4, 0x6

    .line 64
    const/4 v6, 0x7

    .line 65
    if-eqz v5, :cond_77

    .line 67
    if-eq v5, v8, :cond_68

    .line 69
    if-eq v5, v9, :cond_58

    .line 71
    if-eq v5, v12, :cond_49

    .line 73
    goto :goto_88

    .line 74
    :cond_49
    int-to-float v0, v7

    .line 75
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 77
    cmpg-float v0, v0, v3

    .line 79
    if-gez v0, :cond_51

    .line 81
    goto :goto_89

    .line 82
    :cond_51
    sub-int/2addr v1, v7

    .line 83
    int-to-float v0, v1

    .line 84
    cmpg-float v0, v0, v3

    .line 86
    if-gez v0, :cond_88

    .line 88
    goto :goto_7e

    .line 89
    :cond_58
    int-to-float v0, v7

    .line 90
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 92
    cmpg-float v0, v0, v2

    .line 94
    if-gez v0, :cond_61

    .line 96
    :goto_5f
    move v2, v4

    .line 97
    goto :goto_89

    .line 98
    :cond_61
    sub-int/2addr v1, v7

    .line 99
    int-to-float v0, v1

    .line 100
    cmpg-float v0, v0, v2

    .line 102
    if-gez v0, :cond_88

    .line 104
    goto :goto_86

    .line 105
    :cond_68
    int-to-float v1, v11

    .line 106
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 108
    cmpg-float v1, v1, v3

    .line 110
    if-gez v1, :cond_70

    .line 112
    goto :goto_89

    .line 113
    :cond_70
    sub-int/2addr v0, v11

    .line 114
    int-to-float v0, v0

    .line 115
    cmpg-float v0, v0, v3

    .line 117
    if-gez v0, :cond_88

    .line 119
    goto :goto_5f

    .line 120
    :cond_77
    int-to-float v1, v11

    .line 121
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 123
    cmpg-float v1, v1, v2

    .line 125
    if-gez v1, :cond_80

    .line 127
    :goto_7e
    move v2, v6

    .line 128
    goto :goto_89

    .line 129
    :cond_80
    sub-int/2addr v0, v11

    .line 130
    int-to-float v0, v0

    .line 131
    cmpg-float v0, v0, v2

    .line 133
    if-gez v0, :cond_88

    .line 135
    :goto_86
    move v2, v3

    .line 136
    goto :goto_89

    .line 137
    :cond_88
    :goto_88
    move v2, v5

    .line 138
    :goto_89
    invoke-virtual {p0, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 141
    return-void
.end method

.method private arrowLayout()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->caculateDefaultOffset()V

    .line 4
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 6
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 8
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 10
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 12
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    .line 15
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    .line 17
    if-eqz v0, :cond_21

    .line 19
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 25
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 27
    neg-int v2, v2

    .line 28
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 30
    neg-int v3, v3

    .line 31
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    .line 34
    :cond_21
    return-void
.end method

.method private caculateDefaultOffset()V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 8
    return-void

    .line 9
    :cond_8
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 11
    const/4 v1, 0x2

    .line 12
    div-int/2addr v0, v1

    .line 13
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 15
    div-int/2addr v2, v1

    .line 16
    int-to-double v3, v0

    .line 17
    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    .line 19
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 22
    move-result-wide v3

    .line 23
    int-to-double v7, v2

    .line 24
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 27
    move-result-wide v5

    .line 28
    add-double/2addr v5, v3

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    move-result-wide v3

    .line 33
    double-to-int v3, v3

    .line 34
    iget v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 36
    if-eqz v4, :cond_33

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eq v4, v5, :cond_33

    .line 41
    if-eq v4, v1, :cond_30

    .line 43
    const/4 v1, 0x3

    .line 44
    if-eq v4, v1, :cond_30

    .line 46
    iput v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 48
    goto :goto_35

    .line 49
    :cond_30
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    iput v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 54
    :goto_35
    return-void
.end method

.method private drawPopup(Landroid/graphics/Canvas;III)V
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 16
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 20
    add-int/2addr v1, v0

    .line 21
    add-int/2addr v1, p3

    .line 22
    int-to-float p3, v1

    .line 23
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 25
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 29
    add-int/2addr v1, v0

    .line 30
    add-int/2addr v1, p4

    .line 31
    int-to-float p4, v1

    .line 32
    const/4 v0, 0x0

    .line 33
    packed-switch p2, :pswitch_data_9a

    .line 36
    :pswitch_23  #0x1
    move p2, v0

    .line 37
    goto :goto_39

    .line 38
    :pswitch_25  #0x7
    const/high16 p2, -0x3cf90000  # -135.0f

    .line 40
    goto :goto_39

    .line 41
    :pswitch_28  #0x6
    const/high16 p2, 0x42340000  # 45.0f

    .line 43
    goto :goto_39

    .line 44
    :pswitch_2b  #0x5
    const/high16 p2, 0x43070000  # 135.0f

    .line 46
    goto :goto_39

    .line 47
    :pswitch_2e  #0x4
    const/high16 p2, -0x3dcc0000  # -45.0f

    .line 49
    goto :goto_39

    .line 50
    :pswitch_31  #0x3
    const/high16 p2, -0x3d4c0000  # -90.0f

    .line 52
    goto :goto_39

    .line 53
    :pswitch_34  #0x2
    const/high16 p2, 0x42b40000  # 90.0f

    .line 55
    goto :goto_39

    .line 56
    :pswitch_37  #0x0
    const/high16 p2, 0x43340000  # 180.0f

    .line 58
    :goto_39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 64
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 66
    int-to-float p2, p2

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    move-result p2

    .line 74
    const/high16 v0, 0x40000000  # 2.0f

    .line 76
    sub-float v3, p3, v0

    .line 78
    add-float v5, p3, v0

    .line 80
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    .line 82
    add-float v6, p4, v0

    .line 84
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 86
    move-object v2, p1

    .line 87
    move v4, p4

    .line 88
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 91
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    .line 93
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 95
    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 103
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 105
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 110
    const/high16 v0, 0x40800000  # 4.0f

    .line 112
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    .line 117
    add-float v6, p4, p2

    .line 119
    iget-object v7, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 121
    move v3, p3

    .line 122
    move v5, p3

    .line 123
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    .line 128
    add-float/2addr p4, p2

    .line 129
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 131
    add-float/2addr p4, p2

    .line 132
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 134
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 136
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 146
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    return-void

    .line 155
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_23  #00000001
        :pswitch_34  #00000002
        :pswitch_31  #00000003
        :pswitch_2e  #00000004
        :pswitch_2b  #00000005
        :pswitch_28  #00000006
        :pswitch_25  #00000007
    .end packed-switch
.end method

.method private drawText(ILandroid/widget/LinearLayout;II)V
    .registers 12

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    .line 6
    add-float/2addr v0, v1

    .line 7
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 9
    add-float/2addr v0, v1

    .line 10
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 12
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 16
    add-int/2addr v2, v1

    .line 17
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 19
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 21
    div-int/lit8 v3, v3, 0x2

    .line 23
    add-int/2addr v3, v1

    .line 24
    const/4 v1, 0x0

    .line 25
    packed-switch p1, :pswitch_data_9c

    .line 28
    move v2, v1

    .line 29
    goto :goto_67

    .line 30
    :pswitch_1d  #0x3
    int-to-float v1, v2

    .line 31
    add-float/2addr v1, v0

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    move-result v2

    .line 36
    div-int/lit8 v2, v2, 0x2

    .line 38
    int-to-float v2, v2

    .line 39
    sub-float/2addr v1, v2

    .line 40
    float-to-int v1, v1

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v2

    .line 45
    div-int/lit8 v2, v2, 0x2

    .line 47
    goto :goto_40

    .line 48
    :pswitch_2f  #0x2
    int-to-float v1, v2

    .line 49
    sub-float/2addr v1, v0

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    move-result v2

    .line 54
    div-int/lit8 v2, v2, 0x2

    .line 56
    int-to-float v2, v2

    .line 57
    sub-float/2addr v1, v2

    .line 58
    float-to-int v1, v1

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    move-result v2

    .line 63
    div-int/lit8 v2, v2, 0x2

    .line 65
    :goto_40
    sub-int v2, v3, v2

    .line 67
    goto :goto_67

    .line 68
    :pswitch_43  #0x1, 0x4, 0x6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    move-result v1

    .line 72
    div-int/lit8 v1, v1, 0x2

    .line 74
    sub-int v1, v2, v1

    .line 76
    int-to-float v2, v3

    .line 77
    add-float/2addr v2, v0

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 81
    move-result v3

    .line 82
    div-int/lit8 v3, v3, 0x2

    .line 84
    goto :goto_64

    .line 85
    :pswitch_54  #0x0, 0x5, 0x7
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    move-result v1

    .line 89
    div-int/lit8 v1, v1, 0x2

    .line 91
    sub-int v1, v2, v1

    .line 93
    int-to-float v2, v3

    .line 94
    sub-float/2addr v2, v0

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    move-result v3

    .line 99
    div-int/lit8 v3, v3, 0x2

    .line 101
    :goto_64
    int-to-float v3, v3

    .line 102
    sub-float/2addr v2, v3

    .line 103
    float-to-int v2, v2

    .line 104
    :goto_67
    float-to-double v3, v0

    .line 105
    const-wide v5, 0x3fe921fb54442d18L  # 0.7853981633974483

    .line 110
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 113
    move-result-wide v5

    .line 114
    mul-double/2addr v5, v3

    .line 115
    double-to-int v3, v5

    .line 116
    int-to-float v4, v3

    .line 117
    sub-float/2addr v0, v4

    .line 118
    float-to-int v0, v0

    .line 119
    const/4 v4, 0x4

    .line 120
    if-eq p1, v4, :cond_8a

    .line 122
    const/4 v4, 0x5

    .line 123
    if-eq p1, v4, :cond_87

    .line 125
    const/4 v4, 0x6

    .line 126
    if-eq p1, v4, :cond_85

    .line 128
    const/4 v4, 0x7

    .line 129
    if-eq p1, v4, :cond_83

    .line 131
    goto :goto_8c

    .line 132
    :cond_83
    add-int/2addr v1, v3

    .line 133
    goto :goto_88

    .line 134
    :cond_85
    sub-int/2addr v1, v3

    .line 135
    goto :goto_8b

    .line 136
    :cond_87
    sub-int/2addr v1, v3

    .line 137
    :goto_88
    add-int/2addr v2, v0

    .line 138
    goto :goto_8c

    .line 139
    :cond_8a
    add-int/2addr v1, v3

    .line 140
    :goto_8b
    sub-int/2addr v2, v0

    .line 141
    :goto_8c
    add-int/2addr v1, p3

    .line 142
    add-int/2addr v2, p4

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 146
    move-result p1

    .line 147
    add-int/2addr p1, v1

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 151
    move-result p3

    .line 152
    add-int/2addr p3, v2

    .line 153
    invoke-virtual {p2, v1, v2, p1, p3}, Landroid/view/View;->layout(IIII)V

    .line 156
    return-void

    .line 157
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_54  #00000000
        :pswitch_43  #00000001
        :pswitch_2f  #00000002
        :pswitch_1d  #00000003
        :pswitch_43  #00000004
        :pswitch_54  #00000005
        :pswitch_43  #00000006
        :pswitch_54  #00000007
    .end packed-switch
.end method

.method private getMirroredMode()I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    rem-int/lit8 v1, v0, 0x2

    .line 9
    if-nez v1, :cond_d

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 16
    return v0
.end method


# virtual methods
.method public addGuideTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const-string v0, "\n"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_3b

    .line 16
    array-length v0, p2

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_3b

    .line 20
    :cond_13
    array-length v0, p2

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_16
    if-ge v2, v0, :cond_3b

    .line 25
    aget-object v3, p2, v2

    .line 27
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    .line 29
    sget v5, Lmiuix/popupwidget/R$layout;->miuix_appcompat_guide_popup_text_view:I

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextSize:I

    .line 43
    int-to-float v3, v3

    .line 44
    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 47
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 49
    if-eqz v3, :cond_35

    .line 51
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 54
    :cond_35
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_16

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method

.method public animateToDismiss()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsDismissing:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 13
    :cond_c
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [F

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    aput v3, v1, v2

    .line 22
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 28
    const-wide/16 v1, 0xc8

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 33
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 35
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 42
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 45
    return-void
.end method

.method public animateToShow()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;

    .line 14
    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    return-void
.end method

.method public clearOffset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setOffset(II)V

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 8
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 9
    int-to-float v0, v0

    .line 10
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 22
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 27
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 38
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 47
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 49
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 51
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 53
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    .line 56
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    .line 58
    if-eqz v0, :cond_48

    .line 60
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    .line 63
    move-result v0

    .line 64
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 66
    neg-int v1, v1

    .line 67
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 69
    neg-int v2, v2

    .line 70
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    .line 73
    :cond_48
    return-void
.end method

.method public getArrowMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 3
    return v0
.end method

.method public getColorBackground()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mColorBackground:I

    .line 3
    return v0
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    sget v0, Lmiuix/popupwidget/R$id;->text_group:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 14
    sget v0, Lmiuix/popupwidget/R$id;->mirrored_text_group:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/LinearLayout;

    .line 22
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 24
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    .line 1
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 3
    if-eqz p1, :cond_8

    .line 5
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 7
    if-nez p1, :cond_d

    .line 9
    :cond_8
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    move-result p2

    .line 26
    int-to-double p3, p1

    .line 27
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    .line 29
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 32
    move-result-wide p3

    .line 33
    int-to-double p1, p2

    .line 34
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 37
    move-result-wide p1

    .line 38
    add-double/2addr p1, p3

    .line 39
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    move-result-wide p1

    .line 43
    div-double/2addr p1, v0

    .line 44
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 46
    float-to-double p3, p3

    .line 47
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 50
    move-result-wide p1

    .line 51
    double-to-float p1, p1

    .line 52
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 54
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    .line 56
    if-eqz p1, :cond_5f

    .line 58
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    move-result p1

    .line 64
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    move-result p2

    .line 70
    int-to-double p3, p1

    .line 71
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 74
    move-result-wide p3

    .line 75
    int-to-double p1, p2

    .line 76
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 79
    move-result-wide p1

    .line 80
    add-double/2addr p1, p3

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 84
    move-result-wide p1

    .line 85
    div-double/2addr p1, v0

    .line 86
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 88
    float-to-double p3, p3

    .line 89
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 92
    move-result-wide p1

    .line 93
    double-to-float p1, p1

    .line 94
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 96
    :cond_5f
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 98
    const/4 p2, -0x1

    .line 99
    if-ne p1, p2, :cond_68

    .line 101
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->adjustArrowMode()V

    .line 104
    goto :goto_6b

    .line 105
    :cond_68
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->arrowLayout()V

    .line 108
    :goto_6b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 13
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 15
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 17
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v4

    .line 23
    add-int/2addr v4, v2

    .line 24
    iget v5, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 26
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 28
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v6

    .line 32
    add-int/2addr v6, v5

    .line 33
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    move-result p2

    .line 40
    const/4 v2, 0x1

    .line 41
    if-nez p2, :cond_36

    .line 43
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_36

    .line 49
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 54
    return v2

    .line 55
    :cond_36
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 57
    invoke-virtual {p1, v2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 60
    return v2
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 9
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 17
    const/4 p1, 0x2

    .line 18
    new-array p1, p1, [I

    .line 20
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    const/4 v0, 0x0

    .line 26
    aget v0, p1, v0

    .line 28
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 30
    const/4 v0, 0x1

    .line 31
    aget p1, p1, v0

    .line 33
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 35
    return-void
.end method

.method public setArrowMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    return-void
.end method

.method public setArrowMode(IZ)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 3
    iput-boolean p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz p2, :cond_e

    .line 4
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    .line 5
    :cond_e
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_15
    return-void
.end method

.method public setGuidePopupWindow(Lmiuix/popupwidget/widget/GuidePopupWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 3
    return-void
.end method

.method public setOffset(II)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 3
    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 8
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 3
    return-void
.end method
