.class public Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;
.super Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.source "ActionBarMovableLayout.java"


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_SPRING_BACK_DURATION:I = 0x320

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mFlinging:Z

.field private mInitialMotionY:I

.field private mInitialMotionYSet:Z

.field private mIsBeingDragged:Z

.field private mIsSpringBackEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mMotionY:I

.field private mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

.field private mOverScrollDistance:I

.field private mScrollRange:I

.field private mScrollStart:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mState:I

.field private mTabScrollView:Landroid/view/View;

.field private mTabViewVisibility:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;

    .line 3
    const-string v0, "ActionBarMovableLayout"

    .line 5
    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 7
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 9
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 11
    const/16 v1, 0x8

    .line 13
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 18
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout:[I

    .line 20
    sget v2, Lmiuix/appcompat/R$attr;->actionBarMovableLayoutStyle:I

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 26
    move-result-object p2

    .line 27
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_28

    .line 33
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_overScrollRange:I

    .line 35
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 41
    :cond_28
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_scrollRange:I

    .line 43
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 49
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_scrollStart:I

    .line 51
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    .line 67
    new-instance v1, Landroid/widget/OverScroller;

    .line 69
    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 83
    move-result p1

    .line 84
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 86
    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 89
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method private inChild(Landroid/view/View;II)Z
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 8
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 13
    move-result v2

    .line 14
    float-to-int v2, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 18
    move-result v3

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v4

    .line 23
    int-to-float v4, v4

    .line 24
    add-float/2addr v3, v4

    .line 25
    float-to-int v3, v3

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v5

    .line 34
    int-to-float v5, v5

    .line 35
    add-float/2addr v4, v5

    .line 36
    float-to-int v4, v4

    .line 37
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 39
    if-ne p1, v5, :cond_30

    .line 41
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 46
    move-result p1

    .line 47
    add-int/2addr v1, p1

    .line 48
    add-int/2addr v3, p1

    .line 49
    :cond_30
    if-lt p3, v1, :cond_39

    .line 51
    if-ge p3, v3, :cond_39

    .line 53
    if-lt p2, v2, :cond_39

    .line 55
    if-ge p2, v4, :cond_39

    .line 57
    const/4 v0, 0x1

    .line 58
    :cond_39
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-nez v0, :cond_b

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 15
    :goto_e
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_a
    return-void
.end method

.method private isTabViewVisibilityChanged()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 6
    if-eqz v0, :cond_13

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 14
    if-eq v0, v1, :cond_13

    .line 16
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const v1, 0xff00

    .line 8
    and-int/2addr v0, v1

    .line 9
    shr-int/lit8 v0, v0, 0x8

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 17
    if-ne v1, v2, :cond_2c

    .line 19
    if-nez v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 27
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    int-to-float v1, v1

    .line 30
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 40
    if-eqz p1, :cond_2c

    .line 42
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 45
    :cond_2c
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    :cond_a
    return-void
.end method


# virtual methods
.method public applyTranslationY(F)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->motionToTranslation(F)F

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    :cond_13
    return-void
.end method

.method public computeScroll()V
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2b

    .line 9
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 13
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 16
    move-result v1

    .line 17
    if-eq v0, v1, :cond_27

    .line 19
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 22
    move-result v8

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 26
    move-result v10

    .line 27
    const/4 v3, 0x0

    .line 28
    sub-int v4, v1, v0

    .line 30
    const/4 v5, 0x0

    .line 31
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v11, 0x1

    .line 36
    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v11}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 40
    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 43
    goto :goto_35

    .line 44
    :cond_2b
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 46
    if-eqz v0, :cond_35

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    .line 51
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeVerticalVelocity()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 5
    int-to-float v1, v1

    .line 6
    const/16 v2, 0x3e8

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 11
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 16
    move-result v0

    .line 17
    float-to-int v0, v0

    .line 18
    return v0
.end method

.method public ensureTabScrollView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 9
    return-void
.end method

.method public fling(I)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 4
    move-result v10

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 8
    move-result v8

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 11
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    move v4, p1

    .line 20
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 29
    return-void
.end method

