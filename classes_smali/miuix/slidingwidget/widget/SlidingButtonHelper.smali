.class public Lmiuix/slidingwidget/widget/SlidingButtonHelper;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final FULL_ALPHA:I = 0xff


# instance fields
.field private mAnimChecked:Z

.field private mAnimCheckedTemp:Z

.field private mCornerRadius:I

.field private mExtraAlpha:F

.field private mHeight:I

.field private mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mIsSliderEdgeReached:Z

.field private mLastX:I

.field private mMarginHorizontal:I

.field private mMarginVertical:I

.field private mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskCheckedSlideBarAlpha:F

.field private mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskCheckedSlideBarAlphaTemp:F

.field private mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaxTranslateOffset:I

.field private mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOriginalTouchPointX:I

.field private mParamCached:Z

.field private mSlideBar:Landroid/graphics/drawable/StateListDrawable;

.field private mSliderHeight:I

.field private mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderMoved:Z

.field private mSliderOff:Landroid/graphics/drawable/Drawable;

.field private mSliderOffset:I

.field private mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderOffsetTemp:I

.field private mSliderOn:Landroid/graphics/drawable/Drawable;

.field private mSliderOnAlpha:I

.field private mSliderOnAlphaTemp:I

.field private mSliderPaddingH:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderScale:F

.field private mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderWidth:I

.field private mSlidingBarColor:I

