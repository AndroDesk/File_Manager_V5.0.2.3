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
.field public static final ARROW_BOTTOM_LEFT_MODE:I

.field public static final ARROW_BOTTOM_MODE:I

.field public static final ARROW_BOTTOM_RIGHT_MODE:I

.field public static final ARROW_LEFT_MODE:I

.field public static final ARROW_NONE_MODE:I

.field public static final ARROW_RIGHT_MODE:I

.field public static final ARROW_TOP_LEFT_MODE:I

.field public static final ARROW_TOP_MODE:I

.field public static final ARROW_TOP_RIGHT_MODE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_BOTTOM_LEFT_MODE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_BOTTOM_MODE:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_BOTTOM_RIGHT_MODE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_LEFT_MODE:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_NONE_MODE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_RIGHT_MODE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_TOP_LEFT_MODE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_TOP_MODE:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->ARROW_TOP_RIGHT_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/popupwidget/R$attr;->guidePopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    sget-object v2, Lmiuix/popupwidget/R$styleable;->GuidePopupView:[I

    sget v3, Lmiuix/popupwidget/R$style;->Widget_GuidePopupView_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_startPointRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_lineLength:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_textCircleRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_android_colorBackground:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mColorBackground:I

    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_paintColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_android_textSize:I

    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextSize:I

    sget p2, Lmiuix/popupwidget/R$styleable;->GuidePopupView_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic access$002(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static synthetic access$102(Lmiuix/popupwidget/internal/widget/GuidePopupView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsDismissing:Z

    return p1
.end method

.method public static synthetic access$200(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Lmiuix/popupwidget/widget/GuidePopupWindow;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private adjustArrowMode()V
    .registers 15

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x4

    new-array v3, v2, [I

    iget v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sub-int v6, v1, v4

    iget v7, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    sub-int/2addr v6, v7

    const/4 v8, 0x1

    aput v6, v3, v8

    iget v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    const/4 v9, 0x2

    aput v6, v3, v9

    sub-int v10, v0, v6

    iget v11, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    sub-int/2addr v10, v11

    const/4 v12, 0x3

    aput v10, v3, v12

    div-int/2addr v11, v9

    add-int/2addr v11, v6

    div-int/2addr v7, v9

    add-int/2addr v7, v4

    const/high16 v4, -0x80000000

    move v6, v5

    :goto_2c
    if-ge v5, v2, :cond_3c

    aget v10, v3, v5

    iget v13, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMinBorder:I

    if-lt v10, v13, :cond_35

    goto :goto_3d

    :cond_35
    if-le v10, v4, :cond_39

    move v6, v5

    move v4, v10

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3c
    move v5, v6

    :goto_3d
    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v6, 0x7

    if-eqz v5, :cond_77

    if-eq v5, v8, :cond_68

    if-eq v5, v9, :cond_58

    if-eq v5, v12, :cond_49

    goto :goto_88

    :cond_49
    int-to-float v0, v7

    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_51

    goto :goto_89

    :cond_51
    sub-int/2addr v1, v7

    int-to-float v0, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_88

    goto :goto_7e

    :cond_58
    int-to-float v0, v7

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_61

    :goto_5f
    move v2, v4

    goto :goto_89

    :cond_61
    sub-int/2addr v1, v7

    int-to-float v0, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_88

    goto :goto_86

    :cond_68
    int-to-float v1, v11

    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_70

    goto :goto_89

    :cond_70
    sub-int/2addr v0, v11

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_88

    goto :goto_5f

    :cond_77
    int-to-float v1, v11

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_80

    :goto_7e
    move v2, v6

    goto :goto_89

    :cond_80
    sub-int/2addr v0, v11

    int-to-float v0, v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_88

    :goto_86
    move v2, v3

    goto :goto_89

    :cond_88
    :goto_88
    move v2, v5

    :goto_89
    invoke-virtual {p0, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    return-void
.end method

.method private arrowLayout()V
    .registers 5

    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->caculateDefaultOffset()V

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    neg-int v2, v2

    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    neg-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    :cond_21
    return-void
.end method

.method private caculateDefaultOffset()V
    .registers 10

    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    return-void

    :cond_8
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/2addr v2, v1

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    if-eqz v4, :cond_33

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    if-eq v4, v1, :cond_30

    const/4 v1, 0x3

    if-eq v4, v1, :cond_30

    iput v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    goto :goto_35

    :cond_30
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    goto :goto_35

    :cond_33
    iput v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    :goto_35
    return-void
.end method

.method private drawPopup(Landroid/graphics/Canvas;III)V
    .registers 13

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/2addr v1, p3

    int-to-float p3, v1

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/2addr v1, p4

    int-to-float p4, v1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_9a

    :pswitch_23  #0x1
    move p2, v0

    goto :goto_39

    :pswitch_25  #0x7
    const/high16 p2, -0x3cf90000  # -135.0f

    goto :goto_39

    :pswitch_28  #0x6
    const/high16 p2, 0x42340000  # 45.0f

    goto :goto_39

    :pswitch_2b  #0x5
    const/high16 p2, 0x43070000  # 135.0f

    goto :goto_39

    :pswitch_2e  #0x4
    const/high16 p2, -0x3dcc0000  # -45.0f

    goto :goto_39

    :pswitch_31  #0x3
    const/high16 p2, -0x3d4c0000  # -90.0f

    goto :goto_39

    :pswitch_34  #0x2
    const/high16 p2, 0x42b40000  # 90.0f

    goto :goto_39

    :pswitch_37  #0x0
    const/high16 p2, 0x43340000  # 180.0f

    :goto_39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    const/high16 v0, 0x40000000  # 2.0f

    sub-float v3, p3, v0

    add-float v5, p3, v0

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    add-float v6, p4, v0

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v2, p1

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000  # 4.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    add-float v6, p4, p2

    iget-object v7, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    move v3, p3

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    add-float/2addr p4, p2

    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    add-float/2addr p4, p2

    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

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

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    int-to-float v0, v0

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    add-float/2addr v0, v1

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_9c

    move v2, v1

    goto :goto_67

    :pswitch_1d  #0x3
    int-to-float v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_40

    :pswitch_2f  #0x2
    int-to-float v1, v2

    sub-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_40
    sub-int v2, v3, v2

    goto :goto_67

    :pswitch_43  #0x1, 0x4, 0x6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    int-to-float v2, v3

    add-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_64

    :pswitch_54  #0x0, 0x5, 0x7
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    int-to-float v2, v3

    sub-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_64
    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    :goto_67
    float-to-double v3, v0

    const-wide v5, 0x3fe921fb54442d18L  # 0.7853981633974483

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    int-to-float v4, v3

    sub-float/2addr v0, v4

    float-to-int v0, v0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_8a

    const/4 v4, 0x5

    if-eq p1, v4, :cond_87

    const/4 v4, 0x6

    if-eq p1, v4, :cond_85

    const/4 v4, 0x7

    if-eq p1, v4, :cond_83

    goto :goto_8c

    :cond_83
    add-int/2addr v1, v3

    goto :goto_88

    :cond_85
    sub-int/2addr v1, v3

    goto :goto_8b

    :cond_87
    sub-int/2addr v1, v3

    :goto_88
    add-int/2addr v2, v0

    goto :goto_8c

    :cond_8a
    add-int/2addr v1, v3

    :goto_8b
    sub-int/2addr v2, v0

    :goto_8c
    add-int/2addr v1, p3

    add-int/2addr v2, p4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v2

    invoke-virtual {p2, v1, v2, p1, p3}, Landroid/view/View;->layout(IIII)V

    return-void

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

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_d
    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public addGuideTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3b

    array-length v0, p2

    if-nez v0, :cond_13

    goto :goto_3b

    :cond_13
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_3b

    aget-object v3, p2, v2

    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    sget v5, Lmiuix/popupwidget/R$layout;->miuix_appcompat_guide_popup_text_view:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_35

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_35
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3b
    :goto_3b
    return-void
.end method

.method public animateToDismiss()V
    .registers 5

    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsDismissing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_c
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateToShow()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public clearOffset()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setOffset(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    int-to-float v0, v0

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v0, :cond_48

    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    move-result v0

    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    neg-int v1, v1

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    neg-int v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    :cond_48
    return-void
.end method

.method public getArrowMode()I
    .registers 2

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method public getColorBackground()I
    .registers 2

    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mColorBackground:I

    return v0
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lmiuix/popupwidget/R$id;->text_group:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    sget v0, Lmiuix/popupwidget/R$id;->mirrored_text_group:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    if-eqz p1, :cond_8

    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    if-nez p1, :cond_d

    :cond_8
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    :cond_d
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-double p3, p1

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    int-to-double p1, p2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    div-double/2addr p1, v0

    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    float-to-double p3, p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-double p3, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    int-to-double p1, p2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    div-double/2addr p1, v0

    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    float-to-double p3, p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    :cond_5f
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_68

    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->adjustArrowMode()V

    goto :goto_6b

    :cond_68
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->arrowLayout()V

    :goto_6b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_36

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return v2

    :cond_36
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-virtual {p1, v2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    return v2
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    return-void
.end method

.method public setArrowMode(I)V
    .registers 2

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    return-void
.end method

.method public setArrowMode(IZ)V
    .registers 3

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    iput-boolean p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz p2, :cond_e

    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :cond_e
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_15
    return-void
.end method

.method public setGuidePopupWindow(Lmiuix/popupwidget/widget/GuidePopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    return-void
.end method

.method public setOffset(II)V
    .registers 3

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method