.method public getOverScrollDistance()I
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public getScrollRange()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 3
    return v0
.end method

.method public getScrollStart()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 3
    return v0
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 3
    if-eq p1, v0, :cond_8

    .line 5
    invoke-super/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object p5

    .line 13
    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v2

    .line 31
    add-int/2addr v2, v1

    .line 32
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 34
    add-int/2addr v2, v1

    .line 35
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 37
    add-int/2addr v2, v1

    .line 38
    add-int/2addr v2, p3

    .line 39
    iget p3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 41
    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    move-result p3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, p3

    .line 54
    iget p3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 56
    add-int/2addr v1, p3

    .line 57
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 59
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    move-result p3

    .line 63
    add-int/2addr p3, v1

    .line 64
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    add-int/2addr p3, v0

    .line 67
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 70
    move-result v0

    .line 71
    sub-int/2addr p3, v0

    .line 72
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 75
    move-result v0

    .line 76
    sub-int/2addr p3, v0

    .line 77
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 79
    sub-int/2addr p3, v0

    .line 80
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 82
    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 85
    move-result p3

    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 89
    return-void
.end method

.method public motionToTranslation(F)F
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 3
    neg-int v0, v0

    .line 4
    int-to-float v0, v0

    .line 5
    add-float/2addr v0, p1

    .line 6
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 8
    int-to-float p1, p1

    .line 9
    sub-float/2addr v0, p1

    .line 10
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 12
    int-to-float p1, p1

    .line 13
    sub-float/2addr v0, p1

    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 19
    if-eqz p1, :cond_22

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_22

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 32
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    sub-float/2addr v0, p1

    .line 35
    :cond_22
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMask()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_e

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v0, v2, :cond_1b

    .line 23
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 25
    if-eqz v4, :cond_1b

    .line 27
    return v3

    .line 28
    :cond_1b
    and-int/lit16 v0, v0, 0xff

    .line 30
    if-eqz v0, :cond_4e

    .line 32
    if-eq v0, v3, :cond_42

    .line 34
    if-eq v0, v2, :cond_2e

    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq v0, v2, :cond_42

    .line 39
    const/4 v1, 0x6

    .line 40
    if-eq v0, v1, :cond_2a

    .line 42
    goto :goto_6d

    .line 43
    :cond_2a
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 46
    goto :goto_6d

    .line 47
    :cond_2e
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_6d

    .line 53
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 55
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 60
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 63
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollBegin()V

    .line 66
    goto :goto_6d

    .line 67
    :cond_42
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 69
    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 72
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->recycleVelocityTracker()V

    .line 75
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollEnd()V

    .line 78
    goto :goto_6d

    .line 79
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 88
    move-result v0

    .line 89
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 97
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initOrResetVelocityTracker()V

    .line 100
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 102
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 105
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 107
    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 110
    :cond_6d
    :goto_6d
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 112
    return p1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onLayout(ZIIII)V

    .line 4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 6
    const/4 p2, 0x1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->isTabViewVisibilityChanged()Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_f

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    :goto_11
    move p1, p2

    .line 19
    :goto_12
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 21
    if-nez p3, :cond_24

    .line 23
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 25
    if-gez p3, :cond_1e

    .line 27
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 29
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 31
    :cond_1e
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 33
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 35
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 37
    :cond_24
    if-eqz p1, :cond_2c

    .line 39
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 41
    int-to-float p1, p1

    .line 42
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 45
    :cond_2c
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .registers 5

    .line 1
    int-to-float p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 5
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 7
    if-nez p2, :cond_27

    .line 9
    if-eqz p4, :cond_27

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 18
    move-result p2

    .line 19
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 21
    mul-int/lit8 p3, p3, 0x2

    .line 23
    if-le p2, p3, :cond_27

    .line 25
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    .line 27
    if-eqz p2, :cond_27

    .line 29
    neg-int p1, p1

    .line 30
    int-to-float p1, p1

    .line 31
    const p3, 0x3e4ccccd  # 0.2f

    .line 34
    mul-float/2addr p1, p3

    .line 35
    const/16 p3, 0x1f4

    .line 37
    invoke-interface {p2, p1, p3}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onFling(FI)V

    .line 40
    :cond_27
    return-void