.field private mTapThreshold:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTranslateDist:[F

.field private mView:Landroid/widget/CompoundButton;

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->CHECKED_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 14
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 16
    const-string v2, "SliderOffset"

    .line 18
    invoke-direct {v1, p0, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    .line 21
    iput-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;

    .line 23
    const/high16 v1, 0x3f800000  # 1.0f

    .line 25
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    .line 27
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 29
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 31
    const/4 v2, -0x1

    .line 32
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 34
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 36
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    .line 38
    const/high16 v0, -0x40800000  # -1.0f

    .line 40
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 42
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$2;

    .line 44
    const-string v2, "SliderScale"

    .line 46
    invoke-direct {v0, p0, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$2;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    .line 49
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 51
    new-instance v0, Lmiuix/androidbasewidget/internal/view/b;

    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {v0, p0, v2}, Lmiuix/androidbasewidget/internal/view/b;-><init>(Ljava/lang/Object;I)V

    .line 57
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 59
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;

    .line 61
    const-string v3, "MaskCheckedSlideBarAlpha"

    .line 63
    invoke-direct {v0, p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    .line 66
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 68
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    .line 70
    new-array v0, v2, [F

    .line 72
    fill-array-data v0, :array_60

    .line 75
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 77
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 79
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 82
    move-result p1

    .line 83
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 85
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 87
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_5f

    .line 93
    const/4 p1, 0x0

    .line 94
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 96
    :cond_5f
    return-void

    .line 97
    :array_60
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic a(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    .line 3
    return p0
.end method

.method public static synthetic access$002(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 3
    return p1
.end method

.method public static synthetic access$202(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 3
    return p0
.end method

.method private actualTranslateDist(Landroid/view/View;Landroid/view/MotionEvent;)[F
    .registers 11

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 8
    move-result p2

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v2, v1, [I

    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    const/4 v3, 0x0

    .line 16
    aget v4, v2, v3

    .line 18
    int-to-float v4, v4

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v5

    .line 23
    int-to-float v5, v5

    .line 24
    const/high16 v6, 0x3f000000  # 0.5f

    .line 26
    mul-float/2addr v5, v6

    .line 27
    add-float/2addr v5, v4

    .line 28
    const/4 v4, 0x1

    .line 29
    aget v2, v2, v4

    .line 31
    int-to-float v2, v2

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v7

    .line 36
    int-to-float v7, v7

    .line 37
    mul-float/2addr v7, v6

    .line 38
    add-float/2addr v7, v2

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 42
    move-result v2

    .line 43
    const/4 v6, 0x0

    .line 44
    if-nez v2, :cond_2f

    .line 46
    move v0, v6

    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    sub-float/2addr v0, v5

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 52
    move-result v2

    .line 53
    int-to-float v2, v2

    .line 54
    div-float/2addr v0, v2

    .line 55
    :goto_36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3d

    .line 61
    goto :goto_45

    .line 62
    :cond_3d
    sub-float/2addr p2, v7

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    div-float v6, p2, p1

    .line 70
    :goto_45
    const/high16 p1, 0x3f800000  # 1.0f

    .line 72
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 75
    move-result p2

    .line 76
    const/high16 v0, -0x40800000  # -1.0f

    .line 78
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 81
    move-result p2

    .line 82
    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    .line 85
    move-result p1

    .line 86
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 89
    move-result p1

    .line 90
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    .line 92
    int-to-float v2, v0

    .line 93
    mul-float/2addr p2, v2

    .line 94
    int-to-float v0, v0

    .line 95
    mul-float/2addr p1, v0

    .line 96
    new-array v0, v1, [F

    .line 98
    aput p2, v0, v3

    .line 100
    aput p1, v0, v4

    .line 102
    return-object v0
.end method

.method private animateToState(Z)V
    .registers 4

    .line 18
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_13

    .line 19
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 20
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->startCheckedChangeAnimInternal(Z)V

    .line 21
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_13
    if-eqz p1, :cond_18

    .line 22
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 23
    :goto_1a
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;

    invoke-direct {v1, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V

    invoke-direct {p0, p1, v0, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method private animateToState(ZILjava/lang/Runnable;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 3
    :cond_f
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_18

    return-void

    .line 4
    :cond_18
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x4476bd71

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 6
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x3f333333  # 0.7f

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 7
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 8
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;

    invoke-direct {v0, p0, p3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 9
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    if-eqz p1, :cond_6d

    .line 10
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 11
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 12
    :cond_5f
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 13
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    goto :goto_87

    .line 14
    :cond_6d
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 15
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 16
    :cond_7a
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 17
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_87
    :goto_87
    return-void
.end method

.method private animateToggle()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 12
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 14
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 16
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 18
    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 21
    return-void
.end method

.method private createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 3
    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 15
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 21
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    .line 26
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginHorizontal:I

    .line 28
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    .line 30
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 32
    sub-int/2addr v3, v1

    .line 33
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 35
    sub-int/2addr v4, v2

    .line 36
    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 42
    return-object v0
.end method

.method private createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 8
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    return-object v0
.end method

.method private initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object p3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 7
    return-void
.end method

.method private synthetic lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method private moveSlider(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 3
    invoke-static {v0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    neg-int p1, p1

    .line 10
    :cond_9
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 15
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 17
    if-ge v0, p1, :cond_15

    .line 19
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 21
    goto :goto_1b

    .line 22
    :cond_15
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 24
    if-le v0, v1, :cond_1b

    .line 26
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 28
    :cond_1b
    :goto_1b
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 30
    if-eq v0, p1, :cond_26

    .line 32
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 34
    if-ne v0, p1, :cond_24

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    :goto_26
    const/4 p1, 0x1

    .line 40
    :goto_27
    if-eqz p1, :cond_36

    .line 42
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 44
    if-nez v0, :cond_36

    .line 46
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 48
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 50
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 52
    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 55
    :cond_36
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 57
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 59
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderOffset(I)V

    .line 62
    return-void
.end method

.method private onDrawSlideBar(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 3
    const/high16 v1, 0x3f800000  # 1.0f

    .line 5
    sub-float/2addr v1, v0

    .line 6
    const/high16 v0, 0x437f0000  # 255.0f

    .line 8
    mul-float/2addr v1, v0

    .line 9
    float-to-int v1, v1

    .line 10
    if-lez v1, :cond_15

    .line 12
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 17
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    :cond_15
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 24
    mul-float/2addr v1, v0

    .line 25
    float-to-int v0, v1

    .line 26
    if-lez v0, :cond_25

    .line 28
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    :cond_25
    return-void
.end method

.method private onPressedInner()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 11
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 16
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1a

    .line 22
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 24
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 27
    :cond_1a
    return-void
.end method

.method private onUnPressedInner()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 11
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 16
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1a

    .line 22
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 24
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 27
    :cond_1a
    return-void
.end method

.method private popSavedParams()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 3
    if-eqz v0, :cond_20

    .line 5
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 7
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 9
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 11
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 13
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 15
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 17
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    .line 19
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 27
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 29
    const/high16 v0, -0x40800000  # -1.0f

    .line 31
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 33
    :cond_20
    return-void
.end method

.method private saveCurrentParams()V
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 3
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 5
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 7
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 9
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 11
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 13
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 15
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 20
    return-void
.end method

.method private scaleCanvasEnd(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4
    return-void
.end method

.method private scaleCanvasStart(Landroid/graphics/Canvas;II)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    .line 6
    int-to-float p2, p2

    .line 7
    int-to-float p3, p3

    .line 8
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 11
    return-void
.end method

.method private setCheckedInner(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 3
    if-eqz v0, :cond_1f

    .line 5
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 15
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 20
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1f

    .line 26
    if-nez p1, :cond_1f

    .line 28
    const/high16 v0, 0x3f800000  # 1.0f

    .line 30
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 32
    :cond_1f
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 34
    if-nez v0, :cond_3d

    .line 36
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 38
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_30

    .line 44
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 46
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 49
    :cond_30
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 51
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3d

    .line 57
    if-eqz p1, :cond_3d

    .line 59
    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 62
    :cond_3d
    return-void
.end method

.method private startCheckedChangeAnimInternal(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1d

    .line 11
    :cond_a
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 13
    if-eqz v0, :cond_11

    .line 15
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 20
    :goto_13
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    const/16 v0, 0xff

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 30
    :cond_1d
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->popSavedParams()V

    .line 33
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setCheckedInner(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    .line 3
    return v0
.end method

.method public getMeasuredHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 3
    return v0
.end method

.method public getMeasuredWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 3
    return v0
.end method

.method public getSlideBar()Landroid/graphics/drawable/StateListDrawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    return-object v0
.end method

.method public getSliderOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 3
    return v0
.end method

.method public getSliderOn()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getSliderOnAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 3
    return v0
.end method

.method public initAnim()V
    .registers 8

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 3
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 5
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 7
    const v3, 0x3f904189  # 1.127f

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 13
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 15
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 18
    move-result-object v0

    .line 19
    const v1, 0x4476bd71

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 25
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 27
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 30
    move-result-object v0

    .line 31
    const v2, 0x3f19999a  # 0.6f

    .line 34
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 37
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 39
    const v3, 0x3b03126f  # 0.002f

    .line 42
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 45
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 47
    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 49
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 52
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 54
    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 56
    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 58
    const/high16 v6, 0x3f800000  # 1.0f

    .line 60
    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 63
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 65
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 72
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 74
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 81
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 83
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 86
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 88
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 90
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 93
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 95
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 97
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 99
    invoke-direct {v0, v2, v3, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 102
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 104
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 107
    move-result-object v0

    .line 108
    const v2, 0x43db51ec

    .line 111
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 114
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 116
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 119
    move-result-object v0

    .line 120
    const v2, 0x3f7d70a4  # 0.99f

    .line 123
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 126
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 128
    const/high16 v3, 0x3b800000  # 0.00390625f

    .line 130
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 133
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 135
    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 137
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 140
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 142
    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 144
    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 146
    const/4 v6, 0x0

    .line 147
    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 150
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 152
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 159
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 161
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 168
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 170
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 173
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 175
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 177
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 180
    return-void
.end method

.method public initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_corner_radius:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    .line 15
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_mask_vertical_padding:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    .line 29
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 35
    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_mask_horizontal_padding:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginHorizontal:I

    .line 43
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 56
    move-result v0

    .line 57
    div-int/lit8 v0, v0, 0x2

    .line 59
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    .line 61
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_sliderOn:I

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_sliderOff:I

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 79
    sget v2, Lmiuix/slidingwidget/R$styleable;->SlidingButton_android_background:I

    .line 81
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const-string v0, "#FF3482FF"

    .line 90
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 93
    sget v0, Lmiuix/slidingwidget/R$color;->miuix_appcompat_sliding_button_bar_on_light:I

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 98
    move-result p1

    .line 99
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_slidingBarColor:I

    .line 101
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 104
    move-result p1

    .line 105
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    .line 107
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    move-result-object p1

    .line 113
    sget v0, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_vertical_padding:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    move-result p1

    .line 119
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v0

    .line 125
    sget v2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_horizontal_padding:I

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    move-result v0

    .line 131
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v2

    .line 137
    sget v3, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_height:I

    .line 139
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 142
    move-result v2

    .line 143
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 148
    move-result-object v3

    .line 149
    sget v4, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_width:I

    .line 151
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 154
    move-result v3

    .line 155
    mul-int/lit8 v0, v0, 0x2

    .line 157
    add-int/2addr v0, v3

    .line 158
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 160
    mul-int/lit8 p1, p1, 0x2

    .line 162
    add-int/2addr p1, v2

    .line 163
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 165
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 170
    move-result-object p1

    .line 171
    sget v0, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_slider_size:I

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 176
    move-result p1

    .line 177
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 182
    move-result-object v0

    .line 183
    sget v2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_slider_horizontal_padding:I

    .line 185
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 188
    move-result v0

    .line 189
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPaddingH:I

    .line 191
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 193
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    .line 195
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 197
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 199
    sub-int/2addr v2, p1

    .line 200
    mul-int/lit8 v0, v0, 0x2

    .line 202
    sub-int/2addr v2, v0

    .line 203
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 205
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 207
    new-instance p1, Landroid/util/TypedValue;

    .line 209
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 212
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOff:I

    .line 214
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 217
    new-instance v1, Landroid/util/TypedValue;

    .line 219
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 222
    sget v2, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOn:I

    .line 224
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 227
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 234
    move-result-object p2

    .line 235
    iget v2, p1, Landroid/util/TypedValue;->type:I

    .line 237
    iget v3, v1, Landroid/util/TypedValue;->type:I

    .line 239
    if-ne v2, v3, :cond_fd

    .line 241
    iget v2, p1, Landroid/util/TypedValue;->data:I

    .line 243
    iget v3, v1, Landroid/util/TypedValue;->data:I

    .line 245
    if-ne v2, v3, :cond_fd

    .line 247
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 249
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 251
    if-ne p1, v1, :cond_fd

    .line 253
    move-object p2, v0

    .line 254
    :cond_fd
    if-eqz p2, :cond_11b

    .line 256
    if-eqz v0, :cond_11b

    .line 258
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    .line 260
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 263
    invoke-direct {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 266
    move-result-object p1

    .line 267
    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 270
    move-result-object v0

    .line 271
    invoke-direct {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 274
    move-result-object p2

    .line 275
    invoke-direct {p0, p1, v0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 278
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;

    .line 281
    move-result-object p1

    .line 282
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 284
    :cond_11b
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 287
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 289
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_12b

    .line 295
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 297
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderOffset(I)V

    .line 300
    :cond_12b
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 305
    move-result-object p1

    .line 306
    sget p2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_slider_max_offset:I

    .line 308
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 311
    move-result p1

    .line 312
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    .line 314
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 8
    :cond_7
    return-void
.end method

.method public notifyCheckedChangeListener()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 7
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 13
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 15
    invoke-interface {v1, v2, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 18
    :cond_11
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 4
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDrawSlideBar(Landroid/graphics/Canvas;)V

    .line 7
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 9
    invoke-static {v0}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPaddingH:I

    .line 15
    if-eqz v0, :cond_11

    .line 17
    neg-int v1, v1

    .line 18
    :cond_11
    if-eqz v0, :cond_1c

    .line 20
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 22
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 24
    sub-int/2addr v2, v3

    .line 25
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 27
    sub-int/2addr v2, v3

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 31
    :goto_1e
    add-int/2addr v2, v1

    .line 32
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 34
    const/4 v4, 0x0

    .line 35
    aget v4, v3, v4

    .line 37
    float-to-int v5, v4

    .line 38
    add-int/2addr v2, v5

    .line 39
    if-eqz v0, :cond_2e

    .line 41
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 43
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 45
    sub-int/2addr v0, v5

    .line 46
    goto :goto_33

    .line 47
    :cond_2e
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 49
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 51
    add-int/2addr v0, v5

    .line 52
    :goto_33
    add-int/2addr v0, v1

    .line 53
    float-to-int v1, v4

    .line 54
    add-int/2addr v0, v1

    .line 55
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 57
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    .line 59
    sub-int/2addr v1, v4

    .line 60
    div-int/lit8 v1, v1, 0x2

    .line 62
    const/4 v5, 0x1

    .line 63
    aget v3, v3, v5

    .line 65
    float-to-int v3, v3

    .line 66
    add-int/2addr v1, v3

    .line 67
    add-int/2addr v4, v1

    .line 68
    add-int v3, v0, v2

    .line 70
    div-int/lit8 v3, v3, 0x2

    .line 72
    add-int v5, v4, v1

    .line 74
    div-int/lit8 v5, v5, 0x2

    .line 76
    invoke-direct {p0, p1, v3, v5}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->scaleCanvasStart(Landroid/graphics/Canvas;II)V

    .line 79
    iget-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 81
    if-eqz v3, :cond_5d

    .line 83
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    goto :goto_67

    .line 94
    :cond_5d
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    :goto_67
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->scaleCanvasEnd(Landroid/graphics/Canvas;)V

    .line 107
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-eq v0, v1, :cond_3f

    .line 8
    const/16 p1, 0x9

    .line 10
    if-eq v0, p1, :cond_2c

    .line 12
    const/16 p1, 0xa

    .line 14
    if-eq v0, p1, :cond_10

    .line 16
    goto :goto_4c

    .line 17
    :cond_10
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    aput v1, p1, v0

    .line 23
    const/4 v0, 0x1

    .line 24
    aput v1, p1, v0

    .line 26
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 28
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_26

    .line 34
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 36
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 39
    :cond_26
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 41
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 44
    goto :goto_4c

    .line 45
    :cond_2c
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 47
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_39

    .line 53
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 55
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 58
    :cond_39
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 60
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 63
    goto :goto_4c

    .line 64
    :cond_3f
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 66
    invoke-direct {p0, v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->actualTranslateDist(Landroid/view/View;Landroid/view/MotionEvent;)[F

    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 72
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 77
    :goto_4c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 17
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 19
    invoke-static {v3}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_21

    .line 25
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 27
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 29
    sub-int/2addr v4, v5

    .line 30
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 32
    sub-int/2addr v4, v5

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 36
    :goto_23
    if-eqz v3, :cond_2b

    .line 38
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 40
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 42
    sub-int/2addr v3, v5

    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 46
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 48
    add-int/2addr v3, v5

    .line 49
    :goto_30
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eqz v0, :cond_c7

    .line 58
    const/4 v4, 0x2

    .line 59
    if-eq v0, v3, :cond_88

    .line 61
    if-eq v0, v4, :cond_63

    .line 63
    const/4 p1, 0x3

    .line 64
    if-eq v0, p1, :cond_43

    .line 66
    goto/16 :goto_ee

    .line 68
    :cond_43
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 71
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 73
    if-eqz p1, :cond_58

    .line 75
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 77
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 79
    div-int/2addr v0, v4

    .line 80
    if-lt p1, v0, :cond_52

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v3, v6

    .line 84
    :goto_53
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 86
    invoke-direct {p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 89
    :cond_58
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 91
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 93
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 95
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 98
    goto/16 :goto_ee

    .line 100
    :cond_63
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 102
    if-eqz p1, :cond_ee

    .line 104
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 106
    sub-int p1, v1, p1

    .line 108
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->moveSlider(I)V

    .line 111
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 113
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    .line 115
    sub-int/2addr v1, p1

    .line 116
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 119
    move-result p1

    .line 120
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    .line 122
    if-lt p1, v0, :cond_ee

    .line 124
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 126
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 131
    move-result-object p1

    .line 132
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    goto/16 :goto_ee

    .line 137
    :cond_88
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 139
    invoke-virtual {v0, v6}, Landroid/view/View;->playSoundEffect(I)V

    .line 142
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 145
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 147
    if-eqz v0, :cond_ba

    .line 149
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 151
    if-nez v0, :cond_9c

    .line 153
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToggle()V

    .line 156
    goto :goto_bd

    .line 157
    :cond_9c
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 159
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 161
    div-int/2addr v5, v4

    .line 162
    if-lt v0, v5, :cond_a4

    .line 164
    goto :goto_a5

    .line 165
    :cond_a4
    move v3, v6

    .line 166
    :goto_a5
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 168
    invoke-direct {p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 171
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_bd

    .line 177
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 179
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 181
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 183
    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 186
    goto :goto_bd

    .line 187
    :cond_ba
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToggle()V

    .line 190
    :cond_bd
    :goto_bd
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 192
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 194
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 196
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 199
    goto :goto_ee

    .line 200
    :cond_c7
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_e6

    .line 206
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 208
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 210
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 213
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onPressedInner()V

    .line 216
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 218
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 220
    if-le p1, v0, :cond_e3

    .line 222
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 224
    if-lt p1, v0, :cond_e2

    .line 226
    goto :goto_e3

    .line 227
    :cond_e2
    move v3, v6

    .line 228
    :cond_e3
    :goto_e3
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 230
    goto :goto_e8

    .line 231
    :cond_e6
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 233
    :goto_e8
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 235
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    .line 237
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 239
    :cond_ee
    :goto_ee
    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    .line 3
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->saveCurrentParams()V

    .line 4
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 6
    if-eqz p1, :cond_a

    .line 8
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 13
    :goto_c
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 15
    if-eqz p1, :cond_13

    .line 17
    const/16 v0, 0xff

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    const/high16 p1, 0x3f800000  # 1.0f

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    :goto_1c
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 31
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 33
    if-eqz p1, :cond_2d

    .line 35
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2d

    .line 41
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 43
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 46
    :cond_2d
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 48
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3a

    .line 54
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 56
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 59
    :cond_3a
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 61
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_47

    .line 67
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 69
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 72
    :cond_47
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 77
    return-void
.end method

.method public setLayerType(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 3
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 14
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 20
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 25
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 27
    if-eqz v1, :cond_21

    .line 29
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 31
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 34
    :cond_21
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 3
    return-void
.end method

.method public setParentClipChildren()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 9
    if-eqz v1, :cond_10

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method public setSliderDrawState()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getSliderOn()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3d

    .line 7
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 18
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 20
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 29
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 31
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 40
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 51
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 62
    :cond_3d
    return-void
.end method

.method public setSliderOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 3
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public setSliderOnAlpha(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 3
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    if-ne p1, v0, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method