.end method

.method public onScroll(F)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 10
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 12
    int-to-float v2, v2

    .line 13
    div-float/2addr p1, v2

    .line 14
    invoke-interface {v0, v1, p1}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onScroll(IF)V

    .line 17
    :cond_10
    return-void
.end method

.method public onScrollBegin()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onStartScroll()V

    .line 8
    :cond_7
    return-void
.end method

.method public onScrollEnd()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onStopScroll()V

    .line 11
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    .line 1
    move-object/from16 v10, p0

    .line 3
    move-object/from16 v11, p1

    .line 5
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 8
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    move-result v0

    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 19
    const/4 v12, 0x1

    .line 20
    const/4 v13, 0x0

    .line 21
    if-eqz v0, :cond_d7

    .line 23
    const/4 v14, -0x1

    .line 24
    if-eq v0, v12, :cond_a5

    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_4e

    .line 29
    const/4 v1, 0x3

    .line 30
    if-eq v0, v1, :cond_a5

    .line 32
    const/4 v1, 0x5

    .line 33
    if-eq v0, v1, :cond_3a

    .line 35
    const/4 v1, 0x6

    .line 36
    if-eq v0, v1, :cond_27

    .line 38
    goto/16 :goto_e3

    .line 40
    :cond_27
    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 43
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 45
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 48
    move-result v0

    .line 49
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 52
    move-result v0

    .line 53
    float-to-int v0, v0

    .line 54
    int-to-float v0, v0

    .line 55
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 57
    goto/16 :goto_e3

    .line 59
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 62
    move-result v0

    .line 63
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    move-result v1

    .line 67
    float-to-int v1, v1

    .line 68
    int-to-float v1, v1

    .line 69
    iput v1, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 71
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 74
    move-result v0

    .line 75
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 77
    goto/16 :goto_e3

    .line 79
    :cond_4e
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 81
    if-eqz v0, :cond_91

    .line 83
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 85
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 88
    move-result v0

    .line 89
    if-ne v0, v14, :cond_5b

    .line 91
    return v13

    .line 92
    :cond_5b
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 95
    move-result v15

    .line 96
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 98
    sub-float v0, v15, v0

    .line 100
    float-to-int v2, v0

    .line 101
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 104
    move-result v6

    .line 105
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 108
    move-result v8

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    iget v4, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v9, 0x1

    .line 116
    move-object/from16 v0, p0

    .line 118
    invoke-virtual/range {v0 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 121
    move-result v0

    .line 122
    iput v15, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 124
    if-eqz v0, :cond_e3

    .line 126
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 128
    if-nez v0, :cond_8b

    .line 130
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 132
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 134
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 137
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 140
    :cond_8b
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 145
    goto :goto_e3

    .line 146
    :cond_91
    invoke-virtual/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_e3

    .line 152
    iput-boolean v12, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 154
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 157
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollBegin()V

    .line 165
    goto :goto_e3

    .line 166
    :cond_a5
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 168
    if-eqz v0, :cond_e3

    .line 170
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 172
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 174
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    .line 177
    move-result v0

    .line 178
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 181
    move-result v1

    .line 182
    iget v2, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 184
    if-le v1, v2, :cond_bd

    .line 186
    invoke-virtual {v10, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->fling(I)V

    .line 189
    goto :goto_e3

    .line 190
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 193
    move-result v9

    .line 194
    iget-object v3, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 196
    const/4 v4, 0x0

    .line 197
    iget v5, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 199
    const/4 v6, 0x0

    .line 200
    const/4 v7, 0x0

    .line 201
    const/4 v8, 0x0

    .line 202
    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_d3

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 211
    goto :goto_e3

    .line 212
    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    .line 215
    goto :goto_e3

    .line 216
    :cond_d7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 219
    move-result v0

    .line 220
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 222
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 225
    move-result v0

    .line 226
    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 228
    :cond_e3
    :goto_e3
    return v12
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    .line 8
    move-result p3

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    .line 12
    move-result p5

    .line 13
    const/4 p7, 0x1

    .line 14
    const/4 p9, 0x0

    .line 15
    if-le p3, p5, :cond_12

    .line 17
    move p3, p7

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move p3, p9

    .line 20
    :goto_13
    if-eqz p1, :cond_1c

    .line 22
    if-ne p1, p7, :cond_1a

    .line 24
    if-eqz p3, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    move p1, p9

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    :goto_1c
    move p1, p7

    .line 30
    :goto_1d
    add-int/2addr p4, p2

    .line 31
    if-nez p1, :cond_21

    .line 33
    move p8, p9

    .line 34
    :cond_21
    add-int/2addr p8, p6

    .line 35
    if-le p4, p8, :cond_26

    .line 37
    move p4, p8

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    if-gez p4, :cond_2a

    .line 41
    move p4, p9

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move p7, p9

    .line 44
    :goto_2b
    invoke-virtual {p0, p9, p4, p9, p7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    .line 47
    return p7
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public setInitialMotionY(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 3
    return-void
.end method

.method public setMotionY(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 3
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 7
    return-void
.end method

.method public setOnScrollListener(Lmiuix/appcompat/app/ActionBar$OnScrollListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    .line 3
    return-void
.end method

.method public setOverScrollDistance(I)V
    .registers 3

    .line 1
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 9
    :cond_8
    return-void
.end method

.method public setScrollRange(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 3
    return-void
.end method

.method public setScrollStart(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 3
    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 3
    return-void
.end method

.method public shouldStartScroll(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_7

    .line 7
    return v2

    .line 8
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_15

    .line 14
    sget-object p1, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    .line 16
    const-string v0, "invalid pointer index"

    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v2

    .line 22
    :cond_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 29
    move-result p1

    .line 30
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 32
    sub-float v0, p1, v0

    .line 34
    float-to-int v0, v0

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 38
    move-result v3

    .line 39
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 41
    sub-float v4, v1, v4

    .line 43
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 46
    move-result v4

    .line 47
    float-to-int v4, v4

    .line 48
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 50
    float-to-int v6, v1

    .line 51
    float-to-int v7, p1

    .line 52
    invoke-direct {p0, v5, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    .line 55
    move-result v5

    .line 56
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 58
    invoke-direct {p0, v8, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    .line 61
    move-result v6

    .line 62
    const/4 v7, 0x1

    .line 63
    if-nez v5, :cond_45

    .line 65
    if-eqz v6, :cond_43

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    move v5, v2

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    :goto_45
    move v5, v7

    .line 71
    :goto_46
    if-eqz v5, :cond_75

    .line 73
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    .line 75
    if-le v3, v5, :cond_75

    .line 77
    if-le v3, v4, :cond_75

    .line 79
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 81
    if-nez v3, :cond_60

    .line 83
    if-gez v0, :cond_55

    .line 85
    goto :goto_75

    .line 86
    :cond_55
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    .line 88
    if-eqz v3, :cond_73

    .line 90
    invoke-interface {v3}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_73

    .line 96
    goto :goto_75

    .line 97
    :cond_60
    if-lez v0, :cond_73

    .line 99
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    .line 102
    move-result v4

    .line 103
    if-lt v3, v4, :cond_73

    .line 105
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    .line 107
    if-eqz v3, :cond_73

    .line 109
    invoke-interface {v3}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_73

    .line 115
    goto :goto_75

    .line 116
    :cond_73
    move v3, v7

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    :goto_75
    move v3, v2

    .line 119
    :goto_76
    if-eqz v3, :cond_8a

    .line 121
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 123
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 125
    if-lez v0, :cond_7f

    .line 127
    move v2, v7

    .line 128
    :cond_7f
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_8a

    .line 136
    invoke-interface {p1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 139
    :cond_8a
    return v3
.end method

.method public springBack()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    .line 8
    move-result v0

    .line 9
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 11
    div-int/lit8 v1, v0, 0x2

    .line 13
    if-le v3, v1, :cond_10

    .line 15
    sub-int/2addr v0, v3

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    neg-int v0, v3

    .line 18
    :goto_11
    move v5, v0

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/16 v6, 0x320

    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 31
    :cond_1e
    return-void
.end method
